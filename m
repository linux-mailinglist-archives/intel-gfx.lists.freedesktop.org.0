Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 221BD37270C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 10:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D79C891CB;
	Tue,  4 May 2021 08:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F8C891CB
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 08:16:10 +0000 (UTC)
IronPort-SDR: inhNKDELxlSbqYf6Q+iUMsybZDBYrMlmQI+zfeheKqTBjUj+27zffl7VT1TxqoKw6sjb5GyohX
 kCH2NGcLcsAw==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="195875584"
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="195875584"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 01:16:10 -0700
IronPort-SDR: dzGsQABJgGM4Hfn8iva4j1MnC959kmi6/RPfOyC6nDjjnlg1yN4/8Vwdx3Uq8INrKHrE4hTjoa
 iwpOEcPjXAkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="427689893"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 04 May 2021 01:16:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 May 2021 11:16:06 +0300
Date: Tue, 4 May 2021 11:16:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YJECxkQRkAAKPbRl@intel.com>
References: <20210430143945.6776-1-ville.syrjala@linux.intel.com>
 <162007169526.13684.2336533428443598886@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162007169526.13684.2336533428443598886@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Don=27t_include_in?=
 =?utf-8?q?tel=5Fde=2Eh_from_intel=5Fdisplay=5Ftypes=2Eh_=28rev2=29?=
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

On Mon, May 03, 2021 at 07:54:55PM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
> =

> Series: series starting with [v2,1/2] drm/i915: Don't include intel_de.h =
from intel_display_types.h (rev2)
> URL   : https://patchwork.freedesktop.org/series/89698/
> State : failure
> =

> =3D=3D Summary =3D=3D
> =

> CI Bug Log - changes from CI_DRM_10039 -> Patchwork_20053
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> =

> Summary
> -------
> =

>   **FAILURE**
> =

>   Serious unknown changes coming with Patchwork_20053 absolutely need to =
be
>   verified manually.
>   =

>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20053, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in=
 CI.
> =

>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20053/=
index.html
> =

> Possible new issues
> -------------------
> =

>   Here are the unknown changes that may have been introduced in Patchwork=
_20053:
> =

> ### IGT changes ###
> =

> #### Possible regressions ####
> =

>   * igt@i915_selftest@live@blt:
>     - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10039/fi-bdw-5557=
u/igt@i915_selftest@live@blt.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20053/fi-bdw-5=
557u/igt@i915_selftest@live@blt.html

<4> [276.958769] WARNING: CPU: 0 PID: 358 at kernel/workqueue.c:1418 __queu=
e_work+0x2d2/0x620
...
<4> [276.959009]  queue_work_on+0x68/0x80
<4> [276.959016]  node_free+0x43/0x60 [i915]
<4> [276.959140]  pool_free_older_than+0x132/0x170 [i915]
<4> [276.959270]  pool_free_work+0x12/0x40 [i915]
<4> [276.959395]  process_one_work+0x270/0x5c0
<4> [276.959407]  worker_thread+0x37/0x380

Which is
        /* if draining, only works from the same workqueue are allowed */
	if (unlikely(wq->flags & __WQ_DRAINING) &&
	    WARN_ON_ONCE(!is_chained_work(wq)))
	        return;

Based on a cursory glance the queue_work is probably coming from
i915_gem_free_object() -> queue_work(i915->wq, &i915->mm.free_work);

So looks like i915_gem_drain_workqueue() is broken.

Entirely unrelated to this patch series.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
