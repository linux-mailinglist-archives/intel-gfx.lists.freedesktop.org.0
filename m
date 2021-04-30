Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EBF36FAFD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 14:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF036E0A0;
	Fri, 30 Apr 2021 12:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F08D26E0A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 12:55:32 +0000 (UTC)
IronPort-SDR: jZH3sfQ1sIuIv3yxpq3Rid8fwadthcLmv3xpSR7SjrrMl/XDfNKkJuUUjO/tzh6jh+I6nbgM2/
 TEu8iiSk+zLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="177426672"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="177426672"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 05:55:32 -0700
IronPort-SDR: ZiWrrmGqYsU5jHIbFEr2xLPXMKqeEwrLVQ/qI6sKVdbtR+jD5SftesLrO4G2tGhIPzZ3Ujxuao
 6IG9KRFmecNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="431420388"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 30 Apr 2021 05:55:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Apr 2021 15:55:28 +0300
Date: Fri, 30 Apr 2021 15:55:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <YIv+QNTlV9ef0QzH@intel.com>
References: <20210328225709.18541-16-daniele.ceraolospurio@intel.com>
 <20210427104504.2720-1-anshuman.gupta@intel.com>
 <YIhePcRcpKEoBmAE@intel.com>
 <96d9782a7e864448a4d311f4eeaa6923@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96d9782a7e864448a4d311f4eeaa6923@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 15/16] drm/i915/pxp: black pixels on pxp
 disabled
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
Cc: "Gaurav, Kumar" <kumar.gaurav@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 30, 2021 at 07:12:53AM +0000, Gupta, Anshuman wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, April 28, 2021 12:26 AM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Vivi, Rodrigo <rodrigo.vivi@intel.=
com>;
> > Gaurav, Kumar <kumar.gaurav@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Ceraolo Spurio, Daniele
> > <daniele.ceraolospurio@intel.com>
> > Subject: Re: [PATCH v3 15/16] drm/i915/pxp: black pixels on pxp disabled
> > =

> > On Tue, Apr 27, 2021 at 04:15:04PM +0530, Anshuman Gupta wrote:
> > > When protected sufaces has flipped and pxp session is disabled,
> > > display black pixels by using plane color CTM correction.
> > >
> > > v2:
> > > - Display black pixels in aysnc flip too.	=

> > =

> > We can't change any of that with an async flip.
> I was thinking of an scenario , when application flip the protected surfa=
ces with synchronous flips
> and driver has enable the plane decryption, can application issue an inte=
rmediate async flip with
> protected surfaces afterwards ?
> If above is possible, is it possible to display black pixels in case of p=
xp session invalidation at the time of
> Plane commit?   =


We'll just have to refuse the async flip if the session has
been invalidated.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
