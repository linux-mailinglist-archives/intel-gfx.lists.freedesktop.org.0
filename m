Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 198F33942C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 20:21:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DEF889DDF;
	Fri,  7 Jun 2019 18:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5780689DDF
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 18:21:25 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id p26so222101edr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 11:21:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=U0jphG/Tcr3SMakeV5kZrQpfobEb/VW1r6MUqG1ove8=;
 b=B45WY07y/0llvjk+PHTF+il+u/ktLpv8B8of1SkVOI/oXrtfiX7A3RPKbcDkdBaIxj
 dlVj/danvE/MH4Le5kYW5FhxxN2lQC2pD31q0aA7Dxbir31P9wcDUhXoBey64lkygCtw
 RD7sqSlFvGlZ0gfj1T2zOtXo7tNEEIgofBDVbJuhHp/fSW/31YBcZJtSE68s5M1NpqSR
 n71kUFoGeidO9hS4npWfS3+cgUGtxJgN76DmDlOcBqFnOZRKa7F7RG7krdBENrh60pSs
 5i+WgpaGAaPP9aFdONq5RO/USSn8iEnZ3RUIgRAQDWBhrce2ZiVqV5rLsx8+SMxHni1Q
 hyEQ==
X-Gm-Message-State: APjAAAWEKEmS8u/cMMQ5AzOQrBFNwqwen3hQRBkMSrOJYv7giXB58Nrd
 2yt2poR+El2/iEUCSvZiAPwLaCNjfNM=
X-Google-Smtp-Source: APXvYqwqvGHhcnuNoYLnj/5V/5kPfsNi9a1+g1uIoi7HlgH09vZa8pEHCND7TBi4nfAlv5JUqiaplQ==
X-Received: by 2002:a17:906:6013:: with SMTP id
 o19mr8764804ejj.294.1559931684011; 
 Fri, 07 Jun 2019 11:21:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 11sm483031ejv.64.2019.06.07.11.21.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 11:21:23 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:21:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190607182121.GL21222@phenom.ffwll.local>
References: <20190607162611.23514-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607162611.23514-1-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=U0jphG/Tcr3SMakeV5kZrQpfobEb/VW1r6MUqG1ove8=;
 b=PEkr8fwOzixPd2j7CPFcmhM8/ymdttIKBWtRkuP21mFjnBaXu3JXlRM1HjDjYFm+YY
 s/BR9izN4cYYHoiPjv9O6gRVVMtHoBFNWAw3Yne1rZvW0szjUjZ2E7b0JNEfLnhDHOUe
 bi6LulWuG1hxE9yyARv/BcmGwkKL2/MVUCyRo=
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/fb-helper: Do not assume
 drm_mode_create_from_cmdline_mode() can't fail
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMDcsIDIwMTkgYXQgMDc6MjY6MDhQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IGRybV9tb2RlX2NyZWF0ZV9mcm9tX2NtZGxpbmVfbW9kZSgpIGNhbiByZXR1cm4g
TlVMTCwgc28gdGhlIGNhbGxlcgo+IHNob3VsZCBjaGVjayBmb3IgdGhhdC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoK
UmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CgpBc2lk
ZSBJIG5vdGljZWQgdGhhdCB3ZSBjYW4gZHJvcCBhIGZldyBFWFBPUlRfU1lNQk9MIGhlcmUsIEkn
bGwgdHlwZSBhCnBhdGNoLgotRGFuaWVsCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fZmJf
aGVscGVyLmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBl
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxwZXIuYwo+IGluZGV4IGI5YjdjMDZjYmM0
Zi4uYmRmYTE0Y2Q3ZjZkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJfaGVs
cGVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jCj4gQEAgLTIyMDUs
NyArMjIwNSw5IEBAIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpkcm1fcGlja19jbWRsaW5lX21v
ZGUoc3RydWN0IGRybV9mYl9oZWxwZXJfY29ubmVjdG9yICpmCj4gIGNyZWF0ZV9tb2RlOgo+ICAJ
bW9kZSA9IGRybV9tb2RlX2NyZWF0ZV9mcm9tX2NtZGxpbmVfbW9kZShmYl9oZWxwZXJfY29ubi0+
Y29ubmVjdG9yLT5kZXYsCj4gIAkJCQkJCSBjbWRsaW5lX21vZGUpOwo+IC0JbGlzdF9hZGQoJm1v
ZGUtPmhlYWQsICZmYl9oZWxwZXJfY29ubi0+Y29ubmVjdG9yLT5tb2Rlcyk7Cj4gKwlpZiAobW9k
ZSkKPiArCQlsaXN0X2FkZCgmbW9kZS0+aGVhZCwgJmZiX2hlbHBlcl9jb25uLT5jb25uZWN0b3It
Pm1vZGVzKTsKPiArCj4gIAlyZXR1cm4gbW9kZTsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKGRybV9w
aWNrX2NtZGxpbmVfbW9kZSk7Cj4gLS0gCj4gMi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0
d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
