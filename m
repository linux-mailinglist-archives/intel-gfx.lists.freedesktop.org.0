Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCm2N+eZHWpOcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 859D86210A9
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFFC5113425;
	Mon,  1 Jun 2026 14:40:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="m1RRpBr2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6202710F6AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 22:35:45 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id
 2adb3069b0e04-5a86704c74eso56e87.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 15:35:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780007744; cv=none;
 d=google.com; s=arc-20240605;
 b=BEnpUXP8qJRvMABnZVIzjRNYf/qpyCxa9mooeSPs01v6fUS4nHqyNYXPNOO+YSb1y1
 6kgRkuwSy4y6NGfdhJWDBxWy5cTtchqW7mJmK5t8TlDyZBxMaAo8G4ixfAc4YLuMerPo
 gs9XtnLuqGRyUtH/RzuKB2LgvXFKZQN6q6qe0D5SX1n2b0yEvSeYywWTpn0jGXHXwCYo
 hZ7fwPJ5vl1kUdLc+8sLCWKLUMyR6cxCkALTDr1BpTGSuOZp/frZLWT8BGVeH1wCaJDt
 6YXa/73+6A7CaJR692GgZHwVbONFYvhGQRsn6nhU7fymietrspA5W6AjO+ZB0ptsv+ei
 0z6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=lIvOXaXwTeXkMfopHgPR/A+WpNgIoLHOtB39AhMBijQ=;
 fh=0G52ukHEseVNoLnJkQJc5eViTv8+Papr0daRDlSintU=;
 b=eMIXHDLQqtbp0Wmbzt6M5gZ5AD+nckOFQcT/kleujw0OUlSF6DygDfxoGuplcco4hK
 QTz0zJfoY/xSEB49S0NJ8vuKWfx41UuYGvJB2Hncdc73pR76tzNQc+DcsxPv5wOPqDE3
 1FTyN41T3gFi+Rv5QqDiTu2KhgJsFIZC2pzxAc5aBLVW024to2CYElLGqxVMa1Pd0UyN
 aJh9B0AnbPfzlHQejf2G+4GuZt6yDg4DtXc5UlMygCTuzWvQLLINNc9wq2/52seTfrFU
 bZNJmeTNYEO3m+dxHBKUwIwbJpWVO5j9CqImv91msrNUxozNJVYVGQLCjGVq8ABaZQaQ
 vVAw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1780007744; x=1780612544;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=lIvOXaXwTeXkMfopHgPR/A+WpNgIoLHOtB39AhMBijQ=;
 b=m1RRpBr2wDctEtcf+a99Nu5WSnIu/AlsHB5SJjKihAAl2d9/MxhfG5LTtNtY490R3h
 08LjySOJ1kof/lxvoKhfnXw1wq7G9e1W+XdbDTdofFv/jBBY3//xjyO8ChV3dByT4n7V
 gtxydKG2rrhUguC8nXGezNlYNCYUbvzlzdkgK4vlrp3tN2PXWyZpgFtKIh8YBOvPRb9h
 Dj0HPd2AJ9TFkdcqUvpBr4bxQfsZ9nFMv138VEYUro8uVOcaroFNJRWi10LDoGNGMj6F
 TCMGb79OWN7/ShjoulAoraih04py3PFyZbF4x+H0OWBeyl+HQP5JX0tpUef7op28t98f
 dROw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780007744; x=1780612544;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lIvOXaXwTeXkMfopHgPR/A+WpNgIoLHOtB39AhMBijQ=;
 b=kGZJOqZtqrXw+qelqxJCKetEPjVwwa2KyPjnr7wopnWixEXB7D/BQ3cT4q5arxKkad
 rAMvOC2pYJG+5MTpQbZoEuByFuE9N3l1704ZDIWyFunFaF7FlT9SBn6Tq0OH//zra1su
 P5uUPEA6MnKw63rI78w3fuv0bnpDJEcj+mE+9fLybjn+BIcLCExiVji7bW8eIJi0Nz92
 XMtza3BRGWHJtNycKSXReCIN6iSv432fOOVRmUk/9EWVRRIIz8eOmI+mM8SJ0tTT6VK2
 GZVW4YQK1ynpv641liPkrGVc53ByKJNxq97oq+K+3P9KV3dMRtw4lo1Q5oRp7GLFEoOB
 u1KA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+lXJErZsgJkZrn1qJj34sLCV6aS5CVBOi8/2u4twbYhXk96e2fYhgmM62WEPCp8uN7JqGQCd88b04=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyaQjA4LNMNkmX7j7yYKVzJtCZhXihMis+paSJykSjQXhU87SlE
 BJ6ADlzzcYQjoaXF0OrP2KWS8oR2+8GghdI7V2uP4oObpsKl3JllFZfWMX0TN/X+ZCZw4g4UvMR
 Av7g7m3hDmkN7IwCqw14yC2M9yZIcoE8wvNsmPJNk
X-Gm-Gg: Acq92OFMhuIljG5JSJoCD2EyeRhp/fxeb1o1a+vuQf7YMoKhJWq16m0CxEgvOiPxiya
 K5Xd/1y9rn841Iq4WLZGM1PRZ40Vq372eoT2EEP9FNXLCp83MM0M0CcBsTdlAoDG//bliSZMeq5
 wiD6RK3EXVW8ndpLe7RD04RGUXwsfGLuveRG+aFJtXDfoHm9Cooac9Gk7OD1ps+4oHQOXJLfpEg
 fzXjTIX6jvh6qENnfZNDPCqvKD07zcRTIv0zFLNeLhaecAzca9b+E6tbfz+nFufifY4/7YETJIq
 dyQAblusT9LDXoscpY1FIOCMN2C0GusS5RXXi1sj8XTCvyWNVT0Rk4IhkeQ=
X-Received: by 2002:a05:6512:258a:b0:5aa:4c72:8732 with SMTP id
 2adb3069b0e04-5aa5907530fmr35641e87.10.1780007743102; Thu, 28 May 2026
 15:35:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
 <ahjBbUwF_8jcXKHY@google.com>
In-Reply-To: <ahjBbUwF_8jcXKHY@google.com>
From: Ray Juang <radford@google.com>
Date: Thu, 28 May 2026 15:35:04 -0700
X-Gm-Features: AVHnY4LLBzoQhstbNlLSXedrI8TTDb0rZTJCtsYcYczc_kkW95WhWrmsyePM5m4
Message-ID: <CAJ4HTqXaeWZ_1s0+m8SrY7V7YGAxwqG69xO6GHSSXdUiEuuokw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] More Fixes for color pipeline
To: Brian Geffon <bgeffon@google.com>
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com, 
 uma.shankar@intel.com, pranay.samala@intel.com, gildekel@google.com, 
 seanpaul@google.com
Content-Type: multipart/alternative; boundary="0000000000003a027e0652e85917"
X-Mailman-Approved-At: Mon, 01 Jun 2026 14:40:34 +0000
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DATE_IN_PAST(1.00)[88];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[radford@google.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bgeffon@google.com,m:chaitanya.kumar.borah@intel.com,m:intel-xe@lists.freedesktop.org,m:ville.syrjala@linux.intel.com,m:uma.shankar@intel.com,m:pranay.samala@intel.com,m:gildekel@google.com,m:seanpaul@google.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.165];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[radford@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 859D86210A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--0000000000003a027e0652e85917
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks! We've tested the patch series in
https://patchwork.freedesktop.org/series/166293/ and confirmed that they
resolve a severe memory leak contributing to 100-120 kb/s memory growth
during animation or video playback. We also confirmed in our IGT test suite
that the tests pass when the patches were in place. It would be helpful if
we can get the patches in.

On Thu, May 28, 2026 at 3:28=E2=80=AFPM Brian Geffon <bgeffon@google.com> w=
rote:

> On Mon, May 11, 2026 at 11:02:09AM +0530, Chaitanya Kumar Borah wrote:
> > v3:
> > - Re-arrange patches
>
> We've been impacted by this on PTL devices. Ray has tested and can
> provide more details.
>
> In the meantime can we ask that a maintainer take a look?
>
> >
> > v2:
> > - Make dependency on atomic state more explicit (Ville)
> > - handle blobs in hw state clear
> >
> > Chaitanya Kumar Borah (4):
> >   drm/i915/display: Copy color pipeline from plane in the primary joine=
r
> >     pipe
> >   drm/i915/display: Don=E2=80=99t use atomic state back-pointer to deri=
ve color
> >     pipeline
> >   drm/i915: Avoid programming color HW blocks for NV12 Y planes
> >   drm/i915: Fix color blob reference handling in intel_plane_state
> >
> >  drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
> >  .../drm/i915/display/intel_initial_plane.c    |  2 +-
> >  drivers/gpu/drm/i915/display/intel_plane.c    | 77 ++++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_plane.h    |  5 +-
> >  4 files changed, 61 insertions(+), 25 deletions(-)
> >
>
> Thanks!
> Brian
>
> > --
> > 2.25.1
> >
>

--0000000000003a027e0652e85917
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks! We&#39;ve tested the patch series in=C2=A0<a href=
=3D"https://patchwork.freedesktop.org/series/166293/" target=3D"_blank">htt=
ps://patchwork.freedesktop.org/series/166293/</a> and confirmed that they r=
esolve a severe memory leak contributing to 100-120 kb/s memory growth duri=
ng animation or video playback. We also confirmed in our IGT test suite tha=
t the tests pass when the patches were in place. It would be helpful if we =
can get the patches in.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, May 28, 2026 at 3:28=E2=80=AFPM Brian Geffon=
 &lt;<a href=3D"mailto:bgeffon@google.com" target=3D"_blank">bgeffon@google=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On Mon, May 11, 2026 at 11:02:09AM +0530, Chaitanya Kumar Borah wrote:<=
br>
&gt; v3:<br>
&gt; - Re-arrange patches<br>
<br>
We&#39;ve been impacted by this on PTL devices. Ray has tested and can<br>
provide more details.<br>
<br>
In the meantime can we ask that a maintainer take a look?<br>
<br>
&gt; <br>
&gt; v2:<br>
&gt; - Make dependency on atomic state more explicit (Ville)<br>
&gt; - handle blobs in hw state clear<br>
&gt; <br>
&gt; Chaitanya Kumar Borah (4):<br>
&gt;=C2=A0 =C2=A0drm/i915/display: Copy color pipeline from plane in the pr=
imary joiner<br>
&gt;=C2=A0 =C2=A0 =C2=A0pipe<br>
&gt;=C2=A0 =C2=A0drm/i915/display: Don=E2=80=99t use atomic state back-poin=
ter to derive color<br>
&gt;=C2=A0 =C2=A0 =C2=A0pipeline<br>
&gt;=C2=A0 =C2=A0drm/i915: Avoid programming color HW blocks for NV12 Y pla=
nes<br>
&gt;=C2=A0 =C2=A0drm/i915: Fix color blob reference handling in intel_plane=
_state<br>
&gt; <br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_cursor.c=C2=A0 =C2=A0|=C2=A0 =
2 +-<br>
&gt;=C2=A0 .../drm/i915/display/intel_initial_plane.c=C2=A0 =C2=A0 |=C2=A0 =
2 +-<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_plane.c=C2=A0 =C2=A0 | 77 +++=
+++++++++++-----<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_plane.h=C2=A0 =C2=A0 |=C2=A0 =
5 +-<br>
&gt;=C2=A0 4 files changed, 61 insertions(+), 25 deletions(-)<br>
&gt;<br>
<br>
Thanks!<br>
Brian<br>
<br>
&gt; -- <br>
&gt; 2.25.1<br>
&gt; <br>
</blockquote></div>

--0000000000003a027e0652e85917--
