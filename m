Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A0313C5BE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 15:17:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958ED6EA02;
	Wed, 15 Jan 2020 14:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643B96EA02;
 Wed, 15 Jan 2020 14:17:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 06:17:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="213715688"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2020 06:17:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jan 2020 16:17:50 +0200
Date: Wed, 15 Jan 2020 16:17:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200115141750.GX13686@intel.com>
References: <20200109150752.28098-1-mario.kleiner.de@gmail.com>
 <CADnq5_PvPD+FyEwUrqDVmbdLrP6ZC72HPtd19bqm-Csx-fHMOA@mail.gmail.com>
 <CAEsyxyjTvuCHHA3D-NJd=aGkHz2d=obSizwGQL8B4k1B7i2jJg@mail.gmail.com>
 <CADnq5_NPdg8MjQ5cB2aCD+US1Hv+FoP1gqKcA4W2e0pouG8cGQ@mail.gmail.com>
 <CAEsyxyjMsCU8rzyO0GewU_-uV5+UoDDwa5Mc74irUnJHhF6ALQ@mail.gmail.com>
 <bae132f3-73e6-5004-c9a9-adb632338268@amd.com>
 <20200110180944.GL13686@intel.com> <87o8v4kif9.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8v4kif9.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Add current maximum eDP link
 rate to sink_rate array.
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
Cc: mario.kleiner.de@gmail.de, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Harry Wentland <Harry.Wentland@amd.com>, Alex Deucher <alexdeucher@gmail.com>,
 Harry Wentland <hwentlan@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 15, 2020 at 02:34:02PM +0200, Jani Nikula wrote:
> On Fri, 10 Jan 2020, Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> wr=
ote:
> > On Thu, Jan 09, 2020 at 04:26:19PM -0500, Harry Wentland wrote:
> >> =

> >> =

> >> On 2020-01-09 4:04 p.m., Mario Kleiner wrote:
> >> > On Thu, Jan 9, 2020 at 8:49 PM Alex Deucher <alexdeucher@gmail.com
> >> > <mailto:alexdeucher@gmail.com>> wrote:
> >> >
> >> >     On Thu, Jan 9, 2020 at 11:47 AM Mario Kleiner
> >> >     <mario.kleiner.de@gmail.com <mailto:mario.kleiner.de@gmail.com>>
> >> >     wrote:
> >> >     >
> >> >     > On Thu, Jan 9, 2020 at 4:40 PM Alex Deucher
> >> >     <alexdeucher@gmail.com <mailto:alexdeucher@gmail.com>> wrote:
> >> >     >>
> >> >     >> On Thu, Jan 9, 2020 at 10:08 AM Mario Kleiner
> >> >     >> <mario.kleiner.de@gmail.com
> >> >     <mailto:mario.kleiner.de@gmail.com>> wrote:
> >> >     >> >
> >> >     As Harry mentioned in the other thread, won't this only work if =
the
> >> >     display was brought up by the vbios?=A0 In the suspend/resume ca=
se,
> >> >     won't we just fall back to 2.7Gbps?
> >> >
> >> >     Alex
> >> >
> >> >
> >> > Adding Harry to cc...
> >> >
> >> > The code is only executed for eDP. On the Intel side, it seems that
> >> > intel_edp_init_dpcd() gets only called during driver load /
> >> > modesetting init, so not on resume.
> >> >
> >> > On the AMD DC side, dc_link_detect_helper() has this early no-op
> >> > return at the beginning:
> >> >
> >> > if ((link->connector_signal =3D=3D SIGNAL_TYPE_LVDS ||
> >> > 			link->connector_signal =3D=3D SIGNAL_TYPE_EDP) &&
> >> > 			link->local_sink)
> >> > 		return true;
> >> >
> >> > So i guess if link->local_sink doesn't get NULL'ed during a
> >> > suspend/resume cycle, then we never reach the setup code that would
> >> > overwrite with non vbios settings?
> >> >
> >> > Sounds reasonable to me, given that eDP panels are usually fixed
> >> > internal panels, nothing that gets hot(un-)plugged?
> >> >
> >> > I can't test, because suspend/resume with the Polaris gpu on the MBP
> >> > 2017 is totally broken atm., just as vgaswitcheroo can't do its job.
> >> > Looks like powering down the gpu works, but powering up doesn't. And
> >> > also modesetting at vgaswitcheroo switch time is no-go, because the
> >> > DDC/AUX lines apparently can't be switched on that Apple gmux, and
> >> > handover of that data seems to be not implemented in current
> >> > vgaswitcheroo. At the moment switching between AMD only or Intel+AMD
> >> > Prime setup is quite a pita...
> >> >
> >> =

> >> I haven't followed the entire discussion on the i915 thread but for the
> >> amdgpu dc patch I would prefer a DPCD quirk to override the reported
> >> link settings with the correct link rate.
> >
> > We could consider adding a standard function for reading the receiver
> > caps and applying the quirk there. I have a feeling that putting it
> > into drm_dp_dpcd_read() would be a bit too low level since it would
> > prevent reading the non-quirked raw data easily.
> =

> Everything about this panel is ugly.
> =

> The panel does not claim to support extended receiver caps. (I have not
> seen whether there is non-zero data at 0x2200. Mario, please provide a
> dump of that DPCD region.)
> =

> The panel does use DPCD_DISPLAY_CONTROL_CAPABLE and reports eDP 1.3 in
> EDP_DPCD_REV.
> =

> eDP 1.3 says only four values are supported in LINK_BW_SET (0x06, 0x0a,
> 0x14, and 0x1e). The same for MAX_LINK_RATE for all DP, and even in the
> extended receiver cap.
> =

> You could perhaps make the case for the interpretation in commit
> 57a1b0893782 ("drm: Make the bw/link rate calculations more forgiving")
> that in eDP 1.4+ you can use arbitrary values in LINK_BW_SET. But I
> think that's a stretch, really. And anyway the panel reports eDP 1.3.
> =

> The panel is consistent in that it does not claim to support link rate
> selection nor does it have anything in SUPPORTED_LINK_RATES which are
> eDP 1.4+ features.
> =

> However, the panel reports 0x0a as the max link rate in MAX_LINK_RATE,
> which exceeds the value 0x0c set in LINK_BW_SET by the firmware.
> =

> Bottom line is, *if* we're going to support this proprietary crap of a
> panel, it *must* be an isolated quirk. I certainly won't take a patch
> generalizing this to any panel out there. But you're going to have to be
> pretty clever to isolate this crap. I'm not sure if quirking a homebrew
> extended receiver cap is going to be enough.

drm_dp_read_receiver_caps()
{
	dpcd_read(dpcd);
	if (quirk) {
		DRM_DEBUG_KMS("blah");
		dpcd[MAX_BW] =3D 0xc;
	}
}

intel_dp_sink_rates()
{
	...
	if (max_bw > rates[i-1])
		rates[i++] =3D max_bw;
}

Would seem more or less OK to me. And doing it this way would also
cover the MyDP 6.75 case automagically.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
