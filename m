Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C0DEFBFA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 12:04:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D1B06E9D1;
	Tue,  5 Nov 2019 11:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E5D6E9D1
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 11:04:23 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id t1so14889164wrv.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Nov 2019 03:04:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=giAxRmyATv5/Qk3P8E+693nfhyFu789t11I6ULavLro=;
 b=amS6yqnOC/hHw+p2mm7df276hYqn1WhizRDJGJdvFG0pAgHBC/v+1r/rleRA1KO1TH
 clayTVUHvmptvSQi0OJp+bqfE3XTKOSXt0zrvdIQ+iIEZkyRuvrVi4ODM/sHLe/x6vJI
 3LALPMH6b2DAtfT6tOklFMgPXbjHQNf5ITex0KIN5At3CEoRWTxkXxsvuOl4y+krmCG1
 lWm3sW5ZJGZ9yUBDKUJc2hOR5xBAnZaFIPR+uRLBIINJGm4afcEXfeLq+tep79I9VJ5Q
 t0HSHxWcnTPlP/MmMrHuoCTCZ3+lvZbQXMSMmMNBsIAzgF2Tn/Ho/y7o1MDMXBVqcf47
 3YKA==
X-Gm-Message-State: APjAAAXmugX2spPN7id4Ez2AmyIu18N/D0PiJ7eAV4JToLXWx0N3EGbO
 sXQm3gG8VysL18RAcFzDl17Bzg==
X-Google-Smtp-Source: APXvYqztLE6sJH9pZTUfCVItVyUbPiCtNH5bp5r7tuC95HeAFPCLG44WnRrI8YRua7AhKtdXehYLZQ==
X-Received: by 2002:adf:ecc7:: with SMTP id s7mr27239055wro.305.1572951862357; 
 Tue, 05 Nov 2019 03:04:22 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id f20sm16861708wmb.6.2019.11.05.03.04.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 03:04:21 -0800 (PST)
Date: Tue, 5 Nov 2019 12:04:19 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20191105110419.GG10326@phenom.ffwll.local>
References: <20191104173801.2972-1-daniel.vetter@ffwll.ch>
 <20191104173801.2972-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104173801.2972-2-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=giAxRmyATv5/Qk3P8E+693nfhyFu789t11I6ULavLro=;
 b=bmqv13qCsDhx8DHsv2vCPdFEbDXPkI36gTYKwPxgM8LlhemnUsutWvfmLsaeFaOWi4
 eMFQIQ/2Cfm0Ei9o1BuMyNUxC2ZjHOpFcxcKmcIKn+qQIjhNaAVL+nUioj4+n+6bk/k1
 WsOFjAm3vMJSleUX1Q/z7wSE6ma+vhYwzo1ac=
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/nouveau: slowpath for pushbuf ioctl
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ben Skeggs <bskeggs@redhat.com>, nouveau@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDY6Mzg6MDBQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBXZSBjYW4ndCBjb3B5XypfdXNlciB3aGlsZSBob2xkaW5nIHJlc2VydmF0aW9ucywg
dGhhdCB3aWxsIChzb29uIGV2ZW4KPiBmb3Igbm91dmVhdSkgbGVhZCB0byBkZWFkbG9ja3MuIEFu
ZCBpdCBicmVha3MgdGhlIGNyb3NzLWRyaXZlcgo+IGNvbnRyYWN0IGFyb3VuZCBkbWFfcmVzdi4K
PiAKPiBGaXggdGhpcyBieSBhZGRpbmcgYSBzbG93cGF0aCBmb3Igd2hlbiB3ZSBuZWVkIHJlbG9j
YXRpb25zLCBhbmQgYnkKPiBwdXNoaW5nIHRoZSB3cml0ZWJhY2sgb2YgdGhlIG5ldyBwcmVzdW1l
ZCBvZmZzZXRzIHRvIHRoZSB2ZXJ5IGVuZC4KPiAKPiBBc2lkZSBmcm9tICJpdCBjb21waWxlcyIg
ZW50aXJlbHkgdW50ZXN0ZWQgdW5mb3J0dW5hdGVseS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzogSWxpYSBNaXJraW4gPGlt
aXJraW5AYWx1bS5taXQuZWR1Pgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBCZW4gU2tlZ2dzIDxic2tlZ2dzQHJlZGhhdC5j
b20+Cj4gQ2M6IG5vdXZlYXVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCgpQaW5nIGZvciBhY2svcmV2
aWV3IHNvIEkgY2FuIGxhbmQgdGhpcyBlbnRpcmUgc2VyaWVzLiBpbnRlbC1nZngtY2kgaXMgYWxs
CmhhcHB5IHdpdGggdGhlIHJlYmFzZWQgdmVyc2lvbiwgc28gbm91dmVhdSBhY2sgaXMgdGhlIG9u
bHkgaG9sZC11cCBoZXJlLgotRGFuaWVsCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbm91dmVh
dS9ub3V2ZWF1X2dlbS5jIHwgNTcgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9nZW0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9ub3V2ZWF1L25vdXZlYXVfZ2VtLmMKPiBpbmRleCAxMzI0YzE5ZjRlNWMuLjA1ZWM4ZWRk
NmE4YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9nZW0uYwo+IEBAIC00ODQs
MTIgKzQ4NCw5IEBAIHZhbGlkYXRlX2luaXQoc3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqY2hhbiwg
c3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsCj4gIAo+ICBzdGF0aWMgaW50Cj4gIHZhbGlkYXRl
X2xpc3Qoc3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqY2hhbiwgc3RydWN0IG5vdXZlYXVfY2xpICpj
bGksCj4gLQkgICAgICBzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0LCBzdHJ1Y3QgZHJtX25vdXZlYXVf
Z2VtX3B1c2hidWZfYm8gKnBiYm8sCj4gLQkgICAgICB1aW50NjRfdCB1c2VyX3BiYm9fcHRyKQo+
ICsJICAgICAgc3RydWN0IGxpc3RfaGVhZCAqbGlzdCwgc3RydWN0IGRybV9ub3V2ZWF1X2dlbV9w
dXNoYnVmX2JvICpwYmJvKQo+ICB7Cj4gIAlzdHJ1Y3Qgbm91dmVhdV9kcm0gKmRybSA9IGNoYW4t
PmRybTsKPiAtCXN0cnVjdCBkcm1fbm91dmVhdV9nZW1fcHVzaGJ1Zl9ibyBfX3VzZXIgKnVwYmJv
ID0KPiAtCQkJCSh2b2lkIF9fZm9yY2UgX191c2VyICopKHVpbnRwdHJfdCl1c2VyX3BiYm9fcHRy
Owo+ICAJc3RydWN0IG5vdXZlYXVfYm8gKm52Ym87Cj4gIAlpbnQgcmV0LCByZWxvY3MgPSAwOwo+
ICAKPiBAQCAtNTMzLDEwICs1MzAsNiBAQCB2YWxpZGF0ZV9saXN0KHN0cnVjdCBub3V2ZWF1X2No
YW5uZWwgKmNoYW4sIHN0cnVjdCBub3V2ZWF1X2NsaSAqY2xpLAo+ICAJCQliLT5wcmVzdW1lZC5v
ZmZzZXQgPSBudmJvLT5iby5vZmZzZXQ7Cj4gIAkJCWItPnByZXN1bWVkLnZhbGlkID0gMDsKPiAg
CQkJcmVsb2NzKys7Cj4gLQo+IC0JCQlpZiAoY29weV90b191c2VyKCZ1cGJib1tudmJvLT5wYmJv
X2luZGV4XS5wcmVzdW1lZCwKPiAtCQkJCQkgICAgICZiLT5wcmVzdW1lZCwgc2l6ZW9mKGItPnBy
ZXN1bWVkKSkpCj4gLQkJCQlyZXR1cm4gLUVGQVVMVDsKPiAgCQl9Cj4gIAl9Cj4gIAo+IEBAIC01
NDcsOCArNTQwLDggQEAgc3RhdGljIGludAo+ICBub3V2ZWF1X2dlbV9wdXNoYnVmX3ZhbGlkYXRl
KHN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKmNoYW4sCj4gIAkJCSAgICAgc3RydWN0IGRybV9maWxl
ICpmaWxlX3ByaXYsCj4gIAkJCSAgICAgc3RydWN0IGRybV9ub3V2ZWF1X2dlbV9wdXNoYnVmX2Jv
ICpwYmJvLAo+IC0JCQkgICAgIHVpbnQ2NF90IHVzZXJfYnVmZmVycywgaW50IG5yX2J1ZmZlcnMs
Cj4gLQkJCSAgICAgc3RydWN0IHZhbGlkYXRlX29wICpvcCwgaW50ICphcHBseV9yZWxvY3MpCj4g
KwkJCSAgICAgaW50IG5yX2J1ZmZlcnMsCj4gKwkJCSAgICAgc3RydWN0IHZhbGlkYXRlX29wICpv
cCwgYm9vbCAqYXBwbHlfcmVsb2NzKQo+ICB7Cj4gIAlzdHJ1Y3Qgbm91dmVhdV9jbGkgKmNsaSA9
IG5vdXZlYXVfY2xpKGZpbGVfcHJpdik7Cj4gIAlpbnQgcmV0Owo+IEBAIC01NjUsNyArNTU4LDcg
QEAgbm91dmVhdV9nZW1fcHVzaGJ1Zl92YWxpZGF0ZShzdHJ1Y3Qgbm91dmVhdV9jaGFubmVsICpj
aGFuLAo+ICAJCXJldHVybiByZXQ7Cj4gIAl9Cj4gIAo+IC0JcmV0ID0gdmFsaWRhdGVfbGlzdChj
aGFuLCBjbGksICZvcC0+bGlzdCwgcGJibywgdXNlcl9idWZmZXJzKTsKPiArCXJldCA9IHZhbGlk
YXRlX2xpc3QoY2hhbiwgY2xpLCAmb3AtPmxpc3QsIHBiYm8pOwo+ICAJaWYgKHVubGlrZWx5KHJl
dCA8IDApKSB7Cj4gIAkJaWYgKHJldCAhPSAtRVJFU1RBUlRTWVMpCj4gIAkJCU5WX1BSSU5USyhl
cnIsIGNsaSwgInZhbGlkYXRpbmcgYm8gbGlzdFxuIik7Cj4gQEAgLTYwNSwxNiArNTk4LDEyIEBA
IHVfbWVtY3B5YSh1aW50NjRfdCB1c2VyLCB1bnNpZ25lZCBubWVtYiwgdW5zaWduZWQgc2l6ZSkK
PiAgc3RhdGljIGludAo+ICBub3V2ZWF1X2dlbV9wdXNoYnVmX3JlbG9jX2FwcGx5KHN0cnVjdCBu
b3V2ZWF1X2NsaSAqY2xpLAo+ICAJCQkJc3RydWN0IGRybV9ub3V2ZWF1X2dlbV9wdXNoYnVmICpy
ZXEsCj4gKwkJCQlzdHJ1Y3QgZHJtX25vdXZlYXVfZ2VtX3B1c2hidWZfcmVsb2MgKnJlbG9jLAo+
ICAJCQkJc3RydWN0IGRybV9ub3V2ZWF1X2dlbV9wdXNoYnVmX2JvICpibykKPiAgewo+IC0Jc3Ry
dWN0IGRybV9ub3V2ZWF1X2dlbV9wdXNoYnVmX3JlbG9jICpyZWxvYyA9IE5VTEw7Cj4gIAlpbnQg
cmV0ID0gMDsKPiAgCXVuc2lnbmVkIGk7Cj4gIAo+IC0JcmVsb2MgPSB1X21lbWNweWEocmVxLT5y
ZWxvY3MsIHJlcS0+bnJfcmVsb2NzLCBzaXplb2YoKnJlbG9jKSk7Cj4gLQlpZiAoSVNfRVJSKHJl
bG9jKSkKPiAtCQlyZXR1cm4gUFRSX0VSUihyZWxvYyk7Cj4gLQo+ICAJZm9yIChpID0gMDsgaSA8
IHJlcS0+bnJfcmVsb2NzOyBpKyspIHsKPiAgCQlzdHJ1Y3QgZHJtX25vdXZlYXVfZ2VtX3B1c2hi
dWZfcmVsb2MgKnIgPSAmcmVsb2NbaV07Cj4gIAkJc3RydWN0IGRybV9ub3V2ZWF1X2dlbV9wdXNo
YnVmX2JvICpiOwo+IEBAIC02OTMsMTEgKzY4MiwxMyBAQCBub3V2ZWF1X2dlbV9pb2N0bF9wdXNo
YnVmKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gIAlzdHJ1Y3Qgbm91dmVh
dV9kcm0gKmRybSA9IG5vdXZlYXVfZHJtKGRldik7Cj4gIAlzdHJ1Y3QgZHJtX25vdXZlYXVfZ2Vt
X3B1c2hidWYgKnJlcSA9IGRhdGE7Cj4gIAlzdHJ1Y3QgZHJtX25vdXZlYXVfZ2VtX3B1c2hidWZf
cHVzaCAqcHVzaDsKPiArCXN0cnVjdCBkcm1fbm91dmVhdV9nZW1fcHVzaGJ1Zl9yZWxvYyAqcmVs
b2MgPSBOVUxMOwo+ICAJc3RydWN0IGRybV9ub3V2ZWF1X2dlbV9wdXNoYnVmX2JvICpibzsKPiAg
CXN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKmNoYW4gPSBOVUxMOwo+ICAJc3RydWN0IHZhbGlkYXRl
X29wIG9wOwo+ICAJc3RydWN0IG5vdXZlYXVfZmVuY2UgKmZlbmNlID0gTlVMTDsKPiAtCWludCBp
LCBqLCByZXQgPSAwLCBkb19yZWxvYyA9IDA7Cj4gKwlpbnQgaSwgaiwgcmV0ID0gMDsKPiArCWJv
b2wgZG9fcmVsb2MgPSBmYWxzZTsKPiAgCj4gIAlpZiAodW5saWtlbHkoIWFiaTE2KSkKPiAgCQly
ZXR1cm4gLUVOT01FTTsKPiBAQCAtNzU1LDcgKzc0Niw4IEBAIG5vdXZlYXVfZ2VtX2lvY3RsX3B1
c2hidWYoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgCX0KPiAgCj4gIAkv
KiBWYWxpZGF0ZSBidWZmZXIgbGlzdCAqLwo+IC0JcmV0ID0gbm91dmVhdV9nZW1fcHVzaGJ1Zl92
YWxpZGF0ZShjaGFuLCBmaWxlX3ByaXYsIGJvLCByZXEtPmJ1ZmZlcnMsCj4gK3JldmFsaWRhdGU6
Cj4gKwlyZXQgPSBub3V2ZWF1X2dlbV9wdXNoYnVmX3ZhbGlkYXRlKGNoYW4sIGZpbGVfcHJpdiwg
Ym8sCj4gIAkJCQkJICAgcmVxLT5ucl9idWZmZXJzLCAmb3AsICZkb19yZWxvYyk7Cj4gIAlpZiAo
cmV0KSB7Cj4gIAkJaWYgKHJldCAhPSAtRVJFU1RBUlRTWVMpCj4gQEAgLTc2NSw3ICs3NTcsMTgg
QEAgbm91dmVhdV9nZW1faW9jdGxfcHVzaGJ1ZihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lk
ICpkYXRhLAo+ICAKPiAgCS8qIEFwcGx5IGFueSByZWxvY2F0aW9ucyB0aGF0IGFyZSByZXF1aXJl
ZCAqLwo+ICAJaWYgKGRvX3JlbG9jKSB7Cj4gLQkJcmV0ID0gbm91dmVhdV9nZW1fcHVzaGJ1Zl9y
ZWxvY19hcHBseShjbGksIHJlcSwgYm8pOwo+ICsJCWlmICghcmVsb2MpIHsKPiArCQkJdmFsaWRh
dGVfZmluaSgmb3AsIGNoYW4sIE5VTEwsIGJvKTsKPiArCQkJcmVsb2MgPSB1X21lbWNweWEocmVx
LT5yZWxvY3MsIHJlcS0+bnJfcmVsb2NzLCBzaXplb2YoKnJlbG9jKSk7Cj4gKwkJCWlmIChJU19F
UlIocmVsb2MpKSB7Cj4gKwkJCQlyZXQgPSBQVFJfRVJSKHJlbG9jKTsKPiArCQkJCWdvdG8gb3V0
X3ByZXZhbGlkOwo+ICsJCQl9Cj4gKwo+ICsJCQlnb3RvIHJldmFsaWRhdGU7Cj4gKwkJfQo+ICsK
PiArCQlyZXQgPSBub3V2ZWF1X2dlbV9wdXNoYnVmX3JlbG9jX2FwcGx5KGNsaSwgcmVxLCByZWxv
YywgYm8pOwo+ICAJCWlmIChyZXQpIHsKPiAgCQkJTlZfUFJJTlRLKGVyciwgY2xpLCAicmVsb2Mg
YXBwbHk6ICVkXG4iLCByZXQpOwo+ICAJCQlnb3RvIG91dDsKPiBAQCAtODUxLDYgKzg1NCwyMiBA
QCBub3V2ZWF1X2dlbV9pb2N0bF9wdXNoYnVmKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQg
KmRhdGEsCj4gIAl2YWxpZGF0ZV9maW5pKCZvcCwgY2hhbiwgZmVuY2UsIGJvKTsKPiAgCW5vdXZl
YXVfZmVuY2VfdW5yZWYoJmZlbmNlKTsKPiAgCj4gKwlpZiAoZG9fcmVsb2MpIHsKPiArCQlzdHJ1
Y3QgZHJtX25vdXZlYXVfZ2VtX3B1c2hidWZfYm8gX191c2VyICp1cGJibyA9Cj4gKwkJCXU2NF90
b191c2VyX3B0cihyZXEtPmJ1ZmZlcnMpOwo+ICsKPiArCQlmb3IgKGkgPSAwOyBpIDwgcmVxLT5u
cl9idWZmZXJzOyBpKyspIHsKPiArCQkJaWYgKGJvW2ldLnByZXN1bWVkLnZhbGlkKQo+ICsJCQkJ
Y29udGludWU7Cj4gKwo+ICsJCQlpZiAoY29weV90b191c2VyKCZ1cGJib1tpXS5wcmVzdW1lZCwg
JmJvW2ldLnByZXN1bWVkLAo+ICsJCQkJCSBzaXplb2YoYm9baV0ucHJlc3VtZWQpKSkgewo+ICsJ
CQkJcmV0ID0gLUVGQVVMVDsKPiArCQkJCWJyZWFrOwo+ICsJCQl9Cj4gKwkJfQo+ICsJCXVfZnJl
ZShyZWxvYyk7Cj4gKwl9Cj4gIG91dF9wcmV2YWxpZDoKPiAgCXVfZnJlZShibyk7Cj4gIAl1X2Zy
ZWUocHVzaCk7Cj4gLS0gCj4gMi4yNC4wLnJjMgo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdh
cmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
