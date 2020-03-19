Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEAA18B4E2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 14:13:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F6A6E25C;
	Thu, 19 Mar 2020 13:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0486E25C
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 13:13:44 +0000 (UTC)
IronPort-SDR: 7SEswUbsfhAS/qWcFuwUA1Jl2M9bgh4W0TnHqKkUrQ5M2EvqcUGpJoWuib7yesYa7Zlp2MJpi9
 1UKAoggwuDng==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 06:13:44 -0700
IronPort-SDR: vK+khVG8vmaKeT3vYzx29iAAKyDSFEx0/RfDtFFJX1LYWh+F0dVqTk7ReGZfouxLgA+aNguA89
 T7UDu85hD9Ag==
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="238482025"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 06:13:42 -0700
Date: Thu, 19 Mar 2020 15:09:48 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200319130948.GB29594@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-5-stanislav.lisovskiy@intel.com>
 <20200311163130.GC13686@intel.com>
 <4aa56e04b7534ec5b8764cc512250604@intel.com>
 <20200318125055.GX13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318125055.GX13686@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v19 4/8] drm/i915: Refactor
 intel_can_enable_sagv
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

On Wed, Mar 18, 2020 at 02:50:55PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Mar 18, 2020 at 11:52:13AM +0000, Lisovskiy, Stanislav wrote:
> > >> @@ -5829,6 +6068,10 @@ skl_compute_wm(struct intel_atomic_state *sta=
te)
> > >>                        return ret;
> > >>        }
> > >>
> > >> +     ret =3D intel_compute_sagv_mask(state);
> > >> +     if (ret)
> > >> +             return ret;
> > =

> > > This seems too early. We haven't even computed the ddb yet.
> > =

> > =

> > I was thinking about our discussion last week and actually I think ther=
e are simply two ways how
> > =

> > to do it.
> > =

> > =

> > 1) What I do here is: calculate minimum amount required to fit SAGV wm =
levels into ddb and
> > =

> > based on that do the ddb allocation accordingly. I.e it is not to early=
 because actually we have
> > =

> > already wm levels for sagv and non-sagv calculated - we already can che=
ck if it can fit into L0
> > =

> > and then act accordingly.
> > =

> > However one thing to consider here: as you said besides the minimal req=
uirements for each plane
> > =

> > (with or without sagv) there is an extra space being allocated in propo=
rtion to plane data rate,
> > =

> > however here we are actually hitting the prioritization issue - i.e we =
need to decide whether
> > =

> > it is more important to have SAGV or to have more extra space allocated=
 to different planes
> > =

> > proportionally to their needs.
> > =

> > So in this first approach we always first determine if we fit into mini=
mum SAGV reqs, turn it
> > =

> > on if we do and then rest of extra space is allocated among the planes =
in proportion to data rate.
> > =

> > So that way we would be more often power efficient but but planes get l=
ess extra ddb space.
> > =

> > =

> > 2) In your approach we should calculate ddb first, allocate extra space=
 proportionally to plane
> > =

> > data rate needs and only then check if all planes got enough space for =
L0 SAGV wm after that.
> > =

> > Then we actually don't even need skl_plane_wm_level accessor, because w=
e first would be allocating
> > =

> > using normal wm levels + extra ddb and only then check if all planes fi=
t into SAGV requirement -
> > =

> > because that extra space is not actually distributed evenly but in prop=
ortion to data rate of each
> > =

> > plane, which means that some planes might lack space for SAGV theoretic=
ally, because some might be
> > =

> > getting more or less depending on the data_rate/total_data_rate ratio.
> > =

> > =

> > My position is such that I'm really not like "my approach should always=
 win" here, but more searching for
> > =

> > solution which is more correct from product point of view.
> > =

> > =

> > Also could be that it doesn't really matter which approach we do take n=
ow,, but matter more like
> > =

> > that how fast we deliver.  Because the actual outcome difference betwee=
n two
> > =

> > might be minor, while time overhead for changing the approach could be =
major.
> =

> Pls fix your MUA. Really hard to read this.
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

I was thinking about our discussion last week and actually I think there ar=
e simply two ways how
to do it.

1) What I do here is: calculate minimum amount required to fit SAGV wm leve=
ls into ddb and
based on that do the ddb allocation accordingly. I.e it is not to early bec=
ause actually we have
already wm levels for sagv and non-sagv calculated - we already can check i=
f it can fit into L0
and then act accordingly.
However one thing to consider here: as you said besides the minimal require=
ments for each plane
(with or without sagv) there is an extra space being allocated in proportio=
n to plane data rate,
however here we are actually hitting the prioritization issue - i.e we need=
 to decide whether
it is more important to have SAGV or to have more extra space allocated to =
different planes
proportionally to their needs.
So in this first approach we always first determine if we fit into minimum =
SAGV reqs, turn it
on if we do and then rest of extra space is allocated among the planes in p=
roportion to data rate.
So that way we would be more often power efficient but but planes get less =
extra ddb space.

2) In your approach we should calculate ddb first, allocate extra space pro=
portionally to plane
data rate needs and only then check if all planes got enough space for L0 S=
AGV wm after that.
Then we actually don't even need skl_plane_wm_level accessor, because we fi=
rst would be allocating
using normal wm levels + extra ddb and only then check if all planes fit in=
to SAGV requirement -
because that extra space is not actually distributed evenly but in proporti=
on to data rate of each
plane, which means that some planes might lack space for SAGV theoretically=
, because some might be
getting more or less depending on the data_rate/total_data_rate ratio.

My position is such that I'm really not like "my approach should always win=
" here, but more searching for
solution which is more correct from product point of view.

Also could be that it doesn't really matter which approach we do take now,,=
 but matter more like
that how fast we deliver.  Because the actual outcome difference between two
might be minor, while time overhead for changing the approach could be majo=
r.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
