Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7040517E9FC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 21:26:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0564189D81;
	Mon,  9 Mar 2020 20:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E9989D81
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 20:26:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 13:26:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="353442814"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 09 Mar 2020 13:26:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Mar 2020 22:26:24 +0200
Date: Mon, 9 Mar 2020 22:26:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Message-ID: <20200309202624.GY13686@intel.com>
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
 <cbf58bd8-ee75-67f0-5901-01020c677073@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbf58bd8-ee75-67f0-5901-01020c677073@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 0/9] drm/i915: Gamma cleanups
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

On Fri, Mar 06, 2020 at 09:10:56PM +0530, Sharma, Swati2 wrote:
> =

> =

> On 03-Mar-20 11:03 PM, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Remainder of my earlier gamma cleanups, rebased due to
> > hw vs. uapi split and intel_de_{read,write}().
> =

> I didn't get patch#8. Everything looks good to me.
> There is BAT failure https://patchwork.freedesktop.org/series/69136/
> Please check that.
> =

> Reviewed-by: Swati Sharma <swati2.sharma@intel.com>

Series pushed to dinq. Thanks for the review.

> > =

> > Ville Syrj=E4l=E4 (9):
> >    drm/i915: Polish CHV CGM CSC loading
> >    drm/i915: Clean up i9xx_load_luts_internal()
> >    drm/i915: Split i9xx_read_lut_8() to gmch vs. ilk variants
> >    drm/i915: s/blob_data/lut/
> >    drm/i915: s/chv_read_cgm_lut/chv_read_cgm_gamma/
> >    drm/i915: Clean up integer types in color code
> >    drm/i915: Refactor LUT read functions
> >    drm/i915: Fix readout of PIPEGCMAX
> >    drm/i915: Pass the crtc to the low level read_lut() funcs
> > =

> >   drivers/gpu/drm/i915/display/intel_color.c | 407 ++++++++++++---------
> >   drivers/gpu/drm/i915/i915_reg.h            |   1 -
> >   2 files changed, 225 insertions(+), 183 deletions(-)
> > =

> =

> -- =

> ~Swati Sharma

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
