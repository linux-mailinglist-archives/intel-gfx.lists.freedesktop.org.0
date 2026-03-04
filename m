Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EC1kBG2np2kHjAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 04:30:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBC81FA5AD
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 04:30:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D8E10E93E;
	Wed,  4 Mar 2026 03:30:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="uKCOzUEp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4730210E93E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2026 03:30:49 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-65f767a8d62so10949878a12.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Mar 2026 19:30:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772595048; cv=none;
 d=google.com; s=arc-20240605;
 b=Xs75Nog1WuW7FPPcfamJRKMIuP22DIqpdj0gBWHi6B+LjnZjZL1gveh3LW3W/NhqfH
 386wU/kfjGFOskJE76pPRftmMjr4uBtaw0aht4PN4oraZb3cqi7YFvNV9GVwWcl45OOB
 vLLRU2bZd80Rqn7kY2NEdT1nJc6CVHDmgURvAO4dMxm7hXvD6UhwtNdwXRYHkrfLk/pa
 E7m9WjWzvFYcU4eCxJ0RRXIMXqMls2I44FU5H3P+aQEFwhAlDPyNhmC3ujj0DStwJwGC
 5hrkCXCVz8RWCNls3w6L1Rnm2tMOTaFF7yUbaF9VrzSjwx7cDBH2ro2WdQ2VCJ85gOSl
 iczg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=ryGl1nXaGybAiQ6N6tjuOaKs488ssmMuT4iLVEHz2v8=;
 fh=sOfLDXq/2wZtS/LClR0PB25edtszyBHN6MvrAJLmkqM=;
 b=aYtWUeG7mEn4pJsAn3KXQoEwjndkBeyCtnNTC9VrD35WOd7F2AjQR/YElgLhVDMby0
 jnjoqlcYUxwkda/GOmHO/vdoETytMmeJDDPBda9GE3GbH7V+QnxrdM1tSVvULII0t7dW
 VZqK8RTN2GCU/mg928W34fc5XqdiZCgIi/1bXzPQ0mAaD1Rt29KmkK6BJaThzwjKx8Vu
 AlFqoxenFvpKEvKXhfl7PS4HGeTXWEhVvjXt7cVXGEj426XyVV9EIQWjnppdL2LXoOgF
 +rDVHfJf6lfZo76BB5BD2/mdppIhc5wg/aiIE0BMB7ef8Lk8hZ6BCJBK43iEgOlnR0z8
 +lUQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1772595048; x=1773199848;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ryGl1nXaGybAiQ6N6tjuOaKs488ssmMuT4iLVEHz2v8=;
 b=uKCOzUEp8xotpKWrjy23fc7sq8aStUc36LdQiZGWRgONhqBrMTfmN/wzBelYmwt0fg
 KdAQGZWQf45UhQPy/U39bVivM1sS7c2vwBXSYf6wtPZexgSRnVAYAcYiT54bMwwGIQ6m
 IlwYWTGcUJz39fKkbRsDa88cfFr6/L9HBglsGtjxM+PiWGvDHuxVwICFp7TQ2Kng2XeD
 BDupgUQsfMiMhTX7zAhloxJQIj7CTL7pvLSNtfImiY4FUtvyi8q7B/T+4xzEpnfvH/jJ
 +4BHZxEsCpX7aBv558MgYNBbrO5J2X20jrFX7frAoVB/3bnyeQi5huIW57yTdRr147xI
 J9nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772595048; x=1773199848;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ryGl1nXaGybAiQ6N6tjuOaKs488ssmMuT4iLVEHz2v8=;
 b=j21b5O8ZWFP4j+l2I0nQYKG0oYz7tL9EqHL3ESHdaQi/1adsEhyloJJiDk8vU8nNou
 5VA5MItzpVpJt4dQkFT+cq62GbuIq8LP9AbXmOHZTYi9zBiV42n/DL8Ae2d5EhEtkEex
 ATs23eeEQ8IgGzsXjsnXfXS/17H61HBUaRpQMcS249NytEnrWJHoc4Awj9FObY6/p4Qh
 IIHDFYDzQbcX7wB7vTWQO4ivle0Q1sObQAbTwvuTnOToMYhSG7EzdVGmZQNi31WKz2a5
 8BKxK7viunUNBhf787c/DjH9jQBEjvNNagpPXoyJg0eylKEOklA2omlThBXXoQ9HDW81
 qFhw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVXLbNpfJGquFA394bFlSENTS6BPs9MEilsYQqUlu/lCkSZ0fXTTHXDlJvqF3cpvKpWjUz9AlxXUCI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzbj+BW9C+ZLhWzvCi94Mz0sAF5roxW/XVYbh+KfEYAV4QWXAm/
 9IUCePK4/twJwEqktfl0HU84A2vS9GknK5Llv8MGlG36edfMYwWymFGgeP0+eJysJo2/+pDy0QR
 FfR6Gw7QteLr/f6hZbGX/WwaLJ52FRyoOMGAsI0oK
X-Gm-Gg: ATEYQzxUFFaZfI6AH/TrVPntmFoJ6wNjSy8eYJDz6wZLdfU/2J+5BqSrSlyH+BN+46b
 /lXgRRj+B8xUwAtmsiSz6Kadqeqyhc1aGcUJp3hkQdgCXs4H56vuoNbtTHRH+1zSODl8uFWVA3R
 gX2EcieIq1loDYGVw7+STNaZxJQ2h43OXnjE834gC1vXlQzeJkBUZRb7rrSLMPwa8BwbdjaOJv/
 3jugtfnC16cXkNJh3/7W/e8+d3jWK00+3wssdgOd2SylaOWBGogX/LYGCNxE8pRKgxjvMdAIHa4
 VFDagBKazyh/tD2iu11wXN+sq5JNjRehgvWxjbTtUIazzaOLt3UJLjCAZqaauVqLhy36BA==
X-Received: by 2002:a05:6402:f03:b0:660:a76c:27ab with SMTP id
 4fb4d7f45d1cf-660f02d38d7mr132287a12.23.1772595047293; Tue, 03 Mar 2026
 19:30:47 -0800 (PST)
MIME-Version: 1.0
References: <20260121204705.432290-1-jdsultan@google.com>
 <20260121204705.432290-3-jdsultan@google.com>
 <19ddb0a9aa900c51759cfa62b66bcbf079c4dde8@intel.com>
 <CAH6Pru4+nGqBf0y4ZJxPhB19SSUih1+k+4UUSyxnCQT2KMfw8g@mail.gmail.com>
 <CAMNLLoR6dVmYvGn66jsNobLgJzsck2rZ=LghA7zuaA-aKCn1BQ@mail.gmail.com>
 <f8096b857e6c0a24f32c1eb6479d95b0dbb4adad@intel.com>
 <CAMNLLoS2Yg+2EssW-ykXcKSfV7v2sYq-zcwFUYhKM+ErLTVc8w@mail.gmail.com>
 <CAMNLLoSf4gyiQpi7D=yGwcGkR7X9EZqXmP+CJKrFcgjkDhPXQA@mail.gmail.com>
 <bc56a6bc956aaef264946d6fe68296a564ba231d@intel.com>
In-Reply-To: <bc56a6bc956aaef264946d6fe68296a564ba231d@intel.com>
From: Juasheem Sultan <jdsultan@google.com>
Date: Tue, 3 Mar 2026 19:30:36 -0800
X-Gm-Features: AaiRm50Ej5XtiKVjaXcbcVdwvo79LiJaXNgskOv1vepYshqY6vxSYfGZAXkbBds
Message-ID: <CAH6Pru5f1ytE9X46W0Vau=YQHktHmrjdKaqYCW53o9fUPV=hOw@mail.gmail.com>
Subject: Re: [RFC PATCH v3 2/2] drm/i915/display: Synchronize crtc_state for
 initial commit
To: Jani Nikula <jani.nikula@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: Manasi Navare <navaremanasi@google.com>, intel-gfx@lists.freedesktop.org, 
 intel_xe@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Drew Davenport <ddavenport@google.com>, Sean Paul <seanpaul@google.com>, 
 Samuel Jacob <samjaco@google.com>, Rajat Jain <rajatja@google.com>,
 ville.syrjala@linux.intel.com
Content-Type: multipart/alternative; boundary="000000000000206342064c2a7216"
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
X-Rspamd-Queue-Id: 2EBC81FA5AD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:jani.nikula@linux.intel.com,m:navaremanasi@google.com,m:intel_xe@lists.freedesktop.org,m:rodrigo.vivi@intel.com,m:ddavenport@google.com,m:seanpaul@google.com,m:samjaco@google.com,m:rajatja@google.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email]
X-Rspamd-Action: no action

--000000000000206342064c2a7216
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi @Jani Nikula <jani.nikula@linux.intel.com>

Thank you for the clarifications. I've investigated the issue and
determined the source of the discrepancy between the driver and firmware
set display state. Firstly, it appears userspace issued a commit that
completely cleared the screen. This explains why we saw all 0s without my
changes. I have fixed that on our side, so I shouldn't have to worry about
that when debugging.

You can do a lot of debugging based on just looking at the debug output
> for the state comparison where we decide a fastset (and in this case
> fastboot) is not possible. Where does the differing info come from? Is
> there a readout in place? Is something completely zero in the readout,
> or are there minor differences? Do you get fastsets on the second and
> subsequent regular modesets? Etc. Etc.


We can commit the state that's originally read from the hardware. When
userspace attempts its first commit, the PLL state and clock that the
driver calculates differ slightly from what the BIOS has set. This is
causing us to modeset. I slightly modified how the pll state was calculated
and added a small tolerance to the clock comparison; this fixes the issue,
making the state seamless, but I'm not sure exactly how this should be
solved. In order to avoid publishing any potentially secure information, I
have created an internal bug where we can discuss exactly how to resolve
this.

On Tue, Mar 3, 2026 at 1:44=E2=80=AFAM Jani Nikula <jani.nikula@intel.com> =
wrote:

> On Mon, 02 Mar 2026, Manasi Navare <navaremanasi@google.com> wrote:
> > Hi @Jani Nikula <jani.nikula@intel.com> :
> >
> > Before we file a fdo issue with complete debug logs to understand what
> the
> > FW is setting up the HW at, I wanted to understand a few more things in
> > terms of the final solution:
> >
> > -  Ideally if the FW is setting up the initial state or programming the
> HW
> > registers for the initial splashscreen, for the initial commit when we =
do
> > the HW state readout, it should have the HW values programmed to some
> mode
> > parameters
> > -  Then like you suggested, we would need to read out the HW state
> > - Could you elaborate on "1) reading out the hw state to sw
> > state? - Does that mean do the HW state readout and compute
> > pipe_config/crtc_state for that?
> >
> > - Then add some sanitization to have this computed pipe_config that wil=
l
> be
> > programmed to the HW
> > - Then ensure that both are same so that the intel fastset logic can
> apply
> > fastset?
>
> Let's start with the regular modesets, ignoring the probe for a bit.
>
> For every modeset, we have the old (current) state and the new
> state. These are both software states. We compare the states to
> determine whether a full modeset is required or not. This is mostly
> dependent on what the hardware can change on the fly. If we can bypass a
> full modeset, we call it a fastset.
>
> We write either the full new state (modeset) or just the changes
> (fastset) to the hardware, and the new state becomes the old (current)
> state.
>
> After that, we read back the hardware state to verify we did everything
> right. This is the state checker. The comparison is done using the same
> functions as for determining whether a full modeset is required.
>
> Rinse and repeat.
>
> At probe, we obviously don't have the old (current) software state. We
> create it by reading out the hardware state, using the same mechanisms
> as in the state checker. We call it the inherited state. We do the
> initial commit with that.
>
> Then we arrive at the first userspace/client initiated modeset. It goes
> through the same paths as the regular modeset. If we can get away with a
> fastset, we call it fastboot i.e. no full modeset at boot.
>
> That's the basic idea, anyway. Now the caveats.
>
> Sometimes GOP (or whatever pre-os) ends up using slightly different
> parameters for the same mode than the driver. Or we might not be able to
> read out everything. Or we lose accuracy in the sw->hw->sw changes. Or
> the pre-os enables stuff that it doesn't even use or care about. We
> wiggle around those issues using sanitization or ignoring small
> differences or simply bypassing some parts on the first modeset.
>
> Obviously, if there are gaps in the state readout in the first place,
> the inherited state will be incomplete, and likely leads to a full
> modeset. (And we also miss out on the state verification of those
> parts.)
>
> If the GOP (or pre-os) sets a mode, and the first modeset requests a
> completely different mode, you can't have fastboot either.
>
> The thing we absolutely can't do is what patch 2 here does. We can't
> simply copy over stuff from one state to another, and hope it works. It
> might appear to work by coincidence in some cases, but it is all
> wrong. It ignores the computed modeset parameters for the new state,
> even if userspace tries a completely different mode. It bypasses the
> comparison for whether a full modeset is needed or not. It's not
> discretional, it depends on what the hardware can change on the fly, and
> it's undocumented at best what happens when you try to change such
> things without a modeset.
>
> You can do a lot of debugging based on just looking at the debug output
> for the state comparison where we decide a fastset (and in this case
> fastboot) is not possible. Where does the differing info come from? Is
> there a readout in place? Is something completely zero in the readout,
> or are there minor differences? Do you get fastsets on the second and
> subsequent regular modesets? Etc. Etc.
>
>
> HTH,
> Jani.
>
>
> --
> Jani Nikula, Intel
>

--000000000000206342064c2a7216
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0<a class=3D"gmail_plusreply" id=3D"m_-666324136213=
3333357plusReplyChip-0" href=3D"mailto:jani.nikula@linux.intel.com" target=
=3D"_blank">@Jani Nikula</a>=C2=A0<div><br></div><div>Thank you for the cla=
rifications. I&#39;ve investigated the issue and determined the source of t=
he discrepancy between the driver and firmware set display state. Firstly, =
it appears userspace issued a commit that completely cleared the screen. Th=
is explains why we saw all 0s without my changes. I have fixed that on our =
side, so I shouldn&#39;t have to worry about that when debugging.=C2=A0</di=
v><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">You can =
do a lot of debugging based on just looking at the debug output<br>for the =
state comparison where we decide a fastset (and in this case<br>fastboot) i=
s not possible. Where does the differing info come from? Is<br>there a read=
out in place? Is something completely zero in the readout,<br>or are there =
minor differences? Do you get fastsets on the second and<br>subsequent regu=
lar modesets? Etc. Etc.</blockquote><div><br></div><div>We can commit the s=
tate that&#39;s originally read from the hardware. When userspace attempts =
its first commit, the PLL state and clock that the driver calculates differ=
 slightly from what the BIOS has set. This is causing us to modeset. I slig=
htly modified how the pll state was calculated and added a small tolerance =
to the clock comparison; this fixes the issue, making the state seamless, b=
ut I&#39;m not sure exactly how this should be solved. In order to avoid pu=
blishing any potentially secure information, I have created an internal bug=
 where we can discuss exactly how to resolve this.=C2=A0</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 3=
, 2026 at 1:44=E2=80=AFAM Jani Nikula &lt;<a href=3D"mailto:jani.nikula@int=
el.com" target=3D"_blank">jani.nikula@intel.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">On Mon, 02 Mar 2026, Manasi =
Navare &lt;<a href=3D"mailto:navaremanasi@google.com" target=3D"_blank">nav=
aremanasi@google.com</a>&gt; wrote:<br>
&gt; Hi @Jani Nikula &lt;<a href=3D"mailto:jani.nikula@intel.com" target=3D=
"_blank">jani.nikula@intel.com</a>&gt; :<br>
&gt;<br>
&gt; Before we file a fdo issue with complete debug logs to understand what=
 the<br>
&gt; FW is setting up the HW at, I wanted to understand a few more things i=
n<br>
&gt; terms of the final solution:<br>
&gt;<br>
&gt; -=C2=A0 Ideally if the FW is setting up the initial state or programmi=
ng the HW<br>
&gt; registers for the initial splashscreen, for the initial commit when we=
 do<br>
&gt; the HW state readout, it should have the HW values programmed to some =
mode<br>
&gt; parameters<br>
&gt; -=C2=A0 Then like you suggested, we would need to read out the HW stat=
e<br>
&gt; - Could you elaborate on &quot;1) reading out the hw state to sw<br>
&gt; state? - Does that mean do the HW state readout and compute<br>
&gt; pipe_config/crtc_state for that?<br>
&gt;<br>
&gt; - Then add some sanitization to have this computed pipe_config that wi=
ll be<br>
&gt; programmed to the HW<br>
&gt; - Then ensure that both are same so that the intel fastset logic can a=
pply<br>
&gt; fastset?<br>
<br>
Let&#39;s start with the regular modesets, ignoring the probe for a bit.<br=
>
<br>
For every modeset, we have the old (current) state and the new<br>
state. These are both software states. We compare the states to<br>
determine whether a full modeset is required or not. This is mostly<br>
dependent on what the hardware can change on the fly. If we can bypass a<br=
>
full modeset, we call it a fastset.<br>
<br>
We write either the full new state (modeset) or just the changes<br>
(fastset) to the hardware, and the new state becomes the old (current)<br>
state.<br>
<br>
After that, we read back the hardware state to verify we did everything<br>
right. This is the state checker. The comparison is done using the same<br>
functions as for determining whether a full modeset is required.<br>
<br>
Rinse and repeat.<br>
<br>
At probe, we obviously don&#39;t have the old (current) software state. We<=
br>
create it by reading out the hardware state, using the same mechanisms<br>
as in the state checker. We call it the inherited state. We do the<br>
initial commit with that.<br>
<br>
Then we arrive at the first userspace/client initiated modeset. It goes<br>
through the same paths as the regular modeset. If we can get away with a<br=
>
fastset, we call it fastboot i.e. no full modeset at boot.<br>
<br>
That&#39;s the basic idea, anyway. Now the caveats.<br>
<br>
Sometimes GOP (or whatever pre-os) ends up using slightly different<br>
parameters for the same mode than the driver. Or we might not be able to<br=
>
read out everything. Or we lose accuracy in the sw-&gt;hw-&gt;sw changes. O=
r<br>
the pre-os enables stuff that it doesn&#39;t even use or care about. We<br>
wiggle around those issues using sanitization or ignoring small<br>
differences or simply bypassing some parts on the first modeset.<br>
<br>
Obviously, if there are gaps in the state readout in the first place,<br>
the inherited state will be incomplete, and likely leads to a full<br>
modeset. (And we also miss out on the state verification of those<br>
parts.)<br>
<br>
If the GOP (or pre-os) sets a mode, and the first modeset requests a<br>
completely different mode, you can&#39;t have fastboot either.<br>
<br>
The thing we absolutely can&#39;t do is what patch 2 here does. We can&#39;=
t<br>
simply copy over stuff from one state to another, and hope it works. It<br>
might appear to work by coincidence in some cases, but it is all<br>
wrong. It ignores the computed modeset parameters for the new state,<br>
even if userspace tries a completely different mode. It bypasses the<br>
comparison for whether a full modeset is needed or not. It&#39;s not<br>
discretional, it depends on what the hardware can change on the fly, and<br=
>
it&#39;s undocumented at best what happens when you try to change such<br>
things without a modeset.<br>
<br>
You can do a lot of debugging based on just looking at the debug output<br>
for the state comparison where we decide a fastset (and in this case<br>
fastboot) is not possible. Where does the differing info come from? Is<br>
there a readout in place? Is something completely zero in the readout,<br>
or are there minor differences? Do you get fastsets on the second and<br>
subsequent regular modesets? Etc. Etc.<br>
<br>
<br>
HTH,<br>
Jani.<br>
<br>
<br>
-- <br>
Jani Nikula, Intel<br>
</blockquote></div>

--000000000000206342064c2a7216--
