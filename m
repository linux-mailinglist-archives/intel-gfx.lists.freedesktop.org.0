Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8598F315264
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 16:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610E46E182;
	Tue,  9 Feb 2021 15:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C206E182
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 15:09:16 +0000 (UTC)
IronPort-SDR: ZE7zj+KmvkmEK5Fn3vMXV5GU++rhdVF66kDOaUXXdA/J+cLj/rO/9eLtX/GVOAiOOTdp9Us+9h
 WoRlzg0r7SMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="243387561"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="243387561"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 07:09:15 -0800
IronPort-SDR: Qm9nM5a0oSYqpns9ubUBSAPZ6FFCgcvRvolKzqNXqVQWM7yB6yc9apqDvGauaid9SshZ+udJFo
 W+lEu4VpwBKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="396158450"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 09 Feb 2021 07:09:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Feb 2021 17:09:13 +0200
Date: Tue, 9 Feb 2021 17:09:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YCKlmbQuA4DCnIom@intel.com>
References: <20210209021918.16234-1-ville.syrjala@linux.intel.com>
 <161284092971.28236.16871246953456318187@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161284092971.28236.16871246953456318187@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Disallow_plane_x+w=3Est?=
 =?utf-8?q?ride_on_ilk+_with_X-tiling?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 09, 2021 at 03:22:09AM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
> =

> Series: series starting with [1/3] drm/i915: Disallow plane x+w>stride on=
 ilk+ with X-tiling
> URL   : https://patchwork.freedesktop.org/series/86882/
> State : failure
> =

> =3D=3D Summary =3D=3D
> =

> CI Bug Log - changes from CI_DRM_9747 -> Patchwork_19637
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> =

> Summary
> -------
> =

>   **FAILURE**
> =

>   Serious unknown changes coming with Patchwork_19637 absolutely need to =
be
>   verified manually.
>   =

>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19637, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in=
 CI.
> =

>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19637/=
index.html
> =

> Possible new issues
> -------------------
> =

>   Here are the unknown changes that may have been introduced in Patchwork=
_19637:
> =

> ### IGT changes ###
> =

> #### Possible regressions ####
> =

>   * igt@vgem_basic@unload:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19637/fi-kbl-s=
oraka/igt@vgem_basic@unload.html

<3> [558.016425] i915 0000:00:02.0: [drm] *ERROR* Potential atomic update f=
ailure on pipe A

I guess we've been throwing that under these two:
https://gitlab.freedesktop.org/drm/intel/-/issues/86
https://gitlab.freedesktop.org/drm/intel/-/issues/558

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
