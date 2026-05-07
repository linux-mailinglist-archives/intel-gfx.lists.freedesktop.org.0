Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AL9Nuzx+2mMJAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:59:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A174E2238
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADBE210E281;
	Thu,  7 May 2026 01:59:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (4096-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="JtrYB5mu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA8910E247
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 01:59:02 +0000 (UTC)
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F41163FBF8
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 01:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20251003; t=1778119141;
 bh=qpU0J6jI9Fr+f3DjMki3StFsSdGATO3kKTu4AK4ODmo=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=JtrYB5muqSA2KAfwRbjSYDw8GHgTezpU2FroVZwhE/zvvfqWwuQpfCLdn/xxI57r8
 5UUnCcpXPwUmEsMNfSfj42vpiW0QBdJqp9Lw7dh9sTonZan/QgWdu5D2WNGLNIYmMX
 4c5PSjLGMLEFv0SE212DXlpCUb39MZJKixldXCRFMSQR9knq/T0q9bSYrry1rgpRHq
 JgI+gQaqENJU2jnE8dLBhMjxMu7MgXtVovlshqb44/d8rP6/PDJPTk2+A1rfKnGoL7
 jI5rrsWVMTJZA3K+zsA+RT+OlGJWwCgpDe4efQdVaGz8EbyFO31uMNFdoOeyrwRCwE
 EoVeKYpsK3CcSb0CejCJS1M+jjdin+wnrniXAD2nQVpRFpm5XNmFdpaAhNL/WQXhhn
 FXGknSmGEssd/bLQ9aNvy2JtB4S+VZX345VsrSLXUTDlVpDa5TSTm0Ck7lQkZzGkBa
 5P72yddNTRl4/7O9irrRsb1PbDihXRH2pdTUpOtuSE6aciMbopg1Oh5++4Bef3TIXD
 cQioE5mHp4TyLD2qE8D5a9lMzvYABJumbdYKx9EPE7NAZQKupIsRQJTlgiyD3uY9gk
 oHIkhQ2FW0zDX/fv68eWdV6Vku1GHoglOZszZ7jX6dJAd3pX8pOOuYAMQ6ol+nCQUN
 vGKa/Znu12FLhtGb3ci0v/r0=
Received: by mail-ot1-f69.google.com with SMTP id
 46e09a7af769-7dccb22cd54so115579a34.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 May 2026 18:59:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778119139; cv=none;
 d=google.com; s=arc-20240605;
 b=bUmZSBLiubPRFqXnMQwsEAQNSgKE8ZGFEe3eTGfvxSjM5TVcHKC9N37siqIvQaT4m0
 ljrd59B+N7+Nke6EeP4b6303suPmJIyE5jEfwuSXgZK5STnK1P3wIP65Hg2Iuvd/ppCQ
 MDcgwlXDDMxlsZyPl2elW9xLZ3u14wiuU3RjB6nB+FQYz3FJYIaNR/BR6/79PiIcqfH1
 7eGTejSCVRJNxkwxWLo6lAcbwxrBrr6OAy1uBrfXP7AgJ9bh6LKfmV+xgis2YpyTe/8B
 KdjRrD6/GemtCRijLk4SafAAEUSyinVPlC5LmS5pBtbyl80naPhLh8gRTNLo7lyjrS6t
 gdbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version;
 bh=qpU0J6jI9Fr+f3DjMki3StFsSdGATO3kKTu4AK4ODmo=;
 fh=M1KAYB1Uk2A7CXRmjsPWItgqxENG0DvK6BGc9tmTw6E=;
 b=bDtW+rsOIqjDo/CU2msWxEtWppegRZJyCCsrl9rTqjZ9bCcvK9UOoSaDJbDPOV66/Y
 2T1rFYaJXCSMe+xx+pCBdP9jqQYUAcTC9E2mHNv4KqrHfAH4JUDYFCYcZ3p37GPpYymZ
 x+M0yVCjwbx6cH9FC+C4PZ47M4cTKdID2ykeinuRSGcTPIZIYVxw5e1ZogiJ6gC9vZLp
 iehSOztecWiSxF9ZhXXJTFd5tL2nGbDddIMOcfSh94oFHso1ANO8K5KsjGsU8aTbqztF
 F+1spOVhNN3ZEmqwXiH5gVtpjf8Gmhw7guAgmuSOtyHFe0gessNdXl4HbTRve8baljEo
 Og/g==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778119139; x=1778723939;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qpU0J6jI9Fr+f3DjMki3StFsSdGATO3kKTu4AK4ODmo=;
 b=ecgvb8zMw2wSJH21DDtjJ5xNcdxI+OfACvkIM02xhzhhwaKQmnY2S58L8xXCDJwYRj
 1krzNmHZhjDJgtEzRenNDAKcrlFzFJn3qzcdY4BvDo5QOTaSFvAS6AJjkym/H0B821mm
 +V8XZat7VSLvytTQ0aFFAKT3Ioa4wkMKFdBf5Nb284OSE9sIuXug6Lg1swrumY4PPe6Z
 ggFNv2TNPhtSxAMFlikFtJj5xCETiMEhzbBHC5x7cdA8e65Fj/WT9Sl3q2c3l7EaRMYr
 FcDNHZ1lfORLGyLJaSLhvr9QQpcEgTiP2PO4kQgFyJIVCSIo8j/ydi2036+YZ3QCrt+Z
 ZCwQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ9F3qhCmF+pWtJf/MX7LphFhzPuaOW7TCdFOHJCgAA4/uNhbk2S3GgUtjdyA3VZwXqKKMJYSgXo0Fw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwDjWfFOJomLhgF968SoDL+ox3jxwYHraemmPO1Xv78OV6TvPg7
 7IUElupobfZu28fhAaxGMuy0ZjHGdjbJzVA8qtVBvSrZ57COasTD1gs3GNrqVLYGc4F+SP+LYHm
 3pRsRRf2yeYSTsPNb/9wE4DJiGjuVqnZjsJ2yqOYqsod7Q9X/ZjPtGfEpKmMaBMfQ3y6H44ADt5
 hjBIi0YW6lNdysYhjvAs9XatZGd7jbip3nWIb6MaKN219AmGp4/bPpY7nxdsdb
X-Gm-Gg: AeBDietdyMKmxoIkuRQpEb0+5ws7ViIwbm9WIa+4uHW8Qa7PUmLukjIk+56KFIlLVNv
 9LBkTF2w1T0iLVuQz5rOyCd3b0tphlUJWS9SeURMijzoYB4piNCW3blAJGPkJZNM8ZjB3LqBsc6
 NzPrceb4HnaNArFJwNqDjwejypl0kYOhcNJU7Q5IRgN0IE13lfpU/lhPbjBAye4Yep7Hw2cGncS
 R2xm1KSQBxCJ8t4q9a+pRVIqPjThHQZ+JqWEOcm1a047wZzb+MVhYVAnY2eZSWH
X-Received: by 2002:a05:6808:1a26:b0:467:2926:125a with SMTP id
 5614622812f47-48045136db2mr2002450b6e.4.1778119139404; 
 Wed, 06 May 2026 18:58:59 -0700 (PDT)
X-Received: by 2002:a05:6808:1a26:b0:467:2926:125a with SMTP id
 5614622812f47-48045136db2mr2002440b6e.4.1778119138970; Wed, 06 May 2026
 18:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260505033558.157604-1-an.wu@canonical.com>
 <afuOnvFCEHEft4-R@intel.com>
In-Reply-To: <afuOnvFCEHEft4-R@intel.com>
From: An Wu <an.wu@canonical.com>
Date: Thu, 7 May 2026 09:58:47 +0800
X-Gm-Features: AVHnY4IIJRHZ15mRWIpa0eleZGp0d0gICVJsEChp6nfRKGcyRQMzp-zrm0sIFJQ
Message-ID: <CAO4Mv0bT4+W6E-Z-0=NSAj0ZjSqa7jFRDpLt4RxL-NgBux8yFA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/tc: Recover AUX channel after external TC
 port mode change
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary="000000000000a59cb70651309f43"
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
X-Rspamd-Queue-Id: 12A174E2238
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[an.wu@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[canonical.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gitlab.freedesktop.org:url,canonical.com:email,canonical.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

--000000000000a59cb70651309f43
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ville
I have filed a bug (
https://gitlab.freedesktop.org/drm/xe/kernel/-/work_items/7918)
Thank you for your comment.

BR
    An

On Thu, May 7, 2026 at 2:55=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4 <ville.syrja=
la@linux.intel.com>
wrote:

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
>
> This sounds like a completely insane thing for the firmware to do.
> It's not supposed to screw with the hardware while the driver is in
> control.
>
> Please file a bug in gitlab and also attach full acpidumps there so
> that we can check if that's where the insanity lives. This is isn't
> some Fujitsu-Siemens laptop is it? Those have historically known to
> do stupid stuff like this...
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
> > --
> > 2.34.1
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
>

--000000000000a59cb70651309f43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Ville<div>I have filed a bug (<a href=3D"https://g=
itlab.freedesktop.org/drm/xe/kernel/-/work_items/7918">https://gitlab.freed=
esktop.org/drm/xe/kernel/-/work_items/7918</a>)</div><div>Thank you for you=
r comment.</div><div><br></div><div>BR</div><div>=C2=A0 =C2=A0 An</div></di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, May 7, 2026 at 2:55=E2=80=AFAM Ville Syrj=C3=A4l=
=C3=A4 &lt;<a href=3D"mailto:ville.syrjala@linux.intel.com">ville.syrjala@l=
inux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On Tue, May 05, 2026 at 11:35:57AM +0800, ChunAn Wu wrote:<br=
>
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
<br>
This sounds like a completely insane thing for the firmware to do.<br>
It&#39;s not supposed to screw with the hardware while the driver is in<br>
control.<br>
<br>
Please file a bug in gitlab and also attach full acpidumps there so<br>
that we can check if that&#39;s where the insanity lives. This is isn&#39;t=
<br>
some Fujitsu-Siemens laptop is it? Those have historically known to<br>
do stupid stuff like this...<br>
<br>
&gt; <br>
&gt; Signed-off-by: ChunAn Wu &lt;<a href=3D"mailto:an.wu@canonical.com" ta=
rget=3D"_blank">an.wu@canonical.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_dp_aux.c | 41 +++++++++--<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_tc.c=C2=A0 =C2=A0 =C2=A0| 75 =
+++++++++++++++++++++<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_tc.h=C2=A0 =C2=A0 =C2=A0|=C2=
=A0 1 +<br>
&gt;=C2=A0 3 files changed, 113 insertions(+), 4 deletions(-)<br>
&gt; <br>
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
&gt; -- <br>
&gt; 2.34.1<br>
<br>
-- <br>
Ville Syrj=C3=A4l=C3=A4<br>
Intel<br>
</blockquote></div>

--000000000000a59cb70651309f43--
