Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D79168EBC
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 13:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37B6D6E8A3;
	Sat, 22 Feb 2020 12:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E88B6E8A3
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 12:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582373455;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IwTa/FaxgjcrvAkl6xDaOxfY7WofG8AsAaJUn8ankk0=;
 b=XHaMn1UAUlowsZmU+3s5H6/6+pLjwPPMEKZWuTe7HAsgX5dRAOLKbPPUSxcFoB4/dEaNnH
 DcVrWi/eyjHWFXDom95nFVm5kQntO+5tiVhQHdNYDX11C0t9yII9IVGgRyCWqdiIUfmx0o
 VQ3zXhcDYgrUnM0Amgg6m1CLFD4aCnA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-473--IhTBzmmOvym9fIwWLK6pw-1; Sat, 22 Feb 2020 07:10:53 -0500
X-MC-Unique: -IhTBzmmOvym9fIwWLK6pw-1
Received: by mail-wr1-f70.google.com with SMTP id n23so2400850wra.20
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 04:10:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a3YB9q5Cq3F/fgYply3tPLjQpCyI9ejQb3IEHrdZ8gU=;
 b=GHsWlWHuZPKjKTptU4wArEC/oRtAa+Al9jsPr0c94caMRg+QJwld6o1B+j6nji+yya
 Cc40ChrtU+zKctJGBUcwVUkge3h/XsUiHUguAKyE8B0FWbMV0Yj3AztImknYreqf8iGi
 TEk+yBoTAr39tg1zxd07mPMFNool2uzv+U7igNEPfzJoWMV4scNtM3i3lM2I8ybNnby8
 YW0g3+PviPaKvfVv6JDas/Eij4Jj3tQMIF+ELR/5Wn3r/QHY27cCY25JMPwqLujC/8a3
 zNQqQ+7/gXu1JPElMOSdKBLtKVC9+4JvO9wmbzB68shgWeUzUwIK1lPBoKiWDTYYvRdj
 bM3Q==
X-Gm-Message-State: APjAAAV33uE7Rwi8q9v3tEUYVNem4e6xb2GHrjMss4668ZyKtgjjPBYZ
 H2q4XjN7lfcaPgdA1GfBgYYJUwyTKoBPXnGfOYOvukiP9rmWwtLQJjl5ee5i8Lhqh8WZCwN3tZq
 lPhWTcArrh+Ko7w7Fah/dTbJhs/Ro
X-Received: by 2002:adf:a19c:: with SMTP id u28mr54124081wru.221.1582373452101; 
 Sat, 22 Feb 2020 04:10:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqwBKt71Umyrksx10kgRidmpBnoMG4fNU8Xan/K9pG4/GaZXYLryTdXwsubGmWnQEfty2yDSoQ==
X-Received: by 2002:adf:a19c:: with SMTP id u28mr54124063wru.221.1582373451839; 
 Sat, 22 Feb 2020 04:10:51 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-7a91-34f6-66f7-d87c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7a91:34f6:66f7:d87c])
 by smtp.gmail.com with ESMTPSA id z4sm8287950wrt.47.2020.02.22.04.10.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 22 Feb 2020 04:10:51 -0800 (PST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-45-daniel.vetter@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <34b74386-ae1c-8074-3afd-d8ce2bd5fcb8@redhat.com>
Date: Sat, 22 Feb 2020 13:10:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200221210319.2245170-45-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 44/51] drm/gm12u320: Use helpers for
 shutdown/suspend/resume
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAyLzIxLzIwIDEwOjAzIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IEFsc28gdGhl
cmUncyBhIHJhY2UgaW4gdGhlIGRpc2Nvbm5lY3QgaW1wbGVtZW5hdGlvbi4gRmlyc3Qgc2h1dAo+
IGRvd24sIHRoZW4gdW5wbHVnLCBsZWF2ZXMgYSB3aW5kb3cgd2hlcmUgdXNlcnNwYWNlIGNvdWxk
IHNuZWFrCj4gaW4gYW5kIHJlc3RhcnQgdGhlIGVudGlyZSBtYWNoaW5lcnkuCj4gCj4gV2l0aCB0
aGlzIHdlIGNhbiBhbHNvIGRlbGV0ZSB0aGUgdmVyeSB1bi1hdG9taWMgZ2xvYmFsIHBpcGVfZW5h
YmxlZAo+IHRyYWNraW5nLgoKUGF0Y2ggbG9va3MgZ29vZCB0byBtZToKClJldmlld2VkLWJ5OiBI
YW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgoKUmVnYXJkcywKCkhhbnMKCgoKCj4g
Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
Cj4gQ2M6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Cj4gQ2M6ICJOb3JhbGYg
VHLDuG5uZXMiIDxub3JhbGZAdHJvbm5lcy5vcmc+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0v
dGlueS9nbTEydTMyMC5jIHwgMTYgKysrLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS90aW55L2dtMTJ1MzIwLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9nbTEydTMy
MC5jCj4gaW5kZXggNjVkZmI4N2NjYjEzLi5jMjJiMmVlNDcwZWIgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3RpbnkvZ20xMnUzMjAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90aW55
L2dtMTJ1MzIwLmMKPiBAQCAtODgsNyArODgsNiBAQCBzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlIHsK
PiAgIAlzdHJ1Y3QgdXNiX2RldmljZSAgICAgICAgICAgICAgICp1ZGV2Owo+ICAgCXVuc2lnbmVk
IGNoYXIgICAgICAgICAgICAgICAgICAgKmNtZF9idWY7Cj4gICAJdW5zaWduZWQgY2hhciAgICAg
ICAgICAgICAgICAgICAqZGF0YV9idWZbR00xMlUzMjBfQkxPQ0tfQ09VTlRdOwo+IC0JYm9vbCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcGlwZV9lbmFibGVkOwo+ICAgCXN0cnVjdCB7Cj4g
ICAJCWJvb2wgICAgICAgICAgICAgICAgICAgICBydW47Cj4gICAJCXN0cnVjdCB3b3JrcXVldWVf
c3RydWN0ICp3b3JrcTsKPiBAQCAtNTg5LDcgKzU4OCw2IEBAIHN0YXRpYyB2b2lkIGdtMTJ1MzIw
X3BpcGVfZW5hYmxlKHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlwZSwKPiAgIAo+
ICAgCWdtMTJ1MzIwX2ZiX21hcmtfZGlydHkocGxhbmVfc3RhdGUtPmZiLCAmcmVjdCk7Cj4gICAJ
Z20xMnUzMjBfc3RhcnRfZmJfdXBkYXRlKGdtMTJ1MzIwKTsKPiAtCWdtMTJ1MzIwLT5waXBlX2Vu
YWJsZWQgPSB0cnVlOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9pZCBnbTEydTMyMF9waXBlX2Rp
c2FibGUoc3RydWN0IGRybV9zaW1wbGVfZGlzcGxheV9waXBlICpwaXBlKQo+IEBAIC01OTcsNyAr
NTk1LDYgQEAgc3RhdGljIHZvaWQgZ20xMnUzMjBfcGlwZV9kaXNhYmxlKHN0cnVjdCBkcm1fc2lt
cGxlX2Rpc3BsYXlfcGlwZSAqcGlwZSkKPiAgIAlzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNlICpnbTEy
dTMyMCA9IHBpcGUtPmNydGMuZGV2LT5kZXZfcHJpdmF0ZTsKPiAgIAo+ICAgCWdtMTJ1MzIwX3N0
b3BfZmJfdXBkYXRlKGdtMTJ1MzIwKTsKPiAtCWdtMTJ1MzIwLT5waXBlX2VuYWJsZWQgPSBmYWxz
ZTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgZ20xMnUzMjBfcGlwZV91cGRhdGUoc3RydWN0
IGRybV9zaW1wbGVfZGlzcGxheV9waXBlICpwaXBlLAo+IEBAIC03MzMsMjIgKzczMCwxNyBAQCBz
dGF0aWMgaW50IGdtMTJ1MzIwX3VzYl9wcm9iZShzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJm
YWNlLAo+ICAgc3RhdGljIHZvaWQgZ20xMnUzMjBfdXNiX2Rpc2Nvbm5lY3Qoc3RydWN0IHVzYl9p
bnRlcmZhY2UgKmludGVyZmFjZSkKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0g
dXNiX2dldF9pbnRmZGF0YShpbnRlcmZhY2UpOwo+IC0Jc3RydWN0IGdtMTJ1MzIwX2RldmljZSAq
Z20xMnUzMjAgPSBkZXYtPmRldl9wcml2YXRlOwo+ICAgCj4gLQlnbTEydTMyMF9zdG9wX2ZiX3Vw
ZGF0ZShnbTEydTMyMCk7Cj4gICAJZHJtX2Rldl91bnBsdWcoZGV2KTsKPiArCWRybV9hdG9taWNf
aGVscGVyX3NodXRkb3duKGRldik7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyBfX21heWJlX3VudXNl
ZCBpbnQgZ20xMnUzMjBfc3VzcGVuZChzdHJ1Y3QgdXNiX2ludGVyZmFjZSAqaW50ZXJmYWNlLAo+
ICAgCQkJCQkgICBwbV9tZXNzYWdlX3QgbWVzc2FnZSkKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2ID0gdXNiX2dldF9pbnRmZGF0YShpbnRlcmZhY2UpOwo+IC0Jc3RydWN0IGdtMTJ1
MzIwX2RldmljZSAqZ20xMnUzMjAgPSBkZXYtPmRldl9wcml2YXRlOwo+ICAgCj4gLQlpZiAoZ20x
MnUzMjAtPnBpcGVfZW5hYmxlZCkKPiAtCQlnbTEydTMyMF9zdG9wX2ZiX3VwZGF0ZShnbTEydTMy
MCk7Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gKwlyZXR1cm4gZHJtX21vZGVfY29uZmlnX2hlbHBlcl9z
dXNwZW5kKGRldik7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyBfX21heWJlX3VudXNlZCBpbnQgZ20x
MnUzMjBfcmVzdW1lKHN0cnVjdCB1c2JfaW50ZXJmYWNlICppbnRlcmZhY2UpCj4gQEAgLTc1Nywx
MCArNzQ5LDggQEAgc3RhdGljIF9fbWF5YmVfdW51c2VkIGludCBnbTEydTMyMF9yZXN1bWUoc3Ry
dWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSkKPiAgIAlzdHJ1Y3QgZ20xMnUzMjBfZGV2aWNl
ICpnbTEydTMyMCA9IGRldi0+ZGV2X3ByaXZhdGU7Cj4gICAKPiAgIAlnbTEydTMyMF9zZXRfZWNv
bW9kZShnbTEydTMyMCk7Cj4gLQlpZiAoZ20xMnUzMjAtPnBpcGVfZW5hYmxlZCkKPiAtCQlnbTEy
dTMyMF9zdGFydF9mYl91cGRhdGUoZ20xMnUzMjApOwo+ICAgCj4gLQlyZXR1cm4gMDsKPiArCXJl
dHVybiBkcm1fbW9kZV9jb25maWdfaGVscGVyX3Jlc3VtZShkZXYpOwo+ICAgfQo+ICAgCj4gICBz
dGF0aWMgY29uc3Qgc3RydWN0IHVzYl9kZXZpY2VfaWQgaWRfdGFibGVbXSA9IHsKPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
