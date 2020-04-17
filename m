Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA8A1AE433
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 20:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C886E265;
	Fri, 17 Apr 2020 18:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C54B6E265
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 18:01:59 +0000 (UTC)
IronPort-SDR: UMwbvGHKvtebri/ZZbJYaah+WhhWsOQUu+HeZlEKx6y4Yh+p1zg/2p25UB6WwCKT3ZNBbZzVq8
 XyNxkVnKhcyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 11:01:59 -0700
IronPort-SDR: SxsYXBC/zkv8WAJ8uOXWmUr1vj6CpKOm0SPXT3g5yhFkMPIhJmXW8zW172aB4os/AVbvz/8QrQ
 gOX/nLD2oWMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="272495376"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 17 Apr 2020 11:01:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Apr 2020 21:01:56 +0300
Date: Fri, 17 Apr 2020 21:01:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200417180156.GR6112@intel.com>
References: <20200414230442.262092-1-jose.souza@intel.com>
 <CAKi4VAKioYoXtZE8H9=feCDN3ToV4xwQ6O0ORnp=-Q8qr5_BcA@mail.gmail.com>
 <d4e308c36bcc7c8cf0081ccc28e0d20cfee6f5aa.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4e308c36bcc7c8cf0081ccc28e0d20cfee6f5aa.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Load DP_TP_CTL/STATUS
 offset before use it
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 04:53:19PM +0000, Souza, Jose wrote:
> On Tue, 2020-04-14 at 22:33 -0700, Lucas De Marchi wrote:
> > On Tue, Apr 14, 2020 at 4:03 PM Jos=E9 Roberto de Souza
> > <jose.souza@intel.com> wrote:
> > > Right now dp.regs.dp_tp_ctl/status are only set during the encoder
> > > pre_enable() hook, what is causing all reads and writes to those
> > > registers to go to offset 0x0 before pre_enable() is executed.
> > > =

> > > So if i915 takes the BIOS state and don't do a modeset any
> > > following
> > > link retraing will fail.
> > > =

> > > In the case that i915 needs to do a modeset, the DDI disable
> > > sequence
> > > will write to a wrong register not disabling DP 'Transport Enable'
> > > in
> > > DP_TP_CTL, making a HDMI modeset in the same port/transcoder to
> > > not light up the monitor.
> > > =

> > > So here for GENs older than 12, that have those registers fixed at
> > > port offset range it is loading at encoder/port init while for
> > > GEN12
> > > it will keep setting it at encoder pre_enable() and during HW state
> > > readout.
> > > =

> > > Fixes: 4444df6e205b ("drm/i915/tgl: move DP_TP_* to transcoder")
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 14 +++++++++++---
> > >  drivers/gpu/drm/i915/display/intel_dp.c  |  5 ++---
> > >  2 files changed, 13 insertions(+), 6 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index be6c61bcbc9c..1aab93a94f40 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -3252,9 +3252,6 @@ static void hsw_ddi_pre_enable_dp(struct
> > > intel_atomic_state *state,
> > >         intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
> > >                                  crtc_state->lane_count, is_mst);
> > > =

> > > -       intel_dp->regs.dp_tp_ctl =3D DP_TP_CTL(port);
> > > -       intel_dp->regs.dp_tp_status =3D DP_TP_STATUS(port);
> > =

> > reason to be where it was is because of MST. I think what you are
> > doing here will break it since now this is set for the port and not
> > transcoder.
> > intel_mst_pre_enable_dp() would call here only for the first stream,
> > so all the others would use this same transcoder.
> =

> For TGL+ it moved to transcoder but for other it is still on port and
> it is kept in this patch. The fix here for TGL+ is load those 2 during
> HW state readout.
> Inside MST code it will continue to get from
> intel_mst->primary.dp.

FYI looks like I have a reasonable way to get rid of this by finally =

plumbing the crtc_state all the way down into link training code
(has been on the TODO list for years). This should also allow us to
elminate the encoder->type mess in the ddi_buf_trans code. And we
get rid of some crtc->config stuff as well.

MST retraining was the main obstacle left. I think I mostly solved
it with the patch I just sent today. The one remaining issue I
recall is the lane_mask for drm_dp_channel_eq_ok(). So far I don't
have a better plan than to keep intel_dp->lane_count. But most of
the other ad-hoc state under intel_dp can hopefully be nuked.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
