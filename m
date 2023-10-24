Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 994717D5715
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 17:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEE710E3ED;
	Tue, 24 Oct 2023 15:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A7B910E0B9;
 Tue, 24 Oct 2023 15:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698163067; x=1729699067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yFwM2WjkU3iKZYfcHCR7ptmZ6IIfrOEWKYyPqqzrsNU=;
 b=Vax2yMUP30TFX288W+7OGLcVMNJagyQbW7stnJ0iGoNE0Rzn9gBI1xh7
 rG6IaRIaXZmjsj8uwF8ndc8m3sXV9gRA0gnn3TEiTmDNJV+QA2Uup7IUD
 iPFaaxlIkdXDhXvFGXkuS7BkU4gMAWdwKNbBxyWynH8qJRj+I4zpTu/gE
 1LfUx0qWVJJMlv8F/pz2YHemtfUFVmogQc0pgLXf0yWGOCcTg/07f8i4o
 7vOpbE3EfbafL0XCoIFozm2qZzvlYwZ/XNPRxb5VjOPK9OfIG1G0Juj1r
 U8kegV0a/WBdxKKoAveYFvAYMFXYr3bHVhKjyNMXglPR+xdsQzwQjnktV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="8649777"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="8649777"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 08:57:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="902233852"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="902233852"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2023 08:55:22 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 2A9C281C; Tue, 24 Oct 2023 18:57:42 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Date: Tue, 24 Oct 2023 18:57:35 +0300
Message-Id: <20231024155739.3861342-4-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.40.0.1.gaa8946217a0b
In-Reply-To: <20231024155739.3861342-1-andriy.shevchenko@linux.intel.com>
References: <20231024155739.3861342-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915/dsi: Replace check with a
 (missing) MIPI sequence name
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
Cc: Hans de Goede <hdegoede@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Names of the MIPI sequence steps are sequential and defined, no
need to check for the gaps. However in seq_name the MIPI_SEQ_END
is missing. Add it there, and drop unneeded NULL check in
sequence_name().

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 22b89e68e6de..1014051a6866 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -658,6 +658,7 @@ static const fn_mipi_elem_exec exec_elem[] = {
  */
 
 static const char * const seq_name[] = {
+	[MIPI_SEQ_END] = "MIPI_SEQ_END",
 	[MIPI_SEQ_DEASSERT_RESET] = "MIPI_SEQ_DEASSERT_RESET",
 	[MIPI_SEQ_INIT_OTP] = "MIPI_SEQ_INIT_OTP",
 	[MIPI_SEQ_DISPLAY_ON] = "MIPI_SEQ_DISPLAY_ON",
@@ -673,7 +674,7 @@ static const char * const seq_name[] = {
 
 static const char *sequence_name(enum mipi_seq seq_id)
 {
-	if (seq_id < ARRAY_SIZE(seq_name) && seq_name[seq_id])
+	if (seq_id < ARRAY_SIZE(seq_name))
 		return seq_name[seq_id];
 
 	return "(unknown)";
-- 
2.40.0.1.gaa8946217a0b

