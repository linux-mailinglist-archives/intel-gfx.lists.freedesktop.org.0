Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8332125F3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 16:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B4336E17A;
	Thu,  2 Jul 2020 14:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056A76E17A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 14:18:26 +0000 (UTC)
IronPort-SDR: XB8treOObhvGUW3CKgIwBoQFIfBBO7fOfbh72njwJbAs8iIjuBfj/kEou+MDDYSKR927VAuvXH
 mXRIynG0KUdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="146903424"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="146903424"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 07:18:26 -0700
IronPort-SDR: 0eQCVphSiuECbG9KnIuJwcnj+WvSmnRi0QCyKNsnORjcwLqyKpdBo8d5aRJE6HDJQ5QIpaoruJ
 pm5ciTfw0rwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="322111106"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 02 Jul 2020 07:18:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Jul 2020 17:18:22 +0300
Date: Thu, 2 Jul 2020 17:18:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200702141822.GC6112@intel.com>
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
 <20200625001120.22810-5-lucas.demarchi@intel.com>
 <20200701170430.GB6112@intel.com>
 <20200701172407.als573tp4fez2owc@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701172407.als573tp4fez2owc@ldmartin-desk1>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915/display: add phy,
 vbt and ddi indexes
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

On Wed, Jul 01, 2020 at 10:24:07AM -0700, Lucas De Marchi wrote:
> On Wed, Jul 01, 2020 at 08:04:30PM +0300, Ville Syrj=E4l=E4 wrote:
> >On Wed, Jun 24, 2020 at 05:11:18PM -0700, Lucas De Marchi wrote:
> >> Identify 3 possible cases in which the index numbers can be different
> >> from the "port" and add them to the description-based ddi initializati=
on
> >> table.  This can be used in place of additional functions mapping from
> >> one to the other.  Right now we already cover part of this by creating=
 kind of
> >> virtual phy numbering, but that comes with downsides:
> >>
> >> a) there's not really a "phy numbering" in the spec, this is purely a
> >> software thing; hardware uses whatever they want thinking mapping from
> >> one to the other arbitrarily is easy in software.
> >>
> >> b) currently the mapping occurs on "leaf" functions, making the decisi=
on
> >> based on the platform for each of those functions
> >>
> >> With this new table the approach will be: the port, as defined by the
> >> enum port, is merely a driver convention and won't be used anymore to
> >> define the register offset or register bits. For that we have the other
> >> 3 indexes, identified as being possibly different from the current usa=
ge
> >> of register bits: ddi, vbt and phy. The phy type is also added here,
> >> meant to replace the checks for combo vs tc.
> >>
> >> v2: Rebase and add RKL
> >>
> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display.c  | 64 ++++++++++---------
> >>  drivers/gpu/drm/i915/display/intel_display.h  |  8 +++
> >>  .../drm/i915/display/intel_display_types.h    |  4 ++
> >>  3 files changed, 45 insertions(+), 31 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
> >> index c234b50212b0..d591063502c5 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -16806,57 +16806,59 @@ static void intel_pps_init(struct drm_i915_p=
rivate *dev_priv)
> >>  }
> >>
> >>  static const struct intel_ddi_port_info rkl_ports[] =3D {
> >> -	{ .name =3D "DDI A",   .port =3D PORT_A },
> >> -	{ .name =3D "DDI B",   .port =3D PORT_B },
> >> -	{ .name =3D "DDI TC1", .port =3D PORT_D },
> >> -	{ .name =3D "DDI TC2", .port =3D PORT_E },
> >> +	{ .name =3D "DDI A", .port =3D PORT_A, .phy_type =3D PHY_TYPE_COMBO,=
 .ddi_idx =3D 0x0, .phy_idx =3D 0x0, .vbt_idx =3D 0x0, },
> >
> >I'm thinking we won't need ddi_idx and instead 'port' should suffice.
> >We can add the aliases with the TC names for tgl+ to unconfuse the
> >current mess. In fact I already tried that in a local branch (while
> >doing the hpd_pin cleanup) and it looks mostly fine to me. There are
> >a few annoying parts, like power domains, where we still end up with
> >port G-I names that don't exist anywhere in bspec (excetp in VBT).
> =

> I think we should stop trying that because it leads to the current mess
> we put ourselves into.  Hence my idea of "port should be just a software
> thing, don't try to make it match the hardware".  HW indexes (for register
> address, bitfields and whatnot) are provided by the correspondent _idx.
> Which index you use depends on what part of the hw you are talking to.
> =

> See the TODO below of one case this would be true. Once the conversions
> are finished we change them and then for every ddi+ platform, port is
> just a number we can use to identify the entry in the table.

Seems contrary to pretty much everything else in the driver so
not great IMO.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
