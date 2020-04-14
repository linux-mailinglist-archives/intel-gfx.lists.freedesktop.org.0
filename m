Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BED1A8609
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 18:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135C06E4F9;
	Tue, 14 Apr 2020 16:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2DFF6E4F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 16:54:34 +0000 (UTC)
IronPort-SDR: e1UuHBw9cbuG8Jytdyk+KSnnOE4Ya1TAUerywC5ncQoaQklibDvkprSACXZJIF9PTkoeClGCIR
 D/A9ZPYhly+A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 09:54:31 -0700
IronPort-SDR: p/SDsrvsXUcm6HTfUWYsi+HtOtOUnrmmACPfIp/xEXjZ1zoBTJ9JyGxo9v/l2ZqEwlGkvprwr/
 +Jy9WyPAbPnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="298756928"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Apr 2020 09:54:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Apr 2020 19:54:29 +0300
Date: Tue, 14 Apr 2020 19:54:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200414165429.GC6112@intel.com>
References: <20200330144421.11632-1-kai.vehmanen@linux.intel.com>
 <alpine.DEB.2.21.2004091657320.2957@eliteleevi.tm.intel.com>
 <20200409180418.GY6112@intel.com>
 <alpine.DEB.2.21.2004141315410.2957@eliteleevi.tm.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2004141315410.2957@eliteleevi.tm.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RESEND PATCH] drm/i915: do AUD_FREQ_CNTRL state
 save on all gen9+ platforms
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 14, 2020 at 01:32:49PM +0300, Kai Vehmanen wrote:
> Hey,
> =

> On Thu, 9 Apr 2020, Ville Syrj=E4l=E4 wrote:
> =

> > On Thu, Apr 09, 2020 at 05:14:01PM +0300, Kai Vehmanen wrote:
> > > type of content free ping, but I still dare to seek your input on wha=
t is =

> > > the proper way to get attention to a patch that are seemingly forever =

> > > stuck on the review sideline.
> > =

> > And what is this?
> > https://patchwork.freedesktop.org/patch/347148/?series=3D71527&rev=3D1
> =

> that's a lost child I'm afraid. It's essentially the same patch I =

> submitted late last year. It got review ok from Matt, and I thought it wa=
s =

> going to be merged and went on to do other things -- i.e. I failed to =

> follow-up on this. Back then I did not know about any actual bugs this =

> would fix -- this was a generic change to align with hw specs.
> =

> Fast forward two months. I had forgotten about that previous patch, and =

> I ended up recreating the same patch to fix an actual bug. I.e. the of =

> this thread:
> https://patchwork.freedesktop.org/series/74664/

OK. I sucked in the rb from the old patch and pushed the new version.
Thanks.

> =

> I only very recently noticed the old patch. But alas, the new attempt =

> is probably the one that should be merged as it has more information in =

> the commit message (we now know about actual issues on JSL).
> =

> > Just ping on original patch or ping someone on irc. Resending
> > the same patch over and over does no good. At least my brain just
> > ignores anything that looks like it's just a resend w/o any clear
> > justification.
> =

> Ack, thanks a lot, this clarifies. In any case, patch author should own =

> the follow-up and I definitely dropped the ball on the older #347148 .
> =

> Br, Kai


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
