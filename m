Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C3518BD81
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 18:06:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C2989CDE;
	Thu, 19 Mar 2020 17:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7274D89BA5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 17:06:25 +0000 (UTC)
IronPort-SDR: zZHq/YLBVendJav7KRzgZ0ZxJJApMFgi+29Sy32GDLZXl6yDePD6su754ZKqbVb7UD9Eo8Ylsq
 oSBJdQyEo/hQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 10:06:24 -0700
IronPort-SDR: Ok66OpAvMjaoNWTeDfGEnvKgVFaDTOCdCyhFGTU6UIdfiw0Lfw6s1oN6RmvdFYD5OBXHh6eKE5
 p2Qvs0OXX0Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="263794539"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 19 Mar 2020 10:06:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Mar 2020 19:06:20 +0200
Date: Thu, 19 Mar 2020 19:06:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200319170620.GO13686@intel.com>
References: <20200319163844.22783-1-ville.syrjala@linux.intel.com>
 <fd8d950b-13d2-ce85-ae03-3490551d3105@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd8d950b-13d2-ce85-ae03-3490551d3105@redhat.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Try to use fast+narrow link
 on eDP again and fall back to the old max strategy on failure
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
Cc: Jani Nikula <jani.nikula@intel.com>, Albert Astals Cid <aacid@kde.org>,
 intel-gfx@lists.freedesktop.org, Matteo Iervasi <matteoiervasi@gmail.com>,
 Emanuele Panigati <ilpanich@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 19, 2020 at 05:53:08PM +0100, Hans de Goede wrote:
> Hi,
> =

> On 3/19/20 5:38 PM, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Some new eDP panels don't like to operate at the max parameters, and
> > instead we need to go for an optimal confiugration. That unfortunately
> > doesn't work with older eDP panels which are generally only guaranteed
> > to work at the max parameters.
> > =

> > To solve these two conflicting requirements let's start with the optimal
> > setup, and if that fails we start again with the max parameters. The
> > downside is probably an extra modeset when we switch strategies but
> > I don't see a good way to avoid that.
> > =

> > For a bit of history we first tried to go for the fast+narrow in
> > commit 7769db588384 ("drm/i915/dp: optimize eDP 1.4+ link config
> > fast and narrow"). but that had to be reverted due to regression
> > on older panels in commit f11cb1c19ad0 ("drm/i915/dp: revert back
> > to max link rate and lane count on eDP"). So now we try to get
> > the best of both worlds by using both strategies.
> > =

> > v2: Deal with output_bpp and uapi vs. hw state split
> >      Reword some comments
> =

> I'm wondering if, at least for the fastset case, but also
> for later modesets I guess, it would not be better to
> first check if the link is already setup (panel already on)
> and then check if the existing parameters match our min/max
> criteria and if they do continue with those settings?
> =

> Doing something like this would likely also fix:
> https://gitlab.freedesktop.org/drm/intel/issues/1476

Yeah, I've thought about doing that. It's a bit ugly though, and
probably requires some actual thought so that we don't end up
doing something stupid.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
