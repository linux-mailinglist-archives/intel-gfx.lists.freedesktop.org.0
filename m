Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E52C831EFA3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 20:22:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0BC489CAD;
	Thu, 18 Feb 2021 19:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E5589CAD
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Feb 2021 19:22:11 +0000 (UTC)
IronPort-SDR: pwNEhd6rgZbPqbDXA1+Du33gCsMa+TimlXumDYM1m4Tx8zy0gG8kW988xVvHhQoTJZYJ6VwnNR
 hQRPgnQ7CyOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="162768149"
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="162768149"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 11:22:10 -0800
IronPort-SDR: N7DpJWdk5lF8TcILxq5dbAuOW5AZZ85mXgPqzeiAamVxBiJtP9Ax4EqURMmwDHbzYt7lP0N+Cd
 uvKZg20PiiQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="400641623"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 18 Feb 2021 11:22:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Feb 2021 21:22:07 +0200
Date: Thu, 18 Feb 2021 21:22:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YC6+XySefUEkPoKx@intel.com>
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
 <161367530726.23766.8312456807338701714@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161367530726.23766.8312456807338701714@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/vblank=3A_Avoid_storing_a_timestamp_for_the_same_frame_twice_?=
 =?utf-8?b?KHJldjIp?=
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

On Thu, Feb 18, 2021 at 07:08:27PM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
> =

> Series: drm/vblank: Avoid storing a timestamp for the same frame twice (r=
ev2)
> URL   : https://patchwork.freedesktop.org/series/86672/
> State : failure
> =

> =3D=3D Summary =3D=3D
> =

> CI Bug Log - changes from CI_DRM_9786 -> Patchwork_19701
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> =

> Summary
> -------
> =

>   **FAILURE**
> =

>   Serious unknown changes coming with Patchwork_19701 absolutely need to =
be
>   verified manually.
>   =

>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19701, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in=
 CI.
> =

>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/=
index.html
> =

> Possible new issues
> -------------------
> =

>   Here are the unknown changes that may have been introduced in Patchwork=
_19701:
> =

> ### IGT changes ###
> =

> #### Possible regressions ####
> =

>   * igt@gem_exec_suspend@basic-s0:
>     - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9786/fi-cfl-8109u=
/igt@gem_exec_suspend@basic-s0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19701/fi-cfl-8=
109u/igt@gem_exec_suspend@basic-s0.html

Looks like the machine went AWOL during suspend. Seems unrelated to
the patch at hand.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
