Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ec6Ogk11WnY2gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:47:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9673B1FE7
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7496210E4B1;
	Tue,  7 Apr 2026 16:47:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="SWcnCjLn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB42B10E496
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2026 16:47:01 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-66bd3d05e03so5592302a12.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2026 09:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google; t=1775580420; x=1776185220;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Dx/m4qvSSemNJKesVaE8vEc61BC9N90amh0wlcspPAg=;
 b=SWcnCjLnEzWTtsv+BLSqdfwEjYj6XzDnRA2rd+HDEqC0JDY8P6dvliNAJyVpjqF2QF
 9+sf/eRwqKV3HD/s8c5pH9HgP5xMGgbr2bUU7HshgUt0CUcoAwNtAE4cGVDngkn9P24b
 gj1jFFkvQTZdfbx5GnV5lEeGJINo9ZoF8DkeM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775580420; x=1776185220;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Dx/m4qvSSemNJKesVaE8vEc61BC9N90amh0wlcspPAg=;
 b=DKUIg4O38ZsY+ns8ESIStcazUiUmIRLh3UmhfxU6yxvZsvuIz0bdSMFtHULIRBFznX
 p/OayDSC5uzY3W/u/AmSvOq8pdSF8LUfOHDcYIc8QNaJYr2HbwTqItzE83begNxrf4X0
 yzksvYr5SKD0hD+HPRRv21On7VHvGZrB35w80k2N+D4DVNr90rd/rTJIUNwJyyCyQVI6
 Z1/Q0wIcuEbQ8RbXvDH0J7+5vT/a1iwoNwXbLSbqyKKLI+l6Fj4zJ+ZLT1WIMQeTTNvr
 0PUVmyP7B/q1srSU505gutjZNd2VMBYBaHjdGcpj2nTHw4COJQy2XvkzKbqoVBKs4zLS
 vKNw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXa+cmF7vJXYk/h6Ee/AW3JjvJ8rX09OR6w2Eho4AYKqveStY3pVRO3f3eHMoYgB+GuepPX+rd67/w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz5MW88XiYK1+rtQSHNkx8lyBhgYoj/2u4tMdRvFemcw08R2h/x
 66JbJtCGm4zIdcnm8EYLoXuyVSGbxeHjwlxCMio1EmNeEZCbGq/lYHfqKc3zCdkZorWFKX3FZAY
 XR+DQNjU=
X-Gm-Gg: AeBDieuNu7njOKXALKoEFn7urPzJ+ynmpTsJEVlcyRuO0ynHps/TMSL+AqBJqdXzjMO
 KvL4mJxfaQCwaxZW3qacOp7wvtJbeReFWOu58gBdSFJfpiMkvkDaFnhHIu1qbXUlO+ESMT4BFyN
 ln6Gh8gV6Qv0EgFcREjr7L22OIi6hXrljFcCEr7gPlBx3b1zxHdpQsjmWb9r8MIiBixoX7uq9/6
 5NFBZ7c3jwC3UPWQUbea7S4eFbV1ZIxlHWxeRX+NX/W+Sjyi7SNpdJZNcyoThKwQZOwYbcljtxd
 OuFv/Zf1pNK5gneSwr5gMlJsTBbh0zfPPwIQ4cEcvkhT5HeOuvQ36WWwxtGXJdmUnP1UmpjJHAJ
 6+vGXroLWcHFX97Z2zzApJFvkE914M3NJIxU7zcwH1BGkCF3QADs47Yd3eXKxTMbmaRVq3gprTL
 BTGOTFe8O4tfpDolVSGz1pD+4aGnEVQr/CZ+Bioqy53pDbGhsThkXeYlZmDBOKTjuFOfWjiEU=
X-Received: by 2002:a17:906:7950:b0:b9c:b069:8ac0 with SMTP id
 a640c23a62f3a-b9cb069bc09mr568478066b.19.1775580419716; 
 Tue, 07 Apr 2026 09:46:59 -0700 (PDT)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com.
 [209.85.208.52]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b9c3c99ec5dsm587458766b.15.2026.04.07.09.46.58
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2026 09:46:58 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id
 4fb4d7f45d1cf-66bd3d05e03so5592267a12.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2026 09:46:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCUeOr6Qb6rg47nVb1LUHoimpv+mARIK1fKxVueIvmiOuJuUk55Pjd8Mc9hW5PyUHgWeNH/RZCwHYPM=@lists.freedesktop.org
X-Received: by 2002:a05:6402:1295:b0:66e:4499:79cc with SMTP id
 4fb4d7f45d1cf-66e449983efmr5494821a12.24.1775580418566; Tue, 07 Apr 2026
 09:46:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
 <177557988645.129480.6094289548721099346@jlahtine-mobl>
In-Reply-To: <177557988645.129480.6094289548721099346@jlahtine-mobl>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Tue, 7 Apr 2026 09:46:42 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
X-Gm-Features: AQROBzCTMCSnvZ3XUR1zPAGvIUVHjr9BnjVc6WwcuXi2bM5JsQCNUmAdECRQUuk
Message-ID: <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Dave Airlie <airlied@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, 
 intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com, security@kernel.org
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
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,intel.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:airlied@gmail.com,m:ville.syrjala@linux.intel.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4C9673B1FE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 7 Apr 2026 at 09:38, Joonas Lahtinen
<joonas.lahtinen@linux.intel.com> wrote:
>
> The big question is, what stance to take on a value of AI generated low
> quality reproducer code which was accompanied by wall of AI slop which
> caused hours of time get wasted on debunking the hallucinations?

I don't th8nk there are any good rules.

Some of the AI reports we get are great, with no slop in sight and
finding really subtle and real bugs.

And others are very much not.

In general, I don't think that's all that different from bug reports
from actual humans ;^/

So I'd suggest just fixing the bugs that are noticed, and giving
credit appropriate to how good the report was.

           Linus
