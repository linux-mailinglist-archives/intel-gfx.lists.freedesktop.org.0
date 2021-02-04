Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D051930FE42
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 21:28:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48B056E029;
	Thu,  4 Feb 2021 20:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DD96E029
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 20:28:29 +0000 (UTC)
IronPort-SDR: 0jks9+dHycuZ7BoeXjwlfn1vWneExHN5TZGINYjTREtB2Axt8FY2zP8j0wJ2VmGQUExy8W30zR
 gowrxbmo7JwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="180548461"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="180548461"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 12:28:29 -0800
IronPort-SDR: EQ73N42p1Mb9/3c9Vd17we41jRZVX+9LMHtcbkDN6nipGdwSkBv3vU2fs8HTXsywoeWcJ/4TCk
 0cLyFszJd6DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="434100241"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 04 Feb 2021 12:28:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 22:28:25 +0200
Date: Thu, 4 Feb 2021 22:28:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YBxY6VV00sNJ/rqR@intel.com>
References: <cover.1612467466.git.jani.nikula@intel.com>
 <b84e4d31c02dc9722522b003958ffbe12837e58b.1612467466.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b84e4d31c02dc9722522b003958ffbe12837e58b.1612467466.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v11 03/10] drm/i915: migrate skl planes code
 new file (v5)
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 04, 2021 at 09:43:20PM +0200, Jani Nikula wrote:
> -unsigned int
> -intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
> -{
> -	int x =3D 0, y =3D 0;
> -
> -	intel_plane_adjust_aligned_offset(&x, &y, plane_state, 0,
> -					  plane_state->color_plane[0].offset, 0);
> -
> -	return y;
> -}

This unrelated code motion is still here, messing up the diff.

<snip>
>  }
>  =

> -void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> -	int i;
> -
> -	for (i =3D 0; i < crtc->num_scalers; i++)
> -		skl_detach_scaler(crtc, i);
> -}

ditto

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
