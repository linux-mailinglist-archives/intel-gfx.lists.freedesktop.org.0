Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B2B10E97E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 12:21:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B836E199;
	Mon,  2 Dec 2019 11:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337436E199
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 11:21:26 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id 203so27610043lfa.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Dec 2019 03:21:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yzQY8ysi3fT6Co4/MqtHPbj4fPY/+U/ENbweS9dY9nE=;
 b=aHWHEtid5pfP4QRRY/KqSMpIaAqLfRk37/qy+GV2LDqQwXOGcG6A/dXqlbIAIt5uSW
 Q0QhxCE1zkAVJ4lRjJvQ++S1CIs+Axao/qGYwbF1ZytYC3kZQIk0uqFPcpE1a+V3zzJr
 IbLP9LB18i/XikUifIPlDClC/UP3vohNNrMb4pcYC3teJpYI6IQ71fQjSEo1Ear/XEJI
 GRYgnmgCxKzJx/7lGBPld1rXt0hrBCp3e5V+H5j+Sm1svMw7Kd/p+IyggWAPOqBKgRmW
 2rrlfF7nfDlEtcVY794LKVya/wIe+2fMtULsCZETjObCJkUhhBwiyAVwaX4H0fFlv7nh
 cTwg==
X-Gm-Message-State: APjAAAUWSl1Ktl4C0BHYSEMt2d9Jvxj7aXSwyB7prqo2BfSF1wZ+uGMw
 kUJYZgea0e14+MaU+9I99g+F8toDzxOGUyXLF5iT/g==
X-Google-Smtp-Source: APXvYqxizDsV6syxLFSpMOqZGIeczavEByhmdDXOVDNV4RRu+SUnOftHbEdPa0gGND2j61UuSk/iw7O6dhtfU4+t6Zk=
X-Received: by 2002:a19:f701:: with SMTP id z1mr37022370lfe.133.1575285684598; 
 Mon, 02 Dec 2019 03:21:24 -0800 (PST)
MIME-Version: 1.0
References: <20191129185836.2789-1-hdegoede@redhat.com>
 <20191129185836.2789-3-hdegoede@redhat.com>
In-Reply-To: <20191129185836.2789-3-hdegoede@redhat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 2 Dec 2019 12:21:13 +0100
Message-ID: <CACRpkdbRb-LF2tNN-ueo=tKuJc+u4B7Y20+BCyqnN7wYbm8y7Q@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=yzQY8ysi3fT6Co4/MqtHPbj4fPY/+U/ENbweS9dY9nE=;
 b=pQkNeClTp2cf5DYqzAKqS48zGZdNUDqc9VZ7tpoKCvLUMnWKlkari52Nb79LdNPm8E
 WTOtoAFWCysbP4teqhLKD5GSMyi4zP1zomk2lES0NPpsDpSq6qk5X4Y9PA9/7IiCkthS
 EPGhZxblrCf4u9372E1KKSmCVy/x+2XnKll7AfnCQyoPi/xcuM62orWhXrqdwqDxpAIk
 xTahI+RAIZI7t8z889baVqjk6B+tztSHvaTWDDGP9ow8cc3HRHbHdhJkdACksUPCxfc8
 z27dcPZ6YJfUJ20E0eF0C0Z4pYhqRhMAyyn4RnNjSECWwEimYpST9CdhWXEVNjntMyBx
 0egw==
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/vlv_dsi: Control panel and
 backlight enable GPIOs on BYT
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
Cc: ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSGFucywKCnRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaCEKCk9uIEZyaSwgTm92IDI5LCAyMDE5
IGF0IDc6NTggUE0gSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4gd3JvdGU6Cgo+
IC0gICAgICAgLyogR1BJTyBEZXNjIGZvciBDUkMgYmFzZWQgUGFuZWwgY29udHJvbCAqLwo+ICsg
ICAgICAgLyogR1BJTyBEZXNjIGZvciBwYW5lbCBhbmQgYmFja2xpZ2h0IGNvbnRyb2wgKi8KPiAg
ICAgICAgIHN0cnVjdCBncGlvX2Rlc2MgKmdwaW9fcGFuZWw7Cj4gKyAgICAgICBzdHJ1Y3QgZ3Bp
b19kZXNjICpncGlvX2JhY2tsaWdodDsKCkkgdGhpbmsgd2hhdCBoYXBwZW5zIGhlcmUgaXMgdGhh
dCB5b3UgcmVpbXBsZW1lbnQKZHJpdmVycy92aWRlby9iYWNrbGlnaHQvZ3Bpb19iYWNrbGlnaHQu
YwoKVGhlIGV4aXN0aW5nIHBvd2VyIGNvbnRyb2wgR1BJTyBhbHNvIHJlaW1wbGVtZW50cwpkcml2
ZXJzL3JlZ3VsYXRvci9maXhlZC5jIGluIGEgc2Vuc2UgYnV0IEkgYW0gdW5kZXIgdGhlCmltcHJl
c3Npb24gdGhhdCB4ODYgaW4gZ2VuZXJhbCBhbmQgQUNQSSBpbiBwYXJ0aWN1bGFyCmhhcyBhIHBy
b2JsZW0gd2l0aCB0aGUgcmVndWxhdG9yIHN1YnN5c3RlbSBzbyBJIGFtCnVuY2VydGFpbiBhYm91
dCB0aGF0IG9uZS4KCldoZW4gSSBsb29rIGF0IHRoZSBjb2RlIEkgZ2V0IG1vcmUgY29uZnVzZWQg
YmVjYXVzZQpub21pbmFsbHkgcGFuZWxzIHNob3VsZCBoYXZlIHRoZWlyIG93biBkcml2ZXJzIGlu
CmRyaXZlcnMvZ3B1L2RybS9wYW5lbC8qIGVzcGVjaWFsbHkgRFNJIHBhbmVscywgYW5kIHRoZQpw
YW5lbHMgY29udHJvbCB0aGVpciBvd24gR1BJT3Mgb3IgcmVndWxhdG9ycyBmb3IgcG93ZXIKYW5k
IGJhY2tsaWdodC4KCkkgd2FzIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRoYXQgSGVpa2tpJ3MgYW5k
IERtaXRyeSdzCnJlY2VudCBhZGRpdGlvbnMgdG8gc29mdHdhcmUgbm9kZXMgd291bGQgbWFrZSBp
dApwb3NzaWJsZSB0byBhY3R1YWxseSBzcGF3biBkZXZpY2VzIGxpa2UgdGhlIEdQSU8gYmFja2xp
Z2h0CmFuZC9vciBmaXhlZCByZWd1bGF0b3IgYW5kIHB1dCByZWZlcmVuY2VzIHRvIHRoZW0gc28K
dGhhdCB0aGUgZHJpdmVycyBjYW4gcGljayB0aGVtIHVwIGZyb20gdGhlIHJlc3BlY3RpdmUKZnJh
bWV3b3JrcyBhbmQgbWFuYWdlIHRoZW0/CgpNYXliZSBJIG1pc3VuZGVyc3Rvb2QgdGhpbmdzIGhl
cmUgdGhvdWdoLCBJIGFtIGEgYml0CnVuZGVyIHRoZSBpbXByZXNzaW9uIHRoYXQgZWxkZXIgRFJN
IGRyaXZlcnMgYXJlCmNvbnNpZGVyZWQgImVsZGVyIGdvZHMiIGFuZCBkbyBub3QgbmVlZCB0byB1
c2Ugc2VwYXJhdGUKcGFuZWwgZHJpdmVycywgYmFja2xpZ2h0IGFic3RyYWN0aW9uIGV0YywgYW5k
IGluIHRoYXQKY2FzZSBqdXN0IGdvIGFoZWFkLCBJIGd1ZXNzLgoKQnV0IEkgc3VzcGVjdCBzb21l
IHNlcGFyYXRpb24Kd291bGQgaGVscCB0aGUgZGF5IHRoZSBpOTE1IGRyaXZlciB3YW50cyB0byBy
ZXVzZSBzb21lCnJlYWxseSBjb21wbGV4IERTSSBwYW5lbCBmcm9tIGRyaXZlcnMvZ3B1L2RybS9w
YW5lbC8qCnRob3VnaC4KCllvdXJzLApMaW51cyBXYWxsZWlqCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
