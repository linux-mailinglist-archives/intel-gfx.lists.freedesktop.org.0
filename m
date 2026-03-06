Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLZcLv0Xr2kiNwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 19:57:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF9F23EF5A
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 19:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B563310E5A0;
	Mon,  9 Mar 2026 18:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Qau6CML+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com
 [209.85.128.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710DC10ED4B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2026 14:03:05 +0000 (UTC)
Received: by mail-yw1-f171.google.com with SMTP id
 00721157ae682-7985ce90542so92044627b3.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Mar 2026 06:03:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772805784; cv=none;
 d=google.com; s=arc-20240605;
 b=YMoAxkboEkH3LxTqE1B6jb0OSnWPB7B0OrlflcwF208HmF1PZW2Wp1mEygnn2mJ7oy
 LZfwXuZ6n3DKHxNECOG8EhKYwnqsv7atXWl9Cf0xljXkguvo5M6KsJv0PQMtixw2UilG
 YqFDveYSfpcakpqn7S2AKg33R1R5j+Jr7ugtPoZsyXekIyFUbyRAXUBRnMxgh73yza28
 jOUK2j41b8/pp1nTQYwYetcwA11vUhgCyjbpvoAo4gNDOti3ixyAOA64BVcogMOba+q/
 glj4zTOFVpqrVS6MVdj7hpFU141eFPNMtxrBXFT0O3o7zLGJ3My42ODBrSAw7zN6bYHg
 MVIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=mKF5k211NtUeIcGa6uptRsEXiW/hV471fc5S/IDch2A=;
 fh=yEJ8s9NBm1w+uU8IEQpYE0MlgKza1AeAVXY/VUjaIRs=;
 b=FT/QgkjUrMrZDVhYcF6dZfz7NW0CN7p+uOigLgTyhVbuyHK/N1IH/ONR99n091jzQz
 mDv96zCcqVSA3SyXDkPggwh49XZ/0ybuG/vX8pc33qsdU90kWsix4k0XrwkFFUXzsqYE
 JIx5fxXZudOgP405qpdPLgSUpR+nNSZjHhfZXtd1lbseDb8zfJ1KuUkdQ3BVHOWzqwpT
 krMzUz8ubbpLT0f8/YGfx51NJRCFuf0VPYVpts1vnC9nYdSVhc/phDQsfhDdxIqnsbGp
 G3+5PiA5umxLukknsuEoFnnH+LtFmgBrqvULnwo4JV8dZINwPLCpOKRSI4C72qCcGocn
 j1/g==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772805784; x=1773410584; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mKF5k211NtUeIcGa6uptRsEXiW/hV471fc5S/IDch2A=;
 b=Qau6CML+yiU/U6ticC0YdY0ouic7E2IKjUeEDRDWliaeooXqgKBXwRJrv3CNiI0rnk
 523FzqmDHYkI5SD3TK32EoRpOQYDdQQ/0fXnFTBMqVwNPaZsEIf0k8RPYxdELFEiWh+P
 yOd1VBsksRR1FmxGt+PjwmLAmOMoX3j6IUl1cpa1geHk1VlXuOWUavX0JpkaDoIvdQI+
 NOk0r+ch64Go68HTXDhS9d28kxGlaie2JnBsy+rtQEe9ozuMJQcLJ2IURGodeRl7B+oT
 yBKgYWfMeihQIU35h3n6v5Z54s3ZrNN1eLazHlonLBNncGXtK9JE70sg6eSgBwZtWKzX
 e0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772805784; x=1773410584;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=mKF5k211NtUeIcGa6uptRsEXiW/hV471fc5S/IDch2A=;
 b=sC5mppD03gsoIF4KQ+ZSbnkVwoYer0DUGZgM09TZbdntuCbmuG659EQ5oweG2fuaa1
 ewzLDIb3FaerElYwj+cTWGVAVSGNGlCMB7re7+cGq9HMpVxqTm0rRxYoCuHd9QTTJ/8B
 3l/eJzNbGlGtmX96QV6GG5CPf93vSYCRgjmbx9xzby/twzK6kV24E2a/bJShac82iBbe
 cPtXjUd3l8o/BlpL6QtKAtG5xm4LtZN2QZRUZUlsp7ArAueyLLY9OKbx8oZ7Hqgcs/7X
 pZ13D0eM64AGAMgrqvLVjIin4JE7dZHbsWsjLH+gNQTmC3wAe/noBsd2Siya3+S8BF5M
 6oMg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVCgN2+iEPRyyIMQVcUWGi2YW86bfSZFbQdZ6OwpticgcGyIYcvCq7pQ+XBanBORWlXuA2bCgVQ5VY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwlCkWIT+YY419m9FHIgVNEmwb1aGQ+N5UjLL2kTRPmRy21ab0i
 +7zm5ufqh148JbBUTz1MnjIY6RPTX2u4ebJjSwfX5oXKXOSKY7BY7aY5gm5kigrWgczjesnUTHx
 JLcQhgF+MNn3iUMyvazh/2YKGY/i68a4=
X-Gm-Gg: ATEYQzz6CFlINOG/JVHR4mcnMKml4QpQfl1u5pqjNN9yB4KmmItE1SDqtJNiiNwy3lb
 a2jmdxjag3ZTHEJ6ngb3D28ttdttKRoYRSkY0XUFMiulRF9QkBnGOx4mR8RuQA9sy9tEO47dPTa
 vkH5B8gKojb0sGmTgiAo/NAYNHJba0HSBdjx494TciJx49bzuU5Uv3Rh+2t5gA/n3TDCp/QsnjY
 lII11NfKDMxpZRpHsNmwziRPsYgA0zf+QMHeWHbAduLAT2UJA2YD8QLlBT1XhStEtA6XBvjUR8l
 LDZQ
X-Received: by 2002:a05:690c:f03:b0:798:740f:6af1 with SMTP id
 00721157ae682-798dd6e9b55mr17942317b3.24.1772805784050; Fri, 06 Mar 2026
 06:03:04 -0800 (PST)
MIME-Version: 1.0
References: <20260306015022.1940986-1-jim.cromie@gmail.com>
 <20260306015022.1940986-4-jim.cromie@gmail.com>
 <51fed793-869b-4a5b-b90f-2ba80c13d773@kernel.org>
In-Reply-To: <51fed793-869b-4a5b-b90f-2ba80c13d773@kernel.org>
From: jim.cromie@gmail.com
Date: Fri, 6 Mar 2026 07:02:38 -0700
X-Gm-Features: AaiRm51wLCC9Sug6nG1UgnDvIstzQQFHwne8N2p7gQVCpTt4Mc1sv69X0Jjm7fU
Message-ID: <CAJfuBxxe5uJc0=nLC45JMp1dcQhyiyyyNuv06jZJX++YJaN58g@mail.gmail.com>
Subject: Re: [RFC PATCH 3/7] drivers/tty/serial/serial_core: ratelimit
 uart_wait_until_sent
To: Jiri Slaby <jirislaby@kernel.org>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Petr Mladek <pmladek@suse.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Joseph Tilahun <jtilahun@astranis.com>, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 09 Mar 2026 18:56:53 +0000
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
X-Rspamd-Queue-Id: 1CF9F23EF5A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DATE_IN_PAST(1.00)[76];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jirislaby@kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:intel-gvt-dev@lists.freedesktop.org,m:gregkh@linuxfoundation.org,m:pmladek@suse.com,m:ilpo.jarvinen@linux.intel.com,m:linux@treblig.org,m:jtilahun@astranis.com,m:linux-serial@vger.kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 11:32=E2=80=AFPM Jiri Slaby <jirislaby@kernel.org> w=
rote:
>
> On 06. 03. 26, 2:50, Jim Cromie wrote:
> > Ratelimiting these pr_debug()s can reduce the console flood during
> > bulk dynamic-debug activation, in environments where a serial console
> > is used.
> >
> > Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
> > ---
> >   drivers/tty/serial/serial_core.c | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/tty/serial/serial_core.c b/drivers/tty/serial/seri=
al_core.c
> > index 487756947a96..6db465619c70 100644
> > --- a/drivers/tty/serial/serial_core.c
> > +++ b/drivers/tty/serial/serial_core.c
> > @@ -1790,8 +1790,8 @@ static void uart_wait_until_sent(struct tty_struc=
t *tty, int timeout)
> >
> >       expire =3D jiffies + timeout;
> >
> > -     pr_debug("uart_wait_until_sent(%u), jiffies=3D%lu, expire=3D%lu..=
.\n",
> > -             port->line, jiffies, expire);
> > +     pr_debug_ratelimited("waiting on (%u) jiffies=3D%lu, expire=3D%lu=
...\n",
> > +                          port->line, jiffies, expire);
>
> The changed message does not make any sense.
>

Ackn.  Given the narrow rate-limiting purpose,
I should have ignored the checkpatch warning
and kept the message as is.

In any case, my test setup didnt actually use serio,
and didnt get flooded by it, so I dont know that this
single change would be enough to fix it.

I withdraw this particular patch.

>
> --
> js
> suse labs
