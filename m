Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GS4OvNtlGk0DwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 14:32:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F24614C9D6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 14:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0AF10E24E;
	Tue, 17 Feb 2026 13:32:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XV+i1bJ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC36610E05E
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Feb 2026 16:17:18 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id
 a640c23a62f3a-b884d5c787bso246175766b.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Feb 2026 08:17:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771085837; cv=none;
 d=google.com; s=arc-20240605;
 b=djLE+jqY54/VZysGx2PKtuTis14ruGCCy/Twv0qLhd11jMlpTZautm7ySByN5ZY8EB
 knEMuGFUnz6o2LiDzyljuMhoR5uK/jl/ezpcgAQElA2T0vCI9zkerEkxK7juPJ2OmczY
 8B7t9XL7Jn2tU2pN+r6shOBBCA4MmEjRSL/Le0fj4gtmffF6Br7FS/nDsv1FsWTZQnxs
 0pZYfElHtOL0SySBIMAfEoXHMxpx7wkpNiEoO5wwb4znEi85TnB/sAZfHUeWwE8Y+8zX
 d60TM3qb5TbQOExUQlBLwRzezWZHePk8OrrlTmA+5E7e7impSTXLRBrgBCJq5Hk4kCOf
 y6lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=3jNf5hA3G7dX7rUPtYDRMnLMnt9ZofhzHc3WPWH09/U=;
 fh=czW7el4Z2XOdzLicHWCDOG6HWNQUynYMSP2ybsEugLY=;
 b=h7NS5h0STBFq0aYyk/GBic/qIoOIN6LnGkI6w6KwsJAID0gdEO8OWFyW4dKPTRWmQV
 JemUY8VOcKOAgx1I5XMK4DmbFioKxmiHNV3xLVbNNBhh2JVQHqWUAo8FAU8lEfMuLEC1
 72kvKetKoJUBPrbN2mEpsUXv7uWtJUZ0FWk/w73d5ow9Oar2SN61cN+f2cJLt6klQCkC
 yGZuYOJzYkm0X40LZt0/ZMYbUknMAy9EnmMl+gH0gHtlQWZqChojy/Pn+S5GRKbNxq7O
 4urir0ogc8L1Qe4pgiLOoU0XEHWrYjEdBcjp6yoK/jHVJIneS3SAx44Dbc1Bm1LEXF9o
 XoFQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771085837; x=1771690637; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3jNf5hA3G7dX7rUPtYDRMnLMnt9ZofhzHc3WPWH09/U=;
 b=XV+i1bJ11oZShNmJpWD7tflHrrOhkEWmm6OgfqYjdD6fJO736pr3W0j9Zsjq5ivgPO
 S8axtg5r0MDaSu6KunHUEYeVEjPWwL0tVcp8tiAkhm7yFzZm7JKpd1POqx8HnSlh1dnG
 s/xum4mw4FIGcMbwK7UGHIk9Fi0E8AWVnyZMZ5CHaUxJVfiitrYIoeMqdHbVSPdwci3r
 H9GnywvF1p0zp2UBw2rmZCmftNcwjKPCztNiF0djzH22zqkjnYdfa+Dmh9bWcduhbcUZ
 XIn7s79sR8FkXTdUv33aPEH9JfooQXlSKTt49842qliA3Bu9tCF+4PCDfE7TaICnKTYR
 sU9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771085837; x=1771690637;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=3jNf5hA3G7dX7rUPtYDRMnLMnt9ZofhzHc3WPWH09/U=;
 b=Gp2jsZl/AtUkyB2xBEbMXvcgEu8j+M+gAqbq12OgwgxkoRCWn8u9Dpad6n4lXt2mZ6
 SG1tAvRI5LVKLs0a5VVZYcL69pcX8ub/DXscxjwDOz7JN4mDxEkAbo+p8f7LC1OWsB5u
 adz2I3QD+86BCwmbF6C0DI2wliZJFLZbCGFyUVRZ0AjoR/NyqeKnOJb4scLODaOvIgeA
 fhvjcSc920ZCeLaH1AK8ccFhY3K9wn4a9SRINgjZ9W2D3RhFjOEg5VjS4JLTjxByF36C
 CNiweNHFXvQbc7CrowryQ+V/3+IQyYntBIIi6qzpNdFMarOXET4EOHPJtIZC9TSAjFBl
 k9dw==
X-Gm-Message-State: AOJu0Yw3CoF8Ygo0y4QvAh/UtrwEe9C0Dj3Di3tY6/kTU3j7gTwf5/9t
 HCTobWpqtFC3B6B/SnPuMXcKC5cwfbpnYMF4R0tREssSEod4VZtBC5wwcHEZWZ6GeOOPkEgJzNI
 DYwBCffIKJgQhGD/c2OYREFloD9fFPWnB246LrxdMSA==
X-Gm-Gg: AZuq6aLUhkHf6EBFI1WIkIzH9YcGfEIcLwhPQGp824k6d1IIUm+E/+0fLGVdBR1X4vj
 HuBgMTfZ/84AElaYdPKp/SPJzDEYt7ZhL4DWxttjqBlKhlev0etyAlbqujQjtt4UHZi18ZJTBZ4
 4CN2D917x+gddAPyVrOTtYECfePQ3HsKsG5VtxIE5wt/oCMo2zyxYXmh507wM7HlRvf+71SpEiB
 IMw7V9vOHBYKSl+YM43NCGDdpNqTJfb95Scxm0xP7EK36GOVfgNBASzCj8ikwdqFuiOqgdJOn1s
 I1zI
X-Received: by 2002:a17:907:961f:b0:b87:1e94:ef6a with SMTP id
 a640c23a62f3a-b8fc3cb95b1mr139267166b.47.1771085836705; Sat, 14 Feb 2026
 08:17:16 -0800 (PST)
MIME-Version: 1.0
References: <CADN_a6Ne4Vr6knCXdKtCnB8=et6OK7PEZ8F5bpyGamwyv1K9GA@mail.gmail.com>
 <CADN_a6O6-iL+BS+0gy_AisiJTYQ6NGqSKXv608MxxETCawD0jg@mail.gmail.com>
In-Reply-To: <CADN_a6O6-iL+BS+0gy_AisiJTYQ6NGqSKXv608MxxETCawD0jg@mail.gmail.com>
From: =?UTF-8?B?SsOpcsO0bWUgVG9sbGV0?= <jerome.tollet@gmail.com>
Date: Sat, 14 Feb 2026 17:17:05 +0100
X-Gm-Features: AZwV_QgoPtJoqfTQwqXeF7vwHMzD8Jj5TCuQtbCQbOhcp5vKNM8SP_YYAiwmjg8
Message-ID: <CADN_a6NjO=x=bn=yTMJcgbb41_HUAHMS3G5U3jD20TyLvmGHRw@mail.gmail.com>
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 17 Feb 2026 13:32:31 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.60 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DATE_IN_PAST(1.00)[69];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 3F24614C9D6
X-Rspamd-Action: no action

Hi Ville, Ankit,

Update on testing (Feb 14):
After isolated testing of each patch on kernel 6.18.7, I can now
definitively confirm:

- SCDC polling patch ALONE: Works perfectly =E2=9C=93
- delay patch (150ms) ALONE: Screen remains black =E2=9C=97
- Both patches together: Works (but delay is unnecessary)

This definitively answers the question: approach #1 (Generic SCDC
polling after port enable) is the correct solution. The v2 delay patch
is NOT needed and should be disregarded.

The SCDC polling aligns with HDMI 2.0 spec requirements and Windows
behavior, making it the proper generic solution.

Sorry for any confusion from my earlier messages.

Thanks,
Jerome

Le sam. 7 f=C3=A9vr. 2026 =C3=A0 04:14, J=C3=A9r=C3=B4me Tollet <jerome.tol=
let@gmail.com> a =C3=A9crit :
>
> Hi Ville, Ankit,
>
> Gentle ping on this thread - it's been about 10 days since my last
> message in the thread (Jan 28).
>
> To recap, we have three potential approaches for this fix:
> 1. Generic SCDC polling after port enable (current patch) - aligns
> with Windows behavior
> 2. Panel-specific quirk for affected displays (Cisco Desk Pro in my case)
> 3. Fixed delay after SCDC config (my v2 patch from Jan 14)
>
> Testing showed the delay works at any placement in the modeset
> sequence, suggesting this is a timing issue rather than
> operation-specific.
> I'm happy to implement whichever approach you prefer. Please let me
> know which direction you'd like me to take this.
>
> Thanks,
> Jerome
>
>
> Le mer. 28 janv. 2026 =C3=A0 15:42, J=C3=A9r=C3=B4me Tollet <jerome.tolle=
t@gmail.com> a =C3=A9crit :
> >
> > Hi Ville,
> > Following Ankit's response on January 21st where he suggested
> > considering a panel-specific quirk instead of a generic solution, I
> > wanted to get your input on the preferred approach.
> > As a reminder, testing showed the delay works at any placement in the
> > modeset sequence (all 4 test positions succeeded), suggesting this is
> > a timing issue rather than being tied to a specific operation.
> >
> > Three approaches are available:
> > 1. Generic SCDC polling after port enable - aligns with Windows
> > behavior which also performs ~200ms SCDC poll post-enable
> > 2. Panel-specific quirk for affected displays (Cisco Desk Pro in my cas=
e)
> > 3. Fixed delay after SCDC config (my v2 patch from Jan 14)
> >
> > I'm happy with any approach that gets merged.
> >
> > Thanks
> > Jerome
