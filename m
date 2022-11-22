Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 317E4633C10
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4FF10E3E3;
	Tue, 22 Nov 2022 12:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7860810E3DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118917; x=1700654917;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bt7SkouqrNUWTnVSn24AYxzMzCbnuUNThEKomIa2Kbs=;
 b=gAeZVnOuLmpwd8SvMn93qfdfWYwqO9JfshdKdU8YmDjlUKShNePE9wZS
 6DGXzl+L9vISw2I4zBL46aVkTMVaWf/AFjN+rYJO9d4a84BwM7jZcuA64
 Vo1ZB2HcHQZts9l8Fq8P9F4Ol2qT0G30M/GtPJ/P25C8h/txPHQE9GKGe
 H4J98VRK+cmE5Af/rW0hyvdz6FTxHX1KgtTtWGhu9DJI8/HJg6q7gGhF5
 y/6VkaFoqGlyleRrg9HL9vhWtDTEFyQwhhQITmomY7zi36PPIv1/LCTWc
 NoSuZCUZOUuu3T1w3dDryi8Iqo+zPtQ568oH5zFMIEKsHT/NH0ixt97c1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313829537"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="313829537"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395807"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395807"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:18 +0200
Message-Id: <20221122120825.26338-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/10] drm/i915/dvo/sil164: Fix suspend/resume
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

Poke a few more bits into the SiI164 to make it
recover after S3. HEN/VEN are the important bits,
the rest PLL filter/HPD detection I just did
for good measure to match the BIOS programming.

Note that the spec recommended SCNT bit in REGC
isn't set by the BIOS at least for me, so I left
it out.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/dvo_sil164.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/dvo_sil164.c b/drivers/gpu/drm/i915/display/dvo_sil164.c
index 32dd3b969946..4acc8ce29c0b 100644
--- a/drivers/gpu/drm/i915/display/dvo_sil164.c
+++ b/drivers/gpu/drm/i915/display/dvo_sil164.c
@@ -58,6 +58,10 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 #define SIL164_9_MDI (1<<0)
 
 #define SIL164_REGC 0x0c
+#define SIL164_C_SCNT (1<<7)
+#define SIL164_C_PLLF_MASK (0xf<<1)
+#define SIL164_C_PLLF_REC (4<<1)
+#define SIL164_C_PFEN (1<<0)
 
 struct sil164_priv {
 	//I2CDevRec d;
@@ -205,6 +209,13 @@ static void sil164_mode_set(struct intel_dvo_device *dvo,
 	  sil164_writeb(sil, 0x0c, 0x89);
 	  sil164_writeb(sil, 0x08, 0x31);*/
 	/* don't do much */
+
+	sil164_writeb(dvo, SIL164_REG8,
+		      SIL164_8_VEN | SIL164_8_HEN);
+	sil164_writeb(dvo, SIL164_REG9,
+		      SIL164_9_TSEL);
+	sil164_writeb(dvo, SIL164_REGC,
+		      SIL164_C_PLLF_REC | SIL164_C_PFEN);
 }
 
 /* set the SIL164 power state */
-- 
2.37.4

