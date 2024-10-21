Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5439A679D
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A1E010E10B;
	Mon, 21 Oct 2024 12:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LNB5/C+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3967310E079;
 Mon, 21 Oct 2024 12:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729512526; x=1761048526;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1Wh+YwNMw3Zun3O6cT+cB8B50ssyyBoadJPxFiuMRmU=;
 b=LNB5/C+5YiBfGVbgwEJzG1Jse9xmSs/2ThzFwYz514dZiZudwvZV4qCR
 e1zmrqGnIit+kep5LtjGqIZEL2tNFcnU0QBdAK3l8leKalgK0+UXqfq9G
 vEe6z36wItheVFp6fXmHjYFaAeNfIJNysnoILgXEgVWntnT5H94Mph8QW
 LYBEN6gt6aVWJ0q4wsc3BIyKokNmYtWoHVwbV3u5gdQDPtOECIWthXcgA
 w/p0t6LPxeVT09XTkR8cPVi2ZgpvonGp/Au2eYF0VKpeAcFwric2cSvFv
 0RxDG6NcGbgPtrr/C+PfIouCZHiMcifTQu3WtE751rNYaPrxRclWCu3lv A==;
X-CSE-ConnectionGUID: 8SrbrX6tRimikalasctsfw==
X-CSE-MsgGUID: yU4U3HXARLKqTQDwEbss6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11231"; a="31855802"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="31855802"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:08:46 -0700
X-CSE-ConnectionGUID: 5c6Ax1ZPSPGLGc7BkYxZxA==
X-CSE-MsgGUID: rKZHWK/aTs+eBwLXNdyuFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79457260"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:08:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
Subject: Re: [PATCH 12/12] drm/i915/xe3lpd: Power request asserting/deasserting
In-Reply-To: <20241018204941.73473-13-matthew.s.atwood@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-13-matthew.s.atwood@intel.com>
Date: Mon, 21 Oct 2024 15:08:39 +0300
Message-ID: <878quhzmig.fsf@intel.com>
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

On Fri, 18 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> From: Mika Kahola <mika.kahola@intel.com>
>
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
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 40 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h         |  7 +++++
>  2 files changed, 47 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 6f2ee7dbc43b..7d9f87db381c 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1013,6 +1013,39 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
>  	return true;
>  }
>  
> +static bool xelpdp_tc_phy_wait_for_tcss_ready(struct drm_i915_private *i915,

No new struct drm_i915_private params or variables please.

BR,
Jani.

> +					      bool enable)
> +{
> +	if (DISPLAY_VER(i915) < 30)
> +		return true;
> +
> +	/* check if mailbox is running busy */
> +	if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "timeout waiting for TCSS mailbox run/busy bit to clear\n");
> +		return false;
> +	}
> +
> +	if (enable)
> +		intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
> +	else
> +		intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
> +
> +	intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
> +		       TCSS_DISP_MAILBOX_IN_CMD_DATA(1));
> +
> +	/* wait to clear mailbox running busy bit before continuing */
> +	if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
> +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "timeout waiting for TCSS mailbox run/busy bit to clear\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
>  static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
>  {
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
> @@ -1022,6 +1055,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
>  
>  	assert_tc_cold_blocked(tc);
>  
> +	/*
> +	 * Gfx driver workaround for PTL tcss_rxdetect_clkswb_req/ack handshake
> +	 * violation when pwwreq= 0->1 during TC7/10 entry
> +	 */
> +	drm_WARN_ON(&i915->drm,
> +		    !xelpdp_tc_phy_wait_for_tcss_ready(i915, enable));
> +
>  	val = intel_de_read(i915, reg);
>  	if (enable)
>  		val |= XELPDP_TCSS_POWER_REQUEST;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 2743a2dd0a3d..d2775a32bf18 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4539,6 +4539,13 @@ enum skl_power_gate {
>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
>  
> +#define TCSS_DISP_MAILBOX_IN_CMD		_MMIO(0x161300)
> +#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY	REG_BIT(31)
> +#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK	REG_GENMASK(7, 0)
> +#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)	TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY | \
> +						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, (x))
> +#define TCSS_DISP_MAILBOX_IN_DATA		_MMIO(0x161304)
> +
>  #define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
>  #define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
>  #define PRIMARY_SPI_REGIONID			_MMIO(0x102084)

-- 
Jani Nikula, Intel
