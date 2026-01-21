Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGznJwxNcWkahAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 23:02:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096C65E70A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 23:02:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBDEC10E89B;
	Wed, 21 Jan 2026 22:02:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="1Tto+5XW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1F210E88D
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 22:02:47 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-b872cf905d3so45241566b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 14:02:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769032966; cv=none;
 d=google.com; s=arc-20240605;
 b=UT1YKg2FlLV8nVasaCTBzeHqeivKVRwsqLP+qwjrObhwF+IGwcm7hRNbGiZsNhbYVN
 sQK1mPY9oCxJFiE0PIugU4m/j/kOqrJaws4uQCjqc9cOvGs0QxX6C36tzn5f6A1l94oA
 Ls512J3uFHe4ZyLshM26NTv3Pw4ZDpo3jH1NIvQc39jf/h2QzNL29mYRsd4LZriNufIs
 XzeRqBfP/9OgdHsOXoUGFReJzX9GgdKUJbqXe+Y/yNS/uVV2Nme9hY2ItsvGwYVjcV1w
 ZagXNiLJv0GNM1Q4eEuvI9exru+SK2Btc5+MF2NpKZGsIUZb2u8EyV8sWrNkKTVawnsd
 cWkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=XUrUl+QwxzzUpf+iH2o/N4P82NeVmlwVvw0wxb0CRL4=;
 fh=vyimUUsmDaVlN0MurNjvg2FtlsAly7g7oVJvnRA+azM=;
 b=JCQRtyzR/ilIFTLIsHtu3+VeHmVje6X1okzYz/HkjOhWkZbGD5n4WSiAbleQhpyah8
 WdjKDau911v8jxEjZIeM000vY4kEi9pbKkeHzC7mdoiV8SrQ/AqR4PxLf6yHRfspIq8z
 sQG26QOR4Zy3sR9A+n5eVKT3CLrTkCWfUq0uaBmR5TlLWdztOIngGih5/Aj+3OvDae5c
 eTB7keT/KwxEhhyuw41dIyRJE2Wpx/tehq308ebhhvMN4ygsqE2vJJxUzf+tJ02mXTTc
 QzEOTt3Q01yE9bX3TYomsn6K8EFM1aaqERa/2tvqC2bQp5DgTo1zJpR6fpUetFjGfgLp
 UT0Q==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769032966; x=1769637766;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XUrUl+QwxzzUpf+iH2o/N4P82NeVmlwVvw0wxb0CRL4=;
 b=1Tto+5XW2Fcy4Y0rIGuFufwrtRI9bdX2J/CRMNnoG1ZCn9Q1z1Vo8m8Zuz8OEicQOt
 hDorEP4W1npGtavC4coBLoyjUx0aw7rRBXUMMV32O5xRELz+d51FTNyA3YPl1J/P5Xh2
 sp+KH0GbOxH8gXanr+71jOFE7NxnbRGXPY+mPAKIgzORnVBexBg7sMfM/ufZX9PTDyD3
 AIzBUuZWtvcWLo+dGhIFmFDFmjhmMbF7z5yyp5GSUKozo4sc7JhkKTBeJTXsiK/uVDcu
 p6pwqogXjF3oorv6O0RE3hmFX4+G64nPpKN+6x3L98QMUW5sR+7Bfa4clcKztEc0SjJZ
 jDcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769032966; x=1769637766;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XUrUl+QwxzzUpf+iH2o/N4P82NeVmlwVvw0wxb0CRL4=;
 b=KJFxDj6SOd4Lbk8KOzWkOLESsJ63ZwKKu+Srm+8l1rIDcMQZISI1MvzmolAXNFynh6
 knLysTRSR2drDqEQgV6tSAQPbqwzSvv2qIIcqprbnpLbO92Gd/1JGudpHM+zFHT0h30b
 zSruc9EclR8kiqiQNE/z/ZB+oUvfjFHaD1VyDXtsAjYnJpV8f+JiNQbkyYVn7u7x4YAt
 FDULVySh/iCPy0BALxaMHnIRZNzMzSdEtEiR/yGBABwjdEgEVcCV8g5xz4E9r8yLdeeB
 iV5GySjTykjVLSLAnAPgB4a+5SyLmtEbSk2ivSfy5c8yb59YeN3xEPQy2pqnv6IUScJF
 vloA==
X-Gm-Message-State: AOJu0Yw6Dg6tEGojq6nR2zFnY/XqGQwYM8YFNDvub2b2A79+2KQNT7bD
 yupI9v+Btob9YxVeDSZuoga97W9QC28rhRYeSN7G6OdCoS00ghPqYzNJ9Bzja5GGmZ5sZymUS93
 J+goo3vqxbzQF9Kp/aJVKSi4BZhK2fz7gEZSQjbDG
X-Gm-Gg: AZuq6aIrL/EGxcG6dmGKu75i0buByf+3hTAEUd1i/oSsmT6OS/SH9r35NO7ks8Hx5iL
 AptGuKn3+sndDjKNZgp+IJ2hHtFfSRLy8w7qpR64qTlHCx/YtTmRiztqYmx1YIKHjA0ZuW8ysDH
 AKyHC6aMcamOPW6DsIQlfYG0cgAR4tpeZ7fKWHh7c5xNXxMNBc6pLbK0ntQ/5nCykvWk3e+DeTt
 fyxhFz3h/sFS/oTHp3H0QTwYTA/3xvSYL9PhH6qflXrapavYlcVoYzTvkB4xSqciZHp7bEhs3Ho
 AKstMWnDQPpAPjbo5cdMwV4ga7p67d35aq/PyXKpTIOmfDtsZNzEdtJbY8I+DthlFT13eQ==
X-Received: by 2002:a17:907:6ea3:b0:b79:f4e4:b544 with SMTP id
 a640c23a62f3a-b87968e56a6mr1635382466b.21.1769032966010; Wed, 21 Jan 2026
 14:02:46 -0800 (PST)
MIME-Version: 1.0
References: <20260121204705.432290-1-jdsultan@google.com>
 <20260121204705.432290-3-jdsultan@google.com>
In-Reply-To: <20260121204705.432290-3-jdsultan@google.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Wed, 21 Jan 2026 14:02:33 -0800
X-Gm-Features: AZwV_Qi37gPRi2jrB0bhkHH1gdjsYbTuDXXhtLL3Ci8aBx7UH2JLddagup1DmP0
Message-ID: <CAMNLLoQTtopu9LBov+TxFG1Po4PN9zXk5yA4m9eKVh_a-zX7Lw@mail.gmail.com>
Subject: Re: [RFC PATCH v3 2/2] drm/i915/display: Synchronize crtc_state for
 initial commit
To: Juasheem Sultan <jdsultan@google.com>, Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel_xe@lists.freedesktop.org, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Drew Davenport <ddavenport@google.com>, Sean Paul <seanpaul@google.com>, 
 Samuel Jacob <samjaco@google.com>, Rajat Jain <rajatja@google.com>
Content-Type: multipart/alternative; boundary="00000000000089fb8f0648ed155d"
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:jdsultan@google.com,m:jani.nikula@intel.com,m:intel_xe@lists.freedesktop.org,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:ddavenport@google.com,m:seanpaul@google.com,m:samjaco@google.com,m:rajatja@google.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,base.name:url,base.id:url]
X-Rspamd-Queue-Id: 096C65E70A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--00000000000089fb8f0648ed155d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Jausheem for the revision, this definitely simplifies the hardcoding
of the crtc state values and just make sure the new_crtc_state is inherited
from old_crtc_state.
The logic looks good to me.

You could try and move the new_crtc_state =3D old_crtc_state assignments to=
 a
separate function and call them from intel_ctomic_check()at the top which
ends up calling intel_crtc_check_fastset() , in which case then this will
return true and no modeset would be required.

Other than that it looks good to me.
@Jani Nikula <jani.nikula@intel.com>  let me know what you think, look
forward to your feedback on this new revision and if it looks okay with the
fastset approach.

Manasi

On Wed, Jan 21, 2026 at 12:47=E2=80=AFPM Juasheem Sultan <jdsultan@google.c=
om>
wrote:

> When attempting the initial commit, there is a mismatch between
> the new crtc_state and the old crtc_state. This causes us to fail the
> pipe_config comparison and force a modeset. In the case where we are
> inheriting an initialized state, we can sync the new and the old state
> to pass the comparison and allow us to do a fastset and achieve an
> uninterrupted handoff to userspace.
>
> Signed-off-by: Juasheem Sultan <jdsultan@google.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 0d527cf22866..6eef4bd2e251 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5736,6 +5736,25 @@ static void intel_crtc_check_fastset(const struct
> intel_crtc_state *old_crtc_sta
>         if (old_crtc_state->vrr.in_range !=3D new_crtc_state->vrr.in_rang=
e)
>                 new_crtc_state->update_lrr =3D false;
>
> +       /* Copying crtc state if inheriting an old state for commit */
> +       if (old_crtc_state->inherited) {
> +               new_crtc_state->hw =3D old_crtc_state->hw;
> +
> +               new_crtc_state->port_clock =3D old_crtc_state->port_clock=
;
> +               new_crtc_state->pipe_bpp =3D old_crtc_state->pipe_bpp;
> +               new_crtc_state->cpu_transcoder =3D
> old_crtc_state->cpu_transcoder;
> +               new_crtc_state->lane_count =3D old_crtc_state->lane_count=
;
> +               new_crtc_state->output_types =3D
> old_crtc_state->output_types;
> +               new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> +               new_crtc_state->framestart_delay =3D
> old_crtc_state->framestart_delay;
> +               new_crtc_state->pixel_multiplier =3D
> old_crtc_state->pixel_multiplier;
> +               new_crtc_state->pixel_rate =3D old_crtc_state->pixel_rate=
;
> +               new_crtc_state->enhanced_framing =3D
> old_crtc_state->enhanced_framing;
> +               new_crtc_state->dpll_hw_state =3D
> old_crtc_state->dpll_hw_state;
> +               new_crtc_state->intel_dpll =3D old_crtc_state->intel_dpll=
;
> +               new_crtc_state->vrr.guardband =3D
> old_crtc_state->vrr.guardband;
> +       }
> +
>         if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state,
> true)) {
>                 drm_dbg_kms(display->drm, "[CRTC:%d:%s] fastset
> requirement not met, forcing full modeset\n",
>                             crtc->base.base.id, crtc->base.name);
> --
> 2.52.0.457.g6b5491de43-goog
>
>

--00000000000089fb8f0648ed155d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Jausheem for the revision, this definitely sim=
plifies the hardcoding of the crtc state values and just make sure the new_=
crtc_state is inherited from old_crtc_state.</div><div>The logic looks good=
 to me.</div><div><br></div><div>You could try and move the new_crtc_state =
=3D old_crtc_state assignments to a separate function=C2=A0and call them fr=
om intel_ctomic_check()at the top which ends up calling intel_crtc_check_fa=
stset() , in which case then this will return=C2=A0true and no modeset woul=
d be required.</div><div><br></div><div>Other than that it looks good to me=
.</div><div><a class=3D"gmail_plusreply" id=3D"plusReplyChip-0" href=3D"mai=
lto:jani.nikula@intel.com" tabindex=3D"-1">@Jani Nikula</a>=C2=A0 let=C2=A0=
me know what you think, look forward to your feedback on this new revision =
and if it looks okay with the fastset approach.</div><div><br></div><div>Ma=
nasi</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Jan 21, 2026 at 12:47=E2=80=AFPM Juasheem=
 Sultan &lt;<a href=3D"mailto:jdsultan@google.com">jdsultan@google.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">When =
attempting the initial commit, there is a mismatch between<br>
the new crtc_state and the old crtc_state. This causes us to fail the<br>
pipe_config comparison and force a modeset. In the case where we are<br>
inheriting an initialized state, we can sync the new and the old state<br>
to pass the comparison and allow us to do a fastset and achieve an<br>
uninterrupted handoff to userspace.<br>
<br>
Signed-off-by: Juasheem Sultan &lt;<a href=3D"mailto:jdsultan@google.com" t=
arget=3D"_blank">jdsultan@google.com</a>&gt;<br>
---<br>
=C2=A0drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++++++++++++=
<br>
=C2=A01 file changed, 19 insertions(+)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c<br>
index 0d527cf22866..6eef4bd2e251 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_display.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_display.c<br>
@@ -5736,6 +5736,25 @@ static void intel_crtc_check_fastset(const struct in=
tel_crtc_state *old_crtc_sta<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (old_crtc_state-&gt;vrr.in_range !=3D new_cr=
tc_state-&gt;vrr.in_range)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 new_crtc_state-&gt;=
update_lrr =3D false;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Copying crtc state if inheriting an old stat=
e for commit */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (old_crtc_state-&gt;inherited) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
hw =3D old_crtc_state-&gt;hw;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
port_clock =3D old_crtc_state-&gt;port_clock;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
pipe_bpp =3D old_crtc_state-&gt;pipe_bpp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
cpu_transcoder =3D old_crtc_state-&gt;cpu_transcoder;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
lane_count =3D old_crtc_state-&gt;lane_count;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
output_types =3D old_crtc_state-&gt;output_types;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
dp_m_n =3D old_crtc_state-&gt;dp_m_n;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
framestart_delay =3D old_crtc_state-&gt;framestart_delay;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
pixel_multiplier =3D old_crtc_state-&gt;pixel_multiplier;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
pixel_rate =3D old_crtc_state-&gt;pixel_rate;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
enhanced_framing =3D old_crtc_state-&gt;enhanced_framing;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
dpll_hw_state =3D old_crtc_state-&gt;dpll_hw_state;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
intel_dpll =3D old_crtc_state-&gt;intel_dpll;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_crtc_state-&gt;=
vrr.guardband =3D old_crtc_state-&gt;vrr.guardband;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!intel_pipe_config_compare(old_crtc_state, =
new_crtc_state, true)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 drm_dbg_kms(display=
-&gt;drm, &quot;[CRTC:%d:%s] fastset requirement not met, forcing full mode=
set\n&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 crtc-&gt;<a href=3D"http://base.base.id" rel=3D"no=
referrer" target=3D"_blank">base.base.id</a>, crtc-&gt;<a href=3D"http://ba=
se.name" rel=3D"noreferrer" target=3D"_blank">base.name</a>);<br>
-- <br>
2.52.0.457.g6b5491de43-goog<br>
<br>
</blockquote></div></div>

--00000000000089fb8f0648ed155d--
