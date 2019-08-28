Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8F7A06CD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 17:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A0489CE3;
	Wed, 28 Aug 2019 15:58:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B5289CE3;
 Wed, 28 Aug 2019 15:58:05 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id i128so305572vsc.7;
 Wed, 28 Aug 2019 08:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QB8c7XMcaKXHjk7M33+WZPvc1LoqkxkdwGPkVkxbPfU=;
 b=ltndLGCcW6/d+Tc1Zwrjd8xtMfpPKFYOTHDluTeqdnJvLnrM//PMrmp2FBgm43vDF2
 lPL4WFoRe/vr6H33z4THozcDm2f13XGwcU6b4UgzikoV/j2K11mdKP5i3mfLidrHWPfX
 WVEj6ah6JPWXyut1+TRUWTsghHkCkqgc3iuIgO/ajqKwsPXjxFKggi+GBLuL5HNZrH7M
 P7Pwx16RZBkERKklhVeJU3l5CNMY4HDP6LItyp8v6FqSZxnqQaawdroufIwWErM8v8qf
 /L3PMliobZD/51Qb6rb7xlT2QcMepT0ZYiljOPHhvDqj4HHe0DN/eFrnKQiz3NqtSgKY
 0Utg==
X-Gm-Message-State: APjAAAXCVVD7aIkJ/rMarmMaRqLvOYfLfPvvIc40Mv3n6YOFONkl9RYh
 8xxMKLezQjFMOZYJjA8SROXqh3blCfDazuOy5DVYFQ==
X-Google-Smtp-Source: APXvYqxLAmIVwa4pgGBsIdYhwZH51Ok+Ve9DV7Bdr4cjS63R58C6r+uux1sOvHZfbQ9i4goX+RR6FO8bId8sDoFu90Y=
X-Received: by 2002:a67:f450:: with SMTP id r16mr2948750vsn.119.1567007884615; 
 Wed, 28 Aug 2019 08:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190827145831.382-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190827145831.382-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 28 Aug 2019 16:57:38 +0100
Message-ID: <CAM0jSHOjtFsAw3jBYcqd7W2wJW+JJHeDJ7wATvQCj1eeiiYTrQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=QB8c7XMcaKXHjk7M33+WZPvc1LoqkxkdwGPkVkxbPfU=;
 b=q8bU3KgZNleCgbf/v3vjEtFjXALUE7CepLNQN/q8pCCnwKC2qIOcW1pEOtri/os/FS
 iHcu5bwL3GRwhSWcLB7asVZgQJdJRQLKm0wDl7UToahpkxSrUEVc90j/kggPUcjWOOBJ
 wunTTjGY8dQyd1hm01F7oZByEl5PgU/OIH+LxQtYUH3r/CaDiRnVFAGoK0p5xzUyf3gD
 FZLizw+EePQ9NJmsb0uZ6k4wQFm8dIN0KXNO6Lr0pROdN+SYQF5AESizPrnES94bMvUz
 v/of8lyZUtQNoQx1pzGOHX+/xUPJR/XtBDw6PUM34+dzwj/q/i8C2ybKHO4qLKnz+C0j
 ViBw==
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_big: Sync against
 asynchronous relocations
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

T24gVHVlLCAyNyBBdWcgMjAxOSBhdCAxNTo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gSWYgd2UgYXJlIHdyaXRpbmcgdGhlIHJlbG9jYXRpb25z
IHVzaW5nIHRoZSBHUFUgdGhleSB3aWxsIG5vdCBiZSB3cml0dGVuCj4gaW50byB0aGUgYmF0Y2gg
aW1tZWRpYXRlbHkuIEluc3RlYWQgdGhlcmUgd2lsbCBiZSBhIHdyaXRlLWZlbmNlIHdoaWxlCj4g
dGhlIHJlbG9jYXRpb24gaXMgYmVpbmcgcGVyZm9ybWVkLCBnaXZpbmcgdXMgc29tZXRoaW5nIHRv
IGNvbnZlbmllbnRseQo+IHdhaXQgdXBvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpBY2tlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
