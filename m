Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D7A996C7E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 15:44:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FF410E724;
	Wed,  9 Oct 2024 13:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D3mYBpbh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC75910E724
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 13:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728481439; x=1760017439;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=AEUWOlyMkQnGwheADTNwISM4NcC92ri068wivxQiSJI=;
 b=D3mYBpbh4f9Smna9BdnkvoW9we7cR4G8DgtZma/oFTOJdvb7yifjAmbG
 me2dTUeBsnN7c+it+5/Z6uaENH/glsAmK8BYzIG94hwjwi54tE6gzlKc9
 +VBh6mU7h76FI/erCUVCqyRQVOU5X0C3gQsQNyAXoPoJT7SbdeINQFBTE
 1Bkxp0hHOTPnXJhPNmdOIbHao6mHzcwesJ+dcJQpyMfJshBM7l/KmixPG
 dahWowuBI7DZ71lTZnXWAfYH/KEkxPJEZKTugiUUT1rnWSOt3YcyyOQK/
 egJ2O4H2Dx/pxxFvOKfRnPcof7PIMYkQiGDe87CFiUI5J+Vx/bj88rDzj w==;
X-CSE-ConnectionGUID: AtiWgMxnRJmzoeHIcVnI7Q==
X-CSE-MsgGUID: uKGR1pBXQaC5wkjKyEoeNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="53188979"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="53188979"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:43:53 -0700
X-CSE-ConnectionGUID: nFCPxnqbTOeHgitgpu7Fgw==
X-CSE-MsgGUID: z3JT6kcdRNywixJQ0NwIrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="107026019"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:43:52 -0700
Date: Wed, 9 Oct 2024 16:38:07 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, 
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 7/9] drm/i915/display: update audio support based on the
 available frequencies
In-Reply-To: <20241008082327.342020-8-vinod.govindapillai@intel.com>
Message-ID: <alpine.DEB.2.22.394.2410091635120.14041@eliteleevi.tm.intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-8-vinod.govindapillai@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

Hi,

On Tue, 8 Oct 2024, Vinod Govindapillai wrote:

> After pruning the sad audio frequency list, if there are no
> supported audio frequencies left, audio cannot be supported.
> So mark has_audio accordingly.
[...]
> @@ -823,9 +824,13 @@ bool intel_audio_compute_eld_config(struct drm_connector_state *conn_state,
>  				    "SAD updated. Freq: 0x%x(0x%x) Channels: %d(%d)\n",
>  				    sad.freq, sad_freq, sad.channels, sad_channels);
>  		}
> +
> +		/* If no supported freq in any sads, make audio support to false */
> +		audio_supported |= sad.freq;

With the boolean logic fixed (Jani's note):

Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

> -	return true;
> +	drm_dbg_kms(&i915->drm, "audio supported: %d\n", audio_supported);
> +	return audio_supported;

I was wondering whether this would warrant a more prominent warning, 
but I guess if such a (rare) case would be hit, this message would 
be emitted all the time, so probably still best left as a debug 
level message.

Br, Kai
