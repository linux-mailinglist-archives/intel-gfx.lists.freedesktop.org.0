Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FD0648C9A
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Dec 2022 04:01:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C8010E063;
	Sat, 10 Dec 2022 03:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BC5610E093
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Dec 2022 03:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670641282; x=1702177282;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JC+do4ysb6U3GHWBFX9iCKByttcjcVsLJuRzs8ctYdo=;
 b=T6NMsHU+A2cakTYe4cJbEG20LjxDbYyPDGqHqVp1Pxlj0giDKPvE8SMH
 BrwklaVishoBuDfLi7U5+PY0nZkSZAWw7G9KofGyKaPgEMVpEdUtH9yKg
 hDEnap4oUaK3mLVonBnLHEAjNGkr104Bj0EpWddfjWOM2TpzwBbQ7Xcln
 +lpiUd69dJ8Sq6rdJtD7fsElK7RSy8uVO4d5wh4+WSoXS4gl9UhBDmeAz
 Mh9e9dmTFCvulVaoHxOL3/CymQbBitkj4yYVyKU50ZTGoEkiF6SglFJxI
 vCDkgImtSEAbOlZtg6Xd1jipcQz9ekR17UZAjGwkWbU57Tzp9lfltMO1M g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="379800532"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="379800532"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="597914722"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="597914722"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:01:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Dec 2022 19:01:12 -0800
Message-Id: <20221210030116.1777214-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] drm/i915/mtl: Add OAG 32 bit format
 support for MTL
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

Enable OA for MTL by adding 32-bit OA format support and relevant fixes.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20221129010522.994524-1-umesh.nerlige.ramappa@intel.com

Umesh Nerlige Ramappa (4):
  drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs
  drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch
  drm/i915/mtl: Update OA mux whitelist for MTL
  drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL

 drivers/gpu/drm/i915/gt/intel_gt_types.h |  6 ---
 drivers/gpu/drm/i915/i915_perf.c         | 49 ++++++++++++++++++------
 2 files changed, 38 insertions(+), 17 deletions(-)

-- 
2.38.1

