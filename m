Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YYYtCAR4KWpJXQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 16:43:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F2F66A53D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 16:43:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=piaj78gN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587C110E9F8;
	Wed, 10 Jun 2026 14:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com
 [74.125.224.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0BD510E6EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2026 03:56:30 +0000 (UTC)
Received: by mail-yx1-f41.google.com with SMTP id
 956f58d0204a3-6608c1a4215so7089006d50.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jun 2026 20:56:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781063790; cv=none;
 d=google.com; s=arc-20240605;
 b=h3spKzwVcJnHdU3CJ2qdHNLVgpL8zQ/ebqnb23EFWhOdypNBQz14x1vG7QddCztcJd
 lpmV8AThq0piMy+unG71gW0l+LCGin7QHNOa/SYDhC/aXlypkzhsr+o3TcSb83Iyj4Tn
 hbQNojXPWSz803JV3LidI3WR6MfC/MYjCJ4w6+66NM4Pei4LDZI8LCh/pS4NVAg85eOV
 1fMbR0dX3SFa/MuDr9pSlA4aQqHk4Kz/x0wluethfCQlq+dZKBYLnArXzmH28YJxX4DU
 8Osjm0XJFkUyagQSf6nF/MOmCJddxLxi73rIhPHlGQQOgcI95i3Tb30IBZEvZ9Qn+Z28
 0XNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=o2Y71ur2j8AWeXxKEtF9d/8FWw9ai/UzloR6wLp7LdY=;
 fh=1yfIhAoyx9w2HRdwH/eacEuCaCXmdTMfoo/UI+UjcBU=;
 b=RUbxs3mW071pgh4Xjv+aacZrz0URTVETbLc4oNATD1XO81lNeiWDdsLtBLS1IKqvZM
 iLNrdcrSgiCt8nnb98mAc475ziJmY8IhxU4tF5BJeI/dVWT0ksXkEdk2K7o5ahPTo8DT
 QQEqm7KrjLk7cbX9IWiplmrYqbCOqzZaLTWurCBPvWxCkPRJi39WtP/woRwmP/G1JSkP
 G7vj0THtIYQPVV2ciHTQUai/vJawqsuKVD7l/7oyERP4zlFcP4T+PjVkm9aCV60ukm4g
 CBV6I/EgQD3qIz5teC7TDj+Ei7ErP6kIHBSdv6+n2+OPe6mK+ofGKd1IvncRb4HgRh+i
 NINg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781063790; x=1781668590; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=o2Y71ur2j8AWeXxKEtF9d/8FWw9ai/UzloR6wLp7LdY=;
 b=piaj78gN/m1udGdPA7m5mJ0YXW6DHfKJlv0xm9gvVSnWxdmN9JjitVR0BAqFq8to77
 qlu4xGCfX8LoFwecNxVRqU19hdi2pHOQH/8iBOd6+ci856yvU75S7bESdrPSstnjtryd
 SiFmZIjaL4s4czco/1tBIHlwJxcHBCY6HfEYpVDHht95K7AR6XM65zdrax6ifUqoW0v5
 bUO0kshUyHwAzVtZwMNz3lO9GK/odbayPzjQM8TQZOfZyvBHPW9r3qPVQUPH0pU02Qbc
 XMb++xOqrzKZdvXOyV50zvHzdleQbJ2+3uT68r7HhEsU8teMo6ybAnQ1JHON6vWsLyVW
 mJ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781063790; x=1781668590;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o2Y71ur2j8AWeXxKEtF9d/8FWw9ai/UzloR6wLp7LdY=;
 b=YXl9gKhcdiEOUqhTLKyOXmqHNzEMRmR6xYUo8oGBv2+NRf8MyXYzbvjpw8XIwGtzJB
 mTQhh4asZrjCM4gvikNw7bcLTNMga7lObrj0BwcpE59zkWxK9U3mMGs7D7h7AgtVQ6K+
 YxV9TWfTLQVmJ/G7JDtH2m5/6peuSAgEfTg+snSodd1aMAdky62BdQwu3ja769QcbAx7
 PmvvBxPzTu06QyvjzMf7z/RNY5hpd7cpa7DjKfV/JEEMTzR84uwplg8S24N4J8hxCZi4
 WjczNeIlAub7wlv267uEud+YDJBh+4G9CEEzJcOrEWITiB56D1Dkep+jT9/IO2GohPpC
 8VAw==
X-Forwarded-Encrypted: i=1;
 AFNElJ9+cQUkYIcYV6TnZRZ1CvzxmEMmBoYDcROQOn/NiOGPVpDecUXUvew/gtVeVCyUp9cm93HIrVgYoXg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyFp8VVwW7q+yJAuQQBBaExnpGWHpYQLokPC0PatIRmAOh+1gZY
 vfTOnx/cMCosmEbXmA8Z2erMqol/hSuPQKwLlt6Bm+bWlNy8U/S6l2BFC3NFqVoHIyyFHehp7uv
 tp2Fb/lRSCZzK7kuaTWYLJfaSKIudwyo=
X-Gm-Gg: Acq92OEaC5zVM0E3plK5jjkP6FYhtlIv/5RSlYUpKXPTFUnBwUYsLgj8gXZDe4IHb1S
 qNUiijFc4i3Ol1IxNzjoX1kAH27pklQK/w6Nj4T71pMK11oQ2+g8XJCirskQalzmxpaKFQMyZao
 ZkszneVSZgHrXhfZUINR6jn0VLJgrw/0u+UB1n0MmIdI+gA0/T4PE3yNxRhOQy8P6wSAfZqqLFx
 Jldvr/OYB7lOh1oK0DTNrVh0JvGFXaJrl+kb0gFC0RdmyE4hkINoLuvSef5Htl3AOYJqbBpSCXc
 TgrpD/uV15HvBdobtEzGwrHdFowBCA==
X-Received: by 2002:a05:690e:1242:b0:660:431b:8a5c with SMTP id
 956f58d0204a3-6610a624fa8mr15634436d50.4.1781063789814; Tue, 09 Jun 2026
 20:56:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260605060527.1443552-1-lgs201920130244@gmail.com>
 <aiLe61REFDPGvZWM@ideak-desk.lan>
In-Reply-To: <aiLe61REFDPGvZWM@ideak-desk.lan>
From: Guangshuo Li <lgs201920130244@gmail.com>
Date: Wed, 10 Jun 2026 11:56:16 +0800
X-Gm-Features: AVVi8Cdl7bjaaSoyIcwbk4y7y4tCXUvPuwgUj1XqVjclggrW4JUWxHkR6dTt11A
Message-ID: <CANUHTR-gdPwagMqGbH+GfPVqWN2ygP6b-GTaUQe_AxZsi5RHfg@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/dp_tunnel: fix CRTC hw state cleanup ordering
To: imre.deak@intel.com
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Uma Shankar <uma.shankar@intel.com>, 
 =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 10 Jun 2026 14:43:11 +0000
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:imre.deak@intel.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:uma.shankar@intel.com,m:michal.grzelak@intel.com,m:ville.syrjala@linux.intel.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.freedesktop.org:from_smtp,mail.gmail.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 89F2F66A53D

Hi Imre,

Thanks for the review.

On Fri, 5 Jun 2026 at 22:36, Imre Deak <imre.deak@intel.com> wrote:
>
> On Fri, Jun 05, 2026 at 02:05:27PM +0800, Guangshuo Li wrote:
> > intel_crtc_prepare_cleared_state() frees the old CRTC hw state before
> > calling intel_dp_tunnel_atomic_clear_stream_bw(). The latter can fail
> > while looking up the DP tunnel group state, for example with -EDEADLK.
> >
> > If that happens, the function returns without completing the cleared
> > state preparation, leaving the duplicated CRTC state with its hw color
> > blob references already dropped. The failed atomic state will then be
> > cleared by the atomic core, which can drop the same references again.
> >
> > Move the hw state release after the DP tunnel stream BW clear has
> > succeeded. Keep the temporary state allocation before the failable DP
> > tunnel operation so an allocation failure cannot happen after the stream
> > BW has already been cleared.
> >
> > Fixes: fb69d0076e68 ("drm/i915/dp_tunnel: Fix error handling when clearing stream BW in atomic state")
> > Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index ad2fe10b6b1f..0c015bc6c9fd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4646,9 +4646,6 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> >       if (!saved_state)
> >               return -ENOMEM;
> >
> > -     /* free the old crtc_state->hw members */
> > -     intel_crtc_free_hw_state(crtc_state);
>
> The fix is valid, however I think instead of this change it'd be better
> to clear the blob reference pointers in intel_crtc_free_hw_state().
>
> > -
> >       err = intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
> >       if (err) {
> >               kfree(saved_state);
> > @@ -4656,6 +4653,9 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> >               return err;
> >       }
> >
> > +     /* free the old crtc_state->hw members */
> > +     intel_crtc_free_hw_state(crtc_state);
> > +
> >       /* FIXME: before the switch to atomic started, a new pipe_config was
> >        * kzalloc'd. Code that depends on any field being zero should be
> >        * fixed, so that the crtc_state can be safely duplicated. For now,
> > --
> > 2.43.0
> >

Agreed, clearing the blob reference pointers in
intel_crtc_free_hw_state() makes the cleanup safe against repeated calls
and avoids changing the ordering in intel_crtc_prepare_cleared_state().

I'll send a v2 with that change.

Best regards,
Guangshuo
