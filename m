Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5DEE028F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 13:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF91C6E5D7;
	Tue, 22 Oct 2019 11:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D9D6E5D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 11:14:15 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id d66so3491167vka.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 04:14:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o4TR4BvmjmIf+P+N4wqfi62NB7oYgg1o2zfbEzswiys=;
 b=fDJnpUej5kWEPql35vci35rx9eYI1Gu5B3yIY5RQEQT3q8oAfIOBQLzlqC2Bzv4HsY
 OZg8T3NAfJ06+jfDD3uUx9HMZ/zotAwj/M5JDStM5uyQQa39H/6aR3AUnJYTUjAMHkOO
 FR3Vr1i+expBrLpkYVR9Foy0KwuRuxfO+EHrewfaFJXs4OguHLz3zjhJdv35LY9Xb8lG
 i+/RyBQbu+NoPGPuzcA1PS8SbRAJTXIgxTfAZdcPgotaFiJeVQwlAckMWm0dkTbN/oVe
 n6K8yHHmw5QNf6PgeZuxoRz0ZiHRfpDk8802KhGprNZRwZ8ZVPPUuPL92mR9dJX5AkAM
 Slqg==
X-Gm-Message-State: APjAAAUL5QUqHt3fAAISJb5vrInayiMfe23HnV/jgZOXpgF3Q+cKANGJ
 EOlbAYPttm+l0RJYC/Veh0ZEsvT1d3X7rDCobFc=
X-Google-Smtp-Source: APXvYqzps66VZveyLkvq5U9T5OsTz/p9NZYpWYy0UwiVGmlxW+XLP4V7w+dBCbvz4BNLhQ6Ka+qCrlGG8Wkqo/0AOcA=
X-Received: by 2002:a05:6122:328:: with SMTP id
 d8mr1547372vko.14.1571742854726; 
 Tue, 22 Oct 2019 04:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191022095851.23442-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191022095851.23442-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 22 Oct 2019 12:13:48 +0100
Message-ID: <CAM0jSHProA93GopDE86VYfpRA3XFUutV4mwyM0qacJyNGgqffQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=o4TR4BvmjmIf+P+N4wqfi62NB7oYgg1o2zfbEzswiys=;
 b=pn55gKPSuNtvcJKDbYoWazdpsp2wyNDzLd2HuoN7qaFV3vaCIKkFDt4x9DNPdChyHl
 Q6wob3CXlDytUohBTm6FpNqHQErDOHrP23dnC1pE0dX+js/0iuj+37r4h1hpRFQg9KIo
 pkoClnVp7W+2Z1SUO5S+OnUGr/4wc/X9Wf0BSIeOJzIxkzTq6/dWIkbQ3lzKQCxjpp+K
 vHdD8/+6M7Mnw2k3PDqGHQoUpYIqnrf0J7XH05hfQxSj0dHtuoel/LIfdOv4bu3xQxCE
 Q86jZ/tcxUIzSYAgwlXeuPW7M+RkrhIVTMhbUz9RAYtXsMW3wt4i+bGRgo0OM4BaSvkr
 OrSA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Set vm->gt backpointer
 for mock_ppgtt
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

T24gVHVlLCAyMiBPY3QgMjAxOSBhdCAxMDo1OSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQWRkIHRoZSBiYWNrcG9pbnRlciB0byBwcGd0dCBhbmQg
aTkxNS0+Z3Qgc28gdGhhdCB3ZSBjYW4gdHJhdmVyc2UgYWNyb3NzCj4gdGhlIGRldmljZSBoaWVy
YXJjaHkuCj4KPiBSZXBvcnRlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENj
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
