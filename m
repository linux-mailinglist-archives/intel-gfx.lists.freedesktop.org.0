Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B88129B4C54
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 15:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0B1410E29C;
	Tue, 29 Oct 2024 14:41:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EzeIqj69";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C62B10E29C
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 14:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730212895; x=1761748895;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=o6De2d64pQfwGptdgBwDTDww+kwEcAuDYSVE8bYwuEE=;
 b=EzeIqj69Bx7WQCc/iaxC2oxEt0+rjXBiF0qeLuqZaBhj0YLDHk/U1fgk
 518DVVfS2Rd37EIfGsN7Yb2TYjMkVaQAf0oWgqa2ZcqeSIX7Q5tDdcHDY
 XGpeCCzTPLADCUsSnfD1bCRrp4fk+eIWCU/gvfGvdCi/FWLdINNkD0qCK
 +846sPJvIGPP47mux5c2WlGE3Klsr1/clxm/c7Lb5xVldJEJvtcon0kHW
 VPRWfcJC4limOV43GS8lVes1uCBQfvMrc31j1Yysk7zTQ3jL3hGfWLjer
 ANWOgRY4MYZ9OiM+RiQ+FD/+iFVLIij7AzAoqLhbXj3avqK25UhR5HMF/ g==;
X-CSE-ConnectionGUID: Ie5Gg1MVSTKWEjy9ZVpazA==
X-CSE-MsgGUID: BHKSkpAjR4GmsmwtWpcbqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41256806"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="41256806"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 07:41:35 -0700
X-CSE-ConnectionGUID: pjIRRAY1R22j1Tqgt+3Jfg==
X-CSE-MsgGUID: 9mNe1JgnSR+MXTEn5ViGiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81608398"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 07:41:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com, Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH v3] drm/i915/xe3lpd: Power request asserting/deasserting
In-Reply-To: <20241029140037.164687-1-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029140037.164687-1-mika.kahola@intel.com>
Date: Tue, 29 Oct 2024 16:41:29 +0200
Message-ID: <87bjz3nf8m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 29 Oct 2024, Mika Kahola <mika.kahola@intel.com> wrote:
> There is a HW issue that arises when there are race conditions
> between TCSS entering/exiting TC7 or TC10 states while the
> driver is asserting/deasserting TCSS power request. As a
> workaround, Display driver will implement a mailbox sequence
> to ensure that the TCSS is in TC0 when TCSS power request is
> asserted/deasserted.
>
> The sequence is the following
>
> 1. Read mailbox command status and wait until run/busy bit is
>    clear
> 2. Write mailbox data value '1' for power request asserting
>    and '0' for power request deasserting
> 3. Write mailbox command run/busy bit and command value with 0x1
> 4. Read mailbox command and wait until run/busy bit is clear
>    before continuing power request.
>
> v2: Rename WA function (Gustavo)
>     Limit WA only for PTL platform with a TODO note (Gustavo)
>     Add TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY for clarity when writing
>     register data (Gustavo)
>     Move register defs from i915_reg.h to intel_cx0_phy_regs.h (Gustavo)
> v3: use "struct intel_display" instead of "struct drm_i915_private" (Jani)
>     Move defs above C10 definitions in the
>     intel_cx0_phy_regs.h file (Gustavo)
>     Move drm_WARN_ON() inside WA function (Gustavo)
>     Rename workaround function as wa_14020908590() (Gustvo)
>     Use boolean enable instead of if-else structure (Gustavo)
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  8 ++++
>  drivers/gpu/drm/i915/display/intel_tc.c       | 39 +++++++++++++++++++
>  2 files changed, 47 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ab3ae110b68f..e04cf2e7c054 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -200,6 +200,14 @@
>  #define   XELPDP_SSC_ENABLE_PLLA			REG_BIT(1)
>  #define   XELPDP_SSC_ENABLE_PLLB			REG_BIT(0)
>  
> +#define TCSS_DISP_MAILBOX_IN_CMD		_MMIO(0x161300)
> +#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY	REG_BIT(31)
> +#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK	REG_GENMASK(7, 0)
> +#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(val)	(TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY | \
> +						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, val))
> +
> +#define TCSS_DISP_MAILBOX_IN_DATA		_MMIO(0x161304)
> +
>  /* C10 Vendor Registers */
>  #define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
>  #define   C10_PLL0_FRACEN		REG_BIT8(4)
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 6f2ee7dbc43b..51e8f7b1b812 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1013,6 +1013,38 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
>  	return true;
>  }
>  
> +static void wa_14020908590(struct intel_display *display,
> +			   bool enable)
> +{
> +	bool error = false;
> +
> +	/* check if mailbox is running busy */
> +	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> +		drm_dbg_kms(display->drm,
> +			    "Timeout waiting for TCSS mailbox run/busy bit to clear\n");

Just do drm_WARN() with the message here.

> +		error = true;
> +		goto out;
> +	}
> +
> +	intel_de_write(display, TCSS_DISP_MAILBOX_IN_DATA, enable);
> +	intel_de_write(display, TCSS_DISP_MAILBOX_IN_CMD,
> +		       TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
> +		       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
> +
> +	/* wait to clear mailbox running busy bit before continuing */
> +	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> +		drm_dbg_kms(display->drm,
> +			    "Timeout after writing data to mailbox. Mailbox run/busy bit did not clear\n");

Ditto.

> +		error = true;
> +		goto out;
> +	}
> +
> +out:
> +	drm_WARN_ON(display->drm, error);

This stringifies the literal "error", and nothing of value is printed to
dmesg.

> +}
> +
>  static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
>  {
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
> @@ -1022,6 +1054,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
>  
>  	assert_tc_cold_blocked(tc);
>  
> +	/*
> +	 * Gfx driver WA 14020908590 for PTL tcss_rxdetect_clkswb_req/ack
> +	 * handshake violation when pwwreq= 0->1 during TC7/10 entry
> +	 */
> +	if (DISPLAY_VER(i915) == 30)
> +		wa_14020908590(&i915->display, enable);

Please don't add inline &i915->display, because all of them need to be
changed sooner rather than later.

Add a struct intel_display *display local variable, and pass that
around.

BR,
Jani.


> +
>  	val = intel_de_read(i915, reg);
>  	if (enable)
>  		val |= XELPDP_TCSS_POWER_REQUEST;

-- 
Jani Nikula, Intel
