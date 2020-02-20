Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0AA165F49
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 14:56:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA19D6ED99;
	Thu, 20 Feb 2020 13:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D5C06ED95;
 Thu, 20 Feb 2020 13:56:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 05:56:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="224866598"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 20 Feb 2020 05:56:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Feb 2020 15:56:32 +0200
Date: Thu, 20 Feb 2020 15:56:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Message-ID: <20200220135632.GZ13686@intel.com>
References: <20191107151725.10507-1-ville.syrjala@linux.intel.com>
 <20191107151725.10507-5-ville.syrjala@linux.intel.com>
 <CACvgo53oWVf2=DGCopMrk0kjqZ+5ULXApEfj99xWZxD8vSUyMA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvgo53oWVf2=DGCopMrk0kjqZ+5ULXApEfj99xWZxD8vSUyMA@mail.gmail.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915: Add i9xx_lut_8()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 20, 2020 at 11:20:05AM +0000, Emil Velikov wrote:
> On Thu, 7 Nov 2019 at 15:17, Ville Syrjala
> <ville.syrjala@linux.intel.com> wrote:
> >
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > We have a nice little helper to compute a single LUT entry
> > for everything except the 8bpc legacy gamma mode. Let's
> > complete the set.
> >
> At a later stage one could rename this & the 10bit one, moving them to
> include/drm/.
> There are other drivers doing the same thing... not sure if that's
> worth it though.

I'd say no. These are specifically about formatting the LUT entry for
the hw register. I don't really see much benefit from sharing code to
compute hw register values across totally different hardware, even if
the bits happen to match by accident.

The only good exception I can think of are cases where said =

register value comes more or less straight from some cross
vendor spec.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
