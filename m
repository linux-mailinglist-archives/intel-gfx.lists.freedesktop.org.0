Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 740C28FB724
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBEC10E4EE;
	Tue,  4 Jun 2024 15:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b5J7ENo2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8671710E4FC
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514955; x=1749050955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0J7Qd0gm8cbCDBEesvVizLH7Tt0tHilNy9p2ASyAg6A=;
 b=b5J7ENo2sXiMr5yOOGXMudQmzhcOFw+pzlKL+btuIGljr4UTCz8C0+/9
 Ia0aXu6qIjuVV3Pb54H3Zoz0SDqVsPk37TNSnAKxierjaKl3XqObKTRAf
 gg1PrtFE7mrbS9vkATgYPjtUhrrQ7fdUnFf72cGxZK9SEX/rwR5Xd3F2L
 Eb+fkUh7YwNQW27Qj4jegg3e9yb44GzutOQJ7lAZby1ZHO6KTrgMbjXSV
 OOPcj6GptitIEXGuWJuGeyuX7vVqjHA9gXnuztz38+7KJHCjigz7/tkoT
 7NR0qN3xUaMnIHywR2PCeyp5QBBxoDqU+rKhyPy9H9PEYYj3+OLAAPG+O Q==;
X-CSE-ConnectionGUID: x2y6MZJyTt6A/pC6/YofkQ==
X-CSE-MsgGUID: AymMYTx8SBCHZ7dcaSePCQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949591"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949591"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:15 -0700
X-CSE-ConnectionGUID: f7LYaYXvSqezM4/9865I6g==
X-CSE-MsgGUID: qLpGmusqTUeiFZrHWTuH8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60465647"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 35/65] drm/i915: pass dev_priv explicitly to SWF3
Date: Tue,  4 Jun 2024 18:25:53 +0300
Message-Id: <5ab27d6a4366617ba273e526a46a505c3d3c3295.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the SWF3 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h     |  2 +-
 drivers/gpu/drm/i915/i915_suspend.c | 12 ++++++++----
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 81f1b491d7af..2f942882e7ed 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2292,7 +2292,7 @@
  */
 #define SWF0(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70410 + (i) * 4)
 #define SWF1(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x71410 + (i) * 4)
-#define SWF3(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
+#define SWF3(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
 #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
 
 /* Pipe B */
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index 8a71c1f52cb4..f8373a461f17 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -46,7 +46,8 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
 								      SWF1(dev_priv, i));
 		}
 		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
+			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
+								      SWF3(dev_priv, i));
 	} else if (GRAPHICS_VER(dev_priv) == 2) {
 		for (i = 0; i < 7; i++)
 			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
@@ -59,7 +60,8 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
 								      SWF1(dev_priv, i));
 		}
 		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv, SWF3(i));
+			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
+								      SWF3(dev_priv, i));
 	}
 }
 
@@ -76,7 +78,8 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
 				       dev_priv->regfile.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
+			intel_de_write(dev_priv, SWF3(dev_priv, i),
+				       dev_priv->regfile.saveSWF3[i]);
 	} else if (GRAPHICS_VER(dev_priv) == 2) {
 		for (i = 0; i < 7; i++)
 			intel_de_write(dev_priv, SWF1(dev_priv, i),
@@ -89,7 +92,8 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
 				       dev_priv->regfile.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(i), dev_priv->regfile.saveSWF3[i]);
+			intel_de_write(dev_priv, SWF3(dev_priv, i),
+				       dev_priv->regfile.saveSWF3[i]);
 	}
 }
 
-- 
2.39.2

