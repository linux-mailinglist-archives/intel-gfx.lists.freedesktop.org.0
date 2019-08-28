Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CE4A07FD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 19:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647F089C60;
	Wed, 28 Aug 2019 17:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85DB889C60
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 17:01:40 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id i128so452445vsc.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 10:01:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N6boKVst8UPx4AZ7I14jxE/qSBYcLUmld0uizG4mNLs=;
 b=ciDwFTTeHbxZHN+I3uMNM1S9c4FQ31BALQssNSEaS0eaBxRXqZKNZ4JMugKNX6+ZrI
 uuxlSfR6mty5MmZRN3dBhJ6zZ4cJS2OZtSJTLiNgEODnk1rqA7X9bmu13yiV2YiSJ8Sf
 C8mlEHs01Kpwe7vutpVAwDhvN9bh0PlpkRtPvLH0z5ID3O9HRhMp9o8EDFwqvx9H5Otu
 A823B00xR9Y5hNSwGySqCoMW39R//kNwo/1QpT4FtzxgP45c1W9U6RQO+HwUxpICd9le
 Z+L8ToyTIb8oN8Jass+JRAmUPczd8gE9tA4QjewzBcTwCAUeKEvvVe70pxn1N07gFCkk
 qNvg==
X-Gm-Message-State: APjAAAWPEt/IMdBNLdZBxE3Wg+JeOBXp8ikNF1SInsDW7TvnqeQ91/Lp
 XWZ3TXltKxGp/lsiLND8ikHvrhq4tf/XKlm/5Ys=
X-Google-Smtp-Source: APXvYqy6gSt+mrb09KQN/VTo5cfQILiCHlxhykGYsRN/5r56MKoL9psSkL3q4vtq6NjQ6F5gzbeNpStxYF97DewB9so=
X-Received: by 2002:a67:2d08:: with SMTP id t8mr3170495vst.178.1567011699443; 
 Wed, 28 Aug 2019 10:01:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
 <20190826072149.9447-6-chris@chris-wilson.co.uk>
In-Reply-To: <20190826072149.9447-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 28 Aug 2019 18:01:12 +0100
Message-ID: <CAM0jSHPmE0DeQSR3hwKEEvofLH6cVQ3vAsKz1JC2jBS177eitg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=N6boKVst8UPx4AZ7I14jxE/qSBYcLUmld0uizG4mNLs=;
 b=m2jICgkvG0i8vTFYIxyn98mw0btuNtfB+p0QPW3+v9BKMipRav+j8q/OXGRe/djYpr
 Cp7EWk26OgR/8Uz+fkngRILM4t8ZulXrUGVFFty3ewaJ+aMutMJb+aQJq+E0P4JE5qLJ
 X+TAWHVrZQDkusD9bmJnqpcANH7FphCwtAOmEN1EkUfG6hGJoZ18tMQJtm7KY1NOyswG
 a/64TVBm1Fe55fZT2L4XB4EeFVVru407lt3FSbGEwC79rSt54ApprxVEI+RRpuXVoAOR
 buiGat1FfApkaFjZXcfrA5u24da7Wery1A+KCfq0epWfdDvt3Ufi+M/3xNEksfwKXNte
 heDQ==
Subject: Re: [Intel-gfx] [PATCH 06/28] drm/i915: Protect our local workers
 against I915_FENCE_TIMEOUT
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

T24gTW9uLCAyNiBBdWcgMjAxOSBhdCAwODoyMiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVHJ1c3Qgb3VyIG93biB3b3JrZXJzIHRvIG5vdCBjYXVz
ZSB1bm5lY2Vzc2FyeSBkZWxheXMgYW5kIGRpc2FibGUgdGhlCj4gYXV0b21hdGljIHRpbWVvdXQg
b24gdGhlaXIgYXN5bmNocm9ub3VzIGZlbmNlIHdhaXRzLiAoQWxvbmcgdGhlIHNhbWUKPiBsaW5l
cyB0aGF0IHdlIHRydXN0IG91ciBvd24gcmVxdWVzdHMgdG8gY29tcGxldGUgZXZlbnR1YWxseSwg
aWYKPiBuZWNlc3NhcnkgYnkgZm9yY2UuKQo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1h
dHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
