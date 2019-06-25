Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C270556A2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 20:02:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91FC16E20C;
	Tue, 25 Jun 2019 18:02:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D394C6E20C
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 18:02:20 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id v6so11508192vsq.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 11:02:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C6EvJEdEXhWQYPzSflFUUpV4GZERiV8IdFD+s6RKWx4=;
 b=Ry20l15U+l/OzMmFaJRJlDPQfDgaGcSbIwa/OnKW5J1NZ12KHZmXWrPifqQUpot7PE
 9T357GzKJcHDtzpF7Y1F67S/bZFb2dg4M8VVnRMdIJcDEhqWdEe85LNmB4MI+Jtb7jfl
 9iZ7OFPV9Z7I/qd+NB3fH+QzaVyiRpEcvR3C3kulTl28gZjoOAYIZtjAS9sC/At7wli4
 2Gdrer4fJXQqThaAJAIibtX9L8BNkRK5kEBnxX7PGEGqzJrdWZsryJ1VoBWPJhLsTvEp
 eAvyjIw61cdKuDLJ4Rvh8Wokmh25ONp+vs8vCofNZe/0n4bN74CxLpWtzvLfm7QsHvGm
 Ulug==
X-Gm-Message-State: APjAAAWIKnn4CmwVqe+DHtsLmimQUOoXqRhkz5KHCQTgNi81qlQJJxBm
 CqRs9nicdFqOmcwm9cbYGsBlS+WnkPxALCYuaQY=
X-Google-Smtp-Source: APXvYqxX/qvYaH0QvRNW9S8D5KQXZ+RA1tBAqKVmeLuoFrOQdMTNLfzDxX8mAVz8Qg6faWrTxzfWHyTz3LDItIJHxgM=
X-Received: by 2002:a67:3254:: with SMTP id y81mr82428vsy.34.1561485739866;
 Tue, 25 Jun 2019 11:02:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190625130128.11009-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Jun 2019 19:01:53 +0100
Message-ID: <CAM0jSHM5bwug2sitzhi_o1JQc=NUVjNL=UmWZSaCT4t9A2okcQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=C6EvJEdEXhWQYPzSflFUUpV4GZERiV8IdFD+s6RKWx4=;
 b=lW2j5gswRkSbRVmpuSryjtLm+VJlVLPgIxND/9Hy9gNizeCQncVp20n9rhIRhkAnCE
 /gmoGuJVGoxub3lre7Lrj8AAvwa8tYtzQaEBKftkjnUeGK4ZzHfU2OU8XbplWKj4vzDr
 1JzAbmGbSQtxt91K8w7i37zZ3yHiBGiJh/pEuqMVbSiDlAcm2lyy40x7DbdRFEj80F4p
 lgfjr9TWvQsltNfWlNmSOf8JxwaKYU/mC2GIacknERo8sq/EYWwOQ0L6x6qjwrjCRG83
 lSVUf+YZHhSugYJnt/AmORTs+pa/Lb/lRzQZzPyRR9y5Toqxe3Pi9v9g7csRaNCqdAvB
 PgYQ==
Subject: Re: [Intel-gfx] [PATCH 01/20] drm/i915/execlists: Convert recursive
 defer_request() into iterative
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

T24gVHVlLCAyNSBKdW4gMjAxOSBhdCAxNDowMywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQXMgdGhpcyBlbmdpbmUgb3ducyB0aGUgbG9jayBhcm91
bmQgcnEtPnNjaGVkLmxpbmsgKGZvciB0aG9zZSB3YWl0ZXJzCj4gc3VibWl0dGVkIHRvIHRoaXMg
ZW5naW5lKSwgd2UgY2FuIHVzZSB0aGF0IGxpbmsgYXMgYW4gZWxlbWVudCBpbiBhIGxvY2FsCj4g
bGlzdC4gV2UgY2FuIHRodXMgcmVwbGFjZSB0aGUgcmVjdXJzaXZlIGFsZ29yaXRobSB3aXRoIGFu
IGl0ZXJhdGl2ZSB3YWxrCj4gb3ZlciB0aGUgb3JkZXJlZCBsaXN0IG9mIHdhaXRlcnMuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2
aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
