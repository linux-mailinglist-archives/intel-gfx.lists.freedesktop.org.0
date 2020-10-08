Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 026F328727B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 12:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE5C6E2D5;
	Thu,  8 Oct 2020 10:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC576E2D5
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 10:24:10 +0000 (UTC)
IronPort-SDR: RD9ALVre2Gtlhy2ex/CszTugO2gpmZlrMdhC0/6ZSgFFx/TY7Y8nqhDlrOa3PzDLW3OPzjGeag
 IZ57C520fdJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="182740170"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="182740170"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 03:24:09 -0700
IronPort-SDR: 78JE8uECQXVknMqFRcvoe4zuJSfiiJCkbzSkCuFqE83SvLHFtMzzq4MZr/j/isSqNvC6qPX+RX
 mz1BTncCmuQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="297908670"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 08 Oct 2020 03:24:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Oct 2020 13:24:06 +0300
Date: Thu, 8 Oct 2020 13:24:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201008102406.GJ6112@intel.com>
References: <20201008095436.27743-1-chris@chris-wilson.co.uk>
 <20201008100422.GI6112@intel.com>
 <160215195782.27361.8014008642581322158@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160215195782.27361.8014008642581322158@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Exclude low pages (128KiB) of
 stolen from use
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 08, 2020 at 11:12:37AM +0100, Chris Wilson wrote:
> Quoting Ville Syrj=E4l=E4 (2020-10-08 11:04:22)
> > On Thu, Oct 08, 2020 at 10:54:36AM +0100, Chris Wilson wrote:
> > > The GPU is trashing the low pages of its reserved memory upon reset. =
If
> > > we are using this memory for ringbuffers, then we will dutiful resubm=
it
> > > the trashed rings after the reset causing further resets, and worse. =
We
> > > must exclude this range from our own use. The value of 128KiB was fou=
nd
> > > by empirical measurement on gen9.
> > > =

> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: stable@vger.kernel.org
> > > ---
> > > v2 comes with a selftest to see how widespread the issue is
> > =

> > Do we need something to make sure FBC isn't scribbling into
> > stolen during the test?
> =

> igt runs the tests with disable_display=3D1, that is still being honoured
> right?

It just marks all connectors as disconnected now. If coming straight
from boot presumaly whatever the BIOS lit up could still be on at that
point. Though I guess we would have typically done a module reload
for this? rmmod should shut things down IIRC. Also wouldn't think the
BIOS would even enables FBC.

> =

> I did think about looking up the address to see if the drm_mm_node is in
> use to try and filter out such users. For starters, I just want to
> confirm that CI is seeing what I'm seeing.
> -Chris

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
