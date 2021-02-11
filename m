Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7831C3182A8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 01:31:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6278936E;
	Thu, 11 Feb 2021 00:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86F4891DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 00:31:52 +0000 (UTC)
IronPort-SDR: ZGb7nrQ3+0UBJswif6Sf0IsaxbBQEAcvPzape7/N10v5HYhfU1FnykEckhMoach2jTfio+uyU5
 jAE+/dEbclfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="169300775"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="169300775"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 16:31:51 -0800
IronPort-SDR: An3eL2OQm3Xcyn3hGFEvLIW4fgrmvd8oTBgYw9iOdpBMxd1ec16nFbbd1MxT8eMim4mf6LNwsz
 9CTdrXQLGmAQ==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="380369592"
Received: from sganes2-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.225])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 16:31:50 -0800
Date: Wed, 10 Feb 2021 16:31:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210211003150.kzhc35ytqdtueh5l@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128192413.1715802-4-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/18] drm/i915/display13: Enhanced pipe
 underrun reporting
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 11:23:58AM -0800, Matt Roper wrote:
>Display13 brings enhanced underrun recovery:  the hardware can somewhat
>mitigate underruns by using an interpolated replacement pixel (soft
>underrun) or the previous pixel (hard underrun).  Furthermore, underruns
>can now be caused downstream by the port, even if the pipe itself is
>operating properly.  The interrupt register gives us extra bits to
>determine hard/soft underruns and whether the underrun was caused by the
>port, so let's pass the iir down to the underrun handler and print some
>more descriptive errors on Display13 platforms.
>
>The context of the underrun is also available via PIPE_STATUS, but since
>we have the same information in the IIR we don't have a need to read
>from there.  PIPE_STATUS might be useful in debugfs in the future
>though.

is this comment outdated? See below...

>
>Bspec: 50335
>Bspec: 50366
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> .../drm/i915/display/intel_fifo_underrun.c    | 55 ++++++++++++++++++-
> drivers/gpu/drm/i915/i915_irq.c               | 14 ++++-
> drivers/gpu/drm/i915/i915_reg.h               |  7 +++
> 3 files changed, 73 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>index 813a4f7033e1..6c377f0fc1b3 100644
>--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>@@ -359,6 +359,39 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
> 	return old;
> }
>
>+static u32
>+underrun_pipestat_mask(struct drm_i915_private *dev_priv)
>+{
>+	u32 mask = PIPE_FIFO_UNDERRUN_STATUS;
>+
>+	if (HAS_DISPLAY13(dev_priv))
>+		mask |= PIPE_STAT_SOFT_UNDERRUN_D13 |
>+			PIPE_STAT_HARD_UNDERRUN_D13 |
>+			PIPE_STAT_PORT_UNDERRUN_D13;
>+
>+	return mask;
>+}
>+
>+static const char *
>+pipe_underrun_reason(u32 pipestat_underruns)
>+{
>+	if (pipestat_underruns & PIPE_STAT_SOFT_UNDERRUN_D13)
>+		/*
>+		 * Hardware used replacement/interpolated pixels at
>+		 * underrun locations.
>+		 */
>+		return "soft";
>+	else if (pipestat_underruns & PIPE_STAT_HARD_UNDERRUN_D13)
>+		/*
>+		 * Hardware used previous pixel value at underrun
>+		 * locations.
>+		 */
>+		return "hard";
>+	else
>+		/* Old platform or no extra soft/hard bit set */
>+		return "FIFO";
>+}
>+
> /**
>  * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun interrupt
>  * @dev_priv: i915 device instance
>@@ -372,6 +405,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
> 					 enum pipe pipe)
> {
> 	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
>+	u32 underruns = 0;
>
> 	/* We may be called too early in init, thanks BIOS! */
> 	if (crtc == NULL)
>@@ -382,10 +416,27 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
> 	    crtc->cpu_fifo_underrun_disabled)
> 		return;
>
>+	/*
>+	 * On Display13, we can find out whether an underrun is soft/hard from
>+	 * either the iir or PIPE_STAT, but we can only determine if underruns
>+	 * were due to downstream port logic from PIPE_STAT.
>+	 */

so... we are actually reading PIPE_STAT somce we want to report if it's
from downstream port.

>+	underruns = intel_uncore_read(&dev_priv->uncore, ICL_PIPESTAT(pipe)) &
>+		underrun_pipestat_mask(dev_priv);
>+	intel_uncore_write(&dev_priv->uncore, ICL_PIPESTAT(pipe), underruns);

maybe I'm missing something, but this doesn't look right to me.  We
unconditionally read/write ICL_PIPESTAT(pipe), even if it's not
display13.  Also, the `underruns = 0` initialization is just being
overwritten here.

intel_cpu_fifo_underrun_irq_handler() is called by very old gens as
well.

Lucas De Marchi

>+
> 	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
> 		trace_intel_cpu_fifo_underrun(dev_priv, pipe);
>-		drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n",
>-			pipe_name(pipe));
>+
>+		if (underruns & PIPE_STAT_PORT_UNDERRUN_D13)
>+			/* Underrun was caused downstream from the pipes */
>+			drm_err(&dev_priv->drm, "Port triggered a %s underrun on pipe %c\n",
>+				pipe_underrun_reason(underruns),
>+				pipe_name(pipe));
>+		else
>+			drm_err(&dev_priv->drm, "CPU pipe %c %s underrun\n",
>+				pipe_name(pipe),
>+				pipe_underrun_reason(underruns));
> 	}
>
> 	intel_fbc_handle_fifo_underrun_irq(dev_priv);
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>index 1bced71470a5..407b42706a14 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -2389,6 +2389,18 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
> 	intel_uncore_write(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), tmp);
> }
>
>+static u32
>+underrun_iir_mask(struct drm_i915_private *dev_priv)
>+{
>+	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
>+
>+	if (HAS_DISPLAY13(dev_priv))
>+		mask |= D13_PIPE_SOFT_UNDERRUN |
>+			D13_PIPE_HARD_UNDERRUN;
>+
>+	return mask;
>+}
>+
> static irqreturn_t
> gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
> {
>@@ -2497,7 +2509,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
> 		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
> 			hsw_pipe_crc_irq_handler(dev_priv, pipe);
>
>-		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
>+		if (iir & underrun_iir_mask(dev_priv))
> 			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
>
> 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index 10fd0e3af2d4..a57593f7d7b1 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -6039,14 +6039,18 @@ enum {
> #define   PIPECONF_DITHER_TYPE_ST2 (2 << 2)
> #define   PIPECONF_DITHER_TYPE_TEMP (3 << 2)
> #define _PIPEASTAT		0x70024
>+#define _PIPEASTAT_ICL		0x70058
> #define   PIPE_FIFO_UNDERRUN_STATUS		(1UL << 31)
> #define   SPRITE1_FLIP_DONE_INT_EN_VLV		(1UL << 30)
> #define   PIPE_CRC_ERROR_ENABLE			(1UL << 29)
> #define   PIPE_CRC_DONE_ENABLE			(1UL << 28)
>+#define   PIPE_STAT_SOFT_UNDERRUN_D13		(1UL << 28)
> #define   PERF_COUNTER2_INTERRUPT_EN		(1UL << 27)
> #define   PIPE_GMBUS_EVENT_ENABLE		(1UL << 27)
>+#define   PIPE_STAT_HARD_UNDERRUN_D13		(1UL << 27)
> #define   PLANE_FLIP_DONE_INT_EN_VLV		(1UL << 26)
> #define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
>+#define   PIPE_STAT_PORT_UNDERRUN_D13		(1UL << 26)
> #define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
> #define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
> #define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
>@@ -6111,6 +6115,7 @@ enum {
> #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
> #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(pipe, _PIPEAFRAMEPIXEL)
> #define PIPESTAT(pipe)		_MMIO_PIPE2(pipe, _PIPEASTAT)
>+#define ICL_PIPESTAT(pipe)	_MMIO_PIPE2(pipe, _PIPEASTAT_ICL)
>
> #define  _PIPEAGCMAX           0x70010
> #define  _PIPEBGCMAX           0x71010
>@@ -7789,6 +7794,8 @@ enum {
> #define  GEN8_PIPE_FIFO_UNDERRUN	(1 << 31)
> #define  GEN8_PIPE_CDCLK_CRC_ERROR	(1 << 29)
> #define  GEN8_PIPE_CDCLK_CRC_DONE	(1 << 28)
>+#define  D13_PIPE_SOFT_UNDERRUN		(1 << 22)
>+#define  D13_PIPE_HARD_UNDERRUN		(1 << 21)
> #define  GEN8_PIPE_CURSOR_FAULT		(1 << 10)
> #define  GEN8_PIPE_SPRITE_FAULT		(1 << 9)
> #define  GEN8_PIPE_PRIMARY_FAULT	(1 << 8)
>-- 
>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
