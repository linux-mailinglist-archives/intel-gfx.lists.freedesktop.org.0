Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEE036FA8E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 14:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778B16F48C;
	Fri, 30 Apr 2021 12:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2676F451;
 Fri, 30 Apr 2021 12:39:50 +0000 (UTC)
IronPort-SDR: 0WLH6F33fVIxhKPSqVw9d6y/SUHz7xGU1Uf3bRUwiQA1CFQnOjyu//L0EWWrGkG0sFB5b1VXSF
 gxzhsQLMaUiQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="218006760"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="218006760"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 05:39:49 -0700
IronPort-SDR: 4fOJkyJU4rvNimTMqekcVDhKBNvMK3RrCjaF52L1GC0v9R1kUq1pVlPMPJWXBxtjLOZlsXjZ27
 qAM8At3qiwPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="459403343"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 30 Apr 2021 05:39:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Apr 2021 15:39:46 +0300
Date: Fri, 30 Apr 2021 15:39:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx-trybot@lists.freedesktop.org
Message-ID: <YIv6kpNjEusaeDyp@intel.com>
References: <20210426203902.32597-1-ville.syrjala@linux.intel.com>
 <161976430944.17882.10814391960381972941@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161976430944.17882.10814391960381972941@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/fbc=3A_Don=27t_nuke_manual?=
 =?utf-8?q?ly_around_flips_=28rev3=29?=
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
Cc: intel-gfx@lists.freedesktop.org, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 30, 2021 at 06:31:49AM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
> =

> Series: series starting with [1/2] drm/i915/fbc: Don't nuke manually arou=
nd flips (rev3)
> URL   : https://patchwork.freedesktop.org/series/89517/
> State : success
> =

> =3D=3D Summary =3D=3D
> =

> CI Bug Log - changes from CI_DRM_10031_full -> Trybot_7704_full
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> =

> Summary
> -------
> =

>   **SUCCESS**
> =

>   No regressions found.
...
>   * igt@kms_draw_crc@draw-method-xrgb8888-render-untiled:
>     - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#52] / [i915#54]=
) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10031/shard-iclb=
4/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_7704/shard-iclb8=
/igt@kms_draw_crc@draw-method-xrgb8888-render-untiled.html

We have some seriously overzealous failure filtering going on here.
A lot of new failures on iclb with this run that all just got ignored.

We need to get this filtering reduced significantly or we'll end
up merging regressions. Not sure if it's possibly to clean it up
in any gradual way. Might just have to throw out everything related
to crc mismatches and start again from scratch. I suspect FIFO
underruns are in a similar situation.

And in the future really need to start tracking these types of
failures more or less by platform. I think currently we have just
several of these ancient meta-bugs where everything gets clumped
together, and thus no one can ever know what has been fixed and
what is still a problem on each platform.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
