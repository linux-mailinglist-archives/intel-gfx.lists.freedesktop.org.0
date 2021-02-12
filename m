Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D6831A49C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 19:34:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C9E6E1EE;
	Fri, 12 Feb 2021 18:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C854C6E1EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 18:34:01 +0000 (UTC)
IronPort-SDR: dbqAYYe8aAFkNCVguHzM/7N8p1aZBI0wliHM7KinF5L1XisOOHZ0wOQ0PKq4Ed/n/wvD3anEhe
 Y6uKhhHLY1Vw==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="179900012"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="179900012"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 10:33:57 -0800
IronPort-SDR: SI3KHZvPI0n6T75fhjhvIAJcr70/anvZxX0C/TLQ/Fzh+teb73/EQH8Yy6FQVQ1tPyFSW/MH5n
 4n52WvXLxrWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="381719434"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 12 Feb 2021 10:33:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Feb 2021 20:33:53 +0200
Date: Fri, 12 Feb 2021 20:33:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YCbKEbGMixV/P0kM@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
 <20210212182201.155043-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212182201.155043-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Remove dead code from
 skl_pipe_wm_get_hw_state()
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 12, 2021 at 10:22:00AM -0800, Jos=E9 Roberto de Souza wrote:
> There is nothing else to be executed after this if block.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Looks like leftovers I forgot to clean up.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 3 ---
>  1 file changed, 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8c42fa51c0f6..8cc67f9c4e58 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6182,9 +6182,6 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *cr=
tc,
>  =

>  		skl_wm_level_from_reg_val(val, &wm->trans_wm);
>  	}
> -
> -	if (!crtc->active)
> -		return;
>  }
>  =

>  void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
> -- =

> 2.30.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
