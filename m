Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6598351CB5D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 23:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A6C810ECAD;
	Thu,  5 May 2022 21:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A2E10EB13;
 Thu,  5 May 2022 21:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651786702; x=1683322702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ti2VBr/GwcEHmzjs9wdbrnflq83yh3G/9HSx/FbErw8=;
 b=PpXRZb37eVBxw4oZ8whPdQ+pG0SfUYWaWdxhbS9uoXHdBem2pIq0FyLo
 CsTBn/UOxkGf72IXnlGCtP19w/W10sj0U/p9Ndi9eghnbj0QiX5YVGqbW
 V+2sBEB6wG1Xy1kxaFM/VflgnjzFd+Cd/Eo28amqixsHf7SPC2Wa14cyk
 HjEYgIek8n5Io4hgMNxYKROBXgJkVZet3/cODOMmrMGlRzctuEcNPYX9/
 L2wID2tedBNytg9sfACLluW5qAO92/xd/+ugxlX1LhY7stXqZ6VM1QjaG
 /g/9eErEUNrwfWqRt3Jr5vn4OWVu+b1z/cAv14uwLa82wv9gov/PeRfMA Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="248166066"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="248166066"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 14:38:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="549553279"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 14:38:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 14:38:07 -0700
Message-Id: <20220505213812.3979301-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220505213812.3979301-1-matthew.d.roper@intel.com>
References: <20220505213812.3979301-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/12] drm/i915/gvt: Use intel_engine_mask_t
 for ring mask
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When i915 adds additional PVC blitter instances (in an upcoming patch),
the definition of VECS0 will change from bit(10) to bit(18), causing
GVT's R_ALL mask to overflow the u16 storage that's currently used.
Let's replace the u16 with an intel_engine_mask_t to ensure we avoid
this.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Zhi Wang <zhi.a.wang@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index b9eb75a2b400..0ba2a3455d99 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -428,7 +428,7 @@ struct cmd_info {
 #define R_VECS	BIT(VECS0)
 #define R_ALL (R_RCS | R_VCS | R_BCS | R_VECS)
 	/* rings that support this cmd: BLT/RCS/VCS/VECS */
-	u16 rings;
+	intel_engine_mask_t rings;
 
 	/* devices that support this cmd: SNB/IVB/HSW/... */
 	u16 devices;
-- 
2.35.1

