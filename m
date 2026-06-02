Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CKN3BC4MIGoKvAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 13:12:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 710A3636E22
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 13:12:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LJZLdFS9;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0810210FC23;
	Wed,  3 Jun 2026 11:12:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com
 [209.85.128.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBBC510F29F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 15:33:22 +0000 (UTC)
Received: by mail-yw1-f181.google.com with SMTP id
 00721157ae682-7df68e68103so3476457b3.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Jun 2026 08:33:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780414402; cv=none;
 d=google.com; s=arc-20240605;
 b=MkZY4+PlzY2jzhkA3aBNwhWgB2Q/WgtvHQtu4GP2vfySZRw0s+00fp+xeu51VO8gHH
 qQTAKCkMUtH82llRX7fjseLXS237LVDDehV6A0G2dEjStycqAaP9lbuV7+CH9enlZMdf
 m6QmJ1AEK7BVpzV+hmLYVEhqSIxqMqbT0Uzul/JqbbSlI3VSeHUmqPu8OMCGIbZqJqAx
 wEWmDT9W8M9Y9ShD2mHj+tq8HhKwbhubxGdehDmVW8LTEZmpa8CdHS6AfppPMxAlUxdb
 ZM51cH9MktMhs9iSvlgE8B3Wn7BHgb4E3pfY1N6jijr/VhtsO+RBXV0BUX3wHU7Kjn15
 M29A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=NmfxpBfBbWASxbPJNVgn2gVJCuYpwNY94Qe3A+FmlTQ=;
 fh=/Ru6bvl0A7Xya/HqntTcH7jUxVIMgsVXAam/lGm46SM=;
 b=lulq4ZN+Op5XXFvXvzNdKc8KJ8lcm1zp4DJ8Y5TuMK6DiWxTZWRJjAhbISkFafbk1j
 N6ydsL1B6avC2591jnupceyD3r8eZY+mTRgbOhfj8c0blkrGQBzLw+y0kpqiI84+nzh2
 PUANDpVYcherkInLDcjanirDqhdypOX9iUzuNWuK+ta+m0hjKWcbs607ERyIp32sENhB
 bqe9dLWMlRT8FYPtBJDyO38xsnvEHAgbYMb3346DJnv20cHbki/mak0oJuhi1VmhKvz8
 kl2eSB8ie3ZZZKJhM2hc9ayVmo7iUsGQPhg6KBgNc2nmZtqs27PGK3B1cOtFRKvO0S9M
 EuCQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780414402; x=1781019202; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=NmfxpBfBbWASxbPJNVgn2gVJCuYpwNY94Qe3A+FmlTQ=;
 b=LJZLdFS9I7NL9PRrBu4vm8w/7ROXML39ozplSy94UrvVD6Nt5/RZ5vGn+y7oNyZJo9
 gy6i36S+zEegqtROpgz3gNOag6hbyhacMXfaN3FWFZIawThqsNuB+HU2PiYZEqBtRldu
 0/HT0PV8MepdaHSmXxq+JmZDmJ2wezJBLX2rn5iF1FztVnMwhSJh2FqH+oCSlVKqeZ5Q
 M+0/g8Gdv+9gdOIKo0+Haf9bjVgzuAHFw4Iy8OApCsgP2eE0Pl5tdQOy2b50PF0BsSeg
 M3EXxcxKHTNAxasFp/giRI0XWNfs/4cGlEtR+2/T/N8IhGOstWHRxlZrygQpPpAt3v6D
 dZKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780414402; x=1781019202;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NmfxpBfBbWASxbPJNVgn2gVJCuYpwNY94Qe3A+FmlTQ=;
 b=tMP4WS/nSsxDbEZCyFWYpH0OSxqstgUEKAJ551NYalip/TYEe/2BqRsid+3xmkm2CA
 baPJgpUkAN9h2Ij2l+gjybluTYpXC9GluEZVyXXJ61HJw/4nX4g5EmzxpsUN2+/4aZgH
 VHA6m0XEGqEkEcml9lUNpBy8DhZlLxRN9YT2Fn9jDxo8oYQajQrS9dzqu64tac34omuK
 BpMVqCY0XDcT1mAzs9nN9MlLwvGP0wzVv6jLK2FpIFl7EFUnz5FmII3PQrEjW54yuevQ
 ml7U3d0AzLMXit+WODm7ooWDq9p2aZziulqQSNXWZp7ttewcbBvCC4VJ1gPqTjxv+5Nt
 DhuA==
X-Forwarded-Encrypted: i=1;
 AFNElJ9i8fo77E+yMzFBz2bkSCfIH91jQsIQkZ4wknfOt0nkzP2kG/6/u83f51r4bL/kSButF9l/0E9uxgM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxLgTQ/m1gUaUPJWQR/YV1xcWwkB6d/9uEjLpjkI6dDZZBiB3e6
 TKnnoPmxCacl9VTKYHUWoz+PvNWhDBD2fsXKXLLgOZ2FiqLY4KiPCsr8RMl+APxPadPsHAdq83O
 uI7IdhZ3IZThRiVB9JHkTNTPranbN8e8=
X-Gm-Gg: Acq92OGmKjXdsTTqhJLhXRSHaY3vPm8ZGDpowPSgJF1A8kHbeaze/nO2kKvoQ3/NHdx
 hZkVmrn5zMWtK7gYQ+rWzFbzgvcMtMmsQeQN4VRtF7z/9LLEVIxgebZazF5Zwc5sn11Pa0I5FG8
 DdVoRm4HrTXPWniFfmiPbuAzk8M1PS3+yn7EjEfixTNgNW0ywS7z3rMQJYTpH/qF/OTd2a5/rik
 l1mK192NYrcuzEaRFcTd38c0KR5QWa5vtXD4heHuLARJZF2Y8wQ+NGFsYl4M/YsJXZrMHBjU2Jl
 /808OrN9e2kOykJkBOLa3Mbp0bnFB84ECDcJDfbv9xRHf370UYQRhc6MlxFuWc8Q/12Pu/EZOok
 D1Nzh+y9E
X-Received: by 2002:a05:690c:38b:b0:79f:4908:38a4 with SMTP id
 00721157ae682-7e060a5b1c2mr90803337b3.7.1780414401571; Tue, 02 Jun 2026
 08:33:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260601142943.1481728-1-arun.r.murthy@intel.com>
 <ah60jJkzbbw25R-L@ideak-desk.lan>
 <IA0PR11MB7307C39641297A08DB4C6A1ABA122@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ah7c59mNa4WfTJKu@ideak-desk.lan>
In-Reply-To: <ah7c59mNa4WfTJKu@ideak-desk.lan>
From: Stephen Fuhry <fuhrysteve@gmail.com>
Date: Tue, 2 Jun 2026 11:33:09 -0400
X-Gm-Features: AVHnY4JZNWs47W-XefQcdJhlytZ1kV2lDLlrJk6jiwHeBEQvdNncUNe1kYoEWyY
Message-ID: <CAEraX5wnHv5qC3fwqNmWbDCu7qxB3+ByTHK8QYpVen3Z23tJQw@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
To: imre.deak@intel.com
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000f56deb065347076b"
X-Mailman-Approved-At: Wed, 03 Jun 2026 11:12:41 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:imre.deak@intel.com,m:arun.r.murthy@intel.com,m:intel-xe@lists.freedesktop.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 710A3636E22

--000000000000f56deb065347076b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I can share some observations from the debug logs captured on the affected
system (drm.debug=3D0x10e, Alder Lake-P [8086:46a6], ThinkPad dock, 1080p o=
n
pipe B + 4K DSC on pipe C) that may help clarify the root cause.

Imre's assertion about the enable/disable gating appears to be correct from
the logs. The active_links sequence across every modeset cycle in the
captured trace is always clean:

  disable: 2 -> 1 -> 0  (intel_mst_disable_dp, intel_encoders_post_disable)
  enable:  0 -> 1 -> 2  (intel_mst_pre_enable_dp, intel_mst_enable_dp)

No interleaving, no double-calls. intel_ddi_enable_fec and
intel_ddi_disable_fec are each called exactly once per link per modeset
cycle, as expected.

The mismatch and cascade are instead driven by repeated failures in the
fastset check. In the cable-unplug log, 8 "fastset requirement not met,
forcing full modeset" messages fire for both pipes between t=3D110.803s and
t=3D110.899s -- before a single active_links change occurs. After replug,
there are dozens more at ~20ms intervals (t=3D125.5s to t=3D126.3s) as the
driver re-probes the dock, each one attempting and failing to commit a
modeset.

The direction of the first mismatch after dock connect is notable. The
very first fastset failure shows:

  [CRTC:186:pipe C] fastset requirement not met in fec_enable
                    (expected no, found yes)
  [CRTC:186:pipe C] fastset requirement not met in
hw.pipe_mode.crtc_hdisplay
                    (expected 1920, found 3840)
  [CRTC:186:pipe C] fastset requirement not met in dsc.config.pic_width
                    (expected 0, found 3840)

The SW computed state has pipe C at 1920x1080 with no DSC and no FEC, while
HW has it at 3840x2160 with DSC and FEC active (from the previous
session/firmware state). The modeset that follows clears FEC. The next
compute correctly selects DSC (and therefore FEC), triggering the opposite
mismatch ("expected yes, found no"). This back-and-forth drives the cascade=
.

The question of why the first SW compute produces fec_enable=3Dno for pipe =
C
when DSC is needed seems to be where the actual root cause lies -- whether
that's a mode-negotiation timing issue (compositor requesting 1080p before
4K+DSC is negotiated) or something in the compute ordering in
intel_dp_mst_compute_config.

Full log (drm.debug=3D0x10e, cable unplug/replug) is attached to issue #163=
03
if useful.

Stephen Fuhry

On Tue, Jun 2, 2026 at 9:39=E2=80=AFAM Imre Deak <imre.deak@intel.com> wrot=
e:

> On Tue, Jun 02, 2026 at 04:35:42PM +0300, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Tuesday, June 2, 2026 4:17 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> Stephen
> > > Fuhry <fuhrysteve@gmail.com>
> > > Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disabl=
e
> > >
> > > On Mon, Jun 01, 2026 at 07:59:43PM +0530, Arun R Murthy wrote:
> > > > The FEC_ENABLE bit is per port basis and is enabled/disabled on ddi
> > > > pre_enable and post_disable. This fec is shared across the mst
> streams
> > > > and can be enabled per stream basis as well.
> > > > So have a refcount to track the usage of FEC and then enable/disabl=
e
> > > > accordingly.
> > > >
> > > > Closes:
> > > > https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
> > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c      | 66
> +++++++++++++++++++
> > > >  drivers/gpu/drm/i915/display/intel_ddi.h      |  1 +
> > > >  .../drm/i915/display/intel_display_types.h    | 12 ++++
> > > >  .../drm/i915/display/intel_modeset_setup.c    |  6 ++
> > > >  4 files changed, 85 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > index 86520848892e..e12a3d6d6a67 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > @@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct
> intel_encoder
> > > *encoder)
> > > >           encoder->disable_clock(encoder);
> > > >  }
> > > >
> > > > +/**
> > > > + * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcounts from
> > > > +active CRTCs
> > > > + * @display: display device
> > > > + *
> > > > + * intel_digital_port::fec_active_streams is the per-port refcount
> > > > +that gates
> > > > + * programming of the shared DP_TP_CTL_FEC_ENABLE bit. After initi=
al
> > > > +HW state
> > > > + * readout (driver load, resume, GPU reset takeover), the persiste=
nt
> > > > + * crtc_state->fec_enable values reflect what HW currently has; we
> > > > +need to
> > > > + * align the refcount with that so the first paired disable doesn'=
t
> > > > +underflow
> > > > + * and the next enable doesn't incorrectly skip programming the HW
> bit.
> > > > + *
> > > > + * Must be called once after intel_modeset_readout_hw_state(),
> before
> > > > +any new
> > > > + * modeset commit can run.
> > > > + */
> > > > +void intel_ddi_seed_fec_refcounts(struct intel_display *display) {
> > > > + struct intel_crtc *crtc;
> > > > +
> > > > + for_each_intel_crtc(display->drm, crtc) {
> > > > +         const struct intel_crtc_state *crtc_state =3D
> > > > +                 to_intel_crtc_state(crtc->base.state);
> > > > +         struct intel_encoder *encoder;
> > > > +
> > > > +         if (!crtc_state->hw.active || !crtc_state->fec_enable)
> > > > +                 continue;
> > > > +
> > > > +         for_each_intel_encoder(display->drm, encoder) {
> > > > +                 struct intel_digital_port *dig_port;
> > > > +
> > > > +                 if (encoder->base.crtc !=3D &crtc->base)
> > > > +                         continue;
> > > > +                 if (!intel_encoder_is_dig_port(encoder))
> > > > +                         continue;
> > > > +
> > > > +                 dig_port =3D enc_to_dig_port(encoder);
> > > > +                 dig_port->fec_active_streams++;
> > > > +                 break;
> > > > +         }
> > > > + }
> > > > +}
> > > > +
> > > >  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder
> > > > *encoder)  {
> > > >   struct intel_display *display =3D to_intel_display(encoder); @@
> > > > -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct
> intel_encoder
> > > *encoder,
> > > >                            const struct intel_crtc_state
> *crtc_state)  {
> > > >   struct intel_display *display =3D to_intel_display(encoder);
> > > > + struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > > >   int i;
> > > >   int ret;
> > > >
> > > >   if (!crtc_state->fec_enable)
> > > >           return;
> > > >
> > > > + /*
> > > > +  * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port while
> > > > +  * crtc_state->fec_enable is per-stream. For DP MST, several
> streams
> > > > +  * on this port share the bit. Only program HW on the first strea=
m
> > > > +  * needing FEC; subsequent streams just bump the refcount.
> > > > +  */
> > > > + if (dig_port->fec_active_streams++ > 0)
> > > > +         return;
> > >
> > > This doesn't make sense to me. FEC is enabled for the MST link and if
> it's
> > > enabled then fec_enabled is set in the crtc_state for all the streams
> in the MST
> > > topology. intel_ddi_enable_fec() will be called only for the first MS=
T
> stream
> > > being enabled and intel_ddi_disable_fec() will be called only for the
> last MST
> > > stream being disabled. So I don't see why the above refcounting would
> be
> > > needed.
> >
> > The  logs mentioned in the above listed gitlab issue shows mismatch in
> > fec enable/disable in the MST scenario. Hence added this refcount
> > logic to overcome the mismatch.
>
> The root cause for the mismatch should be better understood then. I
> still think that it's something else than the lack of refcounting.
>
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > > +
> > > >   intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > > >                0, DP_TP_CTL_FEC_ENABLE);
> > > >
> > > > @@ -2454,10 +2505,25 @@ static void intel_ddi_disable_fec(struct
> > > intel_encoder *encoder,
> > > >                             const struct intel_crtc_state
> *crtc_state)  {
> > > >   struct intel_display *display =3D to_intel_display(encoder);
> > > > + struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > > >
> > > >   if (!crtc_state->fec_enable)
> > > >           return;
> > > >
> > > > + /*
> > > > +  * FEC is a link-wide property and DP_TP_CTL_FEC_ENABLE is a
> per-port
> > > > +  * register, but crtc_state->fec_enable is per-stream. For DP MST=
,
> > > > +  * multiple streams on the same port share this bit. Refcount the
> > > > +  * active FEC users on the port and only clear the HW bit when th=
e
> > > > +  * last user goes away, otherwise tearing down one MST stream wou=
ld
> > > > +  * disable FEC for sibling streams still using it.
> > > > +  */
> > > > + if (drm_WARN_ON(display->drm, dig_port->fec_active_streams <=3D 0=
))
> > > > +         return;
> > > > +
> > > > + if (--dig_port->fec_active_streams > 0)
> > > > +         return;
> > > > +
> > > >   intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > > >                DP_TP_CTL_FEC_ENABLE, 0);
> > > >   intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state)=
);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > index 580ecb09b8b6..3678c28a0dc9 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encod=
er
> > > *intel_encoder,
> > > >                          enum transcoder cpu_transcoder,
> > > >                          bool enable, u32 hdcp_mask);  void
> > > > intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder
> *encoder);
> > > > +void intel_ddi_seed_fec_refcounts(struct intel_display *display);
> > > >  int intel_ddi_level(struct intel_encoder *encoder,
> > > >               const struct intel_crtc_state *crtc_state,
> > > >               int lane);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index f44be5c689ae..84bd0d993197 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1987,6 +1987,18 @@ struct intel_digital_port {
> > > >   struct ref_tracker *ddi_io_wakeref;
> > > >   struct ref_tracker *aux_wakeref;
> > > >
> > > > + /*
> > > > +  * Number of active streams on this port currently using FEC.
> > > > +  *
> > > > +  * DP_TP_CTL_FEC_ENABLE is a per-port (link-wide) HW bit, but
> > > > +  * crtc_state->fec_enable is per-stream. For DP MST several strea=
ms
> > > > +  * share the same port and therefore the same FEC enable bit. Tra=
ck
> > > > +  * how many active streams want FEC so that the HW bit is only
> > > > +  * programmed on the first enable and only cleared on the last
> > > > +  * disable. Modified under the modeset locks.
> > > > +  */
> > > > + int fec_active_streams;
> > > > +
> > > >   struct intel_tc_port *tc;
> > > >
> > > >   struct {
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > index e88082c8caac..14f038b8ef81 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > @@ -950,6 +950,12 @@ void intel_modeset_setup_hw_state(struct
> > > > intel_display *display,
> > > >
> > > >   intel_modeset_readout_hw_state(display);
> > > >
> > > > + /*
> > > > +  * Seed per-port FEC refcounts from the just-populated active
> > > > +  * crtc_states before anything can issue an enable/disable.
> > > > +  */
> > > > + intel_ddi_seed_fec_refcounts(display);
> > > > +
> > > >   /* HW state is read out, now we need to sanitize this mess. */
> > > >   get_encoder_power_domains(display);
> > > >
> > > > --
> > > > 2.25.1
> > > >
>

--000000000000f56deb065347076b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I can share some observations from the debug logs captured=
 on the affected<br>system (drm.debug=3D0x10e, Alder Lake-P [8086:46a6], Th=
inkPad dock, 1080p on<br>pipe B + 4K DSC on pipe C) that may help clarify t=
he root cause.<br><br>Imre&#39;s assertion about the enable/disable gating =
appears to be correct from<br>the logs. The active_links sequence across ev=
ery modeset cycle in the<br>captured trace is always clean:<br><br>=C2=A0 d=
isable: 2 -&gt; 1 -&gt; 0 =C2=A0(intel_mst_disable_dp, intel_encoders_post_=
disable)<br>=C2=A0 enable: =C2=A00 -&gt; 1 -&gt; 2 =C2=A0(intel_mst_pre_ena=
ble_dp, intel_mst_enable_dp)<br><br>No interleaving, no double-calls. intel=
_ddi_enable_fec and<br>intel_ddi_disable_fec are each called exactly once p=
er link per modeset<br>cycle, as expected.<br><br>The mismatch and cascade =
are instead driven by repeated failures in the<br>fastset check. In the cab=
le-unplug log, 8 &quot;fastset requirement not met,<br>forcing full modeset=
&quot; messages fire for both pipes between t=3D110.803s and<br>t=3D110.899=
s -- before a single active_links change occurs. After replug,<br>there are=
 dozens more at ~20ms intervals (t=3D125.5s to t=3D126.3s) as the<br>driver=
 re-probes the dock, each one attempting and failing to commit a<br>modeset=
.<br><br>The direction of the first mismatch after dock connect is notable.=
 The<br>very first fastset failure shows:<br><br>=C2=A0 [CRTC:186:pipe C] f=
astset requirement not met in fec_enable<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (expected no, found yes)<br>=C2=A0 [=
CRTC:186:pipe C] fastset requirement not met in hw.pipe_mode.crtc_hdisplay<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (e=
xpected 1920, found 3840)<br>=C2=A0 [CRTC:186:pipe C] fastset requirement n=
ot met in dsc.config.pic_width<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (expected 0, found 3840)<br><br>The SW compute=
d state has pipe C at 1920x1080 with no DSC and no FEC, while<br>HW has it =
at 3840x2160 with DSC and FEC active (from the previous<br>session/firmware=
 state). The modeset that follows clears FEC. The next<br>compute correctly=
 selects DSC (and therefore FEC), triggering the opposite<br>mismatch (&quo=
t;expected yes, found no&quot;). This back-and-forth drives the cascade.<br=
><br>The question of why the first SW compute produces fec_enable=3Dno for =
pipe C<br>when DSC is needed seems to be where the actual root cause lies -=
- whether<br>that&#39;s a mode-negotiation timing issue (compositor request=
ing 1080p before<br>4K+DSC is negotiated) or something in the compute order=
ing in<br>intel_dp_mst_compute_config.<br><br>Full log (drm.debug=3D0x10e, =
cable unplug/replug) is attached to issue #16303<br>if useful.<br><br>Steph=
en Fuhry</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jun 2, 2026 at 9:39=E2=80=AFAM Imre D=
eak &lt;<a href=3D"mailto:imre.deak@intel.com">imre.deak@intel.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, J=
un 02, 2026 at 04:35:42PM +0300, Murthy, Arun R wrote:<br>
&gt; <br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: Deak, Imre &lt;<a href=3D"mailto:imre.deak@intel.com" targe=
t=3D"_blank">imre.deak@intel.com</a>&gt;<br>
&gt; &gt; Sent: Tuesday, June 2, 2026 4:17 PM<br>
&gt; &gt; To: Murthy, Arun R &lt;<a href=3D"mailto:arun.r.murthy@intel.com"=
 target=3D"_blank">arun.r.murthy@intel.com</a>&gt;<br>
&gt; &gt; Cc: <a href=3D"mailto:intel-gfx@lists.freedesktop.org" target=3D"=
_blank">intel-gfx@lists.freedesktop.org</a>; <a href=3D"mailto:intel-xe@lis=
ts.freedesktop.org" target=3D"_blank">intel-xe@lists.freedesktop.org</a>; S=
tephen<br>
&gt; &gt; Fuhry &lt;<a href=3D"mailto:fuhrysteve@gmail.com" target=3D"_blan=
k">fuhrysteve@gmail.com</a>&gt;<br>
&gt; &gt; Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/di=
sable<br>
&gt; &gt; <br>
&gt; &gt; On Mon, Jun 01, 2026 at 07:59:43PM +0530, Arun R Murthy wrote:<br=
>
&gt; &gt; &gt; The FEC_ENABLE bit is per port basis and is enabled/disabled=
 on ddi<br>
&gt; &gt; &gt; pre_enable and post_disable. This fec is shared across the m=
st streams<br>
&gt; &gt; &gt; and can be enabled per stream basis as well.<br>
&gt; &gt; &gt; So have a refcount to track the usage of FEC and then enable=
/disable<br>
&gt; &gt; &gt; accordingly.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Closes:<br>
&gt; &gt; &gt; <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
work_items/16073" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freed=
esktop.org/drm/i915/kernel/-/work_items/16073</a><br>
&gt; &gt; &gt; Signed-off-by: Arun R Murthy &lt;<a href=3D"mailto:arun.r.mu=
rthy@intel.com" target=3D"_blank">arun.r.murthy@intel.com</a>&gt;<br>
&gt; &gt; &gt; Tested-by: Stephen Fuhry &lt;<a href=3D"mailto:fuhrysteve@gm=
ail.com" target=3D"_blank">fuhrysteve@gmail.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 drivers/gpu/drm/i915/display/intel_ddi.c=C2=A0 =C2=A0 =
=C2=A0 | 66 +++++++++++++++++++<br>
&gt; &gt; &gt;=C2=A0 drivers/gpu/drm/i915/display/intel_ddi.h=C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 1 +<br>
&gt; &gt; &gt;=C2=A0 .../drm/i915/display/intel_display_types.h=C2=A0 =C2=
=A0 | 12 ++++<br>
&gt; &gt; &gt;=C2=A0 .../drm/i915/display/intel_modeset_setup.c=C2=A0 =C2=
=A0 |=C2=A0 6 ++<br>
&gt; &gt; &gt;=C2=A0 4 files changed, 85 insertions(+)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c<br>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_ddi.c<br>
&gt; &gt; &gt; index 86520848892e..e12a3d6d6a67 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_ddi.c<br>
&gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_ddi.c<br>
&gt; &gt; &gt; @@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct i=
ntel_encoder<br>
&gt; &gt; *encoder)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0encoder-&gt;disable_=
clock(encoder);<br>
&gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; +/**<br>
&gt; &gt; &gt; + * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcoun=
ts from<br>
&gt; &gt; &gt; +active CRTCs<br>
&gt; &gt; &gt; + * @display: display device<br>
&gt; &gt; &gt; + *<br>
&gt; &gt; &gt; + * intel_digital_port::fec_active_streams is the per-port r=
efcount<br>
&gt; &gt; &gt; +that gates<br>
&gt; &gt; &gt; + * programming of the shared DP_TP_CTL_FEC_ENABLE bit. Afte=
r initial<br>
&gt; &gt; &gt; +HW state<br>
&gt; &gt; &gt; + * readout (driver load, resume, GPU reset takeover), the p=
ersistent<br>
&gt; &gt; &gt; + * crtc_state-&gt;fec_enable values reflect what HW current=
ly has; we<br>
&gt; &gt; &gt; +need to<br>
&gt; &gt; &gt; + * align the refcount with that so the first paired disable=
 doesn&#39;t<br>
&gt; &gt; &gt; +underflow<br>
&gt; &gt; &gt; + * and the next enable doesn&#39;t incorrectly skip program=
ming the HW bit.<br>
&gt; &gt; &gt; + *<br>
&gt; &gt; &gt; + * Must be called once after intel_modeset_readout_hw_state=
(), before<br>
&gt; &gt; &gt; +any new<br>
&gt; &gt; &gt; + * modeset commit can run.<br>
&gt; &gt; &gt; + */<br>
&gt; &gt; &gt; +void intel_ddi_seed_fec_refcounts(struct intel_display *dis=
play) {<br>
&gt; &gt; &gt; + struct intel_crtc *crtc;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; + for_each_intel_crtc(display-&gt;drm, crtc) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const struct intel_crtc_s=
tate *crtc_state =3D<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0to_intel_crtc_state(crtc-&gt;base.state);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct intel_encoder *enc=
oder;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!crtc_state-&gt;hw.ac=
tive || !crtc_state-&gt;fec_enable)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0continue;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for_each_intel_encoder(di=
splay-&gt;drm, encoder) {<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0struct intel_digital_port *dig_port;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0if (encoder-&gt;base.crtc !=3D &amp;crtc-&gt;base)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0if (!intel_encoder_is_dig_port(encoder))<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0dig_port =3D enc_to_dig_port(encoder);<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0dig_port-&gt;fec_active_streams++;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0break;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; + }<br>
&gt; &gt; &gt; +}<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt;=C2=A0 void intel_ddi_sanitize_encoder_pll_mapping(struct int=
el_encoder<br>
&gt; &gt; &gt; *encoder)=C2=A0 {<br>
&gt; &gt; &gt;=C2=A0 =C2=A0struct intel_display *display =3D to_intel_displ=
ay(encoder); @@<br>
&gt; &gt; &gt; -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct=
 intel_encoder<br>
&gt; &gt; *encoder,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const struct intel_crtc_state *crtc_=
state)=C2=A0 {<br>
&gt; &gt; &gt;=C2=A0 =C2=A0struct intel_display *display =3D to_intel_displ=
ay(encoder);<br>
&gt; &gt; &gt; + struct intel_digital_port *dig_port =3D enc_to_dig_port(en=
coder);<br>
&gt; &gt; &gt;=C2=A0 =C2=A0int i;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0int ret;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0if (!crtc_state-&gt;fec_enable)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; + /*<br>
&gt; &gt; &gt; +=C2=A0 * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port=
 while<br>
&gt; &gt; &gt; +=C2=A0 * crtc_state-&gt;fec_enable is per-stream. For DP MS=
T, several streams<br>
&gt; &gt; &gt; +=C2=A0 * on this port share the bit. Only program HW on the=
 first stream<br>
&gt; &gt; &gt; +=C2=A0 * needing FEC; subsequent streams just bump the refc=
ount.<br>
&gt; &gt; &gt; +=C2=A0 */<br>
&gt; &gt; &gt; + if (dig_port-&gt;fec_active_streams++ &gt; 0)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt; <br>
&gt; &gt; This doesn&#39;t make sense to me. FEC is enabled for the MST lin=
k and if it&#39;s<br>
&gt; &gt; enabled then fec_enabled is set in the crtc_state for all the str=
eams in the MST<br>
&gt; &gt; topology. intel_ddi_enable_fec() will be called only for the firs=
t MST stream<br>
&gt; &gt; being enabled and intel_ddi_disable_fec() will be called only for=
 the last MST<br>
&gt; &gt; stream being disabled. So I don&#39;t see why the above refcounti=
ng would be<br>
&gt; &gt; needed.<br>
&gt;<br>
&gt; The=C2=A0 logs mentioned in the above listed gitlab issue shows mismat=
ch in<br>
&gt; fec enable/disable in the MST scenario. Hence added this refcount<br>
&gt; logic to overcome the mismatch.<br>
<br>
The root cause for the mismatch should be better understood then. I<br>
still think that it&#39;s something else than the lack of refcounting.<br>
<br>
&gt; Thanks and Regards,<br>
&gt; Arun R Murthy<br>
&gt; --------------------<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt;=C2=A0 =C2=A0intel_de_rmw(display, dp_tp_ctl_reg(encoder, crt=
c_state),<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0, DP=
_TP_CTL_FEC_ENABLE);<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; @@ -2454,10 +2505,25 @@ static void intel_ddi_disable_fec(st=
ruct<br>
&gt; &gt; intel_encoder *encoder,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const struct intel_crtc_state =
*crtc_state)=C2=A0 {<br>
&gt; &gt; &gt;=C2=A0 =C2=A0struct intel_display *display =3D to_intel_displ=
ay(encoder);<br>
&gt; &gt; &gt; + struct intel_digital_port *dig_port =3D enc_to_dig_port(en=
coder);<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0if (!crtc_state-&gt;fec_enable)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; + /*<br>
&gt; &gt; &gt; +=C2=A0 * FEC is a link-wide property and DP_TP_CTL_FEC_ENAB=
LE is a per-port<br>
&gt; &gt; &gt; +=C2=A0 * register, but crtc_state-&gt;fec_enable is per-str=
eam. For DP MST,<br>
&gt; &gt; &gt; +=C2=A0 * multiple streams on the same port share this bit. =
Refcount the<br>
&gt; &gt; &gt; +=C2=A0 * active FEC users on the port and only clear the HW=
 bit when the<br>
&gt; &gt; &gt; +=C2=A0 * last user goes away, otherwise tearing down one MS=
T stream would<br>
&gt; &gt; &gt; +=C2=A0 * disable FEC for sibling streams still using it.<br=
>
&gt; &gt; &gt; +=C2=A0 */<br>
&gt; &gt; &gt; + if (drm_WARN_ON(display-&gt;drm, dig_port-&gt;fec_active_s=
treams &lt;=3D 0))<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt; + if (--dig_port-&gt;fec_active_streams &gt; 0)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt;=C2=A0 =C2=A0intel_de_rmw(display, dp_tp_ctl_reg(encoder, crt=
c_state),<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 DP_TP=
_CTL_FEC_ENABLE, 0);<br>
&gt; &gt; &gt;=C2=A0 =C2=A0intel_de_posting_read(display, dp_tp_ctl_reg(enc=
oder, crtc_state));<br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h<br>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_ddi.h<br>
&gt; &gt; &gt; index 580ecb09b8b6..3678c28a0dc9 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_ddi.h<br>
&gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_ddi.h<br>
&gt; &gt; &gt; @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct inte=
l_encoder<br>
&gt; &gt; *intel_encoder,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enum transcoder cpu_transcoder,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool enable, u32 hdcp_mask);=C2=A0 void<br>
&gt; &gt; &gt; intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder =
*encoder);<br>
&gt; &gt; &gt; +void intel_ddi_seed_fec_refcounts(struct intel_display *dis=
play);<br>
&gt; &gt; &gt;=C2=A0 int intel_ddi_level(struct intel_encoder *encoder,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const =
struct intel_crtc_state *crtc_state,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int la=
ne);<br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_display_type=
s.h<br>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_display_types.h<br>
&gt; &gt; &gt; index f44be5c689ae..84bd0d993197 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_display_types.h<br>
&gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_display_types.h<br>
&gt; &gt; &gt; @@ -1987,6 +1987,18 @@ struct intel_digital_port {<br>
&gt; &gt; &gt;=C2=A0 =C2=A0struct ref_tracker *ddi_io_wakeref;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0struct ref_tracker *aux_wakeref;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; + /*<br>
&gt; &gt; &gt; +=C2=A0 * Number of active streams on this port currently us=
ing FEC.<br>
&gt; &gt; &gt; +=C2=A0 *<br>
&gt; &gt; &gt; +=C2=A0 * DP_TP_CTL_FEC_ENABLE is a per-port (link-wide) HW =
bit, but<br>
&gt; &gt; &gt; +=C2=A0 * crtc_state-&gt;fec_enable is per-stream. For DP MS=
T several streams<br>
&gt; &gt; &gt; +=C2=A0 * share the same port and therefore the same FEC ena=
ble bit. Track<br>
&gt; &gt; &gt; +=C2=A0 * how many active streams want FEC so that the HW bi=
t is only<br>
&gt; &gt; &gt; +=C2=A0 * programmed on the first enable and only cleared on=
 the last<br>
&gt; &gt; &gt; +=C2=A0 * disable. Modified under the modeset locks.<br>
&gt; &gt; &gt; +=C2=A0 */<br>
&gt; &gt; &gt; + int fec_active_streams;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt;=C2=A0 =C2=A0struct intel_tc_port *tc;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0struct {<br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setu=
p.c<br>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_modeset_setup.c<br>
&gt; &gt; &gt; index e88082c8caac..14f038b8ef81 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c<br>
&gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c<br>
&gt; &gt; &gt; @@ -950,6 +950,12 @@ void intel_modeset_setup_hw_state(struc=
t<br>
&gt; &gt; &gt; intel_display *display,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0intel_modeset_readout_hw_state(display);<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; + /*<br>
&gt; &gt; &gt; +=C2=A0 * Seed per-port FEC refcounts from the just-populate=
d active<br>
&gt; &gt; &gt; +=C2=A0 * crtc_states before anything can issue an enable/di=
sable.<br>
&gt; &gt; &gt; +=C2=A0 */<br>
&gt; &gt; &gt; + intel_ddi_seed_fec_refcounts(display);<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt;=C2=A0 =C2=A0/* HW state is read out, now we need to sanitize=
 this mess. */<br>
&gt; &gt; &gt;=C2=A0 =C2=A0get_encoder_power_domains(display);<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; 2.25.1<br>
&gt; &gt; &gt;<br>
</blockquote></div>

--000000000000f56deb065347076b--
