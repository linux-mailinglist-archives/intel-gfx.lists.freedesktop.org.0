Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E17132C47B6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 19:36:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79AEE6E8D7;
	Wed, 25 Nov 2020 18:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426A56E8D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 18:36:53 +0000 (UTC)
IronPort-SDR: wogOpojZVtFIZ5hNEpkxSXJnDGvirzb9NUXGWR5kia6SOxyhqrkTo9TBlsLap4oUFT9xI6nUnM
 4zK57Ktzd0ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="151441958"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="151441958"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 10:36:52 -0800
IronPort-SDR: WVFRN05jNjy45nrJ3FsV/nB15JMRYzWBh3gWSblsUfAFdu9uo/jBfMeAnivoKQL8DWVkbo9Hm5
 CR2dEa9O4+0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="370856519"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 25 Nov 2020 10:36:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 20:36:49 +0200
Date: Wed, 25 Nov 2020 20:36:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201125183649.GA6112@intel.com>
References: <20201125003108.156110-1-aditya.swarup@intel.com>
 <87360xmzgr.fsf@intel.com>
 <160631840326.26272.537878967385128182@build.alporthouse.com>
 <61248f45-d8f1-edec-656a-6eaddefb3789@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61248f45-d8f1-edec-656a-6eaddefb3789@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix REVID macros for TGL to
 fetch correct stepping
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 25, 2020 at 09:51:04AM -0800, Aditya Swarup wrote:
> On 11/25/20 7:33 AM, Chris Wilson wrote:
> > Quoting Jani Nikula (2020-11-25 11:45:56)
> >> On Tue, 24 Nov 2020, Aditya Swarup <aditya.swarup@intel.com> wrote:
> >>> Fix TGL REVID macros to fetch correct display/gt stepping based
> >>> on SOC rev id from INTEL_REVID() macro. Previously, we were just
> >>> returning the first element of the revid array instead of using
> >>> the correct index based on SOC rev id.
> >>>
> >>> Also, add array bound checks for TGL REV ID array. Since, there
> >>> might be a possibility of using older kernels on latest platform
> >>> revision, resulting in out of bounds access for rev ID array.
> >>> In this scenario, print message for unsupported rev ID and apply
> >>> settings for latest rev ID available.
> >>>
> >>> Fixes: ("drm/i915/tgl: Fix stepping WA matching")
> >>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> >>> Cc: Matt Roper <matthew.d.roper@intel.com>
> >>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >>> Cc: Jani Nikula <jani.nikula@intel.com>
> >>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >>> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> >>> ---
> >>>  drivers/gpu/drm/i915/i915_drv.h | 35 +++++++++++++++++++++++++++----=
--
> >>>  1 file changed, 29 insertions(+), 6 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i=
915_drv.h
> >>> index 15be8debae54..29d55b7017be 100644
> >>> --- a/drivers/gpu/drm/i915/i915_drv.h
> >>> +++ b/drivers/gpu/drm/i915/i915_drv.h
> >>> @@ -1572,16 +1572,37 @@ enum {
> >>>       TGL_REVID_D0,
> >>>  };
> >>>  =

> >>> -extern const struct i915_rev_steppings tgl_uy_revids[];
> >>> -extern const struct i915_rev_steppings tgl_revids[];
> >>> +extern const struct i915_rev_steppings tgl_uy_revids[4];
> >>> +extern const struct i915_rev_steppings tgl_revids[2];
> >>
> >> Just a quick note, the compiler does not check that the size in the
> >> extern declaration matches the size in the array definition. So you
> >> might end up with a mismatch without noticing.
> =

> Yes.. We will have to take care of it if we are adding rev id to array ta=
ble(which mostly
> should remain a const once we decide to go upstream). Without this declar=
ation, I cannot
> use ARRAY_SIZE() macro with revid arrays as the sizeof() operator complai=
ns about not
> knowing the size of the array in question as it is an extern declaration. =


Can't you replace the ARRAY_SIZE() with a sentinel? I guess
Making it a struct with a size member would be another option.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
