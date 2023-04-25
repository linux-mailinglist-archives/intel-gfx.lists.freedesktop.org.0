Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E9B6EE8EA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2995210E7E2;
	Tue, 25 Apr 2023 20:19:36 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA3010E59F;
 Tue, 25 Apr 2023 20:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682453973; x=1713989973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J3XCl9/aoI1ravKSMxjFRMxvRSGT8cm3gjRV6G3NYRk=;
 b=j+5rGWtQKmYVgPPUaO04gUvPTawnzAk33Hb4QXoxwt4muG10vMo5df8f
 F8mMWZAkIos/IQeMXLB/C7vVkexos7LOEW6on5ihVDcAjqak2yIDPtCrF
 19YERSRjU88fNTLyaNBuvU6N/H0TpVA6O7y+ABNx6meCCgxh5CcHV3llB
 df5maIlvaRIQh/eIE7Hj64JHksT0ZABxpsazIa95lirxIMTFq+1EWKYrk
 8VUQ4/CK2ex+COBPjySkBA1gOIpuzwQxME32cL4XOKi0kngotS/k6sIVJ
 a4TRhTzF79eg0LJR3hyJo1Rz5mw+xCRPLOQPDSQ+Nwz6cfDXexiVPqr5c w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="348820552"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="348820552"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:19:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="726251112"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="726251112"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga001.jf.intel.com with ESMTP; 25 Apr 2023 13:19:25 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Tue, 25 Apr 2023 13:19:24 -0700
Message-Id: <20230425201926.99086-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/2] Update intel_error_decode for Gen12
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

The error capture decoder was reporting invalid errors in batch
buffers and getting confused about the prescence of the GuC CTB. So
fix those up.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (2):
  lib/intel_decode: Decode Gen12 ring/batch instructions correctly
  tools/intel_error_decode: Correctly name the GuC CT buffer

 lib/i915/intel_decode.c    | 15 +++++++++++++--
 tools/intel_error_decode.c |  1 +
 2 files changed, 14 insertions(+), 2 deletions(-)

-- 
2.39.1

