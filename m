Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E09DEE477D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 11:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64FE6E949;
	Fri, 25 Oct 2019 09:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E04136E949
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 09:38:14 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id k15so1035183vsp.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 02:38:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p/eA33SeZT319xtqbKgft+hJuAC6wG3cCy2EHCVfVYM=;
 b=hLLIk3vUzFHW9ZVfi4oKs0p5mGug8OebSApvaAzOhNqOk5TedQVceFAMarG0lGWu0G
 HCkJu69SBHKvBKqMPLk1Ez5aM8W3DH5JwZaOZCaKLNczMOLMPEPGF1sNB/9qiXW5k7rM
 ZuUaivTkcgoDIm5AwfHV5aGJV2N1cI25VPTSI0+DoVpGX8ee9bRxZe/oVBYyblqi2nq2
 iPo0+Yd7BKpmUh+2ssH/84RovMaed9eyXuSuBR/ZvvVG+Qe8KQC7+2n7vAZchSEnXOwk
 c6cfrXdMp5zhaJBMVlDSB11DfSkVdv/C3fWC3ebOe6soHn5lsa+u4pVLckGYvAj0LIoT
 bZ1g==
X-Gm-Message-State: APjAAAUUw6Xz+3AKMavuIZV/Z2t4+sPJ05sDZT60yrGxt+ih2jegJujl
 1OmENXTbJnRRCjurVLb0UuE2c8cJZXcuCtJdeLk=
X-Google-Smtp-Source: APXvYqwm0jVlBlettlk/9+YOdd8HTZvGu1xQNrv0PxqcCjBPk4YNx5ftKyRlR2O9otWV5Rzus7lyMpZrJl3DHzH6JQk=
X-Received: by 2002:a67:cf05:: with SMTP id y5mr1452758vsl.34.1571996293922;
 Fri, 25 Oct 2019 02:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <20191025092749.13468-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191025092749.13468-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 25 Oct 2019 10:37:46 +0100
Message-ID: <CAM0jSHOQuUc9phxVk3DQNzAVrGLK7AepdPfH2d67Dm3rm9u-mA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=p/eA33SeZT319xtqbKgft+hJuAC6wG3cCy2EHCVfVYM=;
 b=SKmbJ+XoBze+mJ19LdyfHCM9DufkK9KaLC7rnEvOG5w6lsHh2Xa8+hx5vjFyqs3D0e
 FgBDflm4ODdANhTP7j+6smAhF1NhhuVTmju9Pqz5xXNdGwYvG19pchyMicmg65j24Tqw
 2zlUFpyhIg74he7BBVaqACdWdxZB0ZF9ayvSTUYt4brWEnE9DY4YvNYMPMKcQwnSTyj5
 eQmBOzE43RAMpLrRdLda32MqvqLJtaQjqUWtIGeMOJjThxhA1xetsYXSG4d7Yowoboz3
 d3HFOe28t9kubChDo7TX5L8hJOsfuuwAjgMNXCzOgDS9EpJde56sRw1/6ejBFNAE8Mzt
 gU/A==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Tweak the default
 subtest runtime
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNSBPY3QgMjAxOSBhdCAxMDoyNywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQkFUIGlzIGdyb3dpbmcgYSBsaXR0bGUgZmF0IGFuZCBD
SSBpcyB1bmRlciBwcmVzc3VyZSBhbmQgbmVlZHMgdG8gdHJpbQo+IG9mZiBzb21lIHJlZHVuZGFu
dCBydW50aW1lLiBBbiBlYXN5IG9wdGlvbiB0byByZWR1Y2UgdGhlIHNlbGZ0ZXN0Cj4gcnVudGlt
ZXMsIHNvIHRyeSBoYWx2aW5nIG91ciBkZWZhdWx0IHN1YnRlc3QgdGltZW91dC4gV2hpbGUgdGhp
cyByZWR1Y2VzCj4gdGhlIG51bWJlciBvZiBpdGVyYXRpb25zIHVzZWQsIGZvciB0aGUgbWFqb3Jp
dHkgb2YgdGVzdHMgdGhhdCBhcmUKPiBwYXNzaW5nLCByZXBlYXQgcnVucyAod2l0aCBkaWZmZXJl
bnQgQ0lfRFJNKSB3aWxsIG1ha2UgdXAgdGhlCj4gZGlmZmVyZW5jZSAtLSBhIG5lZ2F0aXZlIGNv
bnNlcXVlbmNlIHRob3VnaCBpcyB0aGF0IHdlIG1heSByZWR1Y2UgdGhlCj4gZnJlcXVlbmN5IG9m
IHNwb3JhZGljIGZhaWx1cmVzLiBIb3BlZnVsbHksIHdlIGhhdmUgbm8gdGVzdHMgdGhhdCB3ZXJl
Cj4gY3J1Y2lhbGx5IGRlcGVuZGVudCBvbiB0aGUgZml4ZWQgMXMgdGltZW91dC4uLgo+Cj4gU3Vn
Z2VzdGVkLWJ5OiBUb21pIFNhcnZlbGEgPHRvbWkucC5zYXJ2ZWxhQGludGVsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5jb20+ClJldmlld2VkLWJ5
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcud2lsbGlhbS5hdWxkQGdtYWlsLmNvbT4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
