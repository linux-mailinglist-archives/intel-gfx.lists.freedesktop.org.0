Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C06F32B3AD
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 13:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118DC89711;
	Mon, 27 May 2019 11:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6137F89711;
 Mon, 27 May 2019 11:56:40 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id h1so2519745wro.4;
 Mon, 27 May 2019 04:56:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=RrvM+T+Id2DLWizNNM35IXAPR0FTKbmchMwwX+g49Ok=;
 b=WoiUcOXTVDgu34U50AJ5LYftPn8zpgP4e4AJWEeqr8vUkam1BHcSctMdFVW1P0PNRw
 JnGRfrLyL1ZFmIWmSjDDIF7wxiOdV6HIYDI9fWvMZVzXyX58PAzbp7HSCHzq2rHGznll
 Pael1E4C47rYIX+4HE5n4L+nKSuAKm8xEgu/2zTA0ApXP44ga9KMAM6XIzbtin/Bg7Zn
 cAPjGYrEW4W3MZiNRa4SElrcBef7KFHOIWH4JroPwKI1gBld81gvfjqwvCbX5AtoCM02
 NnthWV1iROm3nbnE4aLH29VWNrV3UQy8cPRwId3VVn6LtsunlNEPPoAPzKKSE67rpj9V
 VfNw==
X-Gm-Message-State: APjAAAXo+rE9ByQwilxg7OYN9ai2SnCpbatXpA6rdY1tULSn1p0mDWMI
 rGLykHpTMJ6+ZDMrs6Kh/zasVpCZ
X-Google-Smtp-Source: APXvYqzUPY4of0mitkdsY9cGuAb5rzV7+XYZTE/8KglbTSdFcoBMlqP9o6MPqkgmUJPKY/mdUbl2vQ==
X-Received: by 2002:a5d:6242:: with SMTP id m2mr7569983wrv.310.1558958198949; 
 Mon, 27 May 2019 04:56:38 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id r4sm8009527wrv.34.2019.05.27.04.56.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 04:56:38 -0700 (PDT)
To: Emil Velikov <emil.l.velikov@gmail.com>, dri-devel@lists.freedesktop.org
References: <20190527081741.14235-1-emil.l.velikov@gmail.com>
 <20190527081741.14235-13-emil.l.velikov@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <fe26eded-51b0-9b8f-47c6-22cff6383c60@gmail.com>
Date: Mon, 27 May 2019 13:56:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190527081741.14235-13-emil.l.velikov@gmail.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=RrvM+T+Id2DLWizNNM35IXAPR0FTKbmchMwwX+g49Ok=;
 b=F9owV3ReGr4jWwmf9J/35jUtDH7y5RWqCzKyCAQ5FC7wXP/eVWy89b+eD5Drzkt0j8
 B0Pgb4+VCIUthwWMOztNoZk2rscGc4BYT4+O0b1UneU3zKStDfHwqFr465tqxnK00P2o
 wD7BVG9vIkJKvIcVOAJZTQG7887m0B/guBZGlYfiJjWBdxRRuNJuH4aVtLnMV5PTApQZ
 Oky2JlXcy0rkhP+iC6JKlOUeBVOaagpMeoYkO/Ww+EnOJaBM4/11/87RPjmU1NF7sX8J
 CKHl6yWANnUPNCPEnyFak4dQ5GUBCWVq7B7NPHJ6A0Wxiw40VYJhkvvvrtXFza8OmWzT
 ILeA==
Subject: Re: [Intel-gfx] [PATCH 13/13] drm: allow render capable master with
 DRM_AUTH ioctls
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
Reply-To: christian.koenig@amd.com
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMjcuMDUuMTkgdW0gMTA6MTcgc2NocmllYiBFbWlsIFZlbGlrb3Y6Cj4gRnJvbTogRW1pbCBW
ZWxpa292IDxlbWlsLnZlbGlrb3ZAY29sbGFib3JhLmNvbT4KPgo+IFRoZXJlIGFyZSBjYXNlcyAo
aW4gbWVzYSBhbmQgYXBwbGljYXRpb25zKSB3aGVyZSBvbmUgd291bGQgb3BlbiB0aGUKPiBwcmlt
YXJ5IG5vZGUgd2l0aG91dCBwcm9wZXJseSBhdXRoZW50aWNhdGluZyB0aGUgY2xpZW50Lgo+Cj4g
U29tZXRpbWVzIHdlIGRvbid0IGNoZWNrIGlmIHRoZSBhdXRoZW50aWNhdGlvbiBzdWNjZWVkcywg
YnV0IHRoZXJlJ3MKPiBhbHNvIGNhc2VzIHdlIHNpbXBseSBmb3JnZXQgdG8gZG8gaXQuCj4KPiBU
aGUgZm9ybWVyIHdhcyBhIGNhc2UgZm9yIE1lc2Egd2hlcmUgaXQgZGlkIG5vdCBub3QgY2hlY2sg
dGhlIHJldHVybgo+IHZhbHVlIG9mIGRybUdldE1hZ2ljKCkgWzFdLiBUaGF0IHdhcyBmaXhlZCBy
ZWNlbnRseSBhbHRob3VnaCwgdGhlcmUncwo+IHRoZSBxdWVzdGlvbiBvZiBvbGRlciBkcml2ZXJz
IG9yIG90aGVyIGFwcHMgdGhhdCBleGJpYml0IHRoaXMgYmVoYXZpb3VyLgo+Cj4gV2hpbGUgb21p
dHRpbmcgdGhlIGNhbGwgcmVzdWx0cyBpbiBpc3N1ZXMgYXMgc2VlbiBpbiBbMl0gYW5kIFszXS4K
Pgo+IEluIHRoZSBsaWJ2YSBjYXNlLCBsaWJ2YSBpdHNlbGYgZG9lc24ndCBhdXRoZW50aWNhdGUg
dGhlIERSTSBjbGllbnQgYW5kCj4gdGhlIHZhR2V0RGlzcGxheURSTSBkb2N1bWVudGF0aW9uIGRv
ZXNuJ3QgbWVudGlvbiBpZiB0aGUgYXBwIHNob3VsZAo+IGVpdGhlci4KPgo+IEFzIG9mIHRvZGF5
LCB0aGUgb2ZmaWNpYWwgdmFpbmZvIHV0aWxpdHkgZG9lc24ndCBhdXRoZW50aWNhdGUuCj4KPiBU
byB3b3JrYXJvdW5kIGlzc3VlcyBsaWtlIHRoZXNlLCBzb21lIHVzZXJzIHJlc29ydCB0byBydW5u
aW5nIHRoZWlyIGFwcHMKPiB1bmRlciBzdWRvLiBXaGljaCBhZG1pdHRlZGx5IGlzbid0IGFsd2F5
cyBhIGdvb2QgaWRlYS4KPgo+IFNpbmNlIGFueSBEUklWRVJfUkVOREVSIGRyaXZlciBoYXMgc3Vm
ZmljaWVudCBpc29sYXRpb24gYmV0d2VlbiBjbGllbnRzLAo+IHdlIGNhbiB1c2UgdGhhdCwgZm9y
IHVuYXV0aGVudGljYXRlZCBbcHJpbWFyeSBub2RlXSBpb2N0bHMgdGhhdCByZXF1aXJlCj4gRFJN
X0FVVEguIEJ1dCBvbmx5IGlmIHRoZSByZXNwZWN0aXZlIGlvY3RsIGlzIHRhZ2dlZCBhcyBEUk1f
UkVOREVSX0FMTE9XLgo+Cj4gdjI6Cj4gLSBSZXdvcmsvc2ltcGxpZnkgaWYgY2hlY2sgKERhbmll
bCBWKQo+IC0gQWRkIGV4YW1wbGVzIHRvIGNvbW1pdCBtZXNzYWdlcywgZWxhYm9yYXRlLiAoRGFu
aWVsIFYpCj4KPiB2MzoKPiAtIFVzZSBzaW5nbGUgdW5saWtlbHkgKERhbmllbCBWKQo+Cj4gdjQ6
Cj4gLSBQYXRjaCB3YXMgcmV2ZXJ0ZWQgYmVjYXVzZSBpdCBicm9rZSBBTURHUFUsIGFwcGx5IGFn
YWluLiBUaGUgQU1ER1BVCj4gaXNzdWUgaXMgZml4ZWQgd2l0aCBlYXJsaWVyIHBhdGNoLgoKQXMg
ZmFyIGFzIEkgY2FuIHNlZSB0aGlzIG9ubHkgYWZmZWN0cyB0aGUgZm9sbG93aW5nIHR3byBJT0NU
THMgYWZ0ZXIgCnJlbW92aW5nIERSTV9BVVRIIGZyb20gdGhlIERSTV9SRU5ERVJfQUxMT1cgSU9D
VExzOgo+IERSTV9JT0NUTF9ERUYoRFJNX0lPQ1RMX1BSSU1FX0hBTkRMRV9UT19GRCwgCj4gZHJt
X3ByaW1lX2hhbmRsZV90b19mZF9pb2N0bCwgRFJNX0FVVEh8RFJNX1VOTE9DS0VEfERSTV9SRU5E
RVJfQUxMT1cpLAo+IMKgwqDCoMKgwqDCoMKgIERSTV9JT0NUTF9ERUYoRFJNX0lPQ1RMX1BSSU1F
X0ZEX1RPX0hBTkRMRSwgCj4gZHJtX3ByaW1lX2ZkX3RvX2hhbmRsZV9pb2N0bCwgRFJNX0FVVEh8
RFJNX1VOTE9DS0VEfERSTV9SRU5ERVJfQUxMT1cpCgpTbyBJIHRoaW5rIGl0IHdvdWxkIGJlIHNp
bXBsZXIgdG8ganVzdCByZW1vdmUgRFJNX0FVVEggZnJvbSB0aG9zZSB0d28gCmluc3RlYWQgb2Yg
YWxsb3dpbmcgaXQgZm9yIGV2ZXJ5Ym9keS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBbMV0g
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS9ibG9iLzJiYzFmNWMyZTcw
ZmUzYjRkNDFmMDYwYWY5ODU5YmMyYTk0YzViNjIvc3JjL2VnbC9kcml2ZXJzL2RyaTIvcGxhdGZv
cm1fd2F5bGFuZC5jI0wxMTM2Cj4gWzJdIGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2Fy
Y2hpdmVzL2xpYnZhLzIwMTYtSnVseS8wMDQxODUuaHRtbAo+IFszXSBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvbWVzYS9rbXNjdWJlL2lzc3Vlcy8xCj4gVGVzdGNhc2U6IGlndC9jb3Jl
X3VuYXV0aF92c19yZW5kZXIKPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IFNpZ25lZC1vZmYtYnk6IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+
Cj4gUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4g
TGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkw
MTE0MDg1NDA4LjE1OTMzLTItZW1pbC5sLnZlbGlrb3ZAZ21haWwuY29tCj4gLS0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vZHJtX2lvY3RsLmMgfCAyMCArKysrKysrKysrKysrKysrLS0tLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9pb2N0bC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9p
b2N0bC5jCj4gaW5kZXggOTg0MWMwMDc2ZjAyLi5iNjRiMDIyYTJiMjkgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9pb2N0bC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9p
b2N0bC5jCj4gQEAgLTUxMSw2ICs1MTEsMTMgQEAgaW50IGRybV92ZXJzaW9uKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAJcmV0dXJuIGVycjsKPiAgIH0KPiAgIAo+ICtz
dGF0aWMgaW5saW5lIGJvb2wKPiArZHJtX3JlbmRlcl9kcml2ZXJfYW5kX2lvY3RsKGNvbnN0IHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHUzMiBmbGFncykKPiArewo+ICsJcmV0dXJuIGRybV9jb3Jl
X2NoZWNrX2ZlYXR1cmUoZGV2LCBEUklWRVJfUkVOREVSKSAmJgo+ICsJCShmbGFncyAmIERSTV9S
RU5ERVJfQUxMT1cpOwo+ICt9Cj4gKwo+ICAgLyoqCj4gICAgKiBkcm1faW9jdGxfcGVybWl0IC0g
Q2hlY2sgaW9jdGwgcGVybWlzc2lvbnMgYWdhaW5zdCBjYWxsZXIKPiAgICAqCj4gQEAgLTUyNSwx
NCArNTMyLDE5IEBAIGludCBkcm1fdmVyc2lvbihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLAo+ICAgICovCj4gICBpbnQgZHJtX2lvY3RsX3Blcm1pdCh1MzIgZmxhZ3MsIHN0cnVj
dCBkcm1fZmlsZSAqZmlsZV9wcml2KQo+ICAgewo+ICsJY29uc3Qgc3RydWN0IGRybV9kZXZpY2Ug
KmRldiA9IGZpbGVfcHJpdi0+bWlub3ItPmRldjsKPiArCj4gICAJLyogUk9PVF9PTkxZIGlzIG9u
bHkgZm9yIENBUF9TWVNfQURNSU4gKi8KPiAgIAlpZiAodW5saWtlbHkoKGZsYWdzICYgRFJNX1JP
T1RfT05MWSkgJiYgIWNhcGFibGUoQ0FQX1NZU19BRE1JTikpKQo+ICAgCQlyZXR1cm4gLUVBQ0NF
UzsKPiAgIAo+IC0JLyogQVVUSCBpcyBvbmx5IGZvciBhdXRoZW50aWNhdGVkIG9yIHJlbmRlciBj
bGllbnQgKi8KPiAtCWlmICh1bmxpa2VseSgoZmxhZ3MgJiBEUk1fQVVUSCkgJiYgIWRybV9pc19y
ZW5kZXJfY2xpZW50KGZpbGVfcHJpdikgJiYKPiAtCQkgICAgICFmaWxlX3ByaXYtPmF1dGhlbnRp
Y2F0ZWQpKQo+IC0JCXJldHVybiAtRUFDQ0VTOwo+ICsJLyogQVVUSCBpcyBvbmx5IGZvciBtYXN0
ZXIgLi4uICovCj4gKwlpZiAodW5saWtlbHkoKGZsYWdzICYgRFJNX0FVVEgpICYmIGRybV9pc19w
cmltYXJ5X2NsaWVudChmaWxlX3ByaXYpKSkgewo+ICsJCS8qIGF1dGhlbnRpY2F0ZWQgb25lcywg
b3IgcmVuZGVyIGNhcGFibGUgb24gRFJNX1JFTkRFUl9BTExPVy4gKi8KPiArCQlpZiAoIWZpbGVf
cHJpdi0+YXV0aGVudGljYXRlZCAmJgo+ICsJCSAgICAhZHJtX3JlbmRlcl9kcml2ZXJfYW5kX2lv
Y3RsKGRldiwgZmxhZ3MpKQo+ICsJCQlyZXR1cm4gLUVBQ0NFUzsKPiArCX0KPiAgIAo+ICAgCS8q
IE1BU1RFUiBpcyBvbmx5IGZvciBtYXN0ZXIgb3IgY29udHJvbCBjbGllbnRzICovCj4gICAJaWYg
KHVubGlrZWx5KChmbGFncyAmIERSTV9NQVNURVIpICYmCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
