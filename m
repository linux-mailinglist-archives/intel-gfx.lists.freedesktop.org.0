Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BEC1140A1
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 13:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A40B96E9A1;
	Thu,  5 Dec 2019 12:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FCA26F898
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 12:12:48 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id 31so1141552uas.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Dec 2019 04:12:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ExrvLQvpM1UKpdq/VAgm0wXz8L09428Uzr2XJVsnfzs=;
 b=eFipkGh1P3wazneOtsJUo/pSOjEA7h9hO/tgZskPZyN3ur2EI9N4Jmbr70ho8vJLYD
 wKpxV3nOdWGfoW69++cO0z9fIRregop73e1HQNYLlkPjV4NKCA+Hjd3/kCbh1wn0WtyZ
 HcqZjpChveo7Iz2y1oBudDwoiXc/YP46KTjvlXyKrZiIjSdHTWW6LcoQqUW8VHbpu26Y
 oibt7WO0mMsHlPCtw5B0ywU6mmcU1QXUtCUqtJtolKY/1fTY6y7Y7CqzJOWiZ4ORRXd2
 kwHRnr9/bue6C2MgsPc4DWoNeoefJj5WSwCbORwL6UzlJ/KxFWZg6nOqqh4Xyl/24uTc
 xyZA==
X-Gm-Message-State: APjAAAXQBOgRXdkUaOlkgG8XrIBQoyJGKw8vS58BONlIWvSM90DiKGLL
 RO64p2ALm8pjmN76dBtTjHikBwrJ+SH3r8ZQvD1UiQ==
X-Google-Smtp-Source: APXvYqwvKi4cHcEB1emfRk9ZFE3EliOUY2EfYal4Z+iXyE/b75F328UdmUjpn9DvBpkQ86EoEKtRajWBNNJcQBcN97M=
X-Received: by 2002:ab0:2814:: with SMTP id w20mr6694157uap.95.1575547966833; 
 Thu, 05 Dec 2019 04:12:46 -0800 (PST)
MIME-Version: 1.0
References: <20191202065458.9477-1-ramalingam.c@intel.com>
 <20191202065458.9477-2-ramalingam.c@intel.com>
In-Reply-To: <20191202065458.9477-2-ramalingam.c@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 5 Dec 2019 12:12:19 +0000
Message-ID: <CAM0jSHMP37vD_sz8HMiA7T2A_J08vD4VmvkC-L7WcyBoxTsCaA@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ExrvLQvpM1UKpdq/VAgm0wXz8L09428Uzr2XJVsnfzs=;
 b=Qy40FTbW9Q+redjnOt6+EaLay0/zv7p72LZuMyJITL0gkjslVHeghaMXkzMbTFiqQw
 YM3x+yvoEkfhMyY0oSqxQuRkJMxDzLJz7LqHTJpl2BMqdct7wFM0nWEEOiwWHOL/M9wP
 DM+Hqp2uYn0saCkH24kk3wLeajQAYKaqTgUCaD0dlBV96giFldwjXhXqS46+N5sxWGUc
 djMbXRoXCVdVR71sMgmes98geNSgsCdPp+Mt/+hhZgMCaLSen4dMuojKP+W7/cCsUXCf
 T/6M7mag417m7TXXN+mnHBn1ZU67jzg2EOuEDzMNuEKKd0rfNNXt7mQhfDCGUAxgnZlI
 cQvQ==
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Create dumb buffer from
 LMEM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyIERlYyAyMDE5IGF0IDA2OjU1LCBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0Bp
bnRlbC5jb20+IHdyb3RlOgo+Cj4gV2hlbiBMTUVNIGlzIHN1cHBvcnRlZCwgZHVtYiBidWZmZXIg
cHJlZmVycmVkIHRvIGJlIGNyZWF0ZWQgZnJvbSBMTUVNLgo+Cj4gdjI6Cj4gICBQYXJhbWV0ZXJz
IGFyZSByZXNodWZmbGVkLiBbQ2hyaXNdCj4gdjM6Cj4gICBzL3JlZ2lvbl9pZC9tZW1fdHlwZQo+
IHY0Ogo+ICAgdXNlIHRoZSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbiBbY2hyaXNdCj4K
PiBTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4g
Y2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDE0ICsrKysrKysrKysrLS0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jCj4gaW5kZXggNjEzOTViMDM0NDNlLi4zNGU0ODBjODI5M2UgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMKPiBAQCAtNDQsNiArNDQsNyBAQAo+ICAjaW5jbHVkZSAiZ2VtL2k5
MTVfZ2VtX2NsZmx1c2guaCIKPiAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jb250ZXh0LmgiCj4g
ICNpbmNsdWRlICJnZW0vaTkxNV9nZW1faW9jdGxzLmgiCj4gKyNpbmNsdWRlICJnZW0vaTkxNV9n
ZW1fcmVnaW9uLmgiCj4gICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0uaCIKPiAgI2luY2x1ZGUg
Imd0L2ludGVsX2NvbnRleHQuaCIKPiAgI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV91c2VyLmgi
Cj4gQEAgLTE3Niw2ICsxNzcsNyBAQCBpOTE1X2dlbV9waHlzX3B3cml0ZShzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLAo+ICBzdGF0aWMgaW50Cj4gIGk5MTVfZ2VtX2NyZWF0ZShzdHJ1
Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKPiArICAgICAgICAgICAgICAgZW51bSBpbnRlbF9tZW1vcnlfdHlwZSBt
ZW1fdHlwZSwKPiAgICAgICAgICAgICAgICAgdTY0ICpzaXplX3AsCj4gICAgICAgICAgICAgICAg
IHUzMiAqaGFuZGxlX3ApCj4gIHsKPiBAQCAtMTg5LDcgKzE5MSw4IEBAIGk5MTVfZ2VtX2NyZWF0
ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFM
Owo+Cj4gICAgICAgICAvKiBBbGxvY2F0ZSB0aGUgbmV3IG9iamVjdCAqLwo+IC0gICAgICAgb2Jq
ID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShkZXZfcHJpdiwgc2l6ZSk7Cj4gKyAgICAg
ICBvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbihpbnRlbF9tZW1vcnlfcmVnaW9u
X2xvb2t1cChkZXZfcHJpdiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIG1lbV90eXBlKSwgc2l6ZSwgMCk7CgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKQnV0IGhvdyBzaG91bGQgd2UgZ28gYWJvdXQgdGVzdGlu
ZyB0aGlzPwoKV2Ugd291bGQgc3RpbGwgbmVlZCB0byBjbGVhciB0aGUgb2JqZWN0KG1heWJlIEk5
MTVfQk9fQUxMT0NfQ0xFQVJFRD8pCmluIG9yZGVyIHRvIHBhc3MgdGhlIElHVHMuIFdlIGFsc28g
bmVlZCB0byBhZGp1c3QgZHVtYl9idWZmZXIuYywgc2luY2UKdGhhdCB1c2VzIGdldF9hdmFpbF9y
YW1fbWIoKSBmb3IgYWx3YXlzX2NsZWFyLCBidXQgbWF5YmUgd2UgbmVlZCB0aGUKcXVlcnkgcmVn
aW9uIHVhcGkgZm9yIHRoYXQ/Cgo+ICAgICAgICAgaWYgKElTX0VSUihvYmopKQo+ICAgICAgICAg
ICAgICAgICByZXR1cm4gUFRSX0VSUihvYmopOwo+Cj4gQEAgLTIwOSw2ICsyMTIsNyBAQCBpOTE1
X2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gICAgICAgICAgICAgICAg
ICAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgZHJtX21vZGVfY3JlYXRlX2R1bWIgKmFyZ3MpCj4gIHsKPiArICAgICAgIGVudW0gaW50ZWxf
bWVtb3J5X3R5cGUgbWVtX3R5cGUgPSBJTlRFTF9NRU1PUllfU1lTVEVNOwo+ICAgICAgICAgaW50
IGNwcCA9IERJVl9ST1VORF9VUChhcmdzLT5icHAsIDgpOwo+ICAgICAgICAgdTMyIGZvcm1hdDsK
Pgo+IEBAIC0yMzUsNyArMjM5LDExIEBAIGk5MTVfZ2VtX2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1f
ZmlsZSAqZmlsZSwKPiAgICAgICAgICAgICAgICAgYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT5w
aXRjaCwgNDA5Nik7Cj4KPiAgICAgICAgIGFyZ3MtPnNpemUgPSBhcmdzLT5waXRjaCAqIGFyZ3Mt
PmhlaWdodDsKPiAtICAgICAgIHJldHVybiBpOTE1X2dlbV9jcmVhdGUoZmlsZSwgdG9faTkxNShk
ZXYpLAo+ICsKPiArICAgICAgIGlmIChIQVNfTE1FTSh0b19pOTE1KGRldikpKQo+ICsgICAgICAg
ICAgICAgICBtZW1fdHlwZSA9IElOVEVMX01FTU9SWV9MT0NBTDsKPiArCj4gKyAgICAgICByZXR1
cm4gaTkxNV9nZW1fY3JlYXRlKGZpbGUsIHRvX2k5MTUoZGV2KSwgbWVtX3R5cGUsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICZhcmdzLT5zaXplLCAmYXJncy0+aGFuZGxlKTsKPiAg
fQo+Cj4gQEAgLTI1NCw3ICsyNjIsNyBAQCBpOTE1X2dlbV9jcmVhdGVfaW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPgo+ICAgICAgICAgaTkxNV9nZW1fZmx1c2hfZnJl
ZV9vYmplY3RzKGRldl9wcml2KTsKPgo+IC0gICAgICAgcmV0dXJuIGk5MTVfZ2VtX2NyZWF0ZShm
aWxlLCBkZXZfcHJpdiwKPiArICAgICAgIHJldHVybiBpOTE1X2dlbV9jcmVhdGUoZmlsZSwgZGV2
X3ByaXYsIElOVEVMX01FTU9SWV9TWVNURU0sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICZhcmdzLT5zaXplLCAmYXJncy0+aGFuZGxlKTsKPiAgfQo+Cj4gLS0KPiAyLjIwLjEKPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
