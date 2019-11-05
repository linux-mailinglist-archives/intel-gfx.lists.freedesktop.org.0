Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AEAEFFB0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 15:28:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CC546EA96;
	Tue,  5 Nov 2019 14:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CBB16EA97
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 14:28:00 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id t1so15677585wrv.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Nov 2019 06:28:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=GaEfkqTsttVvPrIIweA8nbloqNOkYfiDu1mk0Xi4PQQ=;
 b=Ed+fMfd/6ANVzjeOQ+o8OdELmKYBxkYMOTM+A33mz6c2h3Bj5OV4X2R4d/3EAV0PlO
 ajJL9HTe9F+sI/vkFHF3dRfi+TKsHqC5jDbukJVHxAaZKKojNiIw13kJ4FzseKwA7TrS
 Hveg7iTxiW/yAqc/Z9Bont/R0cmUol1pTXGgGV5XUv3YyLZmXIZbZE+mkx9ZEtOzzA3+
 0xYO0uQlwRn+2T9T3QGIZlOf7OkuQtXpz6zQq092pJeVq6eSVBK+5l6tRDxuoG7hAHsZ
 5mNo2PGT+SqAnzQz0ZaPZs40WzfyohrriZ/ENBT6JohvOuz39u4T+7/FvdWLHtmnpbdQ
 pOew==
X-Gm-Message-State: APjAAAWqXfb73cIwR7bCEpz6MGcUyM3bluEUhqEGx04qQLPcHMH0NlHX
 9vBOlOP0kwkZuy/5xCrW6d//mA==
X-Google-Smtp-Source: APXvYqx7aNE3SmSZFRJ9B1SYeG5TEo0ObD4nwWjSxE7o3Z4jh0r2Wwl1fQgDSuJFA4J+lYf+yXSwuA==
X-Received: by 2002:a5d:6702:: with SMTP id o2mr26841122wru.339.1572964078826; 
 Tue, 05 Nov 2019 06:27:58 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id s21sm29985595wrb.31.2019.11.05.06.27.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 06:27:58 -0800 (PST)
Date: Tue, 5 Nov 2019 15:27:55 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20191105142755.GI10326@phenom.ffwll.local>
References: <20191031082958.10755-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031082958.10755-1-janusz.krzysztofik@linux.intel.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GaEfkqTsttVvPrIIweA8nbloqNOkYfiDu1mk0Xi4PQQ=;
 b=Ms61AWkwbTCxFdfOTFGPkQy0XOvUIopN83vI1R3wzAdoXxJ5uCyVBtAECH1ePOeUs+
 3xM+Tdgtah2AeEUjpGdd0bWCMrMjAAovb3yefHXK9FnIFi9JFZsXhw6Z8gaZeIS35MFN
 8fpTxWL3lCkNG4qMaad0Eyhza80JQopE3QMVY=
Subject: Re: [Intel-gfx] [RESEND PATCH 1/3] drm/i915/dmabuf: Implement
 pwrite() callback
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMzEsIDIwMTkgYXQgMDk6Mjk6NTZBTSArMDEwMCwgSmFudXN6IEtyenlzenRv
ZmlrIHdyb3RlOgo+IFdlIG5lZWQgZG1hYnVmIHNwZWNpZmljIHB3cml0ZSgpIGNhbGxiYWNrIHV0
aWxpemluZyBkbWEtYnVmIEFQSSwKPiBvdGhlcndpc2UgR0VNX1BXUklURSBJT0NUTCB3aWxsIG5v
IGxvbmdlciB3b3JrIHdpdGggZG1hLWJ1ZiBiYWNrZWQKPiAoaS5lLiwgUFJJTUUgaW1wb3J0ZWQp
IG9iamVjdHMgb24gaGFyZHdhcmUgd2l0aCBubyBtYXBwYWJsZSBhcGVydHVyZS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5p
bnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3Nw
dXJpb0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29A
aW50ZWwuY29tPgoKRG8gd2UgaGF2ZSB1c2Vyc3BhY2UgZm9yIHRoaXMgKGFzaWRlIGZyb20gaWd0
cyk/IFNwZWNpZmljYWxseSBmb3IgdGhlCmdlbjEyICsgZG1hLWJ1ZiBpbXBvcnQgKyBwd3JpdGUv
cmVhZC93aGF0ZXZlciBjYXNlIHlvdSdyZSBmaXhpbmcgaW4gdGhpcwpzZXJpZXMgaGVyZS4KLURh
bmllbAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5j
IHwgNTUgKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMK
PiBpbmRleCA5NmNlOTVjOGFjNWEuLjkzZWVhMTAzMWM4MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKPiBAQCAtMjQ4LDkgKzI0OCw2NCBAQCBzdGF0
aWMgdm9pZCBpOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzX2RtYWJ1ZihzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAo+ICAJCQkJIERNQV9CSURJUkVDVElPTkFMKTsKPiAgfQo+ICAKPiAr
c3RhdGljIGludCBpOTE1X2dlbV9vYmplY3RfcHdyaXRlX2RtYWJ1ZihzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAo+ICsJCQkJCSBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3B3cml0
ZSAqYXJncykKPiArewo+ICsJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IG9iai0+YmFzZS5pbXBv
cnRfYXR0YWNoLT5kbWFidWY7Cj4gKwl2b2lkIF9fdXNlciAqdXNlcl9kYXRhID0gdTY0X3RvX3Vz
ZXJfcHRyKGFyZ3MtPmRhdGFfcHRyKTsKPiArCXN0cnVjdCBmaWxlICpmaWxlID0gZG1hYnVmLT5m
aWxlOwo+ICsJY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyAqZm9wID0gZmlsZS0+Zl9vcDsK
PiArCXZvaWQgX19mb3JjZSAqdmFkZHI7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCWlmIChmb3AtPndy
aXRlKSB7Cj4gKwkJbG9mZl90IG9mZnNldCA9IGFyZ3MtPm9mZnNldDsKPiArCj4gKwkJLyoKPiAr
CQkgKiBmb3AtPndyaXRlKCkgaXMgc3VwcG9zZWQgdG8gY2FsbCBkbWFfYnVmX2JlZ2luX2NwdV9h
Y2Nlc3MoKQo+ICsJCSAqIGlmIE9fU1lOQyBmbGFnIGlzIHNldCwgYXZvaWQgY2FsbGluZyBpdCB0
d2ljZQo+ICsJCSAqLwo+ICsJCWlmICghKGZpbGUtPmZfZmxhZ3MgJiBPX1NZTkMpKSB7Cj4gKwkJ
CXJldCA9IGRtYV9idWZfYmVnaW5fY3B1X2FjY2VzcyhkbWFidWYsIERNQV9UT19ERVZJQ0UpOwo+
ICsJCQlpZiAocmV0KQo+ICsJCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4gKwo+ICsJCXJldCA9IGZv
cC0+d3JpdGUoZmlsZSwgdXNlcl9kYXRhLCBhcmdzLT5zaXplLCAmb2Zmc2V0KTsKPiArCj4gKwkJ
aWYgKCEoZmlsZS0+Zl9mbGFncyAmIE9fU1lOQykpCj4gKwkJCWRtYV9idWZfZW5kX2NwdV9hY2Nl
c3MoZG1hYnVmLCBETUFfVE9fREVWSUNFKTsKPiArCj4gKwkJaWYgKCFyZXQpCj4gKwkJCXJldHVy
biAwOwo+ICsJfQo+ICsKPiArCS8qIGRtYS1idWYgZmlsZSAud3JpdGUoKSBub3Qgc3VwcG9ydGVk
IG9yIGZhaWxlZCwgdHJ5IGRtYV9idWZfdm1hcCgpICovCj4gKwlyZXQgPSBkbWFfYnVmX2JlZ2lu
X2NwdV9hY2Nlc3MoZG1hYnVmLCBETUFfVE9fREVWSUNFKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0
dXJuIHJldDsKPiArCj4gKwl2YWRkciA9IGRtYV9idWZfdm1hcChkbWFidWYpOwo+ICsJaWYgKCF2
YWRkcikKPiArCQlnb3RvIG91dF9lcnI7Cj4gKwo+ICsJcmV0ID0gY29weV9mcm9tX3VzZXIodmFk
ZHIgKyBhcmdzLT5vZmZzZXQsIHVzZXJfZGF0YSwgYXJncy0+c2l6ZSk7Cj4gKwlkbWFfYnVmX3Z1
bm1hcChkbWFidWYsIHZhZGRyKTsKPiArCWlmICghcmV0KQo+ICsJCWdvdG8gb3V0X2VuZDsKPiAr
Cj4gK291dF9lcnI6Cj4gKwkvKiBmYWxsIGJhY2sgdG8gR1RUIG1hcHBpbmcgKi8KPiArCXJldCA9
IC1FTk9ERVY7Cj4gK291dF9lbmQ6Cj4gKwlkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKGRtYWJ1Ziwg
RE1BX1RPX0RFVklDRSk7Cj4gKwlyZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2VtX29iamVjdF9kbWFidWZfb3Bz
ID0gewo+ICAJLmdldF9wYWdlcyA9IGk5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXNfZG1hYnVmLAo+
ICAJLnB1dF9wYWdlcyA9IGk5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXNfZG1hYnVmLAo+ICsJLnB3
cml0ZSA9IGk5MTVfZ2VtX29iamVjdF9wd3JpdGVfZG1hYnVmLAo+ICB9Owo+ICAKPiAgc3RydWN0
IGRybV9nZW1fb2JqZWN0ICppOTE1X2dlbV9wcmltZV9pbXBvcnQoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwKPiAtLSAKPiAyLjIxLjAKPiAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2lu
ZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
