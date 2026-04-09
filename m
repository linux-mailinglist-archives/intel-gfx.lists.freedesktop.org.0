Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBB6C8zK12k/TAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 17:50:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A72443CD1C7
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 17:50:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0757510E891;
	Thu,  9 Apr 2026 15:50:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="aU0gjCo0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341AD10E891
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 15:50:27 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-66b2d49ffb0so1292024a12.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 08:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google; t=1775749826; x=1776354626;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=L9vE8utreJV2gsMmo4bJCky+B4KUezIvBvEreyJlMS4=;
 b=aU0gjCo0c5E0H+ciFqwkB8yioGzcz3xzG9mK8PI1DVxXxIaiX27ORKsKceIqBBYwYe
 W/H6O1g52ksQUCUaPX0sx5XI3EjPinJXN66fOL712jLxnYA5Jmdtc887LS8epbJi014e
 6Diw+kGx2LIRmyfROgo2fZm8ENupmW0rK0wwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775749826; x=1776354626;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=L9vE8utreJV2gsMmo4bJCky+B4KUezIvBvEreyJlMS4=;
 b=i6HXQBYQhF79hWvfAPAEziFXUes0uFjBJF5gibjKq3r7+rlrM/otvudX/BW10vowfA
 +WriE/k97Ku8/bDbMbX6U3XXsC+8Hfb3Yvj5Og82tjvUleRZB+W+Ieh76VyOfsv/YV7S
 3sKMvXqYeZcn05X+rcXS4aaXz9XV30O4DmnuxSizXEleX8LAuQZR3J+ttE6XpNq1D+bP
 rrJ0VtlKD0OZbcUEHjjdAAq5jwlzr1jwJ3tlqjVhxvIwylfMVZoNkUL5EktYduhes11z
 ZZ6BRxiegx7wOw+AVEWoDHc0Ke222ZWXRRRywH404Pt1Ttwul4wkLb39nQsLhbMIjABM
 IGuQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXJxDOV0MCdGG86hZCW1GSzntEtKlyp0LOvW75+RKZcPNKZawdK36MPhnOdHGP7ICmDLP7/uj5yshg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxSF0w+lMUsU71L3PTvEDKdCmrJxbV0k+H5IO9njtl2BLT9YOst
 oPqh9Q53RvQ2pDXW8jbx6ee+eBZ+SYCCnZ9QVVsMgk6C6wrARJ7NeanRPcc1FR3ctvTEpjLGDlL
 E7/jJEDffrQ==
X-Gm-Gg: AeBDievn3rs59RQiDChIowOVHFBDqHUq/QtLFsnqjl4h50AFCCiFxTWD04J/K1MEPoh
 kU3oGDKWSNuEb1z3lV7br9ILuvjaL7kDRpscvZpR5KUdUMottMvbsvv+fD8zv2bH4ZttA/msoSL
 5QwcfA+GANqXicWgxwp1AYhbrPNsvitSSBUaNXTRaKRBzzF+Wg8U45PWosEwuBJXSbFgl3J2SiD
 DDOiQPXmkTsg5lN3yPXVrd8XfBmxbIJ5u/Vfn6NtG60JiH+9W9fkgDVtc6NvCZv+W4hLitQza3M
 BG4o1gnCV9ohp36817XO5ZCr30OQgNOs9DiqQfe3fGa8wg52jmuDEr1PRenuFfJp1jCtMlOau17
 Cv/hkynL3K+PW/6smxp846GwrwF4YTS9mRgOo2hhtm0eRaby5fg/0eaFEjBOzaBoG6zWS+hOvVY
 i1/dCC/VtLXz3y8DRX9SEpYEpZKLiUkkxC9lrNXSGaQU6plxSfwTt8gXzBAdTlUTr6S5khNsY=
X-Received: by 2002:a05:6402:304a:20b0:66e:4180:b5fa with SMTP id
 4fb4d7f45d1cf-66e4180b67emr9207629a12.12.1775749826052; 
 Thu, 09 Apr 2026 08:50:26 -0700 (PDT)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com.
 [209.85.218.43]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-66e02f389absm5790558a12.13.2026.04.09.08.50.24
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2026 08:50:25 -0700 (PDT)
Received: by mail-ej1-f43.google.com with SMTP id
 a640c23a62f3a-b9c3e2cf3c0so168834066b.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 08:50:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCXCMytPLHRhgPoH7H0lKCO5abKUTbZQcPYpXkkfIHxjXeFmbd6vfK/2OWJhI8WWzXKoE7HuMWx6XJg=@lists.freedesktop.org
X-Received: by 2002:a17:906:d009:b0:b96:e0b1:ccf4 with SMTP id
 a640c23a62f3a-b9c67b474e1mr987999466b.47.1775749824692; Thu, 09 Apr 2026
 08:50:24 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
 <177557988645.129480.6094289548721099346@jlahtine-mobl>
 <CAHk-=wjcSt1gGnQZoyNvodky_6WEDxC=1+gQHywiOvOjw1+GUA@mail.gmail.com>
 <adddrlQojq8fo2iE@gsse-cloud1.jf.intel.com>
In-Reply-To: <adddrlQojq8fo2iE@gsse-cloud1.jf.intel.com>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Thu, 9 Apr 2026 08:50:08 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi_drr4Ls9KtXW1k8L2FUDF0YdnyjvKmPgLXHDFnnRWEg@mail.gmail.com>
X-Gm-Features: AQROBzCjSl5NMaYv3GihKyQP4VStOMX95vJjpJ2BenMZKgMzIiin_WmdOYImCIA
Message-ID: <CAHk-=wi_drr4Ls9KtXW1k8L2FUDF0YdnyjvKmPgLXHDFnnRWEg@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
To: Matthew Brost <matthew.brost@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Dave Airlie <airlied@gmail.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, 
 intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com, security@kernel.org
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
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,gmail.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,intel.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matthew.brost@intel.com,m:joonas.lahtinen@linux.intel.com,m:airlied@gmail.com,m:ville.syrjala@linux.intel.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[torvalds@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,linuxfoundation.org:dkim]
X-Rspamd-Queue-Id: A72443CD1C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 9 Apr 2026 at 01:05, Matthew Brost <matthew.brost@intel.com> wrote:
>
> I dealt with some complete AI slop today reporting a hallucination.
> It was a subtle reference-counting issue that, if well documented,
> probably shouldn=E2=80=99t have been flagged. IMO, it=E2=80=99s an opport=
unity to clean
> up the code or at least document why it works. Yes, annoying, even more
> so if less actively maintained status=E2=80=94but in general it flags han=
d-wavy,
> questionable code that needs an explanation.

Some of the slop reports are indeed "that code may work well, but it
looks odd because it has a pattern that is typically a bug".

And others are _just_ pure hallucinations.

But I think that lately quite a noticeable percentage of reports have
become very much valid. As you say, Sashiko tends to be quite good.
Even when it flags something unnecessarily and there's no actual
problem, there's likely to be a reason for the question.

And we've seen some truly stellar reports too. Things that are deep
and subtle, and the AI is 100% correct.

So anybody who thinks that all AI is slop is in denial about the current st=
ate.

             Linus
