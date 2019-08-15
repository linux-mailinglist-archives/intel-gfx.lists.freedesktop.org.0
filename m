Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 486568F5D9
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 22:41:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 392106EA71;
	Thu, 15 Aug 2019 20:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05846E17F
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 20:41:35 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id q188so2338226vsa.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 13:41:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Nb2GJD3uUxRw1eNtuUHCV6QHr+kXX1k1Ra9yGPCMf4=;
 b=Z9jYy93rHi6itqKnHT8Oo50d12LSvFl8fbYOF6YfXij/9acNT3UB6kn4IAjpaKQpCY
 6DBIRqxgGfQGDQFLC786uHySdzluYd0WsWQTgdwASntONZU0dkryyBthFIoyUgKm9wKc
 jKPsqy4m0dETMdgx9bAYksaymmpturBjDWOoTLUcoo77QtXj4xAAZq+e8MeBArfUVZ5N
 3Dp7KIzBVrCiXaOP//22xOUzASO+hMTO2iPpRsgpdmM3b1rLh1dzP9h9A+c1YZ2GMHUf
 uy58/YYFnJNwHxstvgejIdUz/gvutGP2MeBmNc5rXDXN5DvoOAEnKsYEAEpmQGqYh9ic
 EZYw==
X-Gm-Message-State: APjAAAW6NtB+JpqwktDWxiNp68IiO/zlDypXfLQKN1s3LFPqDNREoblX
 ZjOitP4foF+HvOwykp04PpZUIqJYUYeNSvA2kIk=
X-Google-Smtp-Source: APXvYqyGmI0JX0PJtFb8Bixp18YrvgsuMYqfcnaShOCLecMIO9SFoM1uvHheTA3BqpnqRtk7mVehqThfs+Ie86xpJUU=
X-Received: by 2002:a67:f450:: with SMTP id r16mr4441264vsn.119.1565901694775; 
 Thu, 15 Aug 2019 13:41:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190814092643.1908-1-chris@chris-wilson.co.uk>
 <20190814092643.1908-7-chris@chris-wilson.co.uk>
In-Reply-To: <20190814092643.1908-7-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 15 Aug 2019 21:41:08 +0100
Message-ID: <CAM0jSHOJLmhcngbz6+s10sXaB+T3EmH46-fUrPcL8hf3UpXVYQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=0Nb2GJD3uUxRw1eNtuUHCV6QHr+kXX1k1Ra9yGPCMf4=;
 b=LgjFyxsWnFToIGDUMq7Ite/rg7hc6MdPLTfYgn/3qgeP6ocWd6c5PDyXY8nHYXKCjs
 aTz3Jj+4PRHLtCA0IPOw44brFyGDouK7RHv+9iVO4ZGmnkb/LwYbvOfFvr/V3R4u+mV5
 cmwuq1osGCB5T2437nz9RZ6gMwPYpCTjvza27dhxfDpa46c55a/y6DcPiK16FW9CMkuj
 ig+8w8fhtF7hJzV4w5sdnyAZDDRwyyW8aSYhfV/qw42zF8ME3Yt5kODD4MDmb4M70xtQ
 IjQFi0iGlCUAD6YwvwFBuqCwrQpM4ml0UA32vyYW53YK/JIIaCSuO2TQKjeiwkqTWo0O
 leZw==
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Extract intel_frontbuffer
 active tracking
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

T24gV2VkLCAxNCBBdWcgMjAxOSBhdCAxMDoyNywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gTW92ZSB0aGUgYWN0aXZlIHRyYWNraW5nIGZvciB0aGUg
ZnJvbnRidWZmZXIgb3BlcmF0aW9ucyBvdXQgb2YgdGhlCj4gaTkxNV9nZW1fb2JqZWN0IGFuZCBp
bnRvIGl0cyBvd24gZmlyc3QgY2xhc3MgKHJlZmNvdW50ZWQpIG9iamVjdC4gSW4gdGhlCj4gcHJv
Y2VzcyBvZiBkZXRhbmdsaW5nLCB3ZSBzd2l0Y2ggZnJvbSBsb3cgbGV2ZWwgcmVxdWVzdCB0cmFj
a2luZyB0byB0aGUKPiBlYXNpZXIgaTkxNV9hY3RpdmUgLS0gd2l0aCB0aGUgcGxhbiB0aGF0IHRo
aXMgYXZvaWRzIGFueSBwb3RlbnRpYWwKPiBhdG9taWMgY2FsbGJhY2tzIGFzIHRoZSBmcm9udGJ1
ZmZlciB0cmFja2luZyB3aXNoZXMgdG8gc2xlZXAgYXMgaXQKPiBmbHVzaGVzLgo+Cj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2Vk
LWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
