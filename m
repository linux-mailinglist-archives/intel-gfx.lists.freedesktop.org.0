Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBAD9B3418
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:55:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E290510E4D7;
	Mon, 28 Oct 2024 14:55:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CApbEpFm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB9B10E4D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 14:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730127317; x=1761663317;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3wEkruQdt1lXEL0MIhSg5zZsf1ApIOM61VDbim6O2vQ=;
 b=CApbEpFmF2BqmKlxavtVMPVPwm0nhZ5eDpiTHYXkbSSMenGR96GMl5K0
 LpUbw1HNQKv7aWEXCQyzRBN9omLgo3srtfxnYPUfZUv9YeLLiMuAlqq0Z
 1kB18asZqxRWQlnSGnpSR2h8y9VoKhs00r95cJRY8dG/wOgB/doY+hrvE
 S6H8vtfr3k5vyTW/bEgN5PffUub0tPHC/lZEmkTKrGppf3HYkFJGQKEWw
 bXa+Rsv/xD+8K4aZUN7ehOzaplfjOEQg5bOrhOwK6vQ6W41o9ZAcr8hmS
 DCRozJMMWx6Rc7nEZkgOSMmflyq9/hSz3dRuJuPxLdQHGjNnguOBBzglW Q==;
X-CSE-ConnectionGUID: lLW2NfPrRIaoqNfItOh90g==
X-CSE-MsgGUID: S0OBFYKqRf2/TIHc+Fp64A==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29627892"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29627892"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:55:17 -0700
X-CSE-ConnectionGUID: GQNydvE9SsyMPt4IFVeOgg==
X-CSE-MsgGUID: nZCIseykSIy56XUeuR9hMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="85590789"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:55:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com, Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
In-Reply-To: <20241028125835.78639-1-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241028125835.78639-1-mika.kahola@intel.com>
Date: Mon, 28 Oct 2024 16:55:12 +0200
Message-ID: <874j4wp99r.fsf@intel.com>
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

On Mon, 28 Oct 2024, Mika Kahola <mika.kahola@intel.com> wrote:
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
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  7 +++
>  drivers/gpu/drm/i915/display/intel_tc.c       | 46 +++++++++++++++++++
>  2 files changed, 53 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ab3ae110b68f..e46c07cd20e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -363,4 +363,11 @@
>  #define HDMI_DIV_MASK		REG_GENMASK16(2, 0)
>  #define HDMI_DIV(val)		REG_FIELD_PREP16(HDMI_DIV_MASK, val)
>  
> +#define TCSS_DISP_MAILBOX_IN_CMD		_MMIO(0x161300)
> +#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY	REG_BIT(31)
> +#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK	REG_GENMASK(7, 0)
> +#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)	TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY | \
> +						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, (x))
> +#define TCSS_DISP_MAILBOX_IN_DATA		_MMIO(0x161304)
> +
>  #endif /* __INTEL_CX0_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 6f2ee7dbc43b..924c3ff04eb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1013,6 +1013,45 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
>  	return true;
>  }
>  
> +static bool wa_tcss_power_request_assert(struct drm_i915_private *i915,

Please use struct intel_display *display for new code.

> +					 bool enable)
> +{
> +	/*
> +	 * Limit to PTL only
> +	 * TODO: Add check for PICA IP and use that instead limiting WA for
> +	 * platform
> +	 */
> +	if (DISPLAY_VER(i915) != 30)

s/i915/display/

> +		return true;
> +
> +	/* check if mailbox is running busy */
> +	if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {

s/i915/display/

> +		drm_dbg_kms(&i915->drm,

display->drm

Ditto below, this function doesn't need struct drm_i915_private for
anything.

> +			    "Power request assert WA timeout waiting for TCSS mailbox run/busy bit to clear\n");
> +		return false;
> +	}
> +
> +	if (enable)
> +		intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
> +	else
> +		intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
> +
> +	intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
> +		       TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
> +		       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
> +
> +	/* wait to clear mailbox running busy bit before continuing */
> +	if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Power request assert WA timeout waiting for TCSS mailbox run/busy bit to clear\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
>  static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
>  {
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
> @@ -1022,6 +1061,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
>  
>  	assert_tc_cold_blocked(tc);
>  
> +	/*
> +	 * Gfx driver workaround for PTL tcss_rxdetect_clkswb_req/ack handshake
> +	 * violation when pwwreq= 0->1 during TC7/10 entry
> +	 */
> +	drm_WARN_ON(&i915->drm,
> +		    !wa_tcss_power_request_assert(i915, enable));
> +
>  	val = intel_de_read(i915, reg);
>  	if (enable)
>  		val |= XELPDP_TCSS_POWER_REQUEST;

-- 
Jani Nikula, Intel
