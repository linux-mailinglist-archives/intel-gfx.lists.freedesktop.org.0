Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAA7112EB5
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 16:40:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107AC6E0CC;
	Wed,  4 Dec 2019 15:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E916E91D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 15:40:14 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id p6so2966vsj.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Dec 2019 07:40:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hjxvzBzEIW4AdBc+cR03m7k+0wukHyidS1YxhLthhkM=;
 b=qf7aOprs7LQA7WdkGofhcvPiMdybfrCjXRHiQ6Ee4ViaTuSmVkjoDEl3tXrHVGm0CV
 LvX1h76lp7yYSDe1WoWc60OVlAtxAF9sQ3XSbQ+vhVpoXSFMoNiD+3pEbSLeZgoHYF8F
 j7Glcmg4enme1+WJPhpdsGQEtMcMO9UYuprgvENQnpKXzMZMONb+W+2meJfhVIWvwVdw
 1pionoJF0HfUxjGYn/XMWYS88v2X3IespIOV6c89AtL80huc9puqfSh2NLrYEn7iq70K
 JgRMgTbRaTBb0wGXGzAfZjykzaaRzOiVJ6/klN3HaHkbENPc4W6NbZROOyaV8e/O6Hof
 vVbA==
X-Gm-Message-State: APjAAAVIich5/BIqnboidFe27ro2dFy612+gKE8W+LK8+QqN7N7ETnbj
 IdLGUD3tS8q1d/VvtboQod2KfSq2Az//p1/tJOA=
X-Google-Smtp-Source: APXvYqwTljpfQY5p3qm7/g/DkJRjN+eouHCDJ75O1ZnbIwtI/c1kXYPOz4EfOgksL2ampa/Rimb5ywJ9pW54sDWX1Ug=
X-Received: by 2002:a67:b649:: with SMTP id e9mr1940829vsm.34.1575474013493;
 Wed, 04 Dec 2019 07:40:13 -0800 (PST)
MIME-Version: 1.0
References: <20191204123556.3740002-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191204123556.3740002-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 4 Dec 2019 15:39:46 +0000
Message-ID: <CAM0jSHP1au1QXVfSHcvkLG5qb_eEXuezeB_MfUhZRcGz9pDCqQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=hjxvzBzEIW4AdBc+cR03m7k+0wukHyidS1YxhLthhkM=;
 b=mfycln9h6AaYZZwJ3SAb3Vaqa68SFIU7hfllbJUzRJq3yVaXjEyMmbLrIt6X8ypEZm
 qDAok1gRq2HqBdWB/h3i3sIDGwBX4vaRYF0OzjYnegIRTycHpecmp8psTn+3hhejhaC3
 8gvl8bsI6q5ibOROmjbWYFsbjIIQ7D7T52OcXlgGlWJ1+Qmgz8BYrwlN4GdY1lY1KWe7
 pyoJUDzxK8l8/IJ2Op+WFTh+W4S9k3p6Ce7jRxwajfgfFsdCEWwEw0DMNDEe+ByHbqqZ
 8URe4bNbjTjF1/2hUbAQ03+I/YEsPKV04g1a9nEt3opoO1bylH4p2Y+T5nlrXUcdDBdY
 VDRw==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Try to flush pending unbind
 events
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCA0IERlYyAyMDE5IGF0IDEyOjM2LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBJZiB3ZSBjYW5ub3QgaGFuZGxlIGEgdm1hIHdpdGhpbiB0
aGUgdW5iaW5kIGxvb3AsIHRyeSB0byBmbHVzaCB0aGUKPiBwZW5kaW5nIGV2ZW50cyAoaTkxNV92
bWFfcGFya2VkLCBpOTE1X3ZtX3JlbGVhc2UpIGFuZCB0cnkgYWdhaW4uIFRoaXMKPiBhdm9pZHMg
YSByb3VuZCB0cmlwIHRvIHVzZXJzcGFjZSB0aGF0IGlzIG5vdCBndWFyYW50ZWVkIHRvIG1ha2Ug
Zm9yd2FyZAo+IHByb2dyZXNzLCBhcyB0aGUgZXZlbnRzIHdlIHdhaXQgdXBvbiByZXF1aXJlIGJl
aW5nIGlkbGUuCj4KPiBSZWZlcmVuY2VzOiBjYjZjM2Q0NWY5NDggKCJkcm0vaTkxNS9nZW06IEF2
b2lkIHBhcmtpbmcgdGhlIHZtYSBhcyB3ZSB1bmJpbmQiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1h
dHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
