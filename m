Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wK47KHV21mlQFggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:38:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9FE3BE4CA
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D8B10E694;
	Wed,  8 Apr 2026 15:38:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="DexapWve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C899C10E694
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 15:38:23 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-66e129e457dso6401675a12.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2026 08:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google; t=1775662702; x=1776267502;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=GzdSgS2ypsQNpojZvvdUhjw+lgnPctu3MI5Pbax4QbA=;
 b=DexapWvevwUtq6I+SgVcnYDIVmAIDnNaa5ifLB+vs7oHdeg5UAAoFXhjNe6dKrXrLf
 eSC25/+2w9nFY3okcbJLAeMaZoWkRI5sEQ9+HF3MKM8xncpyFQRt3EWdt6fEw2w95Af8
 eyBxglLmpfUdEzMiYQ8ErwtJVF4oNVf8Kk18k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775662702; x=1776267502;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GzdSgS2ypsQNpojZvvdUhjw+lgnPctu3MI5Pbax4QbA=;
 b=fpg2yzL2zIUR7jbadsG8HxJ1ZHNWzExR8zIU2hssHfdYbjoU64nYXKIpdLmI9V+rOS
 taom/xVQqgHcLfVykGCe3lx9owTO9eoeTUyE86z01xwsKPfPU96GYUgMsNXM3ghebuGf
 +bwJebSujMHk8cPWf+fQi+qCmsn3MWOEnrT3QOFcDpmVFBypIqT2Vjhnljv1hdGN0Prr
 /r5eBaHInTVBw0iJ/JyUgUHV9dYC1pT5o5Y56pSwjdLklbnP+4mPLM2nMkm9Z/TALj3v
 MDHwxmSPIsvqijyvzsi18xain0SuNnwudBPLcfAyUov15KvHX/QKNv0Rxb/qobOjMmIy
 sBdQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWauLpRBoCNrOnv8yNhteHceOKKSWYeafPhUW0R8UJVuEbguAGc1o0PHvLrvoHmOP9fHW5ucSVngOs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw3tXEfVAa8jzYZBEviA/+C/tWjyzbWtbtj00ys1lgSjEOacXMV
 FKT62Noz0kUbwr5EKSMGtBIyDCgi4+TBhzX5tb40aNdZ/ye8TaSus6r9VykmN9HUDsN+wF9VDXd
 ywnpyGv0=
X-Gm-Gg: AeBDiesCezzzQo5kIIXpb3PTmRAIhH2klva2fhXjk4aKDdwpMhXlTYG4FKu8/hS6hLQ
 ZFWAZtbt8dYJxOZ+hjJxWwwDTM53hlSWOedJt8SWFHBMPJFA2kdXuxvLdRpxQlzyNRWCOzMrNut
 yiHYL2o+hkBbgg1dElaFuOW4w80UavxUmciCIY/3PQE4bCHSKYQEI4HiNWN239Ggh2tAuO7qJ6z
 XPCOiRR7VxCXkGmMLPiiC1ciDZOSQJQnjc2vx0NzGtwwpbzmp9bSGY2sxjQQTnG0kxYAbhWSIbY
 PW+advkr5WwvUU5PzMBJcT3YJXcCMm8yGdm2QN9mckFTNC0tsl+ZibRrKT/YuLX26IcWAtVBdLt
 P/sOd+TuYuvx2iY2XJWkXpyOAb0weaPSewzmxqsgGN0gqdWbK3IGVRRvR7HPLb6AiqutXZGDv2J
 OJuW6ilgkDRsNH8jYwzLvHRllLELvgdg+jVQDCx+L99NdZWAeQH98c21MJxhOrsWWMIIkBWnU=
X-Received: by 2002:a17:907:3f90:b0:b98:cb6:e896 with SMTP id
 a640c23a62f3a-b9c67b77b14mr1121004766b.38.1775662701893; 
 Wed, 08 Apr 2026 08:38:21 -0700 (PDT)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com.
 [209.85.218.43]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b9c3d02897fsm653501566b.63.2026.04.08.08.38.17
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Apr 2026 08:38:17 -0700 (PDT)
Received: by mail-ej1-f43.google.com with SMTP id
 a640c23a62f3a-b7cf4a975d2so812982466b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2026 08:38:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCU34ceejmNSSkWluP5XS1IuZMF6YobC7fcn0oQfvUFlN5ffej9bPhm3BV6XDIc93GCz55MdYe7jNyU=@lists.freedesktop.org
X-Received: by 2002:a17:906:9fc5:b0:b94:cfd:f37b with SMTP id
 a640c23a62f3a-b9c67b99e79mr986935566b.45.1775662696829; Wed, 08 Apr 2026
 08:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
 <177557988645.129480.6094289548721099346@jlahtine-mobl>
 <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
 <177564692857.84154.3119637094332266143@jlahtine-mobl>
In-Reply-To: <177564692857.84154.3119637094332266143@jlahtine-mobl>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Wed, 8 Apr 2026 08:38:00 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgbhJ6TzSwswdM5hKAS_RKF1SLXp2u6JAS35P3i2mW2OQ@mail.gmail.com>
X-Gm-Features: AQROBzCiLjfvF2_QFYpJCjt2I_Ju0FzrjtUuBZEqdUomCgFeihSe5OfbX6887a0
Message-ID: <CAHk-=wgbhJ6TzSwswdM5hKAS_RKF1SLXp2u6JAS35P3i2mW2OQ@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Dave Airlie <airlied@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, 
 intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com, security@kernel.org, 
 Simona Vetter <simona.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
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
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,intel.com,kernel.org,ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:airlied@gmail.com,m:ville.syrjala@linux.intel.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,m:simona.vetter@ffwll.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[torvalds@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linuxfoundation.org:dkim]
X-Rspamd-Queue-Id: EC9FE3BE4CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 8 Apr 2026 at 04:15, Joonas Lahtinen
<joonas.lahtinen@linux.intel.com> wrote:
>
> I've sent out v3 of the patch[1]. I think it should be fine for you to
> simply drop or revert the version you included in -rc7.

No.

That code was MISLEADING GARBAGE.

At least now it does something sane for a situation that it tests for,
rather than "it tests for a situation that cannot happen, and then
does insane things".

Because "that cannot happen" is not an argument for doing insane things.

If it cannot happen, the test should simply not exist.

                 Linus
