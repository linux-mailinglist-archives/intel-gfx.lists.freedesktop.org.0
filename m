Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DCC633C0E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C581410E3D2;
	Tue, 22 Nov 2022 12:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F318B10E3D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118913; x=1700654913;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kOlQfEuYzZtaDHe1/s3dgsd9Q4fVWy8PuIOSGvPMhgk=;
 b=AuhwoWdAyHgRXVbD4ISDjLDhEmTkqpJ87MJyOA3dbJXP5zPXOCqrizsV
 olopgYmnbF3yulMtZ0xF4TsYw0irOeMa787Y4NHSxkCyIW+ITuVJLjkBU
 nJs+q6Imih+VFfMsHl9HxYsZQV5zKmZSCjiOfZ1fdihtHPNu1xW6rUK5+
 pKt7IST0suTEG7YNOkqX5H2FOoemADqq4bes3piezoyVZ8SlefVKyjsns
 MmJh0G4Hv20YHLXEKb5wyBkpFsNBcjBr6edDYxHhf1M8KhNPAjCDORtlu
 bW2hV83077B/+z7ZtVgmtxeQ3Gx70dUYnt8Hd9ORbBUw7ZXXvv4Us2DzX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313829523"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="313829523"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395763"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395763"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:16 +0200
Message-Id: <20221122120825.26338-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/10] drm/i915/dvo/ch7xxx: Fix suspend/resume
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

Poke a few more bits into the ch7xxx to make
it output a picture after being reset during S3.

In particular we need to set the input buffer select (IBS),
and enable VGA vsync output on the BCO pin. Selecting
VGA hsync on the c/h sync pin doesn't actually seem necessary
on my ADD card at least, but the BIOS selects it so why not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/dvo_ch7xxx.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
index 54f58ba44b9f..6d948520e9a6 100644
--- a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
+++ b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
@@ -50,15 +50,26 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 #define CH7xxx_INPUT_CLOCK	0x1d
 #define CH7xxx_GPIO		0x1e
 #define CH7xxx_GPIO_HPIR	(1<<3)
+
 #define CH7xxx_IDF		0x1f
-
+#define CH7xxx_IDF_IBS		(1<<7)
+#define CH7xxx_IDF_DES		(1<<6)
 #define CH7xxx_IDF_HSP		(1<<3)
 #define CH7xxx_IDF_VSP		(1<<4)
 
 #define CH7xxx_CONNECTION_DETECT 0x20
 #define CH7xxx_CDET_DVI		(1<<5)
 
-#define CH7301_DAC_CNTL		0x21
+#define CH7xxx_DAC_CNTL		0x21
+#define CH7xxx_SYNCO_MASK	(3 << 3)
+#define CH7xxx_SYNCO_VGA_HSYNC	(1 << 3)
+
+#define CH7xxx_CLOCK_OUTPUT	0x22
+#define CH7xxx_BCOEN		(1 << 4)
+#define CH7xxx_BCOP		(1 << 3)
+#define CH7xxx_BCO_MASK		(7 << 0)
+#define CH7xxx_BCO_VGA_VSYNC	(6 << 0)
+
 #define CH7301_HOTPLUG		0x23
 #define CH7xxx_TCTL		0x31
 #define CH7xxx_TVCO		0x32
@@ -301,6 +312,8 @@ static void ch7xxx_mode_set(struct intel_dvo_device *dvo,
 
 	ch7xxx_readb(dvo, CH7xxx_IDF, &idf);
 
+	idf |= CH7xxx_IDF_IBS;
+
 	idf &= ~(CH7xxx_IDF_HSP | CH7xxx_IDF_VSP);
 	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
 		idf |= CH7xxx_IDF_HSP;
@@ -309,6 +322,11 @@ static void ch7xxx_mode_set(struct intel_dvo_device *dvo,
 		idf |= CH7xxx_IDF_VSP;
 
 	ch7xxx_writeb(dvo, CH7xxx_IDF, idf);
+
+	ch7xxx_writeb(dvo, CH7xxx_DAC_CNTL,
+		      CH7xxx_SYNCO_VGA_HSYNC);
+	ch7xxx_writeb(dvo, CH7xxx_CLOCK_OUTPUT,
+		      CH7xxx_BCOEN | CH7xxx_BCO_VGA_VSYNC);
 }
 
 /* set the CH7xxx power state */
-- 
2.37.4

