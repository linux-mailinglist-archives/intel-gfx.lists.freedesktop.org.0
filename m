Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHDSCGGo+WnF+gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 10:20:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA944C8959
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 10:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E87710E0EF;
	Tue,  5 May 2026 08:20:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (4096-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="ksSC86DB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930FE10E9D5
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 08:20:44 +0000 (UTC)
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EC5D93FE9D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 08:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20251003; t=1777969243;
 bh=8JEzRFrWSkLX7LdspWMSjOqLl2fGmC9J4eMYZIUeN5M=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=ksSC86DB83VWpnGGTh0psDoEQy7Q0SNdwNr3iSPK//jtzI4vwftbD//XwQ11oz650
 UUrftaeJ37Nbz/83FodLplH+b3+KOTPn6mf/BBs4yK0BKhmGq2/Uw/Up0lPLdi97cS
 Z39BljM4qImFxjh+YZySgyTL6JZQDAk7IppWtwdH/vks9XCLbmnxxYgiBASwHupU+Z
 fUbzXASl9d6H6gHPo0fPMeAIUBn50vYWC5QHSOFuR7Es87C2k9lmCz87ws67EhKr/A
 faZcqw6I4V6ZDQEUR5BKjefuTmvpADCOR6HnrYvxuH6Qhx/4SXLVyZCBtgbZBr/I9n
 fFKUZGEagMdTfQJSN8prm+7jFS9t6K/FFkY4IsEU1V+Exa9mTqhLlE81Q57n1NGJV7
 fUJwT8vYuP9q+Z7OnIy1v8XE10sPrLyFFyZDg9aVCdNYSJGOw5HhT2WfA1JOHbV5Ef
 jrjMLuH4exI+sig193jXTOeaf5R+quoKbcLladtNr5sHIZvG1hnb8zzn2t32eQXf1y
 qBrAbxFvEZZYlFo8QxzVaQpKDcJ94ELH4g5c80PUCaSaLvFO+fRgYvIoX2VJDg2nW7
 MK7YJfAUlmcjtYP25dgKsRKU35RAUBAGqI7BtdBJeotkaKLrvCpFYRlxvBZ5pjLQjg
 9zPZ2/tdC7NvHmSsa0b2n/rk=
Received: by mail-oi1-f197.google.com with SMTP id
 5614622812f47-479dd4bf463so1205351b6e.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2026 01:20:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777969242; cv=none;
 d=google.com; s=arc-20240605;
 b=WC/1CXmxvf4m4L5SZHhuxCvk9S9ypDOR1sd8wq0HQD/3b+mhPgwTQs37Z7sR8I+362
 iQyuR+9pNjNa2C2t6/iA2kWJ2NlLsxuObGkx0QvQhHpntzx36AlQWEr94RtGszSZDN8+
 jw8vwVKebizD7DjC0F8iYi+Pq9+nea1DYk9KSmFZN75svX63Rlm0wEROodDLpzVEB5ue
 tw+1jsGiF8qys0HQsJkogZrgCTVMhwh6xR6o61gpysonb0umNtyi4HzA/WExeQT4zxxC
 OLYFlA7aCsBzODizgHp7gUVU2sIqFodB3KoXs3ZkPIOP7X7m3CmIbMjjWYo9gx9sgHGd
 lRkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version;
 bh=8JEzRFrWSkLX7LdspWMSjOqLl2fGmC9J4eMYZIUeN5M=;
 fh=QjSWJPqsw8lg3mBw+ig5q2I9xcNIwx+Bhx/XgzbsiNA=;
 b=H0CQvkJDm7dwhMNAC9Pt7NcagEVm+RB5em8ZNk74NYruXNfnKy4feAb0EPHnYM3FM9
 vsOGg9eW9vw2TbOgHQjnKTKqErgpgiYtTHSaw2v7+ShaxKORFVruPcFwSwPjSMR95m1W
 6qB2c3Zo+sg0JnVJ//m/DHIIl+tQq8gKmepxtL/69sEJ8LPb23O02Velszg2YqEg5Mev
 rqsQTXJr5rcuXaj187gKLPBZwox9DvTBykQLksE5Y+JA4YLxcJ6LStBN/s7BCJ7KTDgR
 JAHUzqQL/BucWN3Ffwc1C6wC4C/p3nE0lPNoDwaBFPKAlKVl4GP5KlTAE1ZA4xHFfRxZ
 26xg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777969242; x=1778574042;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8JEzRFrWSkLX7LdspWMSjOqLl2fGmC9J4eMYZIUeN5M=;
 b=PrTDhI5N79K1A8bBZxE6fxB6RsoVzezeiY62nG+qcWpGXxgZDJzxx9EpK+F5LvBtpE
 K/HDmkphDFzRjd+sIL/mYUKZEDP/iP9DxLsXla+7sh9MxI8rWvErdeGFjRP0aBP0t9Fz
 TOcBtRl7qU+HwktQ/jE7s6GecGl/aXO4bd8jYOLYPtXdo4QCG315wHF0GIvQmrhVZe5e
 Kiz0hLpbmTVyvl6CHDSn+iduwQ3jvorGIbkk5tNOD6XfAIf/ibQDqJVapavVfiEHikKS
 qhIOCH+j5FjqRXa2dTxk4prUbWT4g3HItPD/hzE+R1YLksXsknqT1YTtaMHfU4I1bA2u
 Q7xQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ9+jl05sk9tT/2yH/6Pd0/HoFBChhp2VKOZWPxOZ8wjXRe92OFBx7yZ4lxYdUylDhprUVsCkBWVgQM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzcmwL034WZ9GZydKSzdKYNBjr7YS1oTLLwQhB+hG2+LhZHXhjM
 xxVPJr1UMmUcUpU80dR1s+JopE/fTUOj2Um2Mu/rEeGYTJbgcm5aXsxEVouBBOIwpYTzUWiPoUl
 yJ0KFD9TtKyd2RaMj4GG+TSCEcAl/fWxox2aRVb+JuVjgI6YkVY3eso7cg6hozIHyAxMpfo6IHc
 6UeB3Bcy5/z3Fc2BXZ03ITcZq+56lA7zy5dzJcHOQkVnLlHv2IiPot0C6Y7mty
X-Gm-Gg: AeBDiete8rk2qJaZJ1gnPe7EoFVqz7VatiXKPsSBBoS8n8/GmXPm2BhD5so9fmouQqs
 W0uH2K5/scMWf4yEstReJtpxV488u8V3hoenOGSKp6G1r1Z1D+hVSGB+WAWd7yy44HbDBG4QdIK
 xO+DsHzE3wadAeZppgqG8mj7vyeiBRw+FK5FWEeAlqwBa4SWjh6lDEILMJFSt5nXzLsBAEa0NQe
 OhpXIkr+Jyh6LnhY+7NcSj8l24dw/Tpx9BcDAXB4AA8DYAYNyGRKej1PlWJ0+ZP
X-Received: by 2002:a05:6808:16ac:b0:46c:e542:cc16 with SMTP id
 5614622812f47-47c88bdb0d6mr4061243b6e.0.1777969241726; 
 Tue, 05 May 2026 01:20:41 -0700 (PDT)
X-Received: by 2002:a05:6808:16ac:b0:46c:e542:cc16 with SMTP id
 5614622812f47-47c88bdb0d6mr4061235b6e.0.1777969241387; Tue, 05 May 2026
 01:20:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260505033558.157604-1-an.wu@canonical.com>
 <68d0176c7022293678a49e7641ad9308ed0438a4@intel.com>
In-Reply-To: <68d0176c7022293678a49e7641ad9308ed0438a4@intel.com>
From: An Wu <an.wu@canonical.com>
Date: Tue, 5 May 2026 16:20:29 +0800
X-Gm-Features: AVHnY4JYz1TmQQSPELvwMPMUJtc529GxngMoDPQv7g3Xl24b5Lqr9aVqGcaPHRA
Message-ID: <CAO4Mv0b9KpxrT712LfmoGA7Au_R4noHXufEdheuHC5y_u4c-ew@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/tc: Recover AUX channel after external TC
 port mode change
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary="0000000000000e052506510db93f"
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
X-Rspamd-Queue-Id: EBA944C8959
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[canonical.com:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]

--0000000000000e052506510db93f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jani
    The auto check bot told me the alignment is wrong. So I fixed the
alignment.

```
-:77: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#77: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:545:
+               ret =3D intel_dp_aux_xfer_with_recovery(intel_dp, txbuf,
txsize,
+                                                      rxbuf, rxsize,
flags);

-:88: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#88: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:568:
+               ret =3D intel_dp_aux_xfer_with_recovery(intel_dp, txbuf,
txsize,
+                                                      rxbuf, rxsize,
flags);
```

BR
    An

On Tue, May 5, 2026 at 4:02=E2=80=AFPM Jani Nikula <jani.nikula@linux.intel=
.com>
wrote:

> On Tue, 05 May 2026, ChunAn Wu <an.wu@canonical.com> wrote:
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
>
> What are the changes between v1 and v2?
>
> >
> > Signed-off-by: ChunAn Wu <an.wu@canonical.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 41 +++++++++--
> >  drivers/gpu/drm/i915/display/intel_tc.c     | 75 +++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_tc.h     |  1 +
> >  3 files changed, 113 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index b20ec3e589fa..d496b2231656 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -481,6 +481,39 @@ static u32 intel_dp_aux_xfer_flags(const struct
> drm_dp_aux_msg *msg)
> >       return 0;
> >  }
> >
> > +/**
> > + * intel_dp_aux_xfer_with_recovery - AUX transfer with TC port recover=
y
> > + * @intel_dp: the DP port
> > + * @send: buffer of bytes to send
> > + * @send_bytes: number of bytes to send
> > + * @recv: buffer to store received reply
> > + * @recv_size: maximum number of bytes to receive
> > + * @aux_send_ctl_flags: extra flags for the AUX send control register
> > + *
> > + * Wrapper around intel_dp_aux_xfer() that attempts to recover from an
> > + * external TC port mode change (e.g., dp-alt -> tbt-alt via hotkey BI=
OS
> > + * action) when the initial AUX transfer fails. On failure, recovery i=
s
> > + * attempted once via intel_tc_port_aux_recover() before retrying.
> > + *
> > + * Returns: number of received bytes on success, negative error code o=
n
> failure.
> > + */
> > +static int
> > +intel_dp_aux_xfer_with_recovery(struct intel_dp *intel_dp,
> > +                             const u8 *send, int send_bytes,
> > +                             u8 *recv, int recv_size,
> > +                             u32 aux_send_ctl_flags)
> > +{
> > +     struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> > +     int ret;
> > +
> > +     ret =3D intel_dp_aux_xfer(intel_dp, send, send_bytes, recv,
> recv_size,
> > +                             aux_send_ctl_flags);
> > +     if (ret < 0 && intel_tc_port_aux_recover(dig_port))
> > +             ret =3D intel_dp_aux_xfer(intel_dp, send, send_bytes, rec=
v,
> > +                                     recv_size, aux_send_ctl_flags);
> > +     return ret;
> > +}
> > +
> >  static ssize_t
> >  intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg
> *msg)
> >  {
> > @@ -508,8 +541,8 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struc=
t
> drm_dp_aux_msg *msg)
> >               if (msg->buffer)
> >                       memcpy(txbuf + HEADER_SIZE, msg->buffer,
> msg->size);
> >
> > -             ret =3D intel_dp_aux_xfer(intel_dp, txbuf, txsize,
> > -                                     rxbuf, rxsize, flags);
> > +             ret =3D intel_dp_aux_xfer_with_recovery(intel_dp, txbuf,
> txsize,
> > +                                                   rxbuf, rxsize,
> flags);
> >               if (ret > 0) {
> >                       msg->reply =3D rxbuf[0] >> 4;
> >
> > @@ -531,8 +564,8 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struc=
t
> drm_dp_aux_msg *msg)
> >               if (drm_WARN_ON(display->drm, rxsize > 20))
> >                       return -E2BIG;
> >
> > -             ret =3D intel_dp_aux_xfer(intel_dp, txbuf, txsize,
> > -                                     rxbuf, rxsize, flags);
> > +             ret =3D intel_dp_aux_xfer_with_recovery(intel_dp, txbuf,
> txsize,
> > +                                                   rxbuf, rxsize,
> flags);
> >               if (ret > 0) {
> >                       msg->reply =3D rxbuf[0] >> 4;
> >                       /*
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> b/drivers/gpu/drm/i915/display/intel_tc.c
> > index a21dd4e3fe4c..1b23161e4eea 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -1861,6 +1861,81 @@ void intel_tc_port_link_cancel_reset_work(struct
> intel_digital_port *dig_port)
> >       cancel_delayed_work(&tc->link_reset_work);
> >  }
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
>
> --
> Jani Nikula, Intel
>

--0000000000000e052506510db93f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Jani<div>=C2=A0 =C2=A0 The auto check bot told me =
the alignment=C2=A0is wrong. So I fixed the alignment.</div><div><br></div>=
<div>```</div><div>-:77: CHECK:PARENTHESIS_ALIGNMENT: Alignment should matc=
h open parenthesis<br>#77: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.=
c:545:<br>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D i=
ntel_dp_aux_xfer_with_recovery(intel_dp, txbuf, txsize,<br>+=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rxbuf, rxsize, flags);<br><br>-:88: CHECK:PAREN=
THESIS_ALIGNMENT: Alignment should match open parenthesis<br>#88: FILE: dri=
vers/gpu/drm/i915/display/intel_dp_aux.c:568:<br>+=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D intel_dp_aux_xfer_with_recovery(inte=
l_dp, txbuf, txsize,<br>+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rxbuf, r=
xsize, flags);<br></div><div>```</div><div><br></div><div>BR</div><div>=C2=
=A0 =C2=A0 An</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, May 5, 2026 at 4:02=E2=80=AFPM Jani Nikula &lt;<=
a href=3D"mailto:jani.nikula@linux.intel.com" target=3D"_blank">jani.nikula=
@linux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">On Tue, 05 May 2026, ChunAn Wu &lt;<a href=3D"mailto:an.wu@=
canonical.com" target=3D"_blank">an.wu@canonical.com</a>&gt; wrote:<br>
&gt; When Fn+F4 triggers mirror mode, the BIOS/EC reconfigures a TC port<br=
>
&gt; mode (e.g. DP-Alt to TBT-Alt via UCSI) without generating HPD. The<br>
&gt; driver&#39;s cached TC mode becomes stale, so intel_dp_aux_xfer() uses=
<br>
&gt; the wrong power domain and IO routing, and AUX transactions fail.<br>
&gt;<br>
&gt; This occurs when the USB-C-to-HDMI dongle does not support TBT, so<br>
&gt; the mode switch creates a mismatch. It also occurs with slow monitors<=
br>
&gt; whose delayed HPD/DDC/EDID recovery causes the Type-C layer to settle<=
br>
&gt; on a stale tbt-alt state before the dongle finishes re-negotiation.<br=
>
&gt;<br>
&gt; Add intel_tc_port_aux_recover() to detect hardware/cached TC mode<br>
&gt; divergence and reset the PHY. Wrap it with<br>
&gt; intel_dp_aux_xfer_with_recovery() to retry with corrected settings.<br=
>
&gt;<br>
&gt; Tested on Panther Lake and Lunar Lake with a BenQ HDMI monitor via<br>
&gt; USB-C-to-HDMI dongle.<br>
<br>
What are the changes between v1 and v2?<br>
<br>
&gt;<br>
&gt; Signed-off-by: ChunAn Wu &lt;<a href=3D"mailto:an.wu@canonical.com" ta=
rget=3D"_blank">an.wu@canonical.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_dp_aux.c | 41 +++++++++--<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_tc.c=C2=A0 =C2=A0 =C2=A0| 75 =
+++++++++++++++++++++<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_tc.h=C2=A0 =C2=A0 =C2=A0|=C2=
=A0 1 +<br>
&gt;=C2=A0 3 files changed, 113 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu=
/drm/i915/display/intel_dp_aux.c<br>
&gt; index b20ec3e589fa..d496b2231656 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c<br>
&gt; @@ -481,6 +481,39 @@ static u32 intel_dp_aux_xfer_flags(const struct d=
rm_dp_aux_msg *msg)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt; +/**<br>
&gt; + * intel_dp_aux_xfer_with_recovery - AUX transfer with TC port recove=
ry<br>
&gt; + * @intel_dp: the DP port<br>
&gt; + * @send: buffer of bytes to send<br>
&gt; + * @send_bytes: number of bytes to send<br>
&gt; + * @recv: buffer to store received reply<br>
&gt; + * @recv_size: maximum number of bytes to receive<br>
&gt; + * @aux_send_ctl_flags: extra flags for the AUX send control register=
<br>
&gt; + *<br>
&gt; + * Wrapper around intel_dp_aux_xfer() that attempts to recover from a=
n<br>
&gt; + * external TC port mode change (e.g., dp-alt -&gt; tbt-alt via hotke=
y BIOS<br>
&gt; + * action) when the initial AUX transfer fails. On failure, recovery =
is<br>
&gt; + * attempted once via intel_tc_port_aux_recover() before retrying.<br=
>
&gt; + *<br>
&gt; + * Returns: number of received bytes on success, negative error code =
on failure.<br>
&gt; + */<br>
&gt; +static int<br>
&gt; +intel_dp_aux_xfer_with_recovery(struct intel_dp *intel_dp,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const u8 *send, int send_bytes,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 *recv, int recv_size,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 aux_send_ctl_flags)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct intel_digital_port *dig_port =3D dp_to_dig=
_port(intel_dp);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D intel_dp_aux_xfer(intel_dp, send, send_by=
tes, recv, recv_size,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0aux_send_ctl_flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ret &lt; 0 &amp;&amp; intel_tc_port_aux_recov=
er(dig_port))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D intel_dp_aux_=
xfer(intel_dp, send, send_bytes, recv,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_size, a=
ux_send_ctl_flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 static ssize_t<br>
&gt;=C2=A0 intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_=
msg *msg)<br>
&gt;=C2=A0 {<br>
&gt; @@ -508,8 +541,8 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, stru=
ct drm_dp_aux_msg *msg)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (msg-&gt;buff=
er)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0memcpy(txbuf + HEADER_SIZE, msg-&gt;buffer, msg-&gt;size);<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D intel_dp_aux_=
xfer(intel_dp, txbuf, txsize,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rxbuf, rxsiz=
e, flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D intel_dp_aux_=
xfer_with_recovery(intel_dp, txbuf, txsize,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rxbuf, rxsize, flags);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &gt; 0) =
{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0msg-&gt;reply =3D rxbuf[0] &gt;&gt; 4;<br>
&gt;=C2=A0 <br>
&gt; @@ -531,8 +564,8 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, stru=
ct drm_dp_aux_msg *msg)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (drm_WARN_ON(=
display-&gt;drm, rxsize &gt; 20))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return -E2BIG;<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D intel_dp_aux_=
xfer(intel_dp, txbuf, txsize,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rxbuf, rxsiz=
e, flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D intel_dp_aux_=
xfer_with_recovery(intel_dp, txbuf, txsize,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rxbuf, rxsize, flags);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &gt; 0) =
{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0msg-&gt;reply =3D rxbuf[0] &gt;&gt; 4;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/*<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm=
/i915/display/intel_tc.c<br>
&gt; index a21dd4e3fe4c..1b23161e4eea 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_tc.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_tc.c<br>
&gt; @@ -1861,6 +1861,81 @@ void intel_tc_port_link_cancel_reset_work(struc=
t intel_digital_port *dig_port)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cancel_delayed_work(&amp;tc-&gt;link_reset_w=
ork);<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
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
<br>
-- <br>
Jani Nikula, Intel<br>
</blockquote></div>

--0000000000000e052506510db93f--
