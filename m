Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F411F9B7B25
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 13:55:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 994A510E87D;
	Thu, 31 Oct 2024 12:55:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LOfKfJEe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF0610E87D
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 12:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730379312; x=1761915312;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zpIAtkjJJegYf37EqJLoGDv1f13aLWJ0W3HshEE0/10=;
 b=LOfKfJEe5QNbdH2HTOfLV1ZFlgzDrN4YSQODpjK7kUxrxPVXj5FfO522
 0Ir2vkPYdTmDonIXjIkUoZ23/ce0GhytrzcM3y+/B2m8J+3gvMYrLKcrD
 H+i7a5qB8ngfmyCFM976zQfIeJwATvV4CGhjBRGNd1xDNkSCdyzmusX2+
 j3C2gES1CbVnKrB/LeCbG8rWc4d8zhbMpy0vyf7kDuy7i1i2a+uM69Huc
 gJLPaZBeht1U3pufOrKf+xbOaICpPwvhhse/Jdu1lnDYd7PhW3GmyvRm4
 GNi+PDoW4pa2V4oW8oYCIJ3R5dnkh4fIBWvhoZl1ViiUThQ/RbhWZdjqy Q==;
X-CSE-ConnectionGUID: jZeRjAW5S7is+3A0p9dmDQ==
X-CSE-MsgGUID: 4Lw8X/IlRKeCLbbQrzpK+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="40688116"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="40688116"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:55:12 -0700
X-CSE-ConnectionGUID: bmZ1R4UtQHSTYoZ3Z4kaeg==
X-CSE-MsgGUID: B7fShsdlQi+yRb1Ug9I2CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82734390"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:55:10 -0700
Date: Thu, 31 Oct 2024 14:55:07 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org, gustavo.sousa@intel.com,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH v3 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
Message-ID: <ZyN-K6kvCJdri7Lj@black.fi.intel.com>
References: <20241031114027.225217-1-mika.kahola@intel.com>
 <20241031114027.225217-2-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241031114027.225217-2-mika.kahola@intel.com>
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

On Thu, Oct 31, 2024 at 01:40:26PM +0200, Mika Kahola wrote:
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
>     Use boolean enable instead of if-else structure (Raag)
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  8 +++++
>  drivers/gpu/drm/i915/display/intel_tc.c       | 32 +++++++++++++++++++
>  2 files changed, 40 insertions(+)
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
> +						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, val))
> +
> +#define TCSS_DISP_MAILBOX_IN_DATA		_MMIO(0x161304)
> +
>  /* C10 Vendor Registers */
>  #define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
>  #define   C10_PLL0_FRACEN		REG_BIT8(4)
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index b16c4d2d4077..dab2ac7ec0dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1013,6 +1013,31 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
>  	return true;
>  }
>  
> +static void wa_14020908590(struct intel_display *display,
> +			   bool enable)

Can be one line?

Raag
