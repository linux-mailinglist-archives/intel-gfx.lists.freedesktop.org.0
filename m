Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC222A0AAA
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02BC6E9B3;
	Fri, 30 Oct 2020 16:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 657476E9B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:05:13 +0000 (UTC)
IronPort-SDR: vjOOCat23Frhj9KpSiLl9+gpE3n3SJuHLMXU2280u/bZR1t1Ff+krXE5brQsvar/zivqWJwJVo
 GvTgzEKKgwIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="168723798"
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="168723798"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:05:12 -0700
IronPort-SDR: Lj/qbzAJpo7LOkQxFx04JSAt3QWs3XjoSga0Dj2YDQ0q55wBRxw91j+7XVH5A6pk7pqrjqQubV
 wXsI8OmH2VFA==
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="537112767"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:05:11 -0700
Date: Fri, 30 Oct 2020 18:05:08 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201030160508.GB3811545@ideak-desk.fi.intel.com>
References: <20201030153209.14808-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030153209.14808-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reduce severity for fixing up
 mistaken VBT tc->legacy_port
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 30, 2020 at 03:32:09PM +0000, Chris Wilson wrote:
> If the VBT assigned tc->legacy_port mismatches the live_status indicator
> for the connector, we ignore the VBT directive and switch over to the HW
> setting. This is not a driver error, unless we happen to misparse the
> VBT or the live_status registers. However, for the system in CI where
> the error is only reported on 1 port out of 4, the evidence indicates
> the VBT is wrong. Stop flaging this as an error since the cause is
> beyond our control, fixup the mistake and continue on.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>

My intention was to keep this as an error so BIOS etc. team would have
more motivation to act on it. But it didn't work out, so yes no need
to add noise:

Reviewed-by: Imre Deak <imre.deak@intel.com>

The rule could be then to never add errors for known BIOS issues.

> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 8f67aef18b2d..6155ea6127a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -228,9 +228,9 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
>  		return;
>  
>  	/* If live status mismatches the VBT flag, trust the live status. */
> -	drm_err(&i915->drm,
> -		"Port %s: live status %08x mismatches the legacy port flag, fix flag\n",
> -		dig_port->tc_port_name, live_status_mask);
> +	drm_dbg_kms(&i915->drm,
> +		    "Port %s: live status %08x mismatches the legacy port flag %08x, fixing flag\n",
> +		    dig_port->tc_port_name, live_status_mask, valid_hpd_mask);
>  
>  	dig_port->tc_legacy_port = !dig_port->tc_legacy_port;
>  }
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
