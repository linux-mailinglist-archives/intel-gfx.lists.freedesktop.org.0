Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C3475177
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 16:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF176E768;
	Thu, 25 Jul 2019 14:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA7C6E765;
 Thu, 25 Jul 2019 14:42:21 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id r3so33821710vsr.13;
 Thu, 25 Jul 2019 07:42:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KjAQDI1p7z+VAMxIPclqQT4ynBxE0v4TurJ2heUNkNM=;
 b=Tfa8caR5Vlozh1H8XFlegzMWqTKUTVlDKpg8VGNl6ErI06tjhE3YlE5Zm6bYpDP1y7
 fXy35X+CLB7cPLseHRDiIjgtXQTSUlT2Bk0uNMf2TsOqwku1XVexkLZqIpSJ9t9lFV8Z
 dphx+k4pXe3g8aKkVTRk9WFskzCV0k9VtQ29yK1fdjgp3eoBhd/ws17QkdovDWDsjEfC
 AKXw7Fe4yeToxFhMPdHrGmHZn5FmRbgrmY1da+uFx0sfJs66Do7FGCMYaw8kn6R1RgrK
 hL3csRJIOE3u8qw37L+l3m657m74v1NMgQzQ9RSNlX7HI8HtcFcagbSeEkUDdDZTwmzO
 MPew==
X-Gm-Message-State: APjAAAUQbrW/zcW9ehVnncyNRGTfVISZ8eeuflWxky131MSrAjE1ABzx
 WdyXVHYOJjkKh+mblyZmVqKqot5kvmpEalsfNNnABQ==
X-Google-Smtp-Source: APXvYqxq73EovgQFs1phIi5pLxcOFc2J50hzrOjhodQeFMNuQ6Wh2ZBgJA4dXhdjO9lrm19PRtlKJb7/MftnuSurl/Q=
X-Received: by 2002:a67:f1d6:: with SMTP id v22mr52971462vsm.178.1564065740320; 
 Thu, 25 Jul 2019 07:42:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190723161730.23535-1-chris@chris-wilson.co.uk>
 <20190723161730.23535-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190723161730.23535-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 25 Jul 2019 15:41:54 +0100
Message-ID: <CAM0jSHMJZ7bAWdyace01ss49AYRf5kv9QNJv_oBs0f9Cf6J5tQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=KjAQDI1p7z+VAMxIPclqQT4ynBxE0v4TurJ2heUNkNM=;
 b=WJ9mI7yTtNrQSs/b9MB9/rPgkv6DYXKtoG+LqrDdtNiKqLy8ZJCkYtdrLjiPixdnsa
 252EsoBJJPYJcq7nuPXk3Fv9YwlCwx7BgA19cyNF8CrG9hubP6UTnnBnOmJC9FWgxR0L
 HNesrmNNkq9CZBRGs+FCWW2lry9W/m+FIsCJI0uYQojyGu5h0l5z6/uNQYAxhvMgXFd3
 nIPVmzKCxQ7T3MiiCp53I3DoUX3qLGolIhIJLQwWIVCqNzG9sEXoGDpZn1D+GLfZpT5O
 IlIsqz+IrrubHbQDZaw8QEFHuJ+GnBygRyi/zarM3mz/bAK/5cii210zbTRkGyhW1vfw
 mU+Q==
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] i915/gem_ctx_shared:
 Avoid clflush by using WC for readback
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

T24gVHVlLCAyMyBKdWwgMjAxOSBhdCAxNzoxNywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQXMgd2UgbmV2ZXIgb2ZmaWNpYWxseSB3cml0ZSB0byB0
aGUgc2NyYXRjaCBidWZmZXIsIHRoZSBrZXJuZWwgd2lsbAo+IGxlYXZlIGl0IGluIHRoZSBDUFUg
cmVhZCBkb21haW4gdXBvbiBleGVjdXRpb24uIE91ciBhdHRlbXB0IHRvCj4gaW52YWxpZGF0ZSB0
aGUgQ1BVIGNhY2hlIG9uICFsbGMgaXMgdGhlcmVmb3JlIHNraXBwZWQgYXMgdGhlIGtlcm5lbAo+
IGRvZXNuJ3QgYmVsaWV2ZSB0aGUgYmFja2luZyBzdG9yZSBoYXMgYmVlbiBpbnZhbGlkYXRlZC4g
VXNlIGEgV0MgbW1hcCB0bwo+IGF2b2lkIHRoZSBDUFUgY2FjaGUgZm9yIHJlYWRiYWNrLCBhbmQg
YWRkIGFuIGV4dHJhIHNhbml0eSBjaGVjayB0aGF0IHRoZQo+IHNjcmF0Y2ggYnVmZmVyIGlzIGZv
dW5kIGF0IHRoZSBzYW1lIGxvY2F0aW9uIGFmdGVyIGV4ZWN1dGlvbi4gKFRoaXMKPiBzYW5pdHkg
Y2hlY2sgZG9lcyBub3QgYWZmZWN0IHRoZSBmYWlsdXJlIHJhdGUgb24gYnN3LCB0aGF0IGlzIG9u
bHkgZml4ZWQKPiBhZnRlciByZWFsaXNpbmcgdGhhdCB3ZSBkbyBub3QgY2xmbHVzaCBmb3IgdGhl
IGludmFsaWRhdGUgcHJpb3IgdG8gdGhlCj4gcmVhZCkuCj4KPiBCdWd6aWxsYTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMTg3Cj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
