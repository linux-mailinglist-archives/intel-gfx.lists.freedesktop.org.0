Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 259B41A3987
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 20:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B9446E171;
	Thu,  9 Apr 2020 18:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C504E6E171
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 18:04:22 +0000 (UTC)
IronPort-SDR: hvKlGBTixYqy2nBvPo+vGxIQJ8wDewtjZ3uNioDCyDUHKF6NSe8mDhw85Kql+ANBCUta9AvrHK
 yuDjx/3fEqXg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 11:04:21 -0700
IronPort-SDR: EFQdHI3nX/zpBLBw9MSm7S6MI1m23fRzbyyCFqeWvD3kgFvpBFUFux/PY3RWV3IsYLYCsmQB4h
 BeJ+i8r3sFWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,363,1580803200"; d="scan'208";a="297601390"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 09 Apr 2020 11:04:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Apr 2020 21:04:18 +0300
Date: Thu, 9 Apr 2020 21:04:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200409180418.GY6112@intel.com>
References: <20200330144421.11632-1-kai.vehmanen@linux.intel.com>
 <alpine.DEB.2.21.2004091657320.2957@eliteleevi.tm.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2004091657320.2957@eliteleevi.tm.intel.com>
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

On Thu, Apr 09, 2020 at 05:14:01PM +0300, Kai Vehmanen wrote:
> Hey,
> =

> On Mon, 30 Mar 2020, Kai Vehmanen wrote:
> =

> > Replace the TGL/ICL specific platform checks with a more generic check
> > using INTEL_GEN(). Fixes bug with broken audio after S3 resume on JSL
> > platforms.
> =

> I would be (gently) beaten with a stick on alsa-devel for sending this
> type of content free ping, but I still dare to seek your input on what is =

> the proper way to get attention to a patch that are seemingly forever =

> stuck on the review sideline.

And what is this?
https://patchwork.freedesktop.org/patch/347148/?series=3D71527&rev=3D1

> =

> I've sent this on 13.3., resend on 30.3.. Should I just keep on sending =

> resends and let the system work (this is the alsa-devel practise), or =

> should I start to contact potential reviewers with more direct asks?

Just ping on original patch or ping someone on irc. Resending
the same patch over and over does no good. At least my brain just
ignores anything that looks like it's just a resend w/o any clear
justification.

> =

> Tests seem to all pass and this is pretty important for anyone using JSL =

> platforms (you lose HDMI/DP audio after first S3 suspend otherwise):
> https://patchwork.freedesktop.org/series/74664/
> =

> Br, Kai

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
