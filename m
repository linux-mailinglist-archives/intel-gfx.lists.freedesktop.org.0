Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7D6189C4C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 13:51:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6584D6E296;
	Wed, 18 Mar 2020 12:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8506E296
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 12:51:00 +0000 (UTC)
IronPort-SDR: 1PyzG+fxgtL3d9P1eAdju8wiHAd50nhESBzsxFjVtelmOl/wPeBp167jW9C3w58v4YSR6EUufH
 JqUSuaFrCKXw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 05:50:59 -0700
IronPort-SDR: hx+Z1yIuNcXOGfDeIxxoTlLjoq4JYgv6TxNPB2fJYdNKvBg21seU9nYkB2NnPnzhKTaJt6qsJh
 DuR3r3WVUKdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="236629569"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 18 Mar 2020 05:50:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Mar 2020 14:50:55 +0200
Date: Wed, 18 Mar 2020 14:50:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200318125055.GX13686@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-5-stanislav.lisovskiy@intel.com>
 <20200311163130.GC13686@intel.com>
 <4aa56e04b7534ec5b8764cc512250604@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4aa56e04b7534ec5b8764cc512250604@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Wed, Mar 18, 2020 at 11:52:13AM +0000, Lisovskiy, Stanislav wrote:
> >> @@ -5829,6 +6068,10 @@ skl_compute_wm(struct intel_atomic_state *state)
> >>                        return ret;
> >>        }
> >>
> >> +     ret =3D intel_compute_sagv_mask(state);
> >> +     if (ret)
> >> +             return ret;
> =

> > This seems too early. We haven't even computed the ddb yet.
> =

> =

> I was thinking about our discussion last week and actually I think there =
are simply two ways how
> =

> to do it.
> =

> =

> 1) What I do here is: calculate minimum amount required to fit SAGV wm le=
vels into ddb and
> =

> based on that do the ddb allocation accordingly. I.e it is not to early b=
ecause actually we have
> =

> already wm levels for sagv and non-sagv calculated - we already can check=
 if it can fit into L0
> =

> and then act accordingly.
> =

> However one thing to consider here: as you said besides the minimal requi=
rements for each plane
> =

> (with or without sagv) there is an extra space being allocated in proport=
ion to plane data rate,
> =

> however here we are actually hitting the prioritization issue - i.e we ne=
ed to decide whether
> =

> it is more important to have SAGV or to have more extra space allocated t=
o different planes
> =

> proportionally to their needs.
> =

> So in this first approach we always first determine if we fit into minimu=
m SAGV reqs, turn it
> =

> on if we do and then rest of extra space is allocated among the planes in=
 proportion to data rate.
> =

> So that way we would be more often power efficient but but planes get les=
s extra ddb space.
> =

> =

> 2) In your approach we should calculate ddb first, allocate extra space p=
roportionally to plane
> =

> data rate needs and only then check if all planes got enough space for L0=
 SAGV wm after that.
> =

> Then we actually don't even need skl_plane_wm_level accessor, because we =
first would be allocating
> =

> using normal wm levels + extra ddb and only then check if all planes fit =
into SAGV requirement -
> =

> because that extra space is not actually distributed evenly but in propor=
tion to data rate of each
> =

> plane, which means that some planes might lack space for SAGV theoretical=
ly, because some might be
> =

> getting more or less depending on the data_rate/total_data_rate ratio.
> =

> =

> My position is such that I'm really not like "my approach should always w=
in" here, but more searching for
> =

> solution which is more correct from product point of view.
> =

> =

> Also could be that it doesn't really matter which approach we do take now=
,, but matter more like
> =

> that how fast we deliver.  Because the actual outcome difference between =
two
> =

> might be minor, while time overhead for changing the approach could be ma=
jor.

Pls fix your MUA. Really hard to read this.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
