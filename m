Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 801EA53CCC0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 17:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3B0113AC9;
	Fri,  3 Jun 2022 15:55:49 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 985A0113AC4;
 Fri,  3 Jun 2022 15:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654271747; x=1685807747;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JLStB+HB949mN1YYKYVpOVuSyPQ0/CBF3pw7+oyzkHY=;
 b=Fu0wOa/MEuXH3ePhmaN2Ht1BZyRv5GKSZL4K8CoIRMhLdAKX73Ep032f
 j2vo3zXmb4AxJgG0oM8k32jp7X+CBc3CeO6X5owMIb9/co6ggo7cFxaKH
 ThjcMRKeYZ21KfZE/vbtnZFhZWTbd/U1NDfCK9+zwEDW/4jcQOPqBPaBR
 BZEIwzX/1q20vuQKu3BWQrm4Iv5sqX84IhL6yuOx8aVglB4g5pTVAi6IA
 XbrWAw7VhZ+Ng7ykR1tD1hw4/ybywRmCXvBQ0hmI4UkkqbOKFXVoH7iou
 7Ym8WIlYFeu8O5HqzhhXmF/2jETVnxc53xyN8HfIp74K/LzE2guSSMpn1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10367"; a="275081301"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="275081301"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 08:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="607455241"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 03 Jun 2022 08:55:46 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Fri,  3 Jun 2022 08:55:44 -0700
Message-Id: <20220603155546.2248816-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t 0/2] Update DRM UAPI and add test for
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

v2: Rebased to newer baseline.
v3: Update UAPI header file.
v4: Use correct method for updating header file.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (1):
  include/drm-uapi: Update to latest i915_drm.h

Rodrigo Vivi (1):
  tests/i915/query: Query, parse and validate the hwconfig table

 include/drm-uapi/i915_drm.h | 398 ++++++++++++++++++++++++++++--------
 lib/intel_hwconfig_types.h  | 118 +++++++++++
 tests/i915/i915_query.c     | 179 ++++++++++++++++
 3 files changed, 609 insertions(+), 86 deletions(-)
 create mode 100644 lib/intel_hwconfig_types.h

-- 
2.36.0

