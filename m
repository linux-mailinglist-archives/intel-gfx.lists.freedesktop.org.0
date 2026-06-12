Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gNYYK0gELGq4JgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 15:06:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6C6679A0B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 15:06:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ZJdse7YB;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1A310F4B4;
	Fri, 12 Jun 2026 13:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com
 [74.125.224.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CE810F203
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2026 03:42:39 +0000 (UTC)
Received: by mail-yx1-f53.google.com with SMTP id
 956f58d0204a3-66039d3efcbso573234d50.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 20:42:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781235759; cv=none;
 d=google.com; s=arc-20240605;
 b=bumCmRmUHzIRzfplGJqQMVQjtBag6NscQ3aK8S0h/zqWFV1y9CeH8aoqKIdcteWWtq
 P0wt4f158DdY6fk1tLHbeQBTZemTR+/n5/pOHcCgoR9BMk/KNvZ04HcDtEtt2L7CoxH+
 tEWQw2jk6C1zvCum7wz2uwVMVeoYnURQOVLK2GMFfTS3TW8k01Pisz9NmLBVfLDc3lmg
 2YcZnFuy6cCpswo2D0WRLKA1gf7cSEuiFioPsDWrZMxShEfJ1XfaLpxkahLo0lBO4sZz
 TucilvV+0URJUE1SaaCWcRiG7pA8VFXeTDXoIM6/XtOREgbg6CARA92HoqVE0SIBE0rw
 0SrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=F2b1FbuAbMKG8c113cKqrJ2bKBY8pM/9wTcVdHGIxkg=;
 fh=ftxp895V6D4+w8w2IPkEODL0FatZEUBB+T/SZ/O4f34=;
 b=OQSMTlm8/T+cLGsKs9vBsdc2LyLsq0QPxFA+trUZzeT5y/datam+YS4l77PKkkcaye
 kL7RHAijcq1jDsokKEfJP7p82jbcuQ1Ip+JmsY7llsvX5ljpL37gb8YY2Gss+JT0eVPj
 eHYF7jUrlXw3cl7Fz7eBn6Jvrs3roeBRWeAYpTxDoJBp3CYqV4bScUJqvj/9yiodVMqI
 yvPbp2kMRdB2EWAjDOMy3Y94dXw9a7HxgQn4ybDIfVR3BTADybzvILlPIPKxK2beriBs
 1bR0YWvMm29HGiC53rCgy0vsWPEJCyLpA8IjBryFjfnue3tR1J0mWTm0dTPnRDUdZr1Z
 MCaQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781235759; x=1781840559; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=F2b1FbuAbMKG8c113cKqrJ2bKBY8pM/9wTcVdHGIxkg=;
 b=ZJdse7YBljmIvcc0E2mphwxVGYoXeHNjWkGOYCkU77UWG3u7xkyVsUzXQL4lrZFXPw
 ExTSrPrOaOpD2G8VEsmFlWOAxHAIU2WTpThODNd0cBkY9jHiIbEBig6XXbAexrEfWBkg
 gZ77RV62FSkob0hnoVWErhLK/AkRgcahGlE7EJ1B/EL6oS2VBGiJAoLJXlMEcKelcMGP
 CrbBcKmFXZMuxsQnFXcrunnBOZiOWCJN85G/OteQZx9vGw98UT1sHIpsJ9DhtXvVl78Z
 noOdt4gGtbSmn2+QS65/zmsn3zQDLZADFMAtOWcBsGVhIfkuCi2Ppyxktqh4kFboNbVj
 ubtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781235759; x=1781840559;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=F2b1FbuAbMKG8c113cKqrJ2bKBY8pM/9wTcVdHGIxkg=;
 b=bPGy/mE5tQoy1Bnw8Z3r2JsW07QPpNJaXuF3bsZWBNZB4GFcNcgHBdn0P4kBvzAlCn
 E7+0uZp4AgD0R9qd2xsQjSacI4y1TAtCUUPq68hbgt5WtPXznQj+QbgTOyA1rhg49zHr
 l7mHBZTSJ5fYt4J3e93Jbao4xKWYr0emolP1n3JMkKkwQP3iQugTe9xBKfC8YmuLgCNP
 qhnFTqx46ZElEDA7WeP2XWGlFHkvFofIRkpAiytIQbyKZFAUOD6fUHBQCes/boDfRaXQ
 4s3MGTierd4BVZ6tR3c8UPqXaQ7Dowb7ph5+gTWs3cOhrQr3MXfpqNO5hK0T1LCgRC7x
 QhBg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+X56KRpWh8J8a93HmTCuumQLJUmPJ434phw6mgwfg6LC016+G+iwCyfiHYOX3jbF9zKd6E3tpRlic=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxUVCvjPDi/pdwdzBZiequhpqXZ5xmXDJir8pBD9JjMq3Dw3vzF
 PIbEpd2bsqBTivyWqCz558STbTKBWvEWmL65UMuWWUpe26bk1699g4Xd18eb/ZJBowpd5mAb+kM
 ZRNRPdLYLysIacYHxO1s/fV+l3WNxNOs=
X-Gm-Gg: Acq92OG5wfnb3S79FkcPXeL5Vk/1j5+kw8LRPTAyopAO3cgjXq0Y1PRFr5mD8Mq2ZjY
 FjIhTgppWKr3Y0Rrsye3xdTLbrtWlTDBXW524nkqUIAufcNFx6fNEh8k3l77bHM5C713ZakDA6y
 vnCQIm59zURsW8bdPPTwfL3eFengUiaWi6Q5fSZCju7AlzbBf1cz7xsUMlB/+VvzNR3W4L/ZWt2
 6WbOebRB8CRsqqZWBMZHavtpBAj5htA3O6VYTMlPKYfVNi4/+MBBS+10m0sOWfb+Lc2W/BID72D
 aUeProkw
X-Received: by 2002:a05:690e:191b:b0:651:bd70:161b with SMTP id
 956f58d0204a3-66277f4c797mr925128d50.1.1781235758651; Thu, 11 Jun 2026
 20:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260610035419.1596963-1-lgs201920130244@gmail.com>
 <ail6r13cZSN5EPLx@ideak-desk.lan>
In-Reply-To: <ail6r13cZSN5EPLx@ideak-desk.lan>
From: Guangshuo Li <lgs201920130244@gmail.com>
Date: Fri, 12 Jun 2026 11:42:19 +0800
X-Gm-Features: AVVi8Ce4po4Dg0d4OZSFYJGTZQPPjfgeS2QsqZx_6UblnVFzZSwcDHWE8ndszHg
Message-ID: <CANUHTR84uSy15DCdXYr2DWPoJcx_0vnG3LfFb2x9Yt978K5tgA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915: clear CRTC color blob pointers after
 dropping refs
To: imre.deak@intel.com
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Uma Shankar <uma.shankar@intel.com>, 
 =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Fri, 12 Jun 2026 13:06:10 +0000
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:imre.deak@intel.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:uma.shankar@intel.com,m:michal.grzelak@intel.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:email,mail.gmail.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B6C6679A0B

Hi Imre,

Thanks for the review.

On Wed, 10 Jun 2026 at 22:54, Imre Deak <imre.deak@intel.com> wrote:
>
> On Wed, Jun 10, 2026 at 11:54:19AM +0800, Guangshuo Li wrote:
> > intel_crtc_free_hw_state() drops the CRTC color blob references, but
> > leaves the corresponding pointers unchanged.
> >
> > This can matter in intel_crtc_prepare_cleared_state(), which frees the
> > old CRTC hw state before calling intel_dp_tunnel_atomic_clear_stream_bw().
> > The latter can fail while looking up the DP tunnel group state, for
> > example with -EDEADLK.
> >
> > If that happens, the function returns without completing the cleared
> > state preparation. The failed atomic state will then be cleared by the
> > atomic core and intel_crtc_free_hw_state() can be called again for the
> > same state, dropping the same blob references again.
> >
> > Clear the blob pointers after dropping the references so repeated cleanup
> > of the same CRTC hw state is safe.
> >
> > Fixes: fb69d0076e68 ("drm/i915/dp_tunnel: Fix error handling when clearing stream BW in atomic state")
> > Suggested-by: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> > ---
> > v2:
> >   - Keep the original ordering in intel_crtc_prepare_cleared_state().
> >   - Clear the blob reference pointers in intel_crtc_free_hw_state(), as
> >     suggested by Imre.
> >
> >  drivers/gpu/drm/i915/display/intel_atomic.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> > index 71b7325917b6..0cdae87e4bfc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -294,6 +294,12 @@ static void intel_crtc_put_color_blobs(struct intel_crtc_state *crtc_state)
> >  void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state)
> >  {
> >       intel_crtc_put_color_blobs(crtc_state);
> > +
> > +     crtc_state->hw.degamma_lut = NULL;
> > +     crtc_state->hw.gamma_lut = NULL;
> > +     crtc_state->hw.ctm = NULL;
> > +     crtc_state->pre_csc_lut = NULL;
> > +     crtc_state->post_csc_lut = NULL;
> >  }
>
> Could you still move the clearing closer where the refs are dropped, to
> the end of intel_crtc_put_color_blobs()? Otherwise this looks ok to me.
>
> >
> >  /**
> > --
> > 2.43.0
> >

Sure, I'll move the pointer clearing to the end of
intel_crtc_put_color_blobs() and send a v3.

Best regards,
Guangshuo
