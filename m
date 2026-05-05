Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GZuH2fC+Wl3DQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 12:11:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE844CAA27
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 12:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFC610EA6A;
	Tue,  5 May 2026 10:11:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (4096-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="a385YqAj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7997010EA6A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 10:11:47 +0000 (UTC)
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D0C113FA72
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 10:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20251003; t=1777975904;
 bh=wmyBBZx1noIWM5Co3iOdFkKMWhcQoU3Z9pf+K7tso4s=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=a385YqAjGbiYpGPFsgOi1yJck49e5P1fSdqsCDGq6jGWjm71S+QY6s/bqRBnrVdZ9
 8qozG2wZaWLgeKxBH+8B4Vy2c4qYxxqGNKh9jOq5+EjucY0kjM4WerlCe0oAHWYmiC
 UQ7Ci7QLmaLflCg0wUceGZQ03eM/jQ7NnX41kTtHdUknTyjO38y17VoM0O3qjWu+7e
 q4c19BT7fZq7NHgnQlnMOsQrS2v02QyrkpJ5o8uEyWBtLnyU+tPtsHDmk9G6OzPzmP
 /PqennlpwmwlH6nkiSLdBcBDW2ciqQNl+Z6TgICRy5E/tgWo4pNkSza8xtTyMoy4hE
 /70luMf+tOt2t7Q/DFBFLeczym/xCFZB4/BnOCpW//FlI3MUU4YfBqFkKC6dsGB2nx
 GWwo632t4hp8IcOPkWrKSPr+cyRA1AMZPu6JymJfqN+M2ZGVTijjEe5IuNdb/0DiC+
 /cfF3Q4YsMSOtBmQRuoGZZrizVRZOxbThbNjSZnph5TZQhnCOzL/5esy23past/bHc
 lE2c1/siKixfSLcBpuxnQaY65txfyhVonz+XiRfCre7tCjVCnPHK7JbqAzU76imm2D
 7YbQEWtO0I5vQRZhTPDie8THKUn4ocYShRtxk8Z7hiDdCc1+3VKdO7CZT7NfHgDV5x
 I0gSw870npa4GZ0myo2sRJlY=
Received: by mail-ot1-f70.google.com with SMTP id
 46e09a7af769-7dcabb6ea16so2344973a34.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2026 03:11:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777975903; cv=none;
 d=google.com; s=arc-20240605;
 b=F32AmNJf8hK9GUVGonL5OII6OQF2f8bOJ7IvRypa31xe4S0Us16ERTry78yetkxPVc
 P3RIZTlvHl53G0EEQ4X+ZJ2grB0O5ZwShDyGIEyx1gaMRHmdj134KXtpLFpDxit1ZNj2
 O3Jly7qpbfX0Vta5VRIm+Ws/iV+dHjC183q3tnDZq52MZg1dZeGougvy3IFOG5e1dTuD
 4IKzHJfDUju4/RIT8iBoS9+M3rF3gDqCCBB2YDDsfMu83kG10LDdvHmA5NH19drLWxPC
 yhpWNMEEB7VHGF5uJxoUq+4puXn/DEw959qJfHXVz3SYyfnxz/kaXdva4HH+5aVIJOAt
 yG5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version;
 bh=wmyBBZx1noIWM5Co3iOdFkKMWhcQoU3Z9pf+K7tso4s=;
 fh=N+rC0BJk7QdsrvbXlt/KaUmbkoAKk3vfJ1UxaZ24z4M=;
 b=gUixfNIk/oAdjxSY5NPWfmORAhtA+qaRU5ahbvU6QY/VgJypBYksq9FP4N1grXhwRk
 3g+iOmwu2qswHFfjbJ5d7Os7ct+0Pku9tXPJey//Kf4AWWYGTyRIh3VqW27lSQRPAjMU
 JfBdMSFH0frVgd7I2CeYTg1/bgTEhrFAQqKgOwSFUj89COBgI+HZLQplTzHJb/YyzW4b
 PBDvA+FzC/I1KkTS+dGfq3eRCGW4yfFajusi9vBGe2L8q6tslj0asmitgN67ItXsHAKc
 LmKZH3zCBmVfsqf9tndn/AH/cmigCIZ7gS1Pe0K6Q/gA47AxYcOy1CTiDeKdGD1ej/Ji
 rTyg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777975903; x=1778580703;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wmyBBZx1noIWM5Co3iOdFkKMWhcQoU3Z9pf+K7tso4s=;
 b=E6dWJiTYp5iIQBBpNgSAL3oQKlZH44a4dyMe6BuKG7slPX8z/d3k7MG9dQxvR9eLYS
 Ghfyv6eQA7ZqHLHCpLwy1ZJlLS4yOyBRV5Zo3Y5LZ+PlpudjYm2sKKvuHOUXfrp0iLyO
 rEVlR9vRdpt6CNsP5yiyoFJZKtcD+uUM9qqAb+KO6YtnBGMcJpEHam4juAvYuf8XGK+2
 UTqaXst+ZuKUVbRVPyKUpYZY2TQxr0a/QMaFAo98HMAfhmPDfGOdWHXwZGdi3JjpPP/j
 EF6NBA3gTZq4H0w8WPIU+Cm0jlL+H5wljMSpL5p4Hdqe0Z2+r4+g9cIW2Z2p61bwLTwQ
 sowQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8Y1RyI64miAN4DctvKGHWV9+YFP3qgdt31e8XBYpH7vc3JPSTHyeCVU7iw/rp0iS/KcrREPI6f0Kg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz8niX1Hjr4MUv2sQVCkeKhlngwaEeBBLpmqHPtGEGnAnN0smKD
 SRCwNvH+Eu3bemdb7HNUvf/zv3+Gfxlx9+MMkUSDNTjuNHmDDp3Q0n59oWIN3pyDA6vB0WTQHAq
 SyFCerm93lxUXVkFDijntLDmHICvudN3r9crYgdmOYufa4qdJDs+qUko0Rmgb96FvnLdnGyrIoU
 so1TygdzAVi0B8q2t/4bDzghv19Rnxz7n8XhqpkrRRkV6A6YApD0DJ5KgKtJ44
X-Gm-Gg: AeBDievQdcZxf/jjfWRtrqIXKkb27Ve3EdL3o/5jBm1ezRN97VG+hwlHHKz88kmP40P
 BdAjpUixezDSdL7otPxRbxfvlAybD4UgBjCnImKzyUBQku0HSsJRTyNPq8jetkqmnBJxWFQb4bs
 sO5lNVU73JiWtz66QOs6hDbarXLuWO50xREt+fa9oV8kb7uxcw74MdyAxyZvbL3eagb4E+dtnTk
 DSowenQrhnEboIVwJZbB1jCX8jpsLjm0jU8vYlqyQ6/dlg4yDDuENSvA37j3kWVTA==
X-Received: by 2002:a05:6808:118c:b0:459:f0c5:781d with SMTP id
 5614622812f47-47c892a718dmr3674436b6e.5.1777975903668; 
 Tue, 05 May 2026 03:11:43 -0700 (PDT)
X-Received: by 2002:a05:6808:118c:b0:459:f0c5:781d with SMTP id
 5614622812f47-47c892a718dmr3674427b6e.5.1777975903248; Tue, 05 May 2026
 03:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260505033558.157604-1-an.wu@canonical.com>
 <afmroyG15GjNRJUM@ideak-desk.lan>
In-Reply-To: <afmroyG15GjNRJUM@ideak-desk.lan>
From: An Wu <an.wu@canonical.com>
Date: Tue, 5 May 2026 18:11:31 +0800
X-Gm-Features: AVHnY4Jmcv4S74EFHJsXikAUjqyBICTvJXsw0OqIBUQKju729GyNIwgwHUkhi7s
Message-ID: <CAO4Mv0a-kXUDNAVXV5UaVUGVLSEwGJYPw9OHnxisnhVgmJWK1A@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/tc: Recover AUX channel after external TC
 port mode change
To: imre.deak@intel.com
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary="00000000000021f47106510f4680"
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
X-Rspamd-Queue-Id: DBE844CAA27
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:imre.deak@intel.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.989];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[canonical.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,canonical.com:dkim,canonical.com:email]

--00000000000021f47106510f4680
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Imre
Thank you for pointing out my mistake and kindly providing clear guidance.
I=E2=80=99ll fix the issue, run some tests, and update the commit descripti=
on
accordingly.
Thank you.

BR
    An

On Tue, May 5, 2026 at 4:35=E2=80=AFPM Imre Deak <imre.deak@intel.com> wrot=
e:

> On Tue, May 05, 2026 at 11:35:57AM +0800, ChunAn Wu wrote:
> > When Fn+F4 triggers mirror mode, the BIOS/EC reconfigures a TC port
> > mode (e.g. DP-Alt to TBT-Alt via UCSI) without generating HPD. The
> > driver's cached TC mode becomes stale, so intel_dp_aux_xfer() uses
> > the wrong power domain and IO routing, and AUX transactions fail.
> >
> > This occurs when the USB-C-to-HDMI dongle does not support TBT, so
> > the mode switch creates a mismatch. It also occurs with slow monitors
> > whose delayed HPD/DDC/EDID recovery causes the Type-C layer to settle
> > on a stale tbt-alt state before the dongle finishes re-negotiation.
> >
> > Add intel_tc_port_aux_recover() to detect hardware/cached TC mode
> > divergence and reset the PHY. Wrap it with
> > intel_dp_aux_xfer_with_recovery() to retry with corrected settings.
> >
> > Tested on Panther Lake and Lunar Lake with a BenQ HDMI monitor via
> > USB-C-to-HDMI dongle.
> >
> > Signed-off-by: ChunAn Wu <an.wu@canonical.com>
> > ---
> >
> > [...]
> >
> > +/**
> > + * intel_tc_port_aux_recover - Recover AUX channel after external TC
> mode change
> > + * @dig_port: digital port
> > + *
> > + * When firmware causes a TC port mode change (e.g., dp-alt ->
> disconnect ->
> > + * tbt-alt) during a hotkey-triggered display mode switch, AUX
> transactions
> > + * using the stale power domain and IO flags will fail with timeouts o=
r
> errors.
> > + * This happens because:
> > + *
> > + *   1. The display driver holds the TC link in dp-alt mode
> (link_refcount > 0)
> > + *   2. Firmware (e.g., via HP WMI hotkey BIOS action) reconfigures th=
e
> TC port
> > + *      mode externally without notifying the display driver
> > + *   3. tc->mode stays as TC_PORT_DP_ALT while HW transitions to a
> different
> > + *      mode, invalidating the AUX power domain and IO flags used by
> > + *      intel_dp_aux_xfer()
> > + *
> > + * This function detects the discrepancy between tc->mode and actual H=
W
> state,
> > + * and re-synchronizes them via a TC PHY reset. After recovery, AUX
> retries
> > + * will use the correct power domain and control flags.
> > + *
> > + * The link_refcount is temporarily cleared to allow
> intel_tc_port_reset_mode()
> > + * to proceed without the PHY-ownership assertion that fires when
> link_refcount
> > + * is non-zero and firmware has already released PHY ownership.
> > + *
> > + * Must be called outside the TC port lock (tc->lock).
> > + *
> > + * Returns: %true if recovery was performed and AUX can be retried,
> > + *          %false if recovery was not needed or not possible.
> > + */
> > +bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port)
> > +{
> > +     struct intel_tc_port *tc;
> > +     struct intel_display *display;
> > +     bool recovered =3D false;
> > +
> > +     if (!intel_encoder_is_tc(&dig_port->base))
> > +             return false;
> > +
> > +     tc =3D to_tc_port(dig_port);
> > +     display =3D to_intel_display(dig_port);
> > +
> > +     mutex_lock(&tc->lock);
> > +
> > +     /*
> > +      * Recovery is only needed when the link is actively held AND the
> HW
> > +      * TC mode has diverged from the driver's cached state.
> > +      */
> > +     if (!tc->link_refcount || !intel_tc_port_needs_reset(tc))
> > +             goto out;
> > +
> > +     drm_dbg_kms(display->drm,
> > +                 "Port %s: AUX recover: external TC mode change
> detected (%s -> HW), reconnecting TC PHY\n",
> > +                 tc->port_name, tc_port_mode_name(tc->mode));
> > +
> > +     /*
> > +      * Temporarily clear link_refcount so intel_tc_port_reset_mode()
> can
> > +      * run the PHY disconnect/connect cycle without the ownership
> assertion
> > +      * that fires when link_refcount > 0 and firmware has already
> released
> > +      * PHY ownership externally.
> > +      */
> > +     tc->link_refcount =3D 0;
>
> This looks wrong, NAK from my side:
>
> A non-zero link_refcount guards an active output, which must maintain
> the TypeC mode with which the output was enabled. So that TypeC mode
> cannot be reset from under the active output as done in this patch.
>
> The commit message fails to mention how the display driver is supposed
> to notice that the user have pressed F4 and the firmware has
> reconfigured things in the background. Assuming that the FW's
> reconfiguration in the background is actually a valid thing to do, i.e.
> doesn't result in getting the active TypeC port into a broken state, the
> transition to the new TypeC mode should happen in the regular way: via
> an HPD event, if neecessary using the
> drm_connector_funcs::oob_hotplug_event interface, disabling any active
> outputs and _then_ switching the driver's idea of the TypeC mode to
> reflect the HW state.
>
> > +     intel_tc_port_reset_mode(tc, 1, false);
> > +     tc->link_refcount =3D 1;
> > +
> > +     recovered =3D tc->mode !=3D TC_PORT_DISCONNECTED;
> > +     if (!recovered)
> > +             drm_warn(display->drm,
> > +                      "Port %s: AUX recover: failed to restore TC port
> mode\n",
> > +                      tc->port_name);
> > +
> > +out:
> > +     mutex_unlock(&tc->lock);
> > +     return recovered;
> > +}
> > +
> >  static void __intel_tc_port_lock(struct intel_tc_port *tc,
> >                                int required_lanes)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.h
> b/drivers/gpu/drm/i915/display/intel_tc.h
> > index 6719aea5bd58..d44998a3081a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> > @@ -108,6 +108,7 @@ bool intel_tc_port_ref_held(struct
> intel_digital_port *dig_port);
> >  bool intel_tc_port_link_needs_reset(struct intel_digital_port
> *dig_port);
> >  bool intel_tc_port_link_reset(struct intel_digital_port *dig_port);
> >  void intel_tc_port_link_cancel_reset_work(struct intel_digital_port
> *dig_port);
> > +bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port);
> >
> >  int intel_tc_port_init(struct intel_digital_port *dig_port, bool
> is_legacy);
> >  void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
> > --
> > 2.34.1
> >
>

--00000000000021f47106510f4680
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Imre<div>Thank you for pointing out my mistake and kind=
ly providing clear guidance.=C2=A0</div><div>I=E2=80=99ll fix the issue, ru=
n some tests, and update the commit description accordingly.</div><div>Than=
k you.</div><div><br></div><div>BR</div><div>=C2=A0 =C2=A0 An</div></div><b=
r><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, May 5, 2026 at 4:35=E2=80=AFPM Imre Deak &lt;<a hre=
f=3D"mailto:imre.deak@intel.com">imre.deak@intel.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, May 05, 2026 at=
 11:35:57AM +0800, ChunAn Wu wrote:<br>
&gt; When Fn+F4 triggers mirror mode, the BIOS/EC reconfigures a TC port<br=
>
&gt; mode (e.g. DP-Alt to TBT-Alt via UCSI) without generating HPD. The<br>
&gt; driver&#39;s cached TC mode becomes stale, so intel_dp_aux_xfer() uses=
<br>
&gt; the wrong power domain and IO routing, and AUX transactions fail.<br>
&gt; <br>
&gt; This occurs when the USB-C-to-HDMI dongle does not support TBT, so<br>
&gt; the mode switch creates a mismatch. It also occurs with slow monitors<=
br>
&gt; whose delayed HPD/DDC/EDID recovery causes the Type-C layer to settle<=
br>
&gt; on a stale tbt-alt state before the dongle finishes re-negotiation.<br=
>
&gt; <br>
&gt; Add intel_tc_port_aux_recover() to detect hardware/cached TC mode<br>
&gt; divergence and reset the PHY. Wrap it with<br>
&gt; intel_dp_aux_xfer_with_recovery() to retry with corrected settings.<br=
>
&gt; <br>
&gt; Tested on Panther Lake and Lunar Lake with a BenQ HDMI monitor via<br>
&gt; USB-C-to-HDMI dongle.<br>
&gt; <br>
&gt; Signed-off-by: ChunAn Wu &lt;<a href=3D"mailto:an.wu@canonical.com" ta=
rget=3D"_blank">an.wu@canonical.com</a>&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; [...]<br>
&gt;<br>
&gt; +/**<br>
&gt; + * intel_tc_port_aux_recover - Recover AUX channel after external TC =
mode change<br>
&gt; + * @dig_port: digital port<br>
&gt; + *<br>
&gt; + * When firmware causes a TC port mode change (e.g., dp-alt -&gt; dis=
connect -&gt;<br>
&gt; + * tbt-alt) during a hotkey-triggered display mode switch, AUX transa=
ctions<br>
&gt; + * using the stale power domain and IO flags will fail with timeouts =
or errors.<br>
&gt; + * This happens because:<br>
&gt; + *<br>
&gt; + *=C2=A0 =C2=A01. The display driver holds the TC link in dp-alt mode=
 (link_refcount &gt; 0)<br>
&gt; + *=C2=A0 =C2=A02. Firmware (e.g., via HP WMI hotkey BIOS action) reco=
nfigures the TC port<br>
&gt; + *=C2=A0 =C2=A0 =C2=A0 mode externally without notifying the display =
driver<br>
&gt; + *=C2=A0 =C2=A03. tc-&gt;mode stays as TC_PORT_DP_ALT while HW transi=
tions to a different<br>
&gt; + *=C2=A0 =C2=A0 =C2=A0 mode, invalidating the AUX power domain and IO=
 flags used by<br>
&gt; + *=C2=A0 =C2=A0 =C2=A0 intel_dp_aux_xfer()<br>
&gt; + *<br>
&gt; + * This function detects the discrepancy between tc-&gt;mode and actu=
al HW state,<br>
&gt; + * and re-synchronizes them via a TC PHY reset. After recovery, AUX r=
etries<br>
&gt; + * will use the correct power domain and control flags.<br>
&gt; + *<br>
&gt; + * The link_refcount is temporarily cleared to allow intel_tc_port_re=
set_mode()<br>
&gt; + * to proceed without the PHY-ownership assertion that fires when lin=
k_refcount<br>
&gt; + * is non-zero and firmware has already released PHY ownership.<br>
&gt; + *<br>
&gt; + * Must be called outside the TC port lock (tc-&gt;lock).<br>
&gt; + *<br>
&gt; + * Returns: %true if recovery was performed and AUX can be retried,<b=
r>
&gt; + *=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 %false if recovery was not neede=
d or not possible.<br>
&gt; + */<br>
&gt; +bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port)<b=
r>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct intel_tc_port *tc;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct intel_display *display;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0bool recovered =3D false;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!intel_encoder_is_tc(&amp;dig_port-&gt;base))=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return false;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0tc =3D to_tc_port(dig_port);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0display =3D to_intel_display(dig_port);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0mutex_lock(&amp;tc-&gt;lock);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/*<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * Recovery is only needed when the link is activ=
ely held AND the HW<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * TC mode has diverged from the driver&#39;s cac=
hed state.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!tc-&gt;link_refcount || !intel_tc_port_needs=
_reset(tc))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto out;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0drm_dbg_kms(display-&gt;drm,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;P=
ort %s: AUX recover: external TC mode change detected (%s -&gt; HW), reconn=
ecting TC PHY\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tc-&gt;=
port_name, tc_port_mode_name(tc-&gt;mode));<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/*<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * Temporarily clear link_refcount so intel_tc_po=
rt_reset_mode() can<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * run the PHY disconnect/connect cycle without t=
he ownership assertion<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * that fires when link_refcount &gt; 0 and firmw=
are has already released<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * PHY ownership externally.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0tc-&gt;link_refcount =3D 0;<br>
<br>
This looks wrong, NAK from my side:<br>
<br>
A non-zero link_refcount guards an active output, which must maintain<br>
the TypeC mode with which the output was enabled. So that TypeC mode<br>
cannot be reset from under the active output as done in this patch.<br>
<br>
The commit message fails to mention how the display driver is supposed<br>
to notice that the user have pressed F4 and the firmware has<br>
reconfigured things in the background. Assuming that the FW&#39;s<br>
reconfiguration in the background is actually a valid thing to do, i.e.<br>
doesn&#39;t result in getting the active TypeC port into a broken state, th=
e<br>
transition to the new TypeC mode should happen in the regular way: via<br>
an HPD event, if neecessary using the<br>
drm_connector_funcs::oob_hotplug_event interface, disabling any active<br>
outputs and _then_ switching the driver&#39;s idea of the TypeC mode to<br>
reflect the HW state.<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0intel_tc_port_reset_mode(tc, 1, false);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0tc-&gt;link_refcount =3D 1;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0recovered =3D tc-&gt;mode !=3D TC_PORT_DISCONNECT=
ED;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!recovered)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0drm_warn(display-&gt;=
drm,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 &quot;Port %s: AUX recover: failed to restore TC port mode\n&quot;,=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 tc-&gt;port_name);<br>
&gt; +<br>
&gt; +out:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;tc-&gt;lock);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return recovered;<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 static void __intel_tc_port_lock(struct intel_tc_port *tc,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int required_lanes)<br>
&gt;=C2=A0 {<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm=
/i915/display/intel_tc.h<br>
&gt; index 6719aea5bd58..d44998a3081a 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_tc.h<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_tc.h<br>
&gt; @@ -108,6 +108,7 @@ bool intel_tc_port_ref_held(struct intel_digital_p=
ort *dig_port);<br>
&gt;=C2=A0 bool intel_tc_port_link_needs_reset(struct intel_digital_port *d=
ig_port);<br>
&gt;=C2=A0 bool intel_tc_port_link_reset(struct intel_digital_port *dig_por=
t);<br>
&gt;=C2=A0 void intel_tc_port_link_cancel_reset_work(struct intel_digital_p=
ort *dig_port);<br>
&gt; +bool intel_tc_port_aux_recover(struct intel_digital_port *dig_port);<=
br>
&gt;=C2=A0 <br>
&gt;=C2=A0 int intel_tc_port_init(struct intel_digital_port *dig_port, bool=
 is_legacy);<br>
&gt;=C2=A0 void intel_tc_port_cleanup(struct intel_digital_port *dig_port);=
<br>
&gt; -- <br>
&gt; 2.34.1<br>
&gt; <br>
</blockquote></div>

--00000000000021f47106510f4680--
