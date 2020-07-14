Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA0A21F856
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 19:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50C1E6E171;
	Tue, 14 Jul 2020 17:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AF4D6E171
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 17:39:17 +0000 (UTC)
IronPort-SDR: w4CH+ge49Jiqp+kMjYvtXQVpqJXmGljP8O4hP1AJzZbwJTrCF4+cgpelaxHdrDflFQiPWfO+Qr
 QKXYuEEMQJqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="146995647"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="146995647"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 10:39:16 -0700
IronPort-SDR: Tfm1ROA63Gu5sQX6ejToGre2RDgvUWDJh7pcD9CrAta8ztmetBd9/h8GhLlbPHnRg10Q5VvlSv
 hyRKpR9vBBZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="325906113"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 14 Jul 2020 10:39:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 20:39:12 +0300
Date: Tue, 14 Jul 2020 20:39:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20200714173912.GN6112@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-54-matthew.auld@intel.com>
 <CAPM=9twBBVQy_0O6ES5UjtBpn0hfjaWoo24miziBj+VMrbciWg@mail.gmail.com>
 <84ff0146-0a35-c66e-2c33-2ce22aae4c6c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84ff0146-0a35-c66e-2c33-2ce22aae4c6c@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC 53/60] drm/i915: Create stolen memory region
 from local memory
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris P Wilson <chris.p.wilson@intel.com>, Neel Desai <neel.desai@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 14, 2020 at 04:01:31PM +0100, Matthew Auld wrote:
> On 13/07/2020 05:48, Dave Airlie wrote:
> > On Fri, 10 Jul 2020 at 22:01, Matthew Auld <matthew.auld@intel.com> wro=
te:
> >>
> >> From: CQ Tang <cq.tang@intel.com>
> >>
> >> Add "REGION_STOLEN" device info to dg1, create stolen memory
> >> region from upper portion of local device memory, starting
> >> from DSMBASE.
> >>
> >> The memory region is marked with "is_devmem=3Dtrue".
> > =

> > So is stolen fake on LMEM devices? The concept of stolen doesn't seem
> > to make much sense with VRAM, so please enlighten me.
> =

> CQ, do we actually need an explicit stolen LMEM region? The idea of =

> having a DSM like stolen region for LMEM does sound strange(outside of =

> the usual reserved portions which are for HW use etc), since the driver =

> has complete control over LMEM. Is it just a convenience thing to keep =

> things working as-is for fbc, initial fb, etc. or is there more to it? =

> There is buddy_alloc_range() for LMEM which we could potentially use to =

> wrap an object around for things like the initial fb or similar.

For some reason the FBC hardware itself will treat the CFB base
as an offset into stolen memory. So assuming they didn't change
how the FBC hardware works we do still need the stolen
base set up in some fashion. Also the CFB base register is
32bits wide so without the stolen base it wouldn't be able
to address more than 4GiB or memory. Hmm, actually the
docs say the register only accepts 28bit offsets so only
256MiB in fact. I'll have to double check if that's true and
whether we are currently at risk of going past that limit...

I think there are some other magic things in the hardware that
also use the stolen base for something.

I do agree that having stolen inside lmem is a bit odd. That's
not how i810 worked IIRC. Back then you either had lmem or
you had stolen. But I guess all the i810 people retired by now
so there was no one to tell the new guys how to design this
stuff :P

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
