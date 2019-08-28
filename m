Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A55BA06F4
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 18:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D88289D5B;
	Wed, 28 Aug 2019 16:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9482589D5B
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 16:08:55 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id i128so332684vsc.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 09:08:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b2ptxgJIR+Vv9nZ4a42AQZ1sS7JilD8bM7LRBUi8InY=;
 b=F0T5rIDeyYVZwemR7Hpu6Q0zkXyqy8IcOpTIdfFXkfkWFw50CkyRWAtlZERON/GM+r
 HHCXcoz30G0FGthZyox18jPOcstgP+iLYMp7iEv9Es0pFm3XodfioPc9MMZ628CaHrxr
 5pB42UDcYyhtu+p/fac5wLhKkw3fLFriv5cY5qEUnpgpB5xijQ1L2C+Z9u0pNOzddo56
 JXK20jRvLA7/5PkupylNZuQtKn7wwSBeyRPGhDdlDUojo6YJ9fnjKtJI4YqxlOC64dq2
 qI+u3yl8rwLqD1bZyhWbZMbyrTjp1iVWJRjuATLOpNU/qbKJRdjEdcr7fh+HfozpVdTo
 fXrQ==
X-Gm-Message-State: APjAAAVN0nu3kapmE4XyQY5sSpGvjqg/+5bwjA49v4eaOr1waMdxTgMa
 ByizqTTetCEx0yACyLh8hjnoyUd9QK8A6qltW1A=
X-Google-Smtp-Source: APXvYqzwJIwtoFPbhgAoX3t53or2rpYW329vptJPYKoN4jOqG8Ta9of1duhnUsKIHEA9lS5Sxsf5nyRN9lzYOzjdUCM=
X-Received: by 2002:a67:ee4f:: with SMTP id g15mr2893763vsp.164.1567008534579; 
 Wed, 28 Aug 2019 09:08:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190826133837.6784-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190826133837.6784-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 28 Aug 2019 17:08:28 +0100
Message-ID: <CAM0jSHMB9TrrWaVc0tvrYcgHxuiEraovLmFZfuDjF9X3E8Ciyw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=b2ptxgJIR+Vv9nZ4a42AQZ1sS7JilD8bM7LRBUi8InY=;
 b=Vi0QKtBaX7x1Z81XNXjlWYt/QTvhnjS8Gb0urq4gTPPs77Nobx1vMJGNh1keWk5oUf
 JNDk2OlkhTORXm9GwEe9dAsuU0JnfTeWp80ymiMBjkZMV1s+kQGhTC+6IHsgWP+TEKWn
 PL7U2KQ6AHHN5fGHTZMddCgBnUdjZ0rxGdPxGR5zge2t5u9X3+V7HKzq7saBkDyS+668
 l5AUdlmBkU9jo22nrEbcNPCrBLBcZ6TQV3Nn6AljaL5U/LM0x7SgE74xuWgqQs5UgCPd
 7EbsTomfMcP9lpNmvynko6LPwJ7fhY6fXyah89d3IHsoNDnwvSo7g7hDg7CH+zl32zqD
 disQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Ignore coherency
 failures on Broadwater
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyNiBBdWcgMjAxOSBhdCAxNDozOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gV2UndmUgYmVlbiBpZ25vcmluZyBzaW1pbGFyIGNvaGVy
ZW5jeSBpc3N1ZXMgaW4gSUdUIGZvciBCcm9hZHdhdGVyLCBhbmQKPiBzcGVjaWZpY2FsbHkgQnJv
YWR3YXRlciAob3JpZ2luYWwgZ2VuNCkgYW5kIG5vdCwgZm9yIGV4YW1wbGUsIENyZXN0bGluZQo+
IChzYW1lIGdlbmVyYXRpb24gYXMgQnJvYWR3YXRlciwgYnV0IHRoZSBtb2JpbGUgdmFyaWFudCku
IFdpdGhvdXQgYW55Cj4gbWVhbnMgdG8gcmVwcm9kdWNlIGxvY2FsbHksIGZpeGluZyB3aWxsIGJl
IHNsb3csIHNvIHRlbGwgQ0kgdG8gaWdub3JlCj4gYW55IGZhaWx1cmUgdW50aWwgd2UgYXJlIHJl
YWR5IHdpdGggYSBmaXguCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgpBY2tlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
