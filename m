Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4717FCFB
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 17:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2E16EEA0;
	Fri,  2 Aug 2019 15:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11CD6EE9F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 15:06:55 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id d4so72711239edr.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Aug 2019 08:06:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=7fcXBTi7EFdP/XaHSbpdTr3JGp3E9BWhkttR88encBc=;
 b=j7OnfuamBj2DoXZ0EfqJVFGZwwpvTHI8O5vRArL2eLxCz/em0xPZPXPpRwLcVZnM9w
 bA12YOUJ7GmqChUmvUHgyig46tU8PDIrvnPbC0FpI+4f1j2H81sZpgRbZi8CZpQncHsG
 6oSqLOVSsuUTQYKNtbXZvqQg5HeHyOjewKflMxP7Ff7mLYzH4naNy1TwGzJ2g+JUdSTa
 wFxkKmss9eR1Zsz2MyVvrwFy1QUgE/otMCdfv4HySYhUVdd2WwRlx1DRskL1ISu9CxUE
 qGV7CaNkqgXTc4w9ad1uuh8IZ8W98bJdvT9WC32Si/NLXp7euIWxS8Kn37zJNDfYpLb8
 5a/Q==
X-Gm-Message-State: APjAAAWXYcZtLoMqKkbTDJzKZPpfmhlxAm+GT6noZyu0qMrYQyWHOZM1
 1hvaq0etqIPDv7X41M0Lc/4=
X-Google-Smtp-Source: APXvYqzGs04z1G9JbvbZQbrkA+kTbBJezogLyHilZfN/2vXfycl8fsbsKfCz7lQYSUHmXUdN4Sw77A==
X-Received: by 2002:aa7:c99a:: with SMTP id
 c26mr117479078edt.118.1564758414302; 
 Fri, 02 Aug 2019 08:06:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id s52sm18433378edm.55.2019.08.02.08.06.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 08:06:53 -0700 (PDT)
Date: Fri, 2 Aug 2019 17:06:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sean Paul <sean@poorly.run>
Message-ID: <20190802150651.GP7444@phenom.ffwll.local>
References: <20190801124458.24949-1-chris@chris-wilson.co.uk>
 <20190802141810.GW104440@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802141810.GW104440@art_vandelay>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7fcXBTi7EFdP/XaHSbpdTr3JGp3E9BWhkttR88encBc=;
 b=LZc80K3E3hL3piWWl3dCBCAWscHF/nzgPR/sl9cRQMxdYij3Ri8LW3z6d7maCspaa2
 FRk/qKrGNX8yzNkkqlEei9phhTEJIFgdD2OKXaa69VU78MLE9INgJJCmQWrLUKv67lLr
 KB7DF3YhrVWrjqdEI0xIdPbPJpnjjJaKiUk+Y=
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/vgem: fix cache synchronization
 on arm/arm64"
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMDIsIDIwMTkgYXQgMTA6MTg6MTBBTSAtMDQwMCwgU2VhbiBQYXVsIHdyb3Rl
Ogo+IE9uIFRodSwgQXVnIDAxLCAyMDE5IGF0IDAxOjQ0OjU4UE0gKzAxMDAsIENocmlzIFdpbHNv
biB3cm90ZToKPiA+IGNvbW1pdCA3ZTllNWVhZDU1YmUgKCJkcm0vdmdlbTogZml4IGNhY2hlIHN5
bmNocm9uaXphdGlvbiBvbiBhcm0vYXJtNjQiKQo+ID4gYnJva2UgYWxsIG9mIHRoZSAhbGxjIGk5
MTUtdmdlbSBjb2hlcmVuY3kgdGVzdHMgaW4gQ0ksIGFuZCBsZWZ0IHRoZSBIVwo+ID4gdmVyeSwg
dmVyeSB1bmhhcHB5ICh3aGljaCBpcyBldmVuIG1vcmUgc2NhcnkpLgo+ID4gCj4gPiBGaXhlczog
N2U5ZTVlYWQ1NWJlICgiZHJtL3ZnZW06IGZpeCBjYWNoZSBzeW5jaHJvbml6YXRpb24gb24gYXJt
L2FybTY0IikKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IAo+IEFja2VkLWJ5OiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KCkFw
cGxpZWQgdG8gZHJtLWZpeGVzIGRpcmVjdGx5LgoKVGhhbmtzLCBEYW5pZWwKCj4gCj4gPiBDYzog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiA+IENjOiBSb2IgQ2xhcmsg
PHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4gPiBDYzogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJv
bWl1bS5vcmc+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jIHwg
MTMwICsrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDQ3IGluc2VydGlvbnMoKyksIDgzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS92Z2VtL3Zn
ZW1fZHJ2LmMKPiA+IGluZGV4IGI5ODY4OWZiMGQ1ZC4uNWJkNjBkZWQzZDgxIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3ZnZW0vdmdlbV9kcnYuYwo+ID4gQEAgLTU0LDE2ICs1NCwxMCBAQCBzdGF0aWMgc3Ry
dWN0IHZnZW1fZGV2aWNlIHsKPiA+ICAJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGxhdGZvcm07
Cj4gPiAgfSAqdmdlbV9kZXZpY2U7Cj4gPiAgCj4gPiAtc3RhdGljIHZvaWQgc3luY19hbmRfdW5w
aW4oc3RydWN0IGRybV92Z2VtX2dlbV9vYmplY3QgKmJvKTsKPiA+IC1zdGF0aWMgc3RydWN0IHBh
Z2UgKipwaW5fYW5kX3N5bmMoc3RydWN0IGRybV92Z2VtX2dlbV9vYmplY3QgKmJvKTsKPiA+IC0K
PiA+ICBzdGF0aWMgdm9pZCB2Z2VtX2dlbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaikKPiA+ICB7Cj4gPiAgCXN0cnVjdCBkcm1fdmdlbV9nZW1fb2JqZWN0ICp2Z2VtX29i
aiA9IHRvX3ZnZW1fYm8ob2JqKTsKPiA+ICAKPiA+IC0JaWYgKCFvYmotPmltcG9ydF9hdHRhY2gp
Cj4gPiAtCQlzeW5jX2FuZF91bnBpbih2Z2VtX29iaik7Cj4gPiAtCj4gPiAgCWt2ZnJlZSh2Z2Vt
X29iai0+cGFnZXMpOwo+ID4gIAltdXRleF9kZXN0cm95KCZ2Z2VtX29iai0+cGFnZXNfbG9jayk7
Cj4gPiAgCj4gPiBAQCAtOTEsMTUgKzg1LDQwIEBAIHN0YXRpYyB2bV9mYXVsdF90IHZnZW1fZ2Vt
X2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQo+ID4gIAkJcmV0dXJuIFZNX0ZBVUxUX1NJR0JV
UzsKPiA+ICAKPiA+ICAJbXV0ZXhfbG9jaygmb2JqLT5wYWdlc19sb2NrKTsKPiA+IC0JaWYgKCFv
YmotPnBhZ2VzKQo+ID4gLQkJcGluX2FuZF9zeW5jKG9iaik7Cj4gPiAgCWlmIChvYmotPnBhZ2Vz
KSB7Cj4gPiAgCQlnZXRfcGFnZShvYmotPnBhZ2VzW3BhZ2Vfb2Zmc2V0XSk7Cj4gPiAgCQl2bWYt
PnBhZ2UgPSBvYmotPnBhZ2VzW3BhZ2Vfb2Zmc2V0XTsKPiA+ICAJCXJldCA9IDA7Cj4gPiAgCX0K
PiA+ICAJbXV0ZXhfdW5sb2NrKCZvYmotPnBhZ2VzX2xvY2spOwo+ID4gKwlpZiAocmV0KSB7Cj4g
PiArCQlzdHJ1Y3QgcGFnZSAqcGFnZTsKPiA+ICsKPiA+ICsJCXBhZ2UgPSBzaG1lbV9yZWFkX21h
cHBpbmdfcGFnZSgKPiA+ICsJCQkJCWZpbGVfaW5vZGUob2JqLT5iYXNlLmZpbHApLT5pX21hcHBp
bmcsCj4gPiArCQkJCQlwYWdlX29mZnNldCk7Cj4gPiArCQlpZiAoIUlTX0VSUihwYWdlKSkgewo+
ID4gKwkJCXZtZi0+cGFnZSA9IHBhZ2U7Cj4gPiArCQkJcmV0ID0gMDsKPiA+ICsJCX0gZWxzZSBz
d2l0Y2ggKFBUUl9FUlIocGFnZSkpIHsKPiA+ICsJCQljYXNlIC1FTk9TUEM6Cj4gPiArCQkJY2Fz
ZSAtRU5PTUVNOgo+ID4gKwkJCQlyZXQgPSBWTV9GQVVMVF9PT007Cj4gPiArCQkJCWJyZWFrOwo+
ID4gKwkJCWNhc2UgLUVCVVNZOgo+ID4gKwkJCQlyZXQgPSBWTV9GQVVMVF9SRVRSWTsKPiA+ICsJ
CQkJYnJlYWs7Cj4gPiArCQkJY2FzZSAtRUZBVUxUOgo+ID4gKwkJCWNhc2UgLUVJTlZBTDoKPiA+
ICsJCQkJcmV0ID0gVk1fRkFVTFRfU0lHQlVTOwo+ID4gKwkJCQlicmVhazsKPiA+ICsJCQlkZWZh
dWx0Ogo+ID4gKwkJCQlXQVJOX09OKFBUUl9FUlIocGFnZSkpOwo+ID4gKwkJCQlyZXQgPSBWTV9G
QVVMVF9TSUdCVVM7Cj4gPiArCQkJCWJyZWFrOwo+ID4gKwkJfQo+ID4gIAo+ID4gKwl9Cj4gPiAg
CXJldHVybiByZXQ7Cj4gPiAgfQo+ID4gIAo+ID4gQEAgLTI2NSw5MyArMjg0LDMyIEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIHZnZW1fZHJpdmVyX2ZvcHMgPSB7Cj4gPiAg
CS5yZWxlYXNlCT0gZHJtX3JlbGVhc2UsCj4gPiAgfTsKPiA+ICAKPiA+IC0vKiBDYWxsZWQgdW5k
ZXIgcGFnZXNfbG9jaywgZXhjZXB0IGluIGZyZWUgcGF0aCAod2hlcmUgaXQgY2FuJ3QgcmFjZSk6
ICovCj4gPiAtc3RhdGljIHZvaWQgc3luY19hbmRfdW5waW4oc3RydWN0IGRybV92Z2VtX2dlbV9v
YmplY3QgKmJvKQo+ID4gLXsKPiA+IC0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGJvLT5iYXNl
LmRldjsKPiA+IC0KPiA+IC0JaWYgKGJvLT50YWJsZSkgewo+ID4gLQkJZG1hX3N5bmNfc2dfZm9y
X2NwdShkZXYtPmRldiwgYm8tPnRhYmxlLT5zZ2wsCj4gPiAtCQkJCWJvLT50YWJsZS0+bmVudHMs
IERNQV9CSURJUkVDVElPTkFMKTsKPiA+IC0JCXNnX2ZyZWVfdGFibGUoYm8tPnRhYmxlKTsKPiA+
IC0JCWtmcmVlKGJvLT50YWJsZSk7Cj4gPiAtCQliby0+dGFibGUgPSBOVUxMOwo+ID4gLQl9Cj4g
PiAtCj4gPiAtCWlmIChiby0+cGFnZXMpIHsKPiA+IC0JCWRybV9nZW1fcHV0X3BhZ2VzKCZiby0+
YmFzZSwgYm8tPnBhZ2VzLCB0cnVlLCB0cnVlKTsKPiA+IC0JCWJvLT5wYWdlcyA9IE5VTEw7Cj4g
PiAtCX0KPiA+IC19Cj4gPiAtCj4gPiAtc3RhdGljIHN0cnVjdCBwYWdlICoqcGluX2FuZF9zeW5j
KHN0cnVjdCBkcm1fdmdlbV9nZW1fb2JqZWN0ICpibykKPiA+IC17Cj4gPiAtCXN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYgPSBiby0+YmFzZS5kZXY7Cj4gPiAtCWludCBucGFnZXMgPSBiby0+YmFzZS5z
aXplID4+IFBBR0VfU0hJRlQ7Cj4gPiAtCXN0cnVjdCBwYWdlICoqcGFnZXM7Cj4gPiAtCXN0cnVj
dCBzZ190YWJsZSAqc2d0Owo+ID4gLQo+ID4gLQlXQVJOX09OKCFtdXRleF9pc19sb2NrZWQoJmJv
LT5wYWdlc19sb2NrKSk7Cj4gPiAtCj4gPiAtCXBhZ2VzID0gZHJtX2dlbV9nZXRfcGFnZXMoJmJv
LT5iYXNlKTsKPiA+IC0JaWYgKElTX0VSUihwYWdlcykpIHsKPiA+IC0JCWJvLT5wYWdlc19waW5f
Y291bnQtLTsKPiA+IC0JCW11dGV4X3VubG9jaygmYm8tPnBhZ2VzX2xvY2spOwo+ID4gLQkJcmV0
dXJuIHBhZ2VzOwo+ID4gLQl9Cj4gPiAtCj4gPiAtCXNndCA9IGRybV9wcmltZV9wYWdlc190b19z
ZyhwYWdlcywgbnBhZ2VzKTsKPiA+IC0JaWYgKElTX0VSUihzZ3QpKSB7Cj4gPiAtCQlkZXZfZXJy
KGRldi0+ZGV2LAo+ID4gLQkJCSJmYWlsZWQgdG8gYWxsb2NhdGUgc2d0OiAlbGRcbiIsCj4gPiAt
CQkJUFRSX0VSUihiby0+dGFibGUpKTsKPiA+IC0JCWRybV9nZW1fcHV0X3BhZ2VzKCZiby0+YmFz
ZSwgcGFnZXMsIGZhbHNlLCBmYWxzZSk7Cj4gPiAtCQltdXRleF91bmxvY2soJmJvLT5wYWdlc19s
b2NrKTsKPiA+IC0JCXJldHVybiBFUlJfQ0FTVChiby0+dGFibGUpOwo+ID4gLQl9Cj4gPiAtCj4g
PiAtCS8qCj4gPiAtCSAqIEZsdXNoIHRoZSBvYmplY3QgZnJvbSB0aGUgQ1BVIGNhY2hlIHNvIHRo
YXQgaW1wb3J0ZXJzCj4gPiAtCSAqIGNhbiByZWx5IG9uIGNvaGVyZW50IGluZGlyZWN0IGFjY2Vz
cyB2aWEgdGhlIGV4cG9ydGVkCj4gPiAtCSAqIGRtYS1hZGRyZXNzLgo+ID4gLQkgKi8KPiA+IC0J
ZG1hX3N5bmNfc2dfZm9yX2RldmljZShkZXYtPmRldiwgc2d0LT5zZ2wsCj4gPiAtCQkJc2d0LT5u
ZW50cywgRE1BX0JJRElSRUNUSU9OQUwpOwo+ID4gLQo+ID4gLQliby0+cGFnZXMgPSBwYWdlczsK
PiA+IC0JYm8tPnRhYmxlID0gc2d0Owo+ID4gLQo+ID4gLQlyZXR1cm4gcGFnZXM7Cj4gPiAtfQo+
ID4gLQo+ID4gIHN0YXRpYyBzdHJ1Y3QgcGFnZSAqKnZnZW1fcGluX3BhZ2VzKHN0cnVjdCBkcm1f
dmdlbV9nZW1fb2JqZWN0ICpibykKPiA+ICB7Cj4gPiAtCXN0cnVjdCBwYWdlICoqcGFnZXM7Cj4g
PiAtCj4gPiAgCW11dGV4X2xvY2soJmJvLT5wYWdlc19sb2NrKTsKPiA+IC0JaWYgKGJvLT5wYWdl
c19waW5fY291bnQrKyA9PSAwICYmICFiby0+cGFnZXMpIHsKPiA+IC0JCXBhZ2VzID0gcGluX2Fu
ZF9zeW5jKGJvKTsKPiA+IC0JfSBlbHNlIHsKPiA+IC0JCVdBUk5fT04oIWJvLT5wYWdlcyk7Cj4g
PiAtCQlwYWdlcyA9IGJvLT5wYWdlczsKPiA+ICsJaWYgKGJvLT5wYWdlc19waW5fY291bnQrKyA9
PSAwKSB7Cj4gPiArCQlzdHJ1Y3QgcGFnZSAqKnBhZ2VzOwo+ID4gKwo+ID4gKwkJcGFnZXMgPSBk
cm1fZ2VtX2dldF9wYWdlcygmYm8tPmJhc2UpOwo+ID4gKwkJaWYgKElTX0VSUihwYWdlcykpIHsK
PiA+ICsJCQliby0+cGFnZXNfcGluX2NvdW50LS07Cj4gPiArCQkJbXV0ZXhfdW5sb2NrKCZiby0+
cGFnZXNfbG9jayk7Cj4gPiArCQkJcmV0dXJuIHBhZ2VzOwo+ID4gKwkJfQo+ID4gKwo+ID4gKwkJ
Ym8tPnBhZ2VzID0gcGFnZXM7Cj4gPiAgCX0KPiA+ICAJbXV0ZXhfdW5sb2NrKCZiby0+cGFnZXNf
bG9jayk7Cj4gPiAgCj4gPiAtCXJldHVybiBwYWdlczsKPiA+ICsJcmV0dXJuIGJvLT5wYWdlczsK
PiA+ICB9Cj4gPiAgCj4gPiAgc3RhdGljIHZvaWQgdmdlbV91bnBpbl9wYWdlcyhzdHJ1Y3QgZHJt
X3ZnZW1fZ2VtX29iamVjdCAqYm8pCj4gPiAgewo+ID4gLQkvKgo+ID4gLQkgKiBXZSBzaG91bGRu
J3QgaGl0IHRoaXMgZm9yIGltcG9ydGVkIGJvJ3MuLiBpbiB0aGUgaW1wb3J0Cj4gPiAtCSAqIGNh
c2Ugd2UgZG9uJ3Qgb3duIHRoZSBzY2F0dGVyLXRhYmxlCj4gPiAtCSAqLwo+ID4gLQlXQVJOX09O
KGJvLT5iYXNlLmltcG9ydF9hdHRhY2gpOwo+ID4gLQo+ID4gIAltdXRleF9sb2NrKCZiby0+cGFn
ZXNfbG9jayk7Cj4gPiAgCWlmICgtLWJvLT5wYWdlc19waW5fY291bnQgPT0gMCkgewo+ID4gLQkJ
V0FSTl9PTighYm8tPnRhYmxlKTsKPiA+IC0JCXN5bmNfYW5kX3VucGluKGJvKTsKPiA+ICsJCWRy
bV9nZW1fcHV0X3BhZ2VzKCZiby0+YmFzZSwgYm8tPnBhZ2VzLCB0cnVlLCB0cnVlKTsKPiA+ICsJ
CWJvLT5wYWdlcyA9IE5VTEw7Cj4gPiAgCX0KPiA+ICAJbXV0ZXhfdW5sb2NrKCZiby0+cGFnZXNf
bG9jayk7Cj4gPiAgfQo+ID4gQEAgLTM1OSwxMiArMzE3LDE4IEBAIHN0YXRpYyB2b2lkIHZnZW1f
dW5waW5fcGFnZXMoc3RydWN0IGRybV92Z2VtX2dlbV9vYmplY3QgKmJvKQo+ID4gIHN0YXRpYyBp
bnQgdmdlbV9wcmltZV9waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopCj4gPiAgewo+ID4g
IAlzdHJ1Y3QgZHJtX3ZnZW1fZ2VtX29iamVjdCAqYm8gPSB0b192Z2VtX2JvKG9iaik7Cj4gPiAr
CWxvbmcgbl9wYWdlcyA9IG9iai0+c2l6ZSA+PiBQQUdFX1NISUZUOwo+ID4gIAlzdHJ1Y3QgcGFn
ZSAqKnBhZ2VzOwo+ID4gIAo+ID4gIAlwYWdlcyA9IHZnZW1fcGluX3BhZ2VzKGJvKTsKPiA+ICAJ
aWYgKElTX0VSUihwYWdlcykpCj4gPiAgCQlyZXR1cm4gUFRSX0VSUihwYWdlcyk7Cj4gPiAgCj4g
PiArCS8qIEZsdXNoIHRoZSBvYmplY3QgZnJvbSB0aGUgQ1BVIGNhY2hlIHNvIHRoYXQgaW1wb3J0
ZXJzIGNhbiByZWx5Cj4gPiArCSAqIG9uIGNvaGVyZW50IGluZGlyZWN0IGFjY2VzcyB2aWEgdGhl
IGV4cG9ydGVkIGRtYS1hZGRyZXNzLgo+ID4gKwkgKi8KPiA+ICsJZHJtX2NsZmx1c2hfcGFnZXMo
cGFnZXMsIG5fcGFnZXMpOwo+ID4gKwo+ID4gIAlyZXR1cm4gMDsKPiA+ICB9Cj4gPiAgCj4gPiAt
LSAKPiA+IDIuMjMuMC5yYzAKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCj4gLS0gCj4gU2VhbiBQYXVsLCBTb2Z0d2Fy
ZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3
YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
