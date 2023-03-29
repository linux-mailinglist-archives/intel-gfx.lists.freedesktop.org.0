Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6936CF2B2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 21:04:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2501310EBA8;
	Wed, 29 Mar 2023 19:04:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0797D10E55A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 19:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680116690; x=1711652690;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7pWCgZMvfkdIPTbTzEHHtM/ify/OQvRa+VTn5mMGyV8=;
 b=Albz2A4o3kecW2wqsyQtbXRzTtPUPC58K8tffe+JhcKXWAkPiQHa5Xhc
 XCdmNmv2fd1ebQivf13aOqt+6oEt/O9QMtIJK54OdTuRsRmQAgKdUh/zX
 f9m8HlYffVukqprvCZXXLassT+Aay8qDDdYToLUTZeDlUyB2MJwlncBw2
 4pygJUQTePOgVxq2J6TQXG2ZHi51URIOKSBgP0lrfIV8nSo/TDKmgum7l
 94jg4Xelz/MC1wVMH7Uy54zMGpecfmDRKXKmHjKwhO/wejKLmdqsxCxSz
 wJ1jp5SozqxajaeLdXYVhn91lQ0jw583mocyKyFa0ZP6grbh3o6kzp0Uf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="340995485"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="340995485"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 12:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="828005877"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="828005877"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 29 Mar 2023 12:04:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 22:04:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 22:04:44 +0300
Message-Id: <20230329190445.13456-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329190445.13456-1-ville.syrjala@linux.intel.com>
References: <20230329190445.13456-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Document that PLANE_CHICKEN are
 for tgl+
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add tgl+ comments to the PLANE_CHICKEN registers which
I apparently forgot to add when defining the registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8e4aca888b7a..275ec891468c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4655,8 +4655,8 @@
 #define   PLANE_COLOR_ALPHA_DISABLE			REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 0)
 #define   PLANE_COLOR_ALPHA_SW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 2)
 #define   PLANE_COLOR_ALPHA_HW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 3)
-#define _PLANE_CHICKEN_1_A			0x7026C
-#define _PLANE_CHICKEN_2_A			0x7036C
+#define _PLANE_CHICKEN_1_A			0x7026C /* tgl+ */
+#define _PLANE_CHICKEN_2_A			0x7036C /* tgl+ */
 #define   PLANE_CHICKEN_DISABLE_DPT		REG_BIT(19) /* mtl+ */
 #define _PLANE_BUF_CFG_1_A			0x7027c
 #define _PLANE_BUF_CFG_2_A			0x7037c
-- 
2.39.2

