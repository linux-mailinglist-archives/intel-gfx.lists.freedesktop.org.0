Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CA2653C24
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 07:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C8E10E4FC;
	Thu, 22 Dec 2022 06:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72AC810E4FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 06:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671690796; x=1703226796;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Kx+Qca3C5U9KMFWpHOVp+TD2poCa4RY7PKoall+LjCY=;
 b=dDR8dnWd/OwwyJQD1wh2lDpcG0i7PsoV1sMQ8WfVEcg5QQkBFRBkeITa
 XF8zVEOAwKINwS0QdEiBz+gOQc+ZMI5rrZVNC+V3WI4N8pYtFx8hMowjc
 hhg0BaEzlGXS2JtdL4iqeL5tygnVXmEDQSqNK8TD5fUONzh+/GiKR4s+N
 0N1EcxR9QK5ZONOzMWftBEO7jiF13ka9g8SjE/tb6Trth4sL7p4bx/O8H
 3rxBXuplV3gohOgwjt71nMVz+pJ0dM6Oht4BrK4ZDE2PoAffM+JhwrJap
 gN6HlEM9C0O8Mafohffkb4Eq0lNdon+vAaJGaJpv7X+KF9NUvJGZE8+P/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="321972647"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="321972647"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 22:33:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="684081132"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="684081132"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 22:33:14 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 12:04:28 +0530
Message-Id: <20221222063428.3052172-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsb: Remove check for dsb in dsb_commit
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

The dsb context should be already checked for NULL, before dsb_commit gets
called. So remove the check for dsb inside dsb_commit.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 3d63c1bf1e4f..ce1f8e0c2cd9 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -228,7 +228,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 	enum pipe pipe = crtc->pipe;
 	u32 tail;
 
-	if (!(dsb && dsb->free_pos))
+	if (!dsb->free_pos)
 		return;
 
 	if (!intel_dsb_enable_engine(dev_priv, pipe, dsb->id))
-- 
2.25.1

