Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D79DD9D947C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 10:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A6110E7F2;
	Tue, 26 Nov 2024 09:30:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VscoarJN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70B510E7F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2024 09:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732613406; x=1764149406;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rIHKIY+VilF4Tha7/570TXOrwtDLgaAAEfVTPaCO8Dk=;
 b=VscoarJN4Ev0izVZ6Trk4+8ayHsYwa2auLQKEVraWtCRLb+iNCfqxCRz
 yoDu2m+jjHCq/HdOexKExWoxJgbfjgif19WxMB9HETdkkmNcQwfBFfGez
 gjWKcc9AiFBiUdNEYYW3h7DoxMoUTdHim/FkbDhQ3bzN5cDzGrmCSPekx
 8k7nw7gynW2L55ZqEEPUHkp6105LR5tYEDIfvEKpPKSmF5QMOyoDO6oMe
 XUR++Dds1z2LEXYLmVaNFb3E9eHAyW87nCv86FxKcID33Dw6eUUvV1ymU
 zi/EJRfW1rB2/hId+ZmVyOtN1k+x582O+HOeSH11XYqG7XSSuVkYkyHN4 w==;
X-CSE-ConnectionGUID: 2io3T+aoSTuYjsCvcwFSmQ==
X-CSE-MsgGUID: tckehiIhQFKmwG9KSNqQQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="50169482"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="50169482"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 01:30:06 -0800
X-CSE-ConnectionGUID: /5EawC9dSQSouD+9YA6SEQ==
X-CSE-MsgGUID: 7bzJTf/sRoSSaHxfB1oA+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="91499451"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 01:30:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com, raag.jadav@intel.com, Mika Kahola
 <mika.kahola@intel.com>
Subject: Re: [PATCH v5 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
In-Reply-To: <20241105131732.331436-2-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241105131732.331436-1-mika.kahola@intel.com>
 <20241105131732.331436-2-mika.kahola@intel.com>
Date: Tue, 26 Nov 2024 11:30:00 +0200
Message-ID: <877c8qxrzb.fsf@intel.com>
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

On Tue, 05 Nov 2024, Mika Kahola <mika.kahola@intel.com> wrote:
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
> v3: Use "struct intel_display" instead of "struct drm_i915_private" (Jani)
>     Move defs above C10 definitions in the
>     intel_cx0_phy_regs.h file (Gustavo)
>     Move drm_WARN_ON() inside WA function (Gustavo)
>     Rename workaround function as wa_14020908590() (Gustvo)
>     Use boolean enable instead of if-else structure (Raag)
> v4: Drop drm_WARN_ON() (Raag)
>     Fix function definition to fit into a single line (Raag)
>
> Reviewed-by: Raag Jadav <raag.jadav@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  8 +++++
>  drivers/gpu/drm/i915/display/intel_tc.c       | 31 +++++++++++++++++++
>  2 files changed, 39 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index f0e5c196eae4..5a0b55cca4a3 100644
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

Why does this contain TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY? You set it
separately anyway (and that's how it should be).

> +						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, val))
> +
> +#define TCSS_DISP_MAILBOX_IN_DATA		_MMIO(0x161304)
> +
>  /* C10 Vendor Registers */
>  #define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
>  #define   C10_PLL0_FRACEN		REG_BIT8(4)
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index b16c4d2d4077..e40d55f4c0c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1013,6 +1013,30 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
>  	return true;
>  }
>  
> +static void wa_14020908590(struct intel_display *display, bool enable)

Yeah I still don't like functions named wa_14020908590. It's
meaningless. What does it do?

> +{
> +	/* check if mailbox is running busy */
> +	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> +		drm_dbg_kms(display->drm,
> +			    "Timeout waiting for TCSS mailbox run/busy bit to clear\n");
> +		return;
> +	}
> +
> +	intel_de_write(display, TCSS_DISP_MAILBOX_IN_DATA, enable);

Not a fan of bool -> u32 implicit conversion here, with the register
contents not described.

> +	intel_de_write(display, TCSS_DISP_MAILBOX_IN_CMD,
> +		       TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
> +		       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
> +
> +	/* wait to clear mailbox running busy bit before continuing */
> +	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> +		drm_dbg_kms(display->drm,
> +			    "Timeout after writing data to mailbox. Mailbox run/busy bit did not clear\n");
> +		return;
> +	}
> +}
> +
>  static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
>  {
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
> @@ -1022,6 +1046,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
>  
>  	assert_tc_cold_blocked(tc);
>  
> +	/*
> +	 * Gfx driver WA 14020908590 for PTL tcss_rxdetect_clkswb_req/ack
> +	 * handshake violation when pwwreq= 0->1 during TC7/10 entry
> +	 */
> +	if (DISPLAY_VER(i915) == 30)
> +		wa_14020908590(&i915->display, enable);

You should add

	struct intel_display *display = &i915->display;

local variable already in this patch, so the next patch doesn't have to
modify the above line again. You can do the subsequent conversions in
the follow-up.

BR,
Jani.


> +
>  	val = intel_de_read(i915, reg);
>  	if (enable)
>  		val |= XELPDP_TCSS_POWER_REQUEST;

-- 
Jani Nikula, Intel
