Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E3C102E09
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 22:11:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848196E98A;
	Tue, 19 Nov 2019 21:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA57A6E98A
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 21:11:18 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-128-_d5RCDZkP4majSbNIVDYxA-1; Tue, 19 Nov 2019 16:11:14 -0500
Received: by mail-wm1-f70.google.com with SMTP id d140so2161208wmd.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 13:11:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=woF81tv3baZA4NATU2njiFI1wapbHolf3vjEE5/ne28=;
 b=p3R+rjqCqytURXxGHfTM0s0kQKcAVrr2dMfLTs3efWY0yx2/eOHOxpaT6ODB68jOOA
 jkrzGonlhpQ9KEnqVkm1Y1KWUw8GwrX1QWv26yjcMm6DflSkBbda80wzQ2w7Cll92wqX
 y4JWWaQ6wd5yaqpABgO/XfvKdLiFaPKPzAdEEuh3GSdtcqkSwHEjTYr9LmFZqtHQC/bj
 D6jh+PIgAlM9NzCLLAmATcy9KKb71IhHIuH9WBkUs+6csQDeBIsQJhKSoJ8UW6aKjVCL
 faR3t9dhv0qMt08izAuxoTy/h3L/ITt46fm69/R+Xl78QX4So/R7rGjsvakhCm2jIc22
 lXEw==
X-Gm-Message-State: APjAAAWTVMFVOUlPr122EK8kT2132E2lQE5Ko5w+iJoyGW3n4Hl2QZsd
 6n+AKLW5bghUrOSmY0s2FyFXIziIIXI6ImTW1FabphzB2x8W1NP91lN+g0j3fVQ9afDF9/bSdZz
 dZXqcDyKk75GConYTNzkLCf2m0u05
X-Received: by 2002:adf:979a:: with SMTP id s26mr40911754wrb.92.1574197873009; 
 Tue, 19 Nov 2019 13:11:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqyhjr9l/EKz0F0q0lOIRKR+LmTlbjw2jEnxiKaFI8IPSLD0SHbSUWreolYR05Fun/jalMOs6g==
X-Received: by 2002:adf:979a:: with SMTP id s26mr40911726wrb.92.1574197872678; 
 Tue, 19 Nov 2019 13:11:12 -0800 (PST)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl.
 [84.106.84.65])
 by smtp.gmail.com with ESMTPSA id a206sm4533955wmf.15.2019.11.19.13.11.11
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Nov 2019 13:11:11 -0800 (PST)
To: intel-gfx@lists.freedesktop.org
References: <20191119151818.67531-1-hdegoede@redhat.com>
 <157419201213.32168.9058536852250864215@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <26a3391a-b451-d6bd-0391-6c013c326c2e@redhat.com>
Date: Tue, 19 Nov 2019 22:11:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <157419201213.32168.9058536852250864215@emeril.freedesktop.org>
Content-Language: en-US
X-MC-Unique: _d5RCDZkP4majSbNIVDYxA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1574197877;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=u4zDctcG4h5mALHqb/8QsMVEycTGiZXtGNIPcjvrdME=;
 b=hZ1HYHJlcuGMNbOYLsKJCEopcaK7B01NEXLI2iZ1KeXYHjg+lYt3o+6pH3qQPkj4EO5MX+
 xRnMK2Ev6XeY4eO0m0ihd3bD7qfpzQ69C8wRxcbfrwV6Vbynf+uadK11ZyO0Yd22XR+0dw
 5Slw5ebwzgPGtNUibBzQnHQs7l1EG+Q=
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915_/_LPSS_/_mfd=3A_Select_correct_PWM_controller_to_use_base?=
 =?utf-8?q?d_on_VBT?=
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAxOS0xMS0yMDE5IDIwOjMzLCBQYXRjaHdvcmsgd3JvdGU6Cj4gPT0gU2VyaWVzIERl
dGFpbHMgPT0KPiAKPiBTZXJpZXM6IGRybS9pOTE1IC8gTFBTUyAvIG1mZDogU2VsZWN0IGNvcnJl
Y3QgUFdNIGNvbnRyb2xsZXIgdG8gdXNlIGJhc2VkIG9uIFZCVAo+IFVSTCAgIDogaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTY4Ni8KPiBTdGF0ZSA6IGZhaWx1cmUK
PiAKPiA9PSBTdW1tYXJ5ID09Cj4gCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1f
NzM3NyAtPiBQYXRjaHdvcmtfMTUzMzIKPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09Cj4gCj4gU3VtbWFyeQo+IC0tLS0tLS0KPiAKPiAgICAqKkZB
SUxVUkUqKgo+IAo+ICAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNo
d29ya18xNTMzMiBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKPiAgICB2ZXJpZmllZCBtYW51YWxseS4K
PiAgICAKPiAgICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5n
IHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKPiAgICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNTMz
MiwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0KPiAgICB0byBkb2N1
bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0
aXZlcyBpbiBDSS4KPiAKPiAgICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1MzMyL2luZGV4Lmh0bWwKPiAKPiBQb3NzaWJs
ZSBuZXcgaXNzdWVzCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQo+IAo+ICAgIEhlcmUgYXJlIHRoZSB1
bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzE1MzMyOgo+IAo+ICMjIyBJR1QgY2hhbmdlcyAjIyMKPiAKPiAjIyMjIFBvc3NpYmxlIHJlZ3Jl
c3Npb25zICMjIyMKPiAKPiAgICAqIGlndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMwOgo+ICAg
ICAgLSBmaS1pY2wtdTM6ICAgICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0KPiAg
ICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
Mzc3L2ZpLWljbC11My9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMC5odG1sCj4gICAgIFsy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTUz
MzIvZmktaWNsLXUzL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2ljLXMwLmh0bWwKCkZhbHNlIHBv
c2l0aXZlLCB0aGUgb29wcyByZXBvcnRlZCBoZXJlIGhhcyBub3RoaW5nIHRvIGRvIHdpdGggdGhp
cyBwYXRjaCBzZXJpZXMsIHRoZQp0ZXN0IHN5c3RlbSBpbiBxdWVzdGlvbiBkb2VzIG5vdCBldmVu
IHNlZW0gdG8gdXNlIGEgRFNJIHBhbmVsLCBzbyB0aGlzIGVudGlyZSBwYXRjaC1zZXQKYmFzaWNh
bGx5IGlzIGEgbm8tb3AuCgpSZWdhcmRzLAoKSGFucwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
