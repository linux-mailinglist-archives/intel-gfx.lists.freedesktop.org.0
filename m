Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF40479AB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 07:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A40F189058;
	Mon, 17 Jun 2019 05:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailgw01.mediatek.com (unknown [210.61.82.183])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F068B89058;
 Mon, 17 Jun 2019 05:19:36 +0000 (UTC)
X-UUID: 2b66a0b365654542882ca37161cf2caf-20190617
X-UUID: 2b66a0b365654542882ca37161cf2caf-20190617
Received: from mtkcas06.mediatek.inc [(172.21.101.30)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (mhqrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1870595744; Mon, 17 Jun 2019 13:19:32 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Jun 2019 13:19:32 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Jun 2019 13:19:31 +0800
Message-ID: <1560748771.16762.0.camel@mtksdaap41>
From: CK Hu <ck.hu@mediatek.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 17 Jun 2019 13:19:31 +0800
In-Reply-To: <20190614203615.12639-45-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-45-daniel.vetter@ffwll.ch>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
Subject: Re: [Intel-gfx] [PATCH 44/59] drm/mediatek: Use
 drm_atomic_helper_wait_for_fences
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias
 Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksIERhbmllbDoKCk9uIEZyaSwgMjAxOS0wNi0xNCBhdCAyMjozNiArMDIwMCwgRGFuaWVsIFZl
dHRlciB3cm90ZToKPiBJZiB3ZSB1c2UgdGhlIGdlbSBmYiBoZWxwZXIgYXMgdGhlIHByZXBhcmVf
ZmIgaG9vaywgcGx1cyB0aGUKPiBkcm1fcHJpbWUuYyBpbXBvcnQgaGVscGVycyBub3cgYXV0b21h
dGljYWxseSBzZXR0aW5nIG9iai0+cmVzdiwgd2UgY2FuCj4gdXNlIHRoZSBzaGFyZWQgaGVscGVy
cyB0byB3YWl0IGZvciBmZW5jZXMgaW5zdGVhZCBvZiByb2xsaW5nIG91ciBvd24uCj4gTm90ZSB0
aGF0IHRoaXMgcmVsaWVzIG9uIG10ayBzZXR0aW5nIGRybV9mYi0+b2JqLCB3aGljaCBpcyBhbHJl
YWR5Cj4gZG9uZSBpbiBtdGtfZHJtX2ZyYW1lYnVmZmVyX2luaXQoKS4KClJldmlld2VkLWJ5OiBD
SyBIdSA8Y2suaHVAbWVkaWF0ZWsuY29tPgoKPiAKPiBBc2lkZTogUHJvYmFibHkgY2FuIHVzZSB0
aGUgZGVmYXVsdCBjb21taXRfdGFpbCB3aXRoIHRoaXMgYWdhaW4sIGJ1dCBJCj4gZGlkbid0IGNo
ZWNrIGZvciB0aGF0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBDSyBIdSA8Y2suaHVAbWVkaWF0ZWsuY29tPgo+IENjOiBQ
aGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IENjOiBNYXR0aGlhcyBCcnVn
Z2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYyAgIHwgMTIgKy0t
LS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9mYi5jICAgIHwgMjgg
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
ZHJtX2ZiLmggICAgfCAgMSAtCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX3Bs
YW5lLmMgfCAgMiArKwo+ICA0IGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNDAgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
ZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmMKPiBpbmRl
eCBkZDhkYWI1NjI1MDAuLjJkNWNhZjUzMjQzMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfZHJtX2Rydi5jCj4gQEAgLTM4LDIyICszOCwxMiBAQCBzdGF0aWMgdm9pZCBtdGtfYXRv
bWljX3NjaGVkdWxlKHN0cnVjdCBtdGtfZHJtX3ByaXZhdGUgKnByaXZhdGUsCj4gIAlzY2hlZHVs
ZV93b3JrKCZwcml2YXRlLT5jb21taXQud29yayk7Cj4gIH0KPiAgCj4gLXN0YXRpYyB2b2lkIG10
a19hdG9taWNfd2FpdF9mb3JfZmVuY2VzKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkK
PiAtewo+IC0Jc3RydWN0IGRybV9wbGFuZSAqcGxhbmU7Cj4gLQlzdHJ1Y3QgZHJtX3BsYW5lX3N0
YXRlICpuZXdfcGxhbmVfc3RhdGU7Cj4gLQlpbnQgaTsKPiAtCj4gLQlmb3JfZWFjaF9uZXdfcGxh
bmVfaW5fc3RhdGUoc3RhdGUsIHBsYW5lLCBuZXdfcGxhbmVfc3RhdGUsIGkpCj4gLQkJbXRrX2Zi
X3dhaXQobmV3X3BsYW5lX3N0YXRlLT5mYik7Cj4gLX0KPiAtCj4gIHN0YXRpYyB2b2lkIG10a19h
dG9taWNfY29tcGxldGUoc3RydWN0IG10a19kcm1fcHJpdmF0ZSAqcHJpdmF0ZSwKPiAgCQkJCXN0
cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgewo+ICAJc3RydWN0IGRybV9kZXZpY2Ug
KmRybSA9IHByaXZhdGUtPmRybTsKPiAgCj4gLQltdGtfYXRvbWljX3dhaXRfZm9yX2ZlbmNlcyhz
dGF0ZSk7Cj4gKwlkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl9mZW5jZXMoZHJtLCBzdGF0ZSwg
ZmFsc2UpOwo+ICAKPiAgCS8qCj4gIAkgKiBNZWRpYXRlayBkcm0gc3VwcG9ydHMgcnVudGltZSBQ
TSwgc28gcGxhbmUgcmVnaXN0ZXJzIGNhbm5vdCBiZQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9mYi5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kcm1fZmIuYwo+IGluZGV4IDRjM2FkN2RlMmQzYi4uMzk2YmE0OTc5ODZkIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2ZiLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9mYi5jCj4gQEAgLTQ5LDM0ICs0OSw2IEBAIHN0YXRp
YyBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICptdGtfZHJtX2ZyYW1lYnVmZmVyX2luaXQoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwKPiAgCXJldHVybiBmYjsKPiAgfQo+ICAKPiAtLyoKPiAtICogV2Fp
dCBmb3IgYW55IGV4Y2x1c2l2ZSBmZW5jZSBpbiBmYidzIGdlbSBvYmplY3QncyByZXNlcnZhdGlv
biBvYmplY3QuCj4gLSAqCj4gLSAqIFJldHVybnMgLUVSRVNUQVJUU1lTIGlmIGludGVycnVwdGVk
LCBlbHNlIDAuCj4gLSAqLwo+IC1pbnQgbXRrX2ZiX3dhaXQoc3RydWN0IGRybV9mcmFtZWJ1ZmZl
ciAqZmIpCj4gLXsKPiAtCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZ2VtOwo+IC0Jc3RydWN0IHJl
c2VydmF0aW9uX29iamVjdCAqcmVzdjsKPiAtCWxvbmcgcmV0Owo+IC0KPiAtCWlmICghZmIpCj4g
LQkJcmV0dXJuIDA7Cj4gLQo+IC0JZ2VtID0gZmItPm9ialswXTsKPiAtCWlmICghZ2VtIHx8ICFn
ZW0tPmRtYV9idWYgfHwgIWdlbS0+ZG1hX2J1Zi0+cmVzdikKPiAtCQlyZXR1cm4gMDsKPiAtCj4g
LQlyZXN2ID0gZ2VtLT5kbWFfYnVmLT5yZXN2Owo+IC0JcmV0ID0gcmVzZXJ2YXRpb25fb2JqZWN0
X3dhaXRfdGltZW91dF9yY3UocmVzdiwgZmFsc2UsIHRydWUsCj4gLQkJCQkJCSAgTUFYX1NDSEVE
VUxFX1RJTUVPVVQpOwo+IC0JLyogTUFYX1NDSEVEVUxFX1RJTUVPVVQgb24gc3VjY2VzcywgLUVS
RVNUQVJUU1lTIGlmIGludGVycnVwdGVkICovCj4gLQlpZiAoV0FSTl9PTihyZXQgPCAwKSkKPiAt
CQlyZXR1cm4gcmV0Owo+IC0KPiAtCXJldHVybiAwOwo+IC19Cj4gLQo+ICBzdHJ1Y3QgZHJtX2Zy
YW1lYnVmZmVyICptdGtfZHJtX21vZGVfZmJfY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
Cj4gIAkJCQkJICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiAgCQkJCQkgICAgICAgY29u
c3Qgc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgKmNtZCkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19kcm1fZmIuaCBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHJtX2ZiLmgKPiBpbmRleCA2YjgwYzI4ZTMzY2YuLmViNjRkMjYwMDFjNiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9mYi5oCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZmIuaAo+IEBAIC02LDcgKzYsNiBAQAo+ICAjaWZu
ZGVmIE1US19EUk1fRkJfSAo+ICAjZGVmaW5lIE1US19EUk1fRkJfSAo+ICAKPiAtaW50IG10a19m
Yl93YWl0KHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiKTsKPiAgc3RydWN0IGRybV9mcmFtZWJ1
ZmZlciAqbXRrX2RybV9tb2RlX2ZiX2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ICAJ
CQkJCSAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gIAkJCQkJICAgICAgIGNvbnN0IHN0
cnVjdCBkcm1fbW9kZV9mYl9jbWQyICpjbWQpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kcm1fcGxhbmUuYwo+IGluZGV4IGYyZWY4M2FlZDZmOS4uNDJjYzk4MjNlYWFhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX3BsYW5lLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9wbGFuZS5jCj4gQEAgLTgsNiArOCw3IEBA
Cj4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pYy5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9t
aWNfaGVscGVyLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX3BsYW5lX2hlbHBlci5oPgo+ICsjaW5j
bHVkZSA8ZHJtL2RybV9nZW1fZnJhbWVidWZmZXJfaGVscGVyLmg+Cj4gIAo+ICAjaW5jbHVkZSAi
bXRrX2RybV9jcnRjLmgiCj4gICNpbmNsdWRlICJtdGtfZHJtX2RkcF9jb21wLmgiCj4gQEAgLTE0
Niw2ICsxNDcsNyBAQCBzdGF0aWMgdm9pZCBtdGtfcGxhbmVfYXRvbWljX2Rpc2FibGUoc3RydWN0
IGRybV9wbGFuZSAqcGxhbmUsCj4gIH0KPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3Bs
YW5lX2hlbHBlcl9mdW5jcyBtdGtfcGxhbmVfaGVscGVyX2Z1bmNzID0gewo+ICsJLnByZXBhcmVf
ZmIgPSBkcm1fZ2VtX2ZiX3ByZXBhcmVfZmIsCj4gIAkuYXRvbWljX2NoZWNrID0gbXRrX3BsYW5l
X2F0b21pY19jaGVjaywKPiAgCS5hdG9taWNfdXBkYXRlID0gbXRrX3BsYW5lX2F0b21pY191cGRh
dGUsCj4gIAkuYXRvbWljX2Rpc2FibGUgPSBtdGtfcGxhbmVfYXRvbWljX2Rpc2FibGUsCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
