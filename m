Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFwGL1k70GmP4wYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Apr 2026 00:12:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 038F9398AD6
	for <lists+intel-gfx@lfdr.de>; Sat, 04 Apr 2026 00:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F8410E0B8;
	Fri,  3 Apr 2026 22:12:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="MB8cbVB8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93DFB10E0B8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2026 22:12:37 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-66bd4e0560fso4521679a12.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2026 15:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google; t=1775254356; x=1775859156;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bYVlZ9BrWH45Sab7lCDUUe8Uv7vpGtXKpc6xapq4sqc=;
 b=MB8cbVB8RKHto6pwci1b/HQuTQMB6Fudsr3xMfb7fGDYCE1zVs3T3C75+WXG2ojlJM
 3s3KYkgS9+towsCeuFiU2kWjDLlTUj1wmzDZvXZ7L3M6W6ZZmTeVHfx+80HND6CPSW8A
 cMFdVnAU8A8njBB0cT0gXlLgjK/1e03aG3RzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775254356; x=1775859156;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=bYVlZ9BrWH45Sab7lCDUUe8Uv7vpGtXKpc6xapq4sqc=;
 b=EL7zyaBoLRxwXBkFZYtdZ8sOKRMcgs6NKiSepuKEVunebgv1T6h9+KbAHvpbDBv1N+
 Qg1IDZmH85VTkq1MdPu09kKVeGopSOQ57sskPDQG4BgEUaYO32RMdt99iseI1xShXuGT
 PMtLwflvFLldx0wOXSJME3EYcwmW6P88lPvkodOq13eAYaWrJWPUR5laJmwYGAQrrAQI
 hhYAYi0oauhowHG8eofXtFSZW1jb22ENzfTAeKiSB1lagdRFP3MuCMHYzVldK+K9bOKG
 58LcBKJbWz+FQyHZcDySg3G4gGiC1s7vbQzjNY3PC5HRBzyPIY2T7AH3To7/IsH/zogD
 xFyA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzPW56oJRtIcu/FTHkQkxBcgBRh7GmOJMf66Y52Vz6g3Wd2qTk4HkqzCnCQyYn4CDefLRKoQALfjY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwGI1OtYmJCS3dtq8jEBbNL1Y4bo7H1fbL6zYEkJ7Zp6fXgOB9o
 JvRH6Q579dyJ2/PS903mlu5zKUf8MbABUEU8LoiFobAOnFISmMbfzDADkFeUZM6xAhQhq2wt0ZP
 AABfIuao=
X-Gm-Gg: AeBDieupd530sXfVjwW556Mrx8sLYAZyY0ql+re8iRx3wUI1uijzWtWgnw9MuEwp9lT
 Eu+sO80okicYVa5fMOdgz/Q0CEw4cyHbOaRnWFD4AXRHnP2cv/PWlP+VByw7DHcA1Ei67fBqIGo
 gaD4CEZdAnU2wo7c1dQVnB9N9reW2J+02MUZvhXL5vcIrZJVS+9RB09GiyzbHW/naTeLrHRFOxe
 jmM/YcD6cSTsE9DK2PYLhW7dxUFWAZaHvu58aWWBqejy/XPxUOKrsVBcRqmC5+n7jdrB7wynE2s
 tyim+PgfFn4Y/u0ehX8H4lRIkOd++5EQWciU19vuRwInM3ae5cB/K2w6HOBuxOzLLf8NkHiH+cT
 7J6fv0CCYJrtOxbIi4ttjNg58xTXtY+iHm36O+Zp5Sr5znVRJj3dYrYVdqArgT/Bxkai4Vfazur
 ugzVVC19wV5eqV+mcfNpgt1evq5rnG122dCAt7EdDviG+DPOMpqR64mr4np00rRa8kTryWO4Si7
 qRslkLEwA==
X-Received: by 2002:a17:907:a0c9:b0:b97:b88c:386b with SMTP id
 a640c23a62f3a-b9c4713ebbcmr416730566b.29.1775254355567; 
 Fri, 03 Apr 2026 15:12:35 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com.
 [209.85.218.46]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b9c3c9721c1sm246021166b.2.2026.04.03.15.12.34
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Apr 2026 15:12:35 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-b980b35534eso532631066b.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2026 15:12:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCV7/jL/SyXXZwkgDkf5hUUCgaOmJIvmeLvEUQBNt2D+RSz8e55TG6VZyx8C9rmchRUwMu6pUZM1LUY=@lists.freedesktop.org
X-Received: by 2002:a17:907:1c10:b0:b97:be1a:3bac with SMTP id
 a640c23a62f3a-b9c4710f732mr388508766b.26.1775254353985; Fri, 03 Apr 2026
 15:12:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
In-Reply-To: <acUnQkniqECI0QVY@intel.com>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Fri, 3 Apr 2026 15:12:17 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
X-Gm-Features: AQROBzCnmUV4IoS2rR9_AmBSZkxHDMINnWsU1NiGbmHT4DUsT2gSWthNREGLeQc
Message-ID: <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Dave Airlie <airlied@gmail.com>
Cc: Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, 
 intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com, 
 rodrigo.vivi@intel.com, security@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=google];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:airlied@gmail.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:security@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,linux.intel.com,intel.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[torvalds@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 038F9398AD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026 at 05:32, Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> Ignoring the AI slop aspect, I did have a quick look at the code a bit
> and noticed this:
>
> eb_lookup_vma() {
>         ...
>         rcu_read_lock();
>         vma =3D radix_tree_lookup(...);
>         if (likely(vma && vma->vm =3D=3D vm))
>                 vma =3D i915_vma_tryget(vma);
>         rcu_read_unlock();
>         if (likely(vma))
>                 return vma;
>         ...
> }
>
> So if we somehow get a vma with the wrong vm there then we
> return the vma without grabbing a reference to it.

The fix for this seems to have gotten lost and wasn't in the recent
drm pull request.

I can just fix it up by myself, but it would be good to have proper
authorship and sign-off. Please?

             Linus
