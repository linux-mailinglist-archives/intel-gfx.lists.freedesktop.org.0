Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E9C81B4FC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 12:35:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F00610E0E9;
	Thu, 21 Dec 2023 11:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A4910E0C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 11:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703158514; x=1734694514;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KHsVZFIzmAm7P3xOTrLACis3iaNEahLvBCarwb7n9ZU=;
 b=HZoj/1G7hHkXrSB+SydrNz2zc/jt08OOhzXABRESlq3IgGUZNzeDEn0L
 4ZzSHKC4vAIZar9wbmiMzOtDFX+gAIBVY5+kUo9qpKY6qpIgBiyrdBS2Q
 gFaFi4GMoF/E8bqAAN6PjAijtNArl3A9G7pCd5dnrYiAM6Gmb1ER1NjNQ
 aUOFacH4vJm7gd0VHtflIwIIKohZTiSuMJWrpQ1CyxGOTqoJYir2jmQmd
 yvD4EI837qHA1yiXyFxEietSjdrKTC1o8QFaFtRo4Pd3U8pJhcaWC5+++
 64IM5ZbhlTzT1/qTYpczxENgw3HEluE5WeRHFRk5G2y7IWYzYE11qhH4Q A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="394854250"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="394854250"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 03:35:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="842605935"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="842605935"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2023 03:35:12 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 0/3] drm/i915/display: C20 clock state verification
Date: Thu, 21 Dec 2023 13:28:40 +0200
Message-Id: <20231221112843.27519-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add pll selection check for C20 as well as
clock state verification0. We have been relying
on sw state to select A or B pll's. This is incorrect
as the hw might see this selection differently. This
patch fixes this shortcoming by reading pll selection
for both sw and hw states and compares if these two
selections match.

While at it, cleanup mpllb selection by removing intel_c20_use_mplla()
function as redundant.

Fixes: 59be90248b42 ("drm/i915/mtl: C20 state verification")

v2: reword commit message and include fix to a
    original commit (Imre)
    Compare pll selection (Jani)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Mika Kahola (3):
  drm/i915/display: Fix C20 pll selection for state verification
  drm/i915/display: Store hw clock for C20
  drm/i915/display: Cleanup mplla/mpllb selection

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 153 ++++++++++---------
 1 file changed, 78 insertions(+), 75 deletions(-)

-- 
2.34.1

