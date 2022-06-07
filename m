Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A22F55418C0
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 23:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93F810F492;
	Tue,  7 Jun 2022 21:17:49 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DE710F396;
 Tue,  7 Jun 2022 21:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654636668; x=1686172668;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ogLpR/kYT2ZXGY9QVPar6Jac8ofKn0cJ77fBWDFNzoo=;
 b=mxRxo8OKFFVt3OvX8yfvm4tttG9rF47tNxJfDk3aITBFiSJvYBzR5BqQ
 FG6i0T1TCtKyWDpXqHkUlGFiLAzJZPnaSBBvPBNYQqJ7Lph1IR6oTdLqq
 SdlUBoir+H0DBdVd57tTZKQwhvssujInWbM3wUDnzkhTwLKBC2eBAdUGo
 3g4FCuehJ9esJggsuolbBbNeEin/ITjZo1MmPyPPPPETjdAaEtq4Q6DvX
 +x34R2ZyHtT65TKzPVDZuqmkmfibl4kTsF40rgEozRx4p4gIwIcor/qk5
 yxkuaiIAX7D/3o1eALZ+T4P/T+Rgy1EEHyUSt8bHXM9YVyRblscr85YbY Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="275524247"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="275524247"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 14:17:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="826557507"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga006.fm.intel.com with ESMTP; 07 Jun 2022 14:17:47 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Tue,  7 Jun 2022 14:17:44 -0700
Message-Id: <20220607211747.3335656-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 i-g-t 0/3] Update DRM UAPI and add test for
 new hw info query
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Various UMDs require hardware configuration information about the
current platform. A new interface has been added to the KMD to return
this information. So, add a test for the new interface.

Also, update to the latest DRM UAPI header file that contains the new
query enums.

Lastly, none of the query tests had description entries. So made some
up.

v2: Rebased to newer baseline.
v3: Update UAPI header file.
v4: Use correct method for updating header file.
v5: Add descriptions to all the query tests.
v6: Fix typo in description.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (2):
  include/drm-uapi: Update to latest i915_drm.h
  tests/i915/query: Add descriptions to existing tests

Rodrigo Vivi (1):
  tests/i915/query: Query, parse and validate the hwconfig table

 include/drm-uapi/i915_drm.h | 398 ++++++++++++++++++++++++++++--------
 lib/intel_hwconfig_types.h  | 118 +++++++++++
 tests/i915/i915_query.c     | 192 +++++++++++++++++
 3 files changed, 622 insertions(+), 86 deletions(-)
 create mode 100644 lib/intel_hwconfig_types.h

-- 
2.36.0

