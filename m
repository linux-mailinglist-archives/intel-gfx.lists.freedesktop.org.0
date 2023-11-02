Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DA67DF604
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:13:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B05C210E929;
	Thu,  2 Nov 2023 15:12:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B76410E073;
 Thu,  2 Nov 2023 15:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698937960; x=1730473960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GllTeDr5X3asel3oBTv59ZoUHW/F9FWypvBlv9MLNPM=;
 b=R6wh05wduqQhLWNptFtqgQVwOKqs0pbOPLBCI+DUoyjO5ZsQd6cwNU8+
 URttTbiyNAmEU0X4AefK6nYl3AmgNfaUY11aI/Z63cQfE75d0bYbkJl6F
 k/cY0juxt27PEHg0luM1M1d6NfxIxkR8Bi2zYITDbTkQHx2GjoYD6rtmU
 MYFt7rIXe29tCBwbf5n1/+siq7vQPwUrduid7wk3fWqhDBGazCs0BkWet
 K3Lmmn99Q8UKssSJXfOyZuBOwrVYzTq5Z3nbIePpl9H1gT3uHe5b2WnTd
 4YMIt7FhU04w/sd4Jnj9VbFqTF73U+BEZeNzUfw7ThEb+nF9CnpWffBxS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="373773470"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="373773470"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:12:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="711174070"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="711174070"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga003.jf.intel.com with ESMTP; 02 Nov 2023 08:12:36 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id E881D65B; Thu,  2 Nov 2023 17:12:30 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Thu,  2 Nov 2023 17:12:21 +0200
Message-Id: <20231102151228.668842-9-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.40.0.1.gaa8946217a0b
In-Reply-To: <20231102151228.668842-1-andriy.shevchenko@linux.intel.com>
References: <20231102151228.668842-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/15] drm/i915/dsi: Replace check with a
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

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 4ed5ede9ec5b..d270437217b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -653,6 +653,7 @@ static const fn_mipi_elem_exec exec_elem[] = {
  */
 
 static const char * const seq_name[] = {
+	[MIPI_SEQ_END] = "MIPI_SEQ_END",
 	[MIPI_SEQ_DEASSERT_RESET] = "MIPI_SEQ_DEASSERT_RESET",
 	[MIPI_SEQ_INIT_OTP] = "MIPI_SEQ_INIT_OTP",
 	[MIPI_SEQ_DISPLAY_ON] = "MIPI_SEQ_DISPLAY_ON",
@@ -668,7 +669,7 @@ static const char * const seq_name[] = {
 
 static const char *sequence_name(enum mipi_seq seq_id)
 {
-	if (seq_id < ARRAY_SIZE(seq_name) && seq_name[seq_id])
+	if (seq_id < ARRAY_SIZE(seq_name))
 		return seq_name[seq_id];
 
 	return "(unknown)";
-- 
2.40.0.1.gaa8946217a0b

