Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CC03948B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 20:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F73B89E41;
	Fri,  7 Jun 2019 18:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE98A89E41
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 18:44:02 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id w33so4341043edb.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 11:44:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=K7L6biRcKX6DrezW4PMdqKYrIiMvXHXwBuoc6gYVa/w=;
 b=U/UFrPycCc5/HS29796TmziIDof48X9+pVbh00vmGaptBtLlsxebquzlTwgpnXlo05
 +D/HqlBSDcHQuYgCXEvXyVh6hmYJ1T5UTnissgmCFs1407avZNGesBfJGKkecvZ3kVHx
 Pwn/+dnJ/awRZkGtbh/9opD9GC5JNAvWiGZCspmkGEJRUP7Kc38Pj8zyfCaS+uf8/2me
 ajoYKPRAXcseVJCzapwBwvm+xrvxI9NQrqa3Jn4r7UllXQpgaAF+ss72VpFsSHOd/zIj
 rtIa1JTTDylZOj8AbFjqY7pW0PhdPlWiPrJiCPnPPwGB4xX3zyuCHlGLch1oTCefnswZ
 YDDA==
X-Gm-Message-State: APjAAAVoTExluI8vz5BZny1lNdza/oAZmV/f85DvizHJi2wLzz96BeTR
 fFdl6aGDj4EV/7lzLa0c/7im/w==
X-Google-Smtp-Source: APXvYqz+W+mLqbjAldc2HSzNebmlzsH6nUBt9KIy52rZiVEtEipYLpgZF5FCR2QdI9uXC4d/Abd8Cg==
X-Received: by 2002:a50:b4fd:: with SMTP id x58mr49653551edd.190.1559933041486; 
 Fri, 07 Jun 2019 11:44:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id z3sm664237edh.71.2019.06.07.11.43.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 11:43:58 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:43:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190607184356.GO21222@phenom.ffwll.local>
References: <20190607162611.23514-1-ville.syrjala@linux.intel.com>
 <20190607162611.23514-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607162611.23514-4-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=K7L6biRcKX6DrezW4PMdqKYrIiMvXHXwBuoc6gYVa/w=;
 b=F8kv8zSrARdvl48m4JuaKfTvQzPFo0YlZqH3v51mbV803/uRs2k10jhahSiUSaqhQZ
 BjkRYZoFtopF/AGhjdrQJK84wnqG52v6Y9EzJlVTRopRQzBZrmPoVswpS8pAm9Z7IjsL
 8q3Gif829udIOP5HgszOFu8rqJ0Q/MER0tktI=
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Throw away the BIOS fb if has
 the wrong depth/bpp
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

T24gRnJpLCBKdW4gMDcsIDIwMTkgYXQgMDc6MjY6MTFQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFJlc3BlY3QgdGhlIHVzZXIncyBjaG9pY2Ugb2YgZGVwdGgvYnBwIGZvciB0aGUg
ZmJkZXYgZnJhbWVidWZmZXIKPiBhbmQgdGhyb3cgb3V0IHRoZSBmYiB3ZSBpbmhlcml0ZWQgZnJv
bSB0aGUgQklPUyBpZiBpdCBkb2Vzbid0Cj4gbWF0Y2guCj4gCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkgZ3Vlc3Mgd2Un
cmUgZ29pbmcgYm9vbSByaWdodCBub3csIHdoaWNoIGlzIG1heWJlIGEgYml0IG11Y2g/IGkuZS4K
Q2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZmJkZXYuYyB8IDExICsrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRp
b25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2ZiZGV2
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmRldi5jCj4gaW5kZXggMGQzYTZmYTY3
NGU2Li4xYTkzNWRjNzRkMjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZmJkZXYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2ZiZGV2LmMKPiBA
QCAtMTk5LDYgKzE5OSwxNyBAQCBzdGF0aWMgaW50IGludGVsZmJfY3JlYXRlKHN0cnVjdCBkcm1f
ZmJfaGVscGVyICpoZWxwZXIsCj4gIAkJZHJtX2ZyYW1lYnVmZmVyX3B1dCgmaW50ZWxfZmItPmJh
c2UpOwo+ICAJCWludGVsX2ZiID0gaWZiZGV2LT5mYiA9IE5VTEw7Cj4gIAl9Cj4gKwlpZiAoaW50
ZWxfZmIgJiYKPiArCSAgICAoc2l6ZXMtPnN1cmZhY2VfZGVwdGggIT0gaW50ZWxfZmItPmJhc2Uu
Zm9ybWF0LT5kZXB0aCB8fAo+ICsJICAgICBzaXplcy0+c3VyZmFjZV9icHAgIT0gaW50ZWxfZmIt
PmJhc2UuZm9ybWF0LT5jcHBbMF0gKiA4KSkgewoKQmlrZXNoZWQ6IEEgbGl0dGxlIGhlbHBlciB0
aGF0IGRvZXMgYWxsIHRoZXNlIGNoZWNrcyB3aXRoIGRlYnVnIG91dHB1dCwKYW5kIGp1c3Qgb25l
ICJ0aHJvdyBiaW9zIGZiIGF3YXkiIHBhdGggd291bGQgbG9vayBhIGxvdCBuZWF0ZXIuCi1EYW5p
ZWwKCj4gKwkJRFJNX0RFQlVHX0tNUygiQklPUyBmYiB1c2luZyB3cm9uZyBkZXB0aC9icHAgKCVk
LyVkKSwgd2UgcmVxdWlyZSAoJWQvJWQpLCIKPiArCQkJICAgICAgIiByZWxlYXNpbmcgaXRcbiIs
Cj4gKwkJCSAgICAgIGludGVsX2ZiLT5iYXNlLmZvcm1hdC0+ZGVwdGgsCj4gKwkJCSAgICAgIGlu
dGVsX2ZiLT5iYXNlLmZvcm1hdC0+Y3BwWzBdICogOCwKPiArCQkJICAgICAgc2l6ZXMtPnN1cmZh
Y2VfZGVwdGgsIHNpemVzLT5zdXJmYWNlX2JwcCk7Cj4gKwkJZHJtX2ZyYW1lYnVmZmVyX3B1dCgm
aW50ZWxfZmItPmJhc2UpOwo+ICsJCWludGVsX2ZiID0gaWZiZGV2LT5mYiA9IE5VTEw7Cj4gKwl9
Cj4gIAlpZiAoIWludGVsX2ZiIHx8IFdBUk5fT04oIWludGVsX2ZiX29iaigmaW50ZWxfZmItPmJh
c2UpKSkgewo+ICAJCURSTV9ERUJVR19LTVMoIm5vIEJJT1MgZmIsIGFsbG9jYXRpbmcgYSBuZXcg
b25lXG4iKTsKPiAgCQlyZXQgPSBpbnRlbGZiX2FsbG9jKGhlbHBlciwgc2l6ZXMpOwo+IC0tIAo+
IDIuMjEuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBv
cmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
