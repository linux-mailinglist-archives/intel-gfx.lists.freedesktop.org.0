Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3769BB129
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 11:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD4F810E3C7;
	Mon,  4 Nov 2024 10:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dY+758xO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB90010E3C7
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 10:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730716362; x=1762252362;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wMcIgNCv+xnDReszdqt85mJkfB5E8hamEnZhqSdUvYw=;
 b=dY+758xOrOg+QZTM8AjEaxV4Yj5CSgV3hnHKb4JPmbFPXEu45BC4/xLr
 bp+bXEPs1nTiYEHMFes56teO1CQep/gm3J8nEU27xDIhDTz+7pxZgjbHz
 2cNoT7GhQNEzaV5UqalDtpwPvUHofLxBnJsbIlL/X3yvOwhKbRlV32NBf
 E0kBz66c9zNWRxBnjv6qRI6uD1CGDeeR7Qz/xuteR1bUklCqVyRN2/W5U
 2wXEidWyDai57lOqkuGGTx7+IjxGj/iqSP2jMQ7ljhmimWiCaGOKtRfKy
 cObnP3W023IcYNXPjLgcx+nwhYhz2svYCvA7LCIANKAtVzVm7VyfuKRht Q==;
X-CSE-ConnectionGUID: 1v9tLwuTQ7imURpo4GUIDQ==
X-CSE-MsgGUID: a7UTvgO/S/uvc76rl8B/Dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30570952"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30570952"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 02:32:41 -0800
X-CSE-ConnectionGUID: 1snxIKvLRdmijrTQrOC6Sg==
X-CSE-MsgGUID: UcQxjydRS82UQXnfvLm8bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="83740106"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 02:32:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com, raag.jadav@intel.com, Mika Kahola
 <mika.kahola@intel.com>
Subject: Re: [PATCH v4 2/2] drm/i915/display: Use struct intel_display
 instead of struct drm_i915_private
In-Reply-To: <20241101133924.245817-3-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241101133924.245817-1-mika.kahola@intel.com>
 <20241101133924.245817-3-mika.kahola@intel.com>
Date: Mon, 04 Nov 2024 12:32:36 +0200
Message-ID: <87msifi917.fsf@intel.com>
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

On Fri, 01 Nov 2024, Mika Kahola <mika.kahola@intel.com> wrote:
> Let's start using struct intel_display instead of struct drm_i915_private
> when introducing new code. No functional changes.
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index e40d55f4c0c4..385c838ee996 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -97,6 +97,11 @@ static struct drm_i915_private *tc_to_i915(struct intel_tc_port *tc)
>  	return to_i915(tc->dig_port->base.base.dev);
>  }
>  
> +static struct intel_display *tc_to_intel_display(struct intel_tc_port *tc)
> +{
> +	return to_intel_display(tc->dig_port->base.base.dev);
> +}
> +

to_intel_display(tc->dig_port) is sufficient here.

And that begs the question, do we need the helper? Maybe just use that
directly inline?

BR,
Jani.


>  static bool intel_tc_port_in_mode(struct intel_digital_port *dig_port,
>  				  enum tc_port_mode mode)
>  {
> @@ -1039,9 +1044,9 @@ static void wa_14020908590(struct intel_display *display, bool enable)
>  
>  static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
>  {
> -	struct drm_i915_private *i915 = tc_to_i915(tc);
> +	struct intel_display *display = tc_to_intel_display(tc);
>  	enum port port = tc->dig_port->base.port;
> -	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
> +	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
>  	u32 val;
>  
>  	assert_tc_cold_blocked(tc);
> @@ -1050,15 +1055,15 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
>  	 * Gfx driver WA 14020908590 for PTL tcss_rxdetect_clkswb_req/ack
>  	 * handshake violation when pwwreq= 0->1 during TC7/10 entry
>  	 */
> -	if (DISPLAY_VER(i915) == 30)
> -		wa_14020908590(&i915->display, enable);
> +	if (DISPLAY_VER(display) == 30)
> +		wa_14020908590(display, enable);
>  
> -	val = intel_de_read(i915, reg);
> +	val = intel_de_read(display, reg);
>  	if (enable)
>  		val |= XELPDP_TCSS_POWER_REQUEST;
>  	else
>  		val &= ~XELPDP_TCSS_POWER_REQUEST;
> -	intel_de_write(i915, reg, val);
> +	intel_de_write(display, reg, val);
>  }
>  
>  static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)

-- 
Jani Nikula, Intel
