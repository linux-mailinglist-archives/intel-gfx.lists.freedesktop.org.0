Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CEA7596C6
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 15:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2F110E100;
	Wed, 19 Jul 2023 13:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9872910E100
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 13:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689773337; x=1721309337;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YpF0BDf4B2IvdunKdRN7zn8pLX7O76Z1gt1DAoppwhA=;
 b=aiCPHxntfw+XeHIx3ApiIXdebrtC6pLLRsy+ji6a3kLGVhXtXlzdrq4K
 ke9Ler414jkry8PYB3/97g6f5dY52bIshpwO89S22IhQBQDaiwkR8iFcz
 YutJMOuSyLeUFYdOvE1gXDVCXE2bxggoiMZnKUDCwfn0WLqt+KD3LuurJ
 yEIgWckBh7Myg08uVv3+7g32wrJrN2iTOhimh09Wc3UbI0QIUxXerj1Gf
 KLXyTzDnSbKtrwwALKHnAYRRgInSl4/dwzIBL5EO7kCNrJIwx9JBy9BQ4
 WHlNoPZMBsWacuHeoxKEHKx2kMrywmRas9KwCWHuj1+s0N+IrA54hGfdV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="363921962"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="363921962"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="717978533"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="717978533"
Received: from tscherue-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.252.56.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:32 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jul 2023 16:28:18 +0300
Message-Id: <20230719132822.305612-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/tc: some clean-ups in max lane
 count handling code
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

Hi,

Here are four patches with some clean-ups in the code that handles the
max lane count of Type-C connections.

This is done mostly in preparation for a new way to read the pin
assignments and lane count in future devices.

Please review.

Cheers,
Luca.


Luca Coelho (4):
  drm/i915/tc: rename mtl_tc_port_get_pin_assignment_mask()
  drm/i915/tc: make intel_tc_port_get_lane_mask() static
  drm/i915/tc: move legacy code out of the main _max_lane_count() func
  drm/i915/tc: remove "fia" from intel_tc_port_fia_max_lane_count()

 drivers/gpu/drm/i915/display/intel_dp.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_tc.c | 26 ++++++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_tc.h |  3 +--
 3 files changed, 22 insertions(+), 11 deletions(-)

-- 
2.39.2

