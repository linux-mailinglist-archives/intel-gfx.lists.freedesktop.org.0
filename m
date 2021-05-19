Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D708388B55
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 12:05:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9627D6ED07;
	Wed, 19 May 2021 10:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 001646ED06;
 Wed, 19 May 2021 10:04:59 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id c20so12149770qkm.3;
 Wed, 19 May 2021 03:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=q6AhIlHXtoAPfKqu+C+DQcNp+lArg/8TRgoMnbB77NM=;
 b=PzViQNTT8GJFI0ecnCXnh2zpc/TlDYgoM/gSWEpk61PxZfFBy7di9WiWCbHRozhSHk
 +4makTNynp8iD4ixdmZjavB2p6pykHNiWf29J+9MJhv/2Fe3WN5OnkFHldTviCvE33uy
 beMNAWzdoJqjFUy/+VgR1byOW9ZC1IsIJFk1HSlpdQgpRfvEYdprtcbpFiQshLLmTpsu
 txRfXmM5bqSRqDcZPw+UyacadNAYuKMuaTkmoP2rfKDRqnFHObpyP2snaaXs4lID5oZu
 QHQr+dg5+K5GTr38/iCpT+L5DT9qHcn4PW7aFKnyXJOEy1Pu/mkjT/z7IVpZdkp6DzdD
 5I1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=q6AhIlHXtoAPfKqu+C+DQcNp+lArg/8TRgoMnbB77NM=;
 b=C3c6vbrU+EH0fQboM1kTtCx8796SWlRt8fk4w6GEpYh/3tr33g9rXaV3O0mK4p/iW7
 dJJ+sOOrqPcynJLnig1SSUWiPDyAeMJ+mJGPNad6ZReb/FlEyPBIcT5SJAauhYijcq0P
 qduCXqfOKyCD4vyuv10BpXyk518EKbY4TnYfhyUAXf/UAjzg9t7xZgpYBeE2YoIcdPea
 0rFVqHjv5gv6L6c1cYHIZnr1V86mva8tg1zVQbLEfujILy3nutpzh1an0NCOYkWSrg99
 A2IPA7QSkR8OBDwQLPmwggan0JnUu/27GJzEArb/bRApShhWy8OGucp1Qvo0UWNwgtzI
 NemQ==
X-Gm-Message-State: AOAM532GQ3zdJ3Bm+QThsGp6DK1xJp/0ay37kNKNO9G6nyrMuAZNxfKq
 HPf90C981oJtLKL0o9jQ+srJbiLiBlqkF7cb9eL4YYrbR9s9LVfD
X-Google-Smtp-Source: ABdhPJzsy+5qW7UWhaOs6CzfNWzO0kjk3Ug+USwlVFHXs90Mmvng/QHxdkw27t6YLL1d1KNLV/GENGWyqayV1OVmcGA=
X-Received: by 2002:a37:9d58:: with SMTP id g85mr11016816qke.426.1621418699146; 
 Wed, 19 May 2021 03:04:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-12-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210518082701.997251-12-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 19 May 2021 11:04:33 +0100
Message-ID: <CAM0jSHPnY38kuoQMfi3fNK0fUqotu9QzAGO+wZ4_jqLqVvsLmg@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 11/15] drm/i915/lmem: Verify checks for
 lmem residency
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxOCBNYXkgMjAyMSBhdCAwOToyOCwgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IFNpbmNlIG9iamVjdHMgY2FuIGJl
IG1pZ3JhdGVkIG9yIGV2aWN0ZWQgd2hlbiBub3QgcGlubmVkIG9yIGxvY2tlZCwKPiB1cGRhdGUg
dGhlIGNoZWNrcyBmb3IgbG1lbSByZXNpZGVuY3kgb3IgZnV0dXJlIHJlc2lkZW5jeSBzbyB0aGF0
Cj4gdGhlIHZhbHVlIHJldHVybmVkIGlzIG5vdCBpbW1lZGlhdGVseSBzdGFsZS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
