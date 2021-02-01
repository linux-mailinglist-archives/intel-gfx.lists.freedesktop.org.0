Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1625730B1A0
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 21:34:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBCCC6E878;
	Mon,  1 Feb 2021 20:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D086E878
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 20:34:30 +0000 (UTC)
IronPort-SDR: kWGnCpKX7GFP27cRww5phwz0KQadsDFHMx4lvgbitZk98APCPJGnUTl30WqJebMCT9Ti0WKPi2
 FPBVqKuckaLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="168430333"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="168430333"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 12:34:30 -0800
IronPort-SDR: YjKskNf64w3azOb/QzFkLfVIjkTMKZKtiwSFQfejhyoWtNOAwVzi/R3+FQGoQvWx1Caq7V0gkj
 RuLcy8yIgeIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="432516433"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 01 Feb 2021 12:34:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 22:34:27 +0200
Date: Mon, 1 Feb 2021 22:34:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YBhl02N9b8V3fMmo@intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <161221033182.18680.6990863242267144359@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161221033182.18680.6990863242267144359@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_the_DDI_clock_routing_mess?=
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

On Mon, Feb 01, 2021 at 08:12:11PM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
> =

> Series: drm/i915: Clean up the DDI clock routing mess
> URL   : https://patchwork.freedesktop.org/series/86544/
> State : failure
> =

> =3D=3D Summary =3D=3D
> =

> CI Bug Log - changes from CI_DRM_9713 -> Patchwork_19556
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> =

> Summary
> -------
> =

>   **FAILURE**
> =

>   Serious unknown changes coming with Patchwork_19556 absolutely need to =
be
>   verified manually.
>   =

>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19556, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in=
 CI.
> =

>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19556/=
index.html
> =

> Possible new issues
> -------------------
> =

>   Here are the unknown changes that may have been introduced in Patchwork=
_19556:
> =

> ### IGT changes ###
> =

> #### Possible regressions ####
> =

>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-icl-u2/ig=
t@kms_chamelium@common-hpd-after-suspend.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19556/fi-icl-u=
2/igt@kms_chamelium@common-hpd-after-suspend.html

<3> [153.691774] i915 0000:00:02.0: [drm] *ERROR* Failed to read DPCD regis=
ter 0x92

Seems to be
https://gitlab.freedesktop.org/drm/intel/-/issues/2868
except not yet tracked for icl.

That register seems to be related to the HDMI 2.1 PCON stuff.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
