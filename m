Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8698E2AC644
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 21:48:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37EE89491;
	Mon,  9 Nov 2020 20:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 215988947A
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 20:48:52 +0000 (UTC)
IronPort-SDR: AtN4jLi3F/VtnNJAXDhcNy+2WxINni2KRjOnhvv2x1XfSD4p82mSqc1UxrCiJSHKaP5MQQGzsg
 fahrLhKf7Bgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="169084748"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="169084748"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 12:48:51 -0800
IronPort-SDR: maIg8arpuZzI6WfN3S/IjZdpxNkleWamk66iTo9vnJIja5/KGEHLCs1+vkLloXPRkbd4mqi6oI
 2mLuXQIG/bLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="359831262"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 09 Nov 2020 12:48:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Nov 2020 22:48:47 +0200
Date: Mon, 9 Nov 2020 22:48:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201109204847.GP6112@intel.com>
References: <20190720143132.17522-1-chris@chris-wilson.co.uk>
 <65da19be-2696-8d60-e055-63a37101cf6b@linux.intel.com>
 <156388293186.31349.1576327527372090940@skylake-alporthouse-com>
 <87pnm0qtr2.fsf@riseup.net>
 <156397886241.31349.9195166642161638629@skylake-alporthouse-com>
 <87a7d3qjzx.fsf@riseup.net>
 <CAOFGe96Hs+7GXT=vNmB14oXRnNjLna7D67Pm1G9jrkc3ws3=+w@mail.gmail.com>
 <160495290548.21258.15679039374837190397@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160495290548.21258.15679039374837190397@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable atomics in L3 for gen9
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Marcin =?utf-8?Q?=C5=9Alusarz?= <marcin.slusarz@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 09, 2020 at 08:15:05PM +0000, Chris Wilson wrote:
> Quoting Jason Ekstrand (2020-11-09 19:52:26)
> > We need to land this patch.  The number of bugs we have piling up in
> > Mesa gitlab related to this is getting a lot larger than I'd like.
> > I've gone back and forth with various HW and SW people internally for
> > countless e-mail threads and there is no other good workaround.  Yes,
> > the perf hit to atomics sucks but, fortunately, most games don't use
> > them heavily enough for it to make a significant impact.  We should
> > just eat the perf hit and fix the hangs.
> =

> Drat, I thought you had found an alternative fix in the
> bad GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC w/a.
> =

> So be it.

I don't suppose this could be just lack of programming the magic
MOCS entry for L3 evictions?

--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -132,6 +132,9 @@ static const struct drm_i915_mocs_entry skl_mocs_table[=
] =3D {
        MOCS_ENTRY(I915_MOCS_CACHED,
                   LE_3_WB | LE_TC_2_LLC_ELLC | LE_LRUM(3),
                   L3_3_WB)
+       MOCS_ENTRY(63,
+                  LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+                  L3_1_UC)
 };
 =

 /* NOTE: the LE_TGT_CACHE is not used on Broxton */

The code seems to claim we can't even program that on gen9, but there's
nothing in the current spec to back that up AFAICS.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
