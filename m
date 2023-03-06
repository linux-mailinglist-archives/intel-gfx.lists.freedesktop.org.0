Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E986ACA57
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 18:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23E310E132;
	Mon,  6 Mar 2023 17:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D67310E132
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 17:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678123794; x=1709659794;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=UC6tpxaqbdxN9ORhX4q42YWRYao28H5NE6aYbvlAmSU=;
 b=gya7B2fg1pmHnpBr1IbRW4UyVpWK9IohMY/7ZVSmMxtnGDku1eQ84F3L
 lZZrfbVcmlyVV5tvQWLjZB4TphiLJ51/0d0/VCXlxOCT8EIg41kzXjoxP
 4F9guiedWiLbu0mojEuNNaAqcmAdBi9fg7KqBTvD61bMxvRj4OcUMgjaM
 d/jQjN7D0+ZtKqfV7NjV7RRBdRNCiTDgq4HqlJ6SY5QxzdmK+U/Ez/T3f
 jQ0QsOdmrEpvf73C53x/Mm28CQLYV30vj8Dp7bOM+jb2WoiHKGkIrDAvt
 E/007MbRhnVRX66MLw9zqfAGPHvVQpqvhV7Hd/rNrqG2xt0+4XjzHKAHK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="398202415"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="398202415"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 09:29:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="819380742"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="819380742"
Received: from taverna-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.188])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 09:29:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230306154419.23207-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230306154419.23207-1-ville.syrjala@linux.intel.com>
Date: Mon, 06 Mar 2023 19:29:50 +0200
Message-ID: <87a60pu6sx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Bump VBT version for expected
 child dev size check
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

On Mon, 06 Mar 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The most modern VBT I've observed in the wild is version 250.
> The child dev size hasn't changed since version 216, so bump
> the version number in the expected child dev size check.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index f16887aed56d..e54febd34ca9 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2822,7 +2822,7 @@ parse_general_definitions(struct drm_i915_private *=
i915)
>  		expected_size =3D 37;
>  	} else if (i915->display.vbt.version <=3D 215) {
>  		expected_size =3D 38;
> -	} else if (i915->display.vbt.version <=3D 237) {
> +	} else if (i915->display.vbt.version <=3D 250) {
>  		expected_size =3D 39;
>  	} else {
>  		expected_size =3D sizeof(*child);

--=20
Jani Nikula, Intel Open Source Graphics Center
