Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 113E236BD19
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 04:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD9326E027;
	Tue, 27 Apr 2021 02:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A376E027
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 02:06:02 +0000 (UTC)
IronPort-SDR: z8GOelzgHcK5kf04KcZRBcyTzWUnjm9psTZ93FK8ZO/A+BBQJUh3eeW5Cc9locw1KZRP+5v4NS
 3vxow6tiQiRQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="193248176"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="193248176"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 19:06:01 -0700
IronPort-SDR: LLbYG7sGqFvh71+E5Z+a+Lcy/vi/e6XG0PaoDQjOo69HR+3LvbXOo35cb/uqdRlvhIi2b8Mg1p
 4+ub5sPMgZbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="387193017"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 26 Apr 2021 19:05:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Apr 2021 05:05:58 +0300
Date: Tue, 27 Apr 2021 05:05:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YIdxhuyJ2cqxA+DX@intel.com>
References: <20210426185612.13223-1-ville.syrjala@linux.intel.com>
 <1eb44e061b1aa1d6bd2b814d5a4e5520b7bf21db.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1eb44e061b1aa1d6bd2b814d5a4e5520b7bf21db.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop using crtc->index as the pipe
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 27, 2021 at 12:07:21AM +0000, Souza, Jose wrote:
> On Mon, 2021-04-26 at 21:56 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The pipe crc code slipped theough the net when we tried to
> > eliminate all crtc->index=3D=3Dpipe abuses. Remedy that.
> > =

> > And while at it get rid of those nasty intel_crtc+drm_crtc
> > pointer aliases.
> =

> intel_crtc is broadly used,

Not anymore. We've cleaned up almost all of it. Looks like only ~40 left
vs. ~600 the other name. Probably a good time to clean up the rest
finally.

> also we have the same for other structs like intel_connector, in my optio=
n that is better than _crtc x crtc.

The _crtc is explicitly ugly to make sure people leave it well
alone. Otherwise we can never get rid of these horrible aliasing
pointers. It should only make an appearance in core/helper vfuncs
and such. At some point I was even pondering some kind of macro
magic to create semi-automatic wrappers so that we could always
just use the intel_ types in our vfunc implementations.

intel_crtc we've cleaned up the most I think, intel_encoder a bit less
perhaps, and intel_connector not really at all. Hence you see a lot more
of intel_connector floating around. We also don't usually use the intel_
types for connector states. Mainly because most of the time you don't
need anyting from there.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
