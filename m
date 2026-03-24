Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OD+kIMrNw2nuuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AEF32451F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08D310E84B;
	Wed, 25 Mar 2026 11:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BOIKy0Hq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6567110E46D
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 15:25:16 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id
 46e09a7af769-7d86eb7c854so1653169a34.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 08:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774365915; cv=none;
 d=google.com; s=arc-20240605;
 b=c/xsgy34349MxWjbIVcjV3S11iN8+fOHL+Z6vFaxo9wpeKxP/Tjgo6dlyUXMMeJCYK
 nVjE8yTH0+cRZNGEtXFdTd2SlzeOFRDDCOE+4R+tjLS5ZQRp1l9ViH/nyREDQvlarjZr
 kspH21S6BQiov+fbgrWvw7enp8sCERTtO1qokdnsLkehIh28GtqgClf8ZL0zAS8ew0lw
 N/suFtq0pakYYyARErqUucnu59Z1fRsuPzk3/1fKrhVj+alzwVgl5SWhkeOwfRMAt+CN
 4eRYaFG0TkcgUzt4zkS0oQ+VlPK2r1PLMaarJUZve1gdRo39B/330vky8dqVYztSECaH
 XH0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=78gt4XbE5gr87wJ+BUcItfOZrERhh/qfudLzZxvoiGI=;
 fh=t7VpN6WMhD3AbUOkfNaORR58zNSibwiBVzyOMyzecjY=;
 b=KlRENtL+Q3y9EIIISMBbR3VcggV24IXAkyO77sapwldQ0eRG5kpq9O8ojctnJPwKmg
 ncSk8a4pIa4C7qs7etlLa/AqCCh5Gu20rMArT1dVRanDaL7UDGzKsP+oFMbsnWlp8wBX
 DcihK34LvgDPDcTACO36qMhAZlgN5my/5Ljcw3ftSVeYhZRqkU9ncTIi9Liiy5vmYDm0
 MaNHL9pvWiB0EFmUSsLV28pGAUjvGg3V0Lda4qnF1zxZPZRQIxzJnq0VkZGpI+0Evmka
 f89PTULUveTuKzOfHIQUUUfm+LAUSjhGvRMbAHLTzfROpW5B0hNRNQeVLzhXGMcM4pWk
 PenA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774365915; x=1774970715; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=78gt4XbE5gr87wJ+BUcItfOZrERhh/qfudLzZxvoiGI=;
 b=BOIKy0HqcPK6cnqqE8IhLcgQiT3kiOTk7pG+rt8kIrr5f2cQdi7MXcKBQoudZzIyZx
 ep4490Uk4e0BIlGyi9R7TZySMe4UJ24W8zu2RK4U5k4pt2egz9Qa8bckbdkCxOEX0ORJ
 Oi/KnrqHsvQghrCrlYRHyQRjxLxZ5xuStiG2PKP4lq/vbKVifFzyxxNQYNr5rIEC4P9W
 n2D0duI41bXQv6ak6Zj8DFr39C/85a4SWQyVNeEcyTeubPe7R1IMvaUr5dxmaMSP59S0
 k7feuieG5BAbj9iwjIwzKQe0vuUJVWgq4qg+RjPkl8HbMZDMTBj7Me9bVJlfG3qbUr9B
 DX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774365915; x=1774970715;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=78gt4XbE5gr87wJ+BUcItfOZrERhh/qfudLzZxvoiGI=;
 b=mExXuck3bOhN81fAaKCCSc4kdyYv5CbOaBNeiUGK5m42Zv6k1ruhz3v5ujafZFq7N1
 X3WvJOo14K1YdG00WGXWz5jhOsFWEYzuM7y0jncWJ5TdF0h34Dm4QKZACZKzBkgOqBFd
 ZmS36/J+oMwPcCs73gqALQvSpqxjEZxHwsA5HNeGuXNAxpb+p4QDYVPtwgaaYUWDjA+X
 k9iLHX03JtngySbSDi4DZ1z6RCwlSZiItFowc8/zefZfh/splGlF9SbAUO4gYdfVTXkQ
 SVwd7WFH+E9NavueYTb3+hL98f6u5R8TFQ98vRAMO0EQGJoT8Gv33s/taCubNl6pAxLU
 hdBA==
X-Gm-Message-State: AOJu0YzybT1ZKb/Z0aPX0Lb4ddWgwUdxnWdwFamQiMKd/iSNiOBphlac
 UvxjhNYbUv4+fCD98KWlPe1kJ/u4Mn0Gs9Zg6iS94Z6l/FBHgr7WGnbRow5I7w94UN6jHL1DXlO
 7vDMdLmTef7Xpxa7zhr7cr9noTKrMw5I=
X-Gm-Gg: ATEYQzwFDebm6ECnXSuhLOcts1pSzghDVz6R7Al1NMa7ClGHdg/5cUFiXaaWyIicBRS
 8gLQFe03VBK9RT4zc8eTXCkmzBwZKxMLrPt0KszEyW+5qY0xFKCrcpRGfFqNS+gzvTXUVGOPiB/
 vQXEZ58dVCkeaPAjaXwZq9CLiChGHb1CFmOPSOvE1ufqaGXarNdVDLJSvdNAln17FB7QuGT6eML
 y8xuay2D6pHTt5eFxz00gKOVA+gHL3zJIJQcUzFERYvEdpVn3vlzRG/qOtmrmZedU2JDJ246hL4
 k04PH3+D
X-Received: by 2002:a05:6830:2a94:b0:7d9:4bb3:1e6a with SMTP id
 46e09a7af769-7d94bb32583mr6660782a34.26.1774365915466; Tue, 24 Mar 2026
 08:25:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260324134718.27331-1-sosohero200@gmail.com>
 <2026032453-depletion-various-b39f@gregkh>
 <CANq=4mC4ppxPYShPdQiZ6k44v5oue+NhcY8qXYBV6kEgoSWgiQ@mail.gmail.com>
 <2026032401-margarine-aching-0c76@gregkh>
In-Reply-To: <2026032401-margarine-aching-0c76@gregkh>
From: Yassine Mounir <sosohero200@gmail.com>
Date: Tue, 24 Mar 2026 11:25:03 -0400
X-Gm-Features: AaiRm521ooc4CSeyqPbcwUk6Wa0k2_NHy-oQjzFB7s9Iaza018rX-zuDuxGZ6Sw
Message-ID: <CANq=4mA+s_EkMhy360+Pd=i7-EF_3P+6VNBJSCdjrWarK8di6Q@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: Fix UAF race between relocation and GEM_CLOSE
To: Greg KH <gregkh@linuxfoundation.org>
Cc: intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com, 
 security@kernel.org, rodrigo.vivi@intel.com
Content-Type: multipart/alternative; boundary="00000000000017d19d064dc6c233"
X-Mailman-Approved-At: Wed, 25 Mar 2026 11:57:58 +0000
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:joonas.lahtinen@linux.intel.com,m:security@kernel.org,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 13AEF32451F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--00000000000017d19d064dc6c233
Content-Type: text/plain; charset="UTF-8"

On Tue, 24 Mar 2026 at 11:15, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Mar 24, 2026 at 10:38:24AM -0400, Yassine Mounir wrote:
> > *Hi Greg,*
>
> Hi, but please do not top-post nor send html email, that gets dropped by
> the mailing lists.
>
> > *My apologies for the confusion. I realized I was developing against a
> > distribution kernel (6.18.12-kali). I understand now why the file paths
> do
> > not match the current upstream tree.*
> >
> > *Regarding the logic: The race condition happens specifically during the
> > eb_relocate_entry call when a concurrent GEM_CLOSE drops the reference
> > count to zero. The i915_gem_object_get is intended to pin the object's
> > lifetime during this critical relocation window.*
>
> But what happens if the object is dropped right after your call to put?
> It will now be gone and not be around to work for the rest of the loop.
>
> thnaks,
>
> greg k-h
>


 Hi Greg,

You are absolutely right about v1. I have just submitted v2 which addresses
this concern.

In the new version, I moved i915_gem_object_get() to before the relocation
loop starts and i915_gem_object_put() to the common exit path ('out'
label). This ensures the object's lifetime is guaranteed and pinned
throughout the entire relocation phase, regardless of concurrent GEM_CLOSE
calls.

I also fixed the directory path and removed the Reported-by tag.

Thanks,

Yassine(toji1)

--00000000000017d19d064dc6c233
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><blockquote><p><br></p></blockquote></div=
><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, 24 Mar 2026 at 11:15, Greg KH &lt;<a href=3D"mailt=
o:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Mar 24, 202=
6 at 10:38:24AM -0400, Yassine Mounir wrote:<br>
&gt; *Hi Greg,*<br>
<br>
Hi, but please do not top-post nor send html email, that gets dropped by<br=
>
the mailing lists.<br>
<br>
&gt; *My apologies for the confusion. I realized I was developing against a=
<br>
&gt; distribution kernel (6.18.12-kali). I understand now why the file path=
s do<br>
&gt; not match the current upstream tree.*<br>
&gt; <br>
&gt; *Regarding the logic: The race condition happens specifically during t=
he<br>
&gt; eb_relocate_entry call when a concurrent GEM_CLOSE drops the reference=
<br>
&gt; count to zero. The i915_gem_object_get is intended to pin the object&#=
39;s<br>
&gt; lifetime during this critical relocation window.*<br>
<br>
But what happens if the object is dropped right after your call to put?<br>
It will now be gone and not be around to work for the rest of the loop.<br>
<br>
thnaks,<br>
<br>
greg k-h<br></blockquote><div><br></div><div><br></div><div>=C2=A0Hi Greg,<=
/div><blockquote><p>You are absolutely right about v1. I have just submitte=
d v2 which addresses this concern.</p><p>In the new version, I moved i915_g=
em_object_get() to before the relocation loop starts and i915_gem_object_pu=
t() to the common exit path (&#39;out&#39; label). This ensures the object&=
#39;s lifetime is guaranteed and pinned throughout the entire relocation ph=
ase, regardless of concurrent GEM_CLOSE calls.</p><p>I also fixed the direc=
tory path and removed the Reported-by tag.</p><p>Thanks,=C2=A0</p><p>Yassin=
e(toji1)</p></blockquote><h2></h2></div></div>

--00000000000017d19d064dc6c233--
