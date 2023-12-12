Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE60280E8B1
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 11:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE9D10E598;
	Tue, 12 Dec 2023 10:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 209B210E598
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 10:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702375702; x=1733911702;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=hrf/ttEmcSj32m64/ao1X18qSSnW1SHFJK+jTe79TMs=;
 b=Rz7UfW76CxzO3Cu1ItUg1Y/93qKAB7diTVQtp/qtif/bx1ncKYlgQr2l
 nKeQ8qA8D3v1dMy7G/n4misktu0dOQ+Cvblf7Kbf7wrMrFGhnAPR8vYxS
 0tAa1V3AmwuTs3SG6aoKJ6O1pppNp/1VUdhrzkxkqcKq9oO072wa6DoJa
 33L8b4pe2aRv93e+57piIALB82E1IqOyC2ADe+H0FRSImjM8HPlXuWCFV
 W4JV+vG32NtqGTZThyVHVraI8IDyNrE/jBuwrtRir05EnKuWHkgaMV+CP
 8XCftS61/uSpQuvIRWgm5wNIf6azzqtmnr61DnTBpmcS6Ovq/risAnzSg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="394532979"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="394532979"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 02:08:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="766770470"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="766770470"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 02:08:19 -0800
Date: Tue, 12 Dec 2023 12:08:25 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/display: Wait for PHY readiness not needed for
 disabling sequence
Message-ID: <ZXgxGVDZewhnY+mU@ideak-desk.fi.intel.com>
References: <20231212095520.452363-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231212095520.452363-1-mika.kahola@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 12, 2023 at 11:55:20AM +0200, Mika Kahola wrote:
> When going through the disconnection flow we don't need to wait for PHY
> readiness and hence we can skip the wait part. For disabling the function
> returns false as an indicator that the power is not enabled. After all,
> we are not even using the return value when Type-C is disconnecting.
> 
> BSpec: 65380
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index f64d348a969e..79ec17fa3edd 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1030,6 +1030,9 @@ static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enabl
>  
>  	__xelpdp_tc_phy_enable_tcss_power(tc, enable);
>  
> +	if (!enable)
> +		return false;

Waiting for xelpdp_tc_phy_wait_for_tcss_power(tc, false); is also needed
in the above case.

> +
>  	if ((!tc_phy_wait_for_ready(tc) ||
>  	     !xelpdp_tc_phy_wait_for_tcss_power(tc, enable)) &&
>  	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
> -- 
> 2.34.1
> 
