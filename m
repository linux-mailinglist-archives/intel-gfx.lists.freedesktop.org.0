Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4493783BB9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 23:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A74576E577;
	Tue,  6 Aug 2019 21:39:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E00C6E577;
 Tue,  6 Aug 2019 21:39:13 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id m17so17660685vkl.2;
 Tue, 06 Aug 2019 14:39:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r59WQhsSQpfDqhhF6HueJBZ4IlcrmT/iLPEjuLnyPrI=;
 b=Vvwoy4lZs++7Cg6k31pVWjgCT87BpbHGirxFlqSNvuUcdy+x48ZhQHpCuYV3SVRvRc
 N3RsvHWvo6h+QaFgsXkr4/PxpzRqVN+d0+v5NsHcGoZiykAa6JlsVvTdxRSw7eV5NgNQ
 2dL2pzBBHO4uDna9YcdUOBEnKZVjDA4toKPoNV3T9OTokoHjPcLCFn7GEFLyl9GFQYgu
 seLzeqhPPB+6nZJkJ/lJRiVrFFYdPQg4Bps6UQW5cLngqTEaTsDYLMUkYKwBCOslC5gl
 DqyUjBj64MHu3bAxk/6sN6O97cl7ksvOIcH1Y8BypkCBsvgBemNZlPeSNVrRIWzu8I5s
 hLSA==
X-Gm-Message-State: APjAAAVJCjNwtuE5SvWFrg2Nfyxp1ChPFyYiCdyY2s+7iapUZSs0LwqA
 U+NqaVevJiCcChS+IagwaurPJdK5vlTGyBBLfB8=
X-Google-Smtp-Source: APXvYqxAbUAl1UNwqlWHO1F1z3D0kVaY9l7a5GTxZu0JymPCZFaIP7dtfJZ2Zwb/ucg0a9TrB/ygj/D5JjK6V/oZd+g=
X-Received: by 2002:a1f:8641:: with SMTP id i62mr2197618vkd.79.1565127552375; 
 Tue, 06 Aug 2019 14:39:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190729122727.28049-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190729122727.28049-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 6 Aug 2019 22:38:46 +0100
Message-ID: <CAM0jSHMAMTJ6i0VTVLgGwvJ5QsF=s4===QQWE_rfdQkK2RqSjg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=r59WQhsSQpfDqhhF6HueJBZ4IlcrmT/iLPEjuLnyPrI=;
 b=sk0HhbpKl72rpWfrQYeRVO3usUv/6HLAiHi1xoIFhI08xLBgGkSKu0ZeBFLyvEBs6J
 RV5OhWWRu/j9OIsdl/jf9TSO/nGKrnUiUVxaErJq6s3giLWlWgXwesmXQ8s1n3a1yqsF
 TPgOnvbt2edm3dMEdC+te8a3jJB0xBKWMbgngGkbSuUxE6e8FiScSjcck6Xu0k5NRpHo
 BQmYqqziCbWgxxfG6grYGjctN6ZrnM0DW9TtKmgEDOlSxgppHZorGkLhfCJ7zKHu/nlm
 9vKdLunnfAn5FCNOdvkQ0VYL0WsknbFPtlqJVvWDOvTxqnUfkzRphDmkobgmnj0K6urR
 wA5A==
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_eio: Break early
 for small rings
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyOSBKdWwgMjAxOSBhdCAxMzoyNywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gSWYgdGhlIHNoYXJlZCBsZWdhY3kgcmluZ2J1ZmZlciBp
cyB0b28gc21hbGwgdG8gZml0IDY0IG5ldyBjb250ZXh0cywgaXQKPiB3aWxsIGhhbmcgYW5kIHJl
cG9ydCAtRUlPIGJlZm9yZSB3ZSBhcmUgZXhwZWN0aW5nIGl0LiBBY2NvbW1vZGF0ZSB0aGlzCj4g
ZWlvIGFzIGl0IHBhcnQgb2YgdGhlIEFCSSB3ZSBhcmUgdGVzdGluZy4KPgo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
