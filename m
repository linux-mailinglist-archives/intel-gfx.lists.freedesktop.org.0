Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F495EFAB9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 18:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACECA10EAFE;
	Thu, 29 Sep 2022 16:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48D0810EAE2;
 Thu, 29 Sep 2022 16:31:36 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9E9D15807D7;
 Thu, 29 Sep 2022 12:31:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 29 Sep 2022 12:31:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1664469095; x=
 1664476295; bh=vGuGLAfL7usGqy8vr+tA6YsDBe/KXU7K93R37BrO/Z0=; b=K
 4Wf80RkaqL5xUNPZznSxeelkGF/UHZph7kBK9Ulo3Cwqbo2o7RGxT79fX5W/XQVX
 PB0bWVMf2k5X7NLe+aVxWJSvUc53a+FPRxtWnN1Y5K1KT5ehLw+lfaisFMPulIAp
 1Om4DJUIR7nWTvcsLk1T3vnIoffWnewJY2RBaFhvem7ec1qkMSFjq7Q2MBDaQYaR
 0mLh9ZvCLjC8GuaeIjHJhNI17ube9HGvuHnzy0JmESL8glN6sTvPsEtawcAMk9XI
 q/OPfkH0iq8bdR1a4DFc7bLMMRJAUwIGFdYK7QInCwlhmRb1qeCt1V0CbqVRq7j6
 PpIHaylcs7w0YzmPn1GfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1664469095; x=
 1664476295; bh=vGuGLAfL7usGqy8vr+tA6YsDBe/KXU7K93R37BrO/Z0=; b=J
 lXEaVnYbMqnxVBQPrcg02w+vk9JgSaRtwUmnm2xAFiZ/pM/ou53OmVtPDK3C2FxC
 k/CBvBL1C2XLquJ8Y/pJPeRm1iypHZzY3Wv6W2lamhW7j3f8tC8zhji3ErcrOZqk
 AZusPiThP+BcCuufyY3mB1EqniMdyfKUxt0eePqELj9MTSEvrMSofZHaMENcWLbN
 kD7cxuhzaXX6JpSqyO6cFPatL5Toht4a98woJ64HmvWJbn5813LL8Bj9cCpZsKkj
 Vc7qVjuy6Snc+Xi9sQrNZfRSRHKBSps+FmB3fD15zQAvLpdl6McTcga9GMymESem
 jct60a68MD4gTqsSPcnbw==
X-ME-Sender: <xms:Zsg1Y2TbDzeSGbcOwJs1txrUDBOPguuhiLH_DP0_BSsyvYNDOLPKfQ>
 <xme:Zsg1Y7xdAvERnXJxmNhbpXzdKi1DG5igTKh4jE8CsQOoH_pAGiqF1Ez9dLHA46DHY
 __W7t6LtD030dq55qw>
X-ME-Received: <xmr:Zsg1Yz0p6SarEExigoa8jsi1vZFPs0Bnr5fUmP4R3ViKPkW2cgiBVGH2j1GI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeehtddguddtvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhfffugggtgffkfhgjvfevofesthekredtredtjeenucfhrhhomhepofgr
 gihimhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtf
 frrghtthgvrhhnpeehteehteeuveeujeefkeejjeekfeefkedvgfduleffudehffevgfeg
 keefudeludenucffohhmrghinheprghrtghhihhvvgdrohhrghdpkhholhhumhgsuhhsrd
 hfihdphhhinhhnvghrrdhinhhfohdpsggrthhsohgtkhhsrdgtohdruhhknecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvg
 hrnhhordhtvggthh
X-ME-Proxy: <xmx:Z8g1YyDJcju4X2GPB_L-gscYUsSucUngI93FOfrkjwe5AkgEXcE9Vg>
 <xmx:Z8g1Y_gmVtYiTFvr-ifXTwupiSkPZsHvVReIgCdMdmNr8HowBgDSxw>
 <xmx:Z8g1Y-oDOCcJ21XhG5btoAwHC-aNGtAK2BRK0gB6ULT-UkCUsu0Ysw>
 <xmx:Z8g1Y1MV6Mnv1bb60Pbt-lr8QPWU4xEGr0QmFX2e4Uxr54W6IQJCug>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Sep 2022 12:31:34 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 29 Sep 2022 18:31:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220728-rpi-analog-tv-properties-v4-11-60d38873f782@cerno.tech>
References: <20220728-rpi-analog-tv-properties-v4-0-60d38873f782@cerno.tech>
In-Reply-To: <20220728-rpi-analog-tv-properties-v4-0-60d38873f782@cerno.tech>
To: Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Karol Herbst <kherbst@redhat.com>, 
 Samuel Holland <samuel@sholland.org>, Lyude Paul <lyude@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 Emma Anholt <emma@anholt.net>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Ben Skeggs <bskeggs@redhat.com>, David Airlie <airlied@linux.ie>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.11.0-dev-7da52
X-Developer-Signature: v=1; a=openpgp-sha256; l=23169; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=ggkZwa9aNUcRxh9Mhogs7oNatHgb7EuUBj3TNIxa9s8=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMmmJ9yrXvIcnMkWeXnT2twji3yaL6kq5ThyesX8l/ml9HpW
 sO/vjlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEykQpnhr8jXHs1LOtNmvn/edLS/em
 r73527NTbYOVVEzXX4pazB9oLhf2lRh/Wdi22LZ3fEMU2XPmn+L7Vh0elDUw8e3Xp/a3TTBW4A
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
Subject: [Intel-gfx] [PATCH v4 11/30] drm/modes: Add a function to generate
 analog display modes
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
Cc: Dom Cobley <dom@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>, nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>, Hans de Goede <hdegoede@redhat.com>, Noralf Trønnes <noralf@tronnes.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Maxime Ripard <maxime@cerno.tech>, linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Multiple drivers (meson, vc4, sun4i) define analog TV 525-lines and
625-lines modes in their drivers.

Since those modes are fairly standard, and that we'll need to use them
in more places in the future, it makes sense to move their definition
into the core framework.

However, analog display usually have fairly loose timings requirements,
the only discrete parameters being the total number of lines and pixel
clock frequency. Thus, we created a function that will create a display
mode from the standard, the pixel frequency and the active area.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes in v4:
- Reworded the line length check comment
- Switch to HZ_PER_KHZ in tests
- Use previous timing to fill our mode
- Move the number of lines check earlier
---
 drivers/gpu/drm/drm_modes.c            | 474 +++++++++++++++++++++++++++++++++
 drivers/gpu/drm/tests/Makefile         |   1 +
 drivers/gpu/drm/tests/drm_modes_test.c | 144 ++++++++++
 include/drm/drm_modes.h                |  17 ++
 4 files changed, 636 insertions(+)

diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 304004fb80aa..7cf2fe98d7d2 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -116,6 +116,480 @@ void drm_mode_probed_add(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_mode_probed_add);
 
+enum drm_mode_analog {
+	DRM_MODE_ANALOG_NTSC, /* 525 lines, 60Hz */
+	DRM_MODE_ANALOG_PAL, /* 625 lines, 50Hz */
+};
+
+/*
+ * The timings come from:
+ * - https://web.archive.org/web/20220406232708/http://www.kolumbus.fi/pami1/video/pal_ntsc.html
+ * - https://web.archive.org/web/20220406124914/http://martin.hinner.info/vga/pal.html
+ * - https://web.archive.org/web/20220609202433/http://www.batsocks.co.uk/readme/video_timing.htm
+ */
+#define NTSC_LINE_DURATION_NS		63556U
+#define NTSC_LINES_NUMBER		525
+
+#define NTSC_HBLK_DURATION_TYP_NS	10900U
+#define NTSC_HBLK_DURATION_MIN_NS	(NTSC_HBLK_DURATION_TYP_NS - 200)
+#define NTSC_HBLK_DURATION_MAX_NS	(NTSC_HBLK_DURATION_TYP_NS + 200)
+
+#define NTSC_HACT_DURATION_TYP_NS	(NTSC_LINE_DURATION_NS - NTSC_HBLK_DURATION_TYP_NS)
+#define NTSC_HACT_DURATION_MIN_NS	(NTSC_LINE_DURATION_NS - NTSC_HBLK_DURATION_MAX_NS)
+#define NTSC_HACT_DURATION_MAX_NS	(NTSC_LINE_DURATION_NS - NTSC_HBLK_DURATION_MIN_NS)
+
+#define NTSC_HFP_DURATION_TYP_NS	1500
+#define NTSC_HFP_DURATION_MIN_NS	1270
+#define NTSC_HFP_DURATION_MAX_NS	2220
+
+#define NTSC_HSLEN_DURATION_TYP_NS	4700
+#define NTSC_HSLEN_DURATION_MIN_NS	(NTSC_HSLEN_DURATION_TYP_NS - 100)
+#define NTSC_HSLEN_DURATION_MAX_NS	(NTSC_HSLEN_DURATION_TYP_NS + 100)
+
+#define NTSC_HBP_DURATION_TYP_NS	4700
+
+/*
+ * I couldn't find the actual tolerance for the back porch, so let's
+ * just reuse the sync length ones.
+ */
+#define NTSC_HBP_DURATION_MIN_NS	(NTSC_HBP_DURATION_TYP_NS - 100)
+#define NTSC_HBP_DURATION_MAX_NS	(NTSC_HBP_DURATION_TYP_NS + 100)
+
+#define PAL_LINE_DURATION_NS		64000U
+#define PAL_LINES_NUMBER		625
+
+#define PAL_HACT_DURATION_TYP_NS	51950U
+#define PAL_HACT_DURATION_MIN_NS	(PAL_HACT_DURATION_TYP_NS - 100)
+#define PAL_HACT_DURATION_MAX_NS	(PAL_HACT_DURATION_TYP_NS + 400)
+
+#define PAL_HBLK_DURATION_TYP_NS	(PAL_LINE_DURATION_NS - PAL_HACT_DURATION_TYP_NS)
+#define PAL_HBLK_DURATION_MIN_NS	(PAL_LINE_DURATION_NS - PAL_HACT_DURATION_MAX_NS)
+#define PAL_HBLK_DURATION_MAX_NS	(PAL_LINE_DURATION_NS - PAL_HACT_DURATION_MIN_NS)
+
+#define PAL_HFP_DURATION_TYP_NS		1650
+#define PAL_HFP_DURATION_MIN_NS		(PAL_HFP_DURATION_TYP_NS - 100)
+#define PAL_HFP_DURATION_MAX_NS		(PAL_HFP_DURATION_TYP_NS + 400)
+
+#define PAL_HSLEN_DURATION_TYP_NS	4700
+#define PAL_HSLEN_DURATION_MIN_NS	(PAL_HSLEN_DURATION_TYP_NS - 200)
+#define PAL_HSLEN_DURATION_MAX_NS	(PAL_HSLEN_DURATION_TYP_NS + 200)
+
+#define PAL_HBP_DURATION_TYP_NS		5700
+#define PAL_HBP_DURATION_MIN_NS		(PAL_HBP_DURATION_TYP_NS - 200)
+#define PAL_HBP_DURATION_MAX_NS		(PAL_HBP_DURATION_TYP_NS + 200)
+
+struct analog_param_field {
+	unsigned int even, odd;
+};
+
+#define PARAM_FIELD(_odd, _even)		\
+	{ .even = _even, .odd = _odd }
+
+struct analog_param_range {
+	unsigned int	min, typ, max;
+};
+
+#define PARAM_RANGE(_min, _typ, _max)		\
+	{ .min = _min, .typ = _typ, .max = _max }
+
+struct analog_parameters {
+	unsigned int			num_lines;
+	unsigned int			line_duration_ns;
+
+	struct analog_param_range	hact_ns;
+	struct analog_param_range	hfp_ns;
+	struct analog_param_range	hslen_ns;
+	struct analog_param_range	hbp_ns;
+	struct analog_param_range	hblk_ns;
+
+	unsigned int			bt601_hfp;
+
+	struct analog_param_field	vfp_lines;
+	struct analog_param_field	vslen_lines;
+	struct analog_param_field	vbp_lines;
+};
+
+#define TV_MODE_PARAMETER(_mode, _lines, _line_dur, _hact, _hfp, _hslen, _hbp, _hblk, _bt601_hfp, _vfp, _vslen, _vbp) \
+	[_mode] = {							\
+		.num_lines = _lines,					\
+		.line_duration_ns = _line_dur,				\
+		.hact_ns = _hact,					\
+		.hfp_ns = _hfp,						\
+		.hslen_ns = _hslen,					\
+		.hbp_ns = _hbp,						\
+		.hblk_ns = _hblk,					\
+		.bt601_hfp = _bt601_hfp,				\
+		.vfp_lines = _vfp,					\
+		.vslen_lines = _vslen,					\
+		.vbp_lines = _vbp,					\
+	}
+
+const static struct analog_parameters tv_modes_parameters[] = {
+	TV_MODE_PARAMETER(DRM_MODE_ANALOG_NTSC,
+			  NTSC_LINES_NUMBER,
+			  NTSC_LINE_DURATION_NS,
+			  PARAM_RANGE(NTSC_HACT_DURATION_MIN_NS,
+				      NTSC_HACT_DURATION_TYP_NS,
+				      NTSC_HACT_DURATION_MAX_NS),
+			  PARAM_RANGE(NTSC_HFP_DURATION_MIN_NS,
+				      NTSC_HFP_DURATION_TYP_NS,
+				      NTSC_HFP_DURATION_MAX_NS),
+			  PARAM_RANGE(NTSC_HSLEN_DURATION_MIN_NS,
+				      NTSC_HSLEN_DURATION_TYP_NS,
+				      NTSC_HSLEN_DURATION_MAX_NS),
+			  PARAM_RANGE(NTSC_HBP_DURATION_MIN_NS,
+				      NTSC_HBP_DURATION_TYP_NS,
+				      NTSC_HBP_DURATION_MAX_NS),
+			  PARAM_RANGE(NTSC_HBLK_DURATION_MIN_NS,
+				      NTSC_HBLK_DURATION_TYP_NS,
+				      NTSC_HBLK_DURATION_MAX_NS),
+			  16,
+			  PARAM_FIELD(3, 3),
+			  PARAM_FIELD(3, 3),
+			  PARAM_FIELD(16, 17)),
+	TV_MODE_PARAMETER(DRM_MODE_ANALOG_PAL,
+			  PAL_LINES_NUMBER,
+			  PAL_LINE_DURATION_NS,
+			  PARAM_RANGE(PAL_HACT_DURATION_MIN_NS,
+				      PAL_HACT_DURATION_TYP_NS,
+				      PAL_HACT_DURATION_MAX_NS),
+			  PARAM_RANGE(PAL_HFP_DURATION_MIN_NS,
+				      PAL_HFP_DURATION_TYP_NS,
+				      PAL_HFP_DURATION_MAX_NS),
+			  PARAM_RANGE(PAL_HSLEN_DURATION_MIN_NS,
+				      PAL_HSLEN_DURATION_TYP_NS,
+				      PAL_HSLEN_DURATION_MAX_NS),
+			  PARAM_RANGE(PAL_HBP_DURATION_MIN_NS,
+				      PAL_HBP_DURATION_TYP_NS,
+				      PAL_HBP_DURATION_MAX_NS),
+			  PARAM_RANGE(PAL_HBLK_DURATION_MIN_NS,
+				      PAL_HBLK_DURATION_TYP_NS,
+				      PAL_HBLK_DURATION_MAX_NS),
+			  12,
+
+			  /*
+			   * The front porch is actually 6 short sync
+			   * pulses for the even field, and 5 for the
+			   * odd field. Each sync takes half a life so
+			   * the odd field front porch is shorter by
+			   * half a line.
+			   *
+			   * In progressive, we're supposed to use 6
+			   * pulses, so we're fine there
+			   */
+			  PARAM_FIELD(3, 2),
+
+			  /*
+			   * The vsync length is 5 long sync pulses,
+			   * each field taking half a line. We're
+			   * shorter for both fields by half a line.
+			   *
+			   * In progressive, we're supposed to use 5
+			   * pulses, so we're off by half
+			   * a line.
+			   *
+			   * In interlace, we're now off by half a line
+			   * for the even field and one line for the odd
+			   * field.
+			   */
+			  PARAM_FIELD(3, 3),
+
+			  /*
+			   * The back porch starts with post-equalizing
+			   * pulses, consisting in 5 short sync pulses
+			   * for the even field, 4 for the odd field. In
+			   * progressive, it's 5 short syncs.
+			   *
+			   * In progressive, we thus have 2.5 lines,
+			   * plus the 0.5 line we were missing
+			   * previously, so we should use 3 lines.
+			   *
+			   * In interlace, the even field is in the
+			   * exact same case than progressive. For the
+			   * odd field, we should be using 2 lines but
+			   * we're one line short, so we'll make up for
+			   * it here by using 3.
+			   *
+			   * The entire blanking area is supposed to
+			   * take 25 lines, so we also need to account
+			   * for the rest of the blanking area that
+			   * can't be in either the front porch or sync
+			   * period.
+			   */
+			  PARAM_FIELD(19, 20)),
+};
+
+static int fill_analog_mode(struct drm_device *dev,
+			    struct drm_display_mode *mode,
+			    const struct analog_parameters *params,
+			    unsigned long pixel_clock_hz,
+			    unsigned int hactive,
+			    unsigned int vactive,
+			    bool interlace)
+{
+	unsigned long pixel_duration_ns = NSEC_PER_SEC / pixel_clock_hz;
+	unsigned int htotal, vtotal;
+	unsigned int max_hact, hact_duration_ns;
+	unsigned int hblk, hblk_duration_ns;
+	unsigned int hfp, hfp_duration_ns;
+	unsigned int hslen, hslen_duration_ns;
+	unsigned int hbp, hbp_duration_ns;
+	unsigned int porches, porches_duration_ns;
+	unsigned int vfp, vfp_min;
+	unsigned int vbp, vbp_min;
+	unsigned int vslen;
+	bool bt601 = false;
+	int porches_rem;
+	u64 result;
+
+	drm_dbg_kms(dev,
+		    "Generating a %ux%u%c, %u-line mode with a %lu kHz clock\n",
+		    hactive, vactive,
+		    interlace ? 'i' : 'p',
+		    params->num_lines,
+		    pixel_clock_hz / 1000);
+
+	max_hact = params->hact_ns.max / pixel_duration_ns;
+	if (pixel_clock_hz == 13500000 && hactive > max_hact && hactive <= 720) {
+		drm_dbg_kms(dev, "Trying to generate a BT.601 mode. Disabling checks.\n");
+		bt601 = true;
+	}
+
+	/*
+	 * Our pixel duration is going to be round down by the division,
+	 * so rounding up is probably going to introduce even more
+	 * deviation.
+	 */
+	result = (u64)params->line_duration_ns * pixel_clock_hz;
+	do_div(result, NSEC_PER_SEC);
+	htotal = result;
+
+	drm_dbg_kms(dev, "Total Horizontal Number of Pixels: %u\n", htotal);
+
+	hact_duration_ns = hactive * pixel_duration_ns;
+	if (!bt601 &&
+	    (hact_duration_ns < params->hact_ns.min ||
+	     hact_duration_ns > params->hact_ns.max)) {
+		DRM_ERROR("Invalid horizontal active area duration: %uns (min: %u, max %u)\n",
+			  hact_duration_ns, params->hact_ns.min, params->hact_ns.max);
+		return -EINVAL;
+	}
+
+	hblk = htotal - hactive;
+	drm_dbg_kms(dev, "Horizontal Blanking Period: %u\n", hblk);
+
+	hblk_duration_ns = hblk * pixel_duration_ns;
+	if (!bt601 &&
+	    (hblk_duration_ns < params->hblk_ns.min ||
+	     hblk_duration_ns > params->hblk_ns.max)) {
+		DRM_ERROR("Invalid horizontal blanking duration: %uns (min: %u, max %u)\n",
+			  hblk_duration_ns, params->hblk_ns.min, params->hblk_ns.max);
+		return -EINVAL;
+	}
+
+	hslen = DIV_ROUND_UP(params->hslen_ns.typ, pixel_duration_ns);
+	drm_dbg_kms(dev, "Horizontal Sync Period: %u\n", hslen);
+
+	hslen_duration_ns = hslen * pixel_duration_ns;
+	if (!bt601 &&
+	    (hslen_duration_ns < params->hslen_ns.min ||
+	     hslen_duration_ns > params->hslen_ns.max)) {
+		DRM_ERROR("Invalid horizontal sync duration: %uns (min: %u, max %u)\n",
+			  hslen_duration_ns, params->hslen_ns.min, params->hslen_ns.max);
+		return -EINVAL;
+	}
+
+	porches = hblk - hslen;
+	drm_dbg_kms(dev, "Remaining horizontal pixels for both porches: %u\n", porches);
+
+	porches_duration_ns = porches * pixel_duration_ns;
+	if (!bt601 &&
+	    (porches_duration_ns > (params->hfp_ns.max + params->hbp_ns.max) ||
+	     porches_duration_ns < (params->hfp_ns.min + params->hbp_ns.min))) {
+		DRM_ERROR("Invalid horizontal porches duration: %uns\n", porches_duration_ns);
+		return -EINVAL;
+	}
+
+	if (bt601) {
+		hfp = params->bt601_hfp;
+	} else {
+		unsigned int hfp_min = DIV_ROUND_UP(params->hfp_ns.min,
+						    pixel_duration_ns);
+		unsigned int hbp_min = DIV_ROUND_UP(params->hbp_ns.min,
+						    pixel_duration_ns);
+		 int porches_rem = porches - hfp_min - hbp_min;
+
+		hfp = hfp_min + DIV_ROUND_UP(porches_rem, 2);
+	}
+
+	drm_dbg_kms(dev, "Horizontal Front Porch: %u\n", hfp);
+
+	hfp_duration_ns = hfp * pixel_duration_ns;
+	if (!bt601 &&
+	    (hfp_duration_ns < params->hfp_ns.min ||
+	     hfp_duration_ns > params->hfp_ns.max)) {
+		DRM_ERROR("Invalid horizontal front porch duration: %uns (min: %u, max %u)\n",
+			  hfp_duration_ns, params->hfp_ns.min, params->hfp_ns.max);
+		return -EINVAL;
+	}
+
+	hbp = porches - hfp;
+	drm_dbg_kms(dev, "Horizontal Back Porch: %u\n", hbp);
+
+	hbp_duration_ns = hbp * pixel_duration_ns;
+	if (!bt601 &&
+	    (hbp_duration_ns < params->hbp_ns.min ||
+	     hbp_duration_ns > params->hbp_ns.max)) {
+		DRM_ERROR("Invalid horizontal back porch duration: %uns (min: %u, max %u)\n",
+			  hbp_duration_ns, params->hbp_ns.min, params->hbp_ns.max);
+		return -EINVAL;
+	}
+
+	if (htotal != (hactive + hfp + hslen + hbp))
+		return -EINVAL;
+
+	mode->clock = pixel_clock_hz / 1000;
+	mode->hdisplay = hactive;
+	mode->hsync_start = mode->hdisplay + hfp;
+	mode->hsync_end = mode->hsync_start + hslen;
+	mode->htotal = mode->hsync_end + hbp;
+
+	if (interlace) {
+		vfp_min = params->vfp_lines.even + params->vfp_lines.odd;
+		vbp_min = params->vbp_lines.even + params->vbp_lines.odd;
+		vslen = params->vslen_lines.even + params->vslen_lines.odd;
+	} else {
+		/*
+		 * By convention, NSTC (aka 525/60) systems start with
+		 * the even field, but PAL (aka 625/50) systems start
+		 * with the odd one.
+		 *
+		 * PAL systems also have asymetric timings between the
+		 * even and odd field, while NTSC is symetric.
+		 *
+		 * Moreover, if we want to create a progressive mode for
+		 * PAL, we need to use the odd field timings.
+		 *
+		 * Since odd == even for NTSC, we can just use the odd
+		 * one all the time to simplify the code a bit.
+		 */
+		vfp_min = params->vfp_lines.odd;
+		vbp_min = params->vbp_lines.odd;
+		vslen = params->vslen_lines.odd;
+	}
+
+	drm_dbg_kms(dev, "Vertical Sync Period: %u\n", vslen);
+
+	porches = params->num_lines - vactive - vslen;
+	drm_dbg_kms(dev, "Remaining vertical pixels for both porches: %u\n", porches);
+
+	porches_rem = porches - vfp_min - vbp_min;
+	vfp = vfp_min + (porches_rem / 2);
+	drm_dbg_kms(dev, "Vertical Front Porch: %u\n", vfp);
+
+	vbp = porches - vfp;
+	drm_dbg_kms(dev, "Vertical Back Porch: %u\n", vbp);
+
+	vtotal = vactive + vfp + vslen + vbp;
+	if (params->num_lines != vtotal) {
+		DRM_ERROR("Invalid vertical total: %upx (expected %upx)\n",
+			  vtotal, params->num_lines);
+		return -EINVAL;
+	}
+
+	mode->vdisplay = vactive;
+	mode->vsync_start = mode->vdisplay + vfp;
+	mode->vsync_end = mode->vsync_start + vslen;
+	mode->vtotal = mode->vsync_end + vbp;
+
+	if (mode->vtotal != params->num_lines)
+		return -EINVAL;
+
+	mode->type = DRM_MODE_TYPE_DRIVER;
+	mode->flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC;
+	if (interlace)
+		mode->flags |= DRM_MODE_FLAG_INTERLACE;
+
+	drm_mode_set_name(mode);
+
+	drm_dbg_kms(dev, "Generated mode " DRM_MODE_FMT "\n", DRM_MODE_ARG(mode));
+
+	return 0;
+}
+
+/**
+ * drm_analog_tv_mode - create a display mode for an analog TV
+ * @dev: drm device
+ * @tv_mode: TV Mode standard to create a mode for. See DRM_MODE_TV_MODE_*.
+ * @pixel_clock_hz: Pixel Clock Frequency, in Hertz
+ * @hdisplay: hdisplay size
+ * @vdisplay: vdisplay size
+ * @interlace: whether to compute an interlaced mode
+ *
+ * This function creates a struct drm_display_mode instance suited for
+ * an analog TV output, for one of the usual analog TV mode.
+ *
+ * Note that @hdisplay is larger than the usual constraints for the PAL
+ * and NTSC timings, and we'll choose to ignore most timings constraints
+ * to reach those resolutions.
+ *
+ * Returns:
+ *
+ * A pointer to the mode, allocated with drm_mode_create(). Returns NULL
+ * on error.
+ */
+struct drm_display_mode *drm_analog_tv_mode(struct drm_device *dev,
+					    enum drm_connector_tv_mode tv_mode,
+					    unsigned long pixel_clock_hz,
+					    unsigned int hdisplay,
+					    unsigned int vdisplay,
+					    bool interlace)
+{
+	struct drm_display_mode *mode;
+	enum drm_mode_analog analog;
+	int ret;
+
+	switch (tv_mode) {
+	case DRM_MODE_TV_MODE_NTSC:
+		fallthrough;
+	case DRM_MODE_TV_MODE_NTSC_443:
+		fallthrough;
+	case DRM_MODE_TV_MODE_NTSC_J:
+		fallthrough;
+	case DRM_MODE_TV_MODE_PAL_M:
+		analog = DRM_MODE_ANALOG_NTSC;
+		break;
+
+	case DRM_MODE_TV_MODE_PAL:
+		fallthrough;
+	case DRM_MODE_TV_MODE_PAL_N:
+		fallthrough;
+	case DRM_MODE_TV_MODE_SECAM:
+		analog = DRM_MODE_ANALOG_PAL;
+		break;
+
+	default:
+		return NULL;
+	}
+
+	mode = drm_mode_create(dev);
+	if (!mode)
+		return NULL;
+
+	ret = fill_analog_mode(dev, mode,
+			       &tv_modes_parameters[analog],
+			       pixel_clock_hz, hdisplay, vdisplay, interlace);
+	if (ret)
+		goto err_free_mode;
+
+	return mode;
+
+err_free_mode:
+	drm_mode_destroy(dev, mode);
+	return NULL;
+}
+EXPORT_SYMBOL(drm_analog_tv_mode);
+
 /**
  * drm_cvt_mode -create a modeline based on the CVT algorithm
  * @dev: drm device
diff --git a/drivers/gpu/drm/tests/Makefile b/drivers/gpu/drm/tests/Makefile
index b29ef1085cad..b22ac96fdd65 100644
--- a/drivers/gpu/drm/tests/Makefile
+++ b/drivers/gpu/drm/tests/Makefile
@@ -10,5 +10,6 @@ obj-$(CONFIG_DRM_KUNIT_TEST) += \
 	drm_framebuffer_test.o \
 	drm_kunit_helpers.o \
 	drm_mm_test.o \
+	drm_modes_test.o \
 	drm_plane_helper_test.o \
 	drm_rect_test.o
diff --git a/drivers/gpu/drm/tests/drm_modes_test.c b/drivers/gpu/drm/tests/drm_modes_test.c
new file mode 100644
index 000000000000..550e3b95453e
--- /dev/null
+++ b/drivers/gpu/drm/tests/drm_modes_test.c
@@ -0,0 +1,144 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Kunit test for drm_modes functions
+ */
+
+#include <drm/drm_modes.h>
+
+#include <kunit/test.h>
+
+#include <linux/units.h>
+
+#include "drm_kunit_helpers.h"
+
+struct drm_modes_test_priv {
+	struct drm_device *drm;
+};
+
+static int drm_modes_test_init(struct kunit *test)
+{
+	struct drm_modes_test_priv *priv;
+
+	priv = kunit_kzalloc(test, sizeof(*priv), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_NULL(test, priv);
+
+	priv->drm = drm_kunit_device_init(test, "drm-modes-test");
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, priv->drm);
+
+	test->priv = priv;
+
+	return 0;
+}
+
+static void drm_modes_analog_tv_ntsc_480i(struct kunit *test)
+{
+	struct drm_modes_test_priv *priv = test->priv;
+	struct drm_display_mode *mode;
+
+	mode = drm_analog_tv_mode(priv->drm,
+				  DRM_MODE_TV_MODE_NTSC,
+				  13500 * HZ_PER_KHZ, 720, 480,
+				  true);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_EXPECT_EQ(test, drm_mode_vrefresh(mode), 60);
+	KUNIT_EXPECT_EQ(test, mode->hdisplay, 720);
+
+	/* BT.601 defines hsync_start at 736 for 480i */
+	KUNIT_EXPECT_EQ(test, mode->hsync_start, 736);
+
+	/*
+	 * The NTSC standard expects a line to take 63.556us. With a
+	 * pixel clock of 13.5 MHz, a pixel takes around 74ns, so we
+	 * need to have 63556ns / 74ns = 858.
+	 *
+	 * This is also mandated by BT.601.
+	 */
+	KUNIT_EXPECT_EQ(test, mode->htotal, 858);
+
+	KUNIT_EXPECT_EQ(test, mode->vdisplay, 480);
+	KUNIT_EXPECT_EQ(test, mode->vtotal, 525);
+}
+
+static void drm_modes_analog_tv_ntsc_480i_inlined(struct kunit *test)
+{
+	struct drm_modes_test_priv *priv = test->priv;
+	struct drm_display_mode *expected, *mode;
+
+	expected = drm_analog_tv_mode(priv->drm,
+				      DRM_MODE_TV_MODE_NTSC,
+				      13500 * HZ_PER_KHZ, 720, 480,
+				      true);
+	KUNIT_ASSERT_NOT_NULL(test, expected);
+
+	mode = drm_mode_analog_ntsc_480i(priv->drm);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_EXPECT_TRUE(test, drm_mode_equal(expected, mode));
+}
+
+static void drm_modes_analog_tv_pal_576i(struct kunit *test)
+{
+	struct drm_modes_test_priv *priv = test->priv;
+	struct drm_display_mode *mode;
+
+	mode = drm_analog_tv_mode(priv->drm,
+				  DRM_MODE_TV_MODE_PAL,
+				  13500 * HZ_PER_KHZ, 720, 576,
+				  true);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_EXPECT_EQ(test, drm_mode_vrefresh(mode), 50);
+	KUNIT_EXPECT_EQ(test, mode->hdisplay, 720);
+
+	/* BT.601 defines hsync_start at 732 for 576i */
+	KUNIT_EXPECT_EQ(test, mode->hsync_start, 732);
+
+	/*
+	 * The PAL standard expects a line to take 64us. With a pixel
+	 * clock of 13.5 MHz, a pixel takes around 74ns, so we need to
+	 * have 64000ns / 74ns = 864.
+	 *
+	 * This is also mandated by BT.601.
+	 */
+	KUNIT_EXPECT_EQ(test, mode->htotal, 864);
+
+	KUNIT_EXPECT_EQ(test, mode->vdisplay, 576);
+	KUNIT_EXPECT_EQ(test, mode->vtotal, 625);
+}
+
+static void drm_modes_analog_tv_pal_576i_inlined(struct kunit *test)
+{
+	struct drm_modes_test_priv *priv = test->priv;
+	struct drm_display_mode *expected, *mode;
+
+	expected = drm_analog_tv_mode(priv->drm,
+				      DRM_MODE_TV_MODE_PAL,
+				      13500 * HZ_PER_KHZ, 720, 576,
+				      true);
+	KUNIT_ASSERT_NOT_NULL(test, expected);
+
+	mode = drm_mode_analog_pal_576i(priv->drm);
+	KUNIT_ASSERT_NOT_NULL(test, mode);
+
+	KUNIT_EXPECT_TRUE(test, drm_mode_equal(expected, mode));
+}
+
+static struct kunit_case drm_modes_analog_tv_tests[] = {
+	KUNIT_CASE(drm_modes_analog_tv_ntsc_480i),
+	KUNIT_CASE(drm_modes_analog_tv_ntsc_480i_inlined),
+	KUNIT_CASE(drm_modes_analog_tv_pal_576i),
+	KUNIT_CASE(drm_modes_analog_tv_pal_576i_inlined),
+	{ }
+};
+
+static struct kunit_suite drm_modes_analog_tv_test_suite = {
+	.name = "drm_modes_analog_tv",
+	.init = drm_modes_test_init,
+	.test_cases = drm_modes_analog_tv_tests,
+};
+
+kunit_test_suites(
+	&drm_modes_analog_tv_test_suite
+);
+MODULE_LICENSE("GPL v2");
diff --git a/include/drm/drm_modes.h b/include/drm/drm_modes.h
index b0c680e6f670..c613f0abe9dc 100644
--- a/include/drm/drm_modes.h
+++ b/include/drm/drm_modes.h
@@ -468,6 +468,23 @@ bool drm_mode_is_420_also(const struct drm_display_info *display,
 bool drm_mode_is_420(const struct drm_display_info *display,
 		     const struct drm_display_mode *mode);
 
+struct drm_display_mode *drm_analog_tv_mode(struct drm_device *dev,
+					    enum drm_connector_tv_mode mode,
+					    unsigned long pixel_clock_hz,
+					    unsigned int hdisplay,
+					    unsigned int vdisplay,
+					    bool interlace);
+
+static inline struct drm_display_mode *drm_mode_analog_ntsc_480i(struct drm_device *dev)
+{
+	return drm_analog_tv_mode(dev, DRM_MODE_TV_MODE_NTSC, 13500000, 720, 480, true);
+}
+
+static inline struct drm_display_mode *drm_mode_analog_pal_576i(struct drm_device *dev)
+{
+	return drm_analog_tv_mode(dev, DRM_MODE_TV_MODE_PAL, 13500000, 720, 576, true);
+}
+
 struct drm_display_mode *drm_cvt_mode(struct drm_device *dev,
 				      int hdisplay, int vdisplay, int vrefresh,
 				      bool reduced, bool interlaced,

-- 
b4 0.11.0-dev-7da52
