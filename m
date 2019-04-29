Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCDBDCE7
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 09:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8519889186;
	Mon, 29 Apr 2019 07:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D8F689186
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 07:33:41 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id m4so8212280edd.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 00:33:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=cyqdEaHJR1ALkzixqfoYchywuJ+q53RR4MFXMXiyw/4=;
 b=jZuR7ulHO2pdzGzpFTKht8yGVwrtnaVIA53MZuOzYEMGgGOAeOfqwf71GGogoLUMzk
 ot1Y/dqI66owfRFpCV+CNI8ujF74tGOoPDEDlaOjj4jJqdDbhdTBEtk/vqhBBP8ka4hO
 uBP6X3VcUJK6VSqWwiltdMwfMGO+C7/x/RWdGhMftQ92HilbBTfPsUu0+lYXuZnhqAWU
 dCOFELnNoczgckeNPpNZ3tS6u1CF7lz7ntvSqYQoZ4yMNqDKfYC2tyAYzYeCSNsxf7Wu
 Hlz7TWj5/y1Zxp2H+U0yeKqgGbEdiV2X7Rlt/jzuJQCVM0BBjIHQWhco+pk4nPZ0G/pq
 Y5GQ==
X-Gm-Message-State: APjAAAU31tNzMB4w6Xm2pP869YWDrHDXAlPKnj755pDqM/t+rjxu33vO
 VkKvzoKoGyqMrHOG9WHbE/75Lg==
X-Google-Smtp-Source: APXvYqx8r9UiP6XbZ9U4syjUHSybicTW1WND3P1r8ovnANirQA0vkNgCkDO/c0XaDyIkGSN96cWotQ==
X-Received: by 2002:a05:6402:390:: with SMTP id
 o16mr36383631edv.156.1556523219721; 
 Mon, 29 Apr 2019 00:33:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id o15sm4187582edj.44.2019.04.29.00.33.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 00:33:38 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:33:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190429073336.GF3271@phenom.ffwll.local>
References: <20190418085805.5648-1-ramalingam.c@intel.com>
 <20190418085805.5648-9-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418085805.5648-9-ramalingam.c@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cyqdEaHJR1ALkzixqfoYchywuJ+q53RR4MFXMXiyw/4=;
 b=MKHcSjnHhxC5gRPN6gqj4dvuvB1M2EIolHarbt2q12amMSt1PykR2ffDX27UKV/kUP
 IggC+J3pyjviT6TRw8gBJIXNbUk9aM9cMvrOelS5hZ+MBKuab9GkMpCyfryW5ZyxZ5j+
 f6QRTjPWqsIidwnqFZrxqtmueaPURuBQQ0QcI=
Subject: Re: [Intel-gfx] [PATCH v5 08/12] drm: uevent for connector status
 change
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

T24gVGh1LCBBcHIgMTgsIDIwMTkgYXQgMDI6Mjg6MDFQTSArMDUzMCwgUmFtYWxpbmdhbSBDIHdy
b3RlOgo+IERSTSBBUEkgZm9yIGdlbmVyYXRpbmcgdWV2ZW50IGZvciBhIHN0YXR1cyBjaGFuZ2Vz
IG9mIGNvbm5lY3RvcidzCj4gcHJvcGVydHkuCj4gCj4gVGhpcyB1ZXZlbnQgd2lsbCBoYXZlIGZv
bGxvd2luZyBkZXRhaWxzIHJlbGF0ZWQgdG8gdGhlIHN0YXR1cyBjaGFuZ2U6Cj4gCj4gICBIT1RQ
TFVHPTEsIENPTk5FQ1RPUj08Y29ubmVjdG9yX2lkPiBhbmQgUFJPUEVSVFk9PHByb3BlcnR5X2lk
Pgo+IHYyOgo+ICAgTWlub3IgZml4ZXMgYXQgS0RvYyBjb21tZW50cyBbRGFuaWVsXQo+IAo+IFNp
Z25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5jIHwgMzEgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ICBpbmNsdWRlL2RybS9kcm1fc3lzZnMuaCAgICAgfCAgNSArKysrLQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9zeXNmcy5jCj4gaW5kZXggMThiMWFjNDQyOTk3Li5lOGYxZmQ3MzY3N2YgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9zeXNmcy5jCj4gQEAgLTMyMCw2ICszMjAsOSBAQCB2b2lkIGRybV9zeXNmc19sZWFzZV9ldmVu
dChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQo+ICAgKiBTZW5kIGEgdWV2ZW50IGZvciB0aGUgRFJN
IGRldmljZSBzcGVjaWZpZWQgYnkgQGRldi4gIEN1cnJlbnRseSB3ZSBvbmx5Cj4gICAqIHNldCBI
T1RQTFVHPTEgaW4gdGhlIHVldmVudCBlbnZpcm9ubWVudCwgYnV0IHRoaXMgY291bGQgYmUgZXhw
YW5kZWQgdG8KPiAgICogZGVhbCB3aXRoIG90aGVyIHR5cGVzIG9mIGV2ZW50cy4KPiArICoKPiAr
ICogQW55IG5ldyB1YXBpIHNob3VsZCBiZSB1c2luZyB0aGUgZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9z
dGF0dXNfZXZlbnQoKQo+ICsgKiBmb3IgdWV2ZW50cyBvbiBjb25uZWN0b3Igc3RhdHVzIGNoYW5n
ZS4KPiAgICovCj4gIHZvaWQgZHJtX3N5c2ZzX2hvdHBsdWdfZXZlbnQoc3RydWN0IGRybV9kZXZp
Y2UgKmRldikKPiAgewo+IEBAIC0zMzIsNiArMzM1LDM0IEBAIHZvaWQgZHJtX3N5c2ZzX2hvdHBs
dWdfZXZlbnQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKGRy
bV9zeXNmc19ob3RwbHVnX2V2ZW50KTsKPiAgCj4gKy8qKgo+ICsgKiBkcm1fc3lzZnNfY29ubmVj
dG9yX3N0YXR1c19ldmVudCAtIGdlbmVyYXRlIGEgRFJNIHVldmVudCBmb3IgY29ubmVjdG9yCj4g
KyAqIHByb3BlcnR5IHN0YXR1cyBjaGFuZ2UKPiArICogQGNvbm5lY3RvcjogY29ubmVjdG9yIG9u
IHdoaWNoIHByb3BlcnR5IHN0YXR1cyBjaGFuZ2VkCj4gKyAqIEBwcm9wZXJ0eTogY29ubmVjdG9y
IHByb3BlcnR5IHdob2VzIHN0YXR1cyBjaGFuZ2VkLgo+ICsgKgo+ICsgKiBTZW5kIGEgdWV2ZW50
IGZvciB0aGUgRFJNIGRldmljZSBzcGVjaWZpZWQgYnkgQGRldi4gIEN1cnJlbnRseSB3ZQo+ICsg
KiBzZXQgSE9UUExVRz0xIGFuZCBjb25uZWN0b3IgaWQgYWxvbmcgd2l0aCB0aGUgYXR0YWNoZWQg
cHJvcGVydHkgaWQKPiArICogcmVsYXRlZCB0byB0aGUgc3RhdHVzIGNoYW5nZS4KPiArICovCj4g
K3ZvaWQgZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9zdGF0dXNfZXZlbnQoc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvciwKPiArCQkJCSAgICAgIHN0cnVjdCBkcm1fcHJvcGVydHkgKnByb3BlcnR5
KQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY29ubmVjdG9yLT5kZXY7Cj4gKwlj
aGFyIGhvdHBsdWdfc3RyW10gPSAiSE9UUExVRz0xIiwgY29ubl9pZFszMF0sIHByb3BfaWRbMzBd
Owo+ICsJY2hhciAqZW52cFs0XSA9IHsgaG90cGx1Z19zdHIsIGNvbm5faWQsIHByb3BfaWQsIE5V
TEwgfTsKPiArCj4gKwlzbnByaW50Zihjb25uX2lkLCBBUlJBWV9TSVpFKGNvbm5faWQpLAo+ICsJ
CSAiQ09OTkVDVE9SPSV1IiwgY29ubmVjdG9yLT5iYXNlLmlkKTsKPiArCXNucHJpbnRmKHByb3Bf
aWQsIEFSUkFZX1NJWkUocHJvcF9pZCksCj4gKwkJICJQUk9QRVJUWT0ldSIsIHByb3BlcnR5LT5i
YXNlLmlkKTsKCk1heWJlIGRvdWJsZS1jaGVjayB0aGF0IHByb3BlcnR5IGlzIGF0dGFjaGVkIHRv
IGNvbm5lY3RvciwgYW5kIFdBUk4gaWYKbm90PyBKdXN0IHRvIGNhdGNoIG1pc3Rha2VzIGluIGRy
aXZlciBwcm9ncmFtbWluZy4KCldpdGggdGhhdDogUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CgoKPiArCj4gKwlEUk1fREVCVUcoImdlbmVyYXRpbmcg
Y29ubmVjdG9yIHN0YXR1cyBldmVudFxuIik7Cj4gKwo+ICsJa29iamVjdF91ZXZlbnRfZW52KCZk
ZXYtPnByaW1hcnktPmtkZXYtPmtvYmosIEtPQkpfQ0hBTkdFLCBlbnZwKTsKPiArfQo+ICtFWFBP
UlRfU1lNQk9MKGRybV9zeXNmc19jb25uZWN0b3Jfc3RhdHVzX2V2ZW50KTsKPiArCj4gIHN0YXRp
YyB2b2lkIGRybV9zeXNmc19yZWxlYXNlKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgewo+ICAJa2Zy
ZWUoZGV2KTsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX3N5c2ZzLmggYi9pbmNsdWRl
L2RybS9kcm1fc3lzZnMuaAo+IGluZGV4IDRmMzExZTgzNmNkYy4uZDQ1NGVmNjE3YjJjIDEwMDY0
NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9zeXNmcy5oCj4gKysrIGIvaW5jbHVkZS9kcm0vZHJt
X3N5c2ZzLmgKPiBAQCAtNCwxMCArNCwxMyBAQAo+ICAKPiAgc3RydWN0IGRybV9kZXZpY2U7Cj4g
IHN0cnVjdCBkZXZpY2U7Cj4gK3N0cnVjdCBkcm1fY29ubmVjdG9yOwo+ICtzdHJ1Y3QgZHJtX3By
b3BlcnR5Owo+ICAKPiAgaW50IGRybV9jbGFzc19kZXZpY2VfcmVnaXN0ZXIoc3RydWN0IGRldmlj
ZSAqZGV2KTsKPiAgdm9pZCBkcm1fY2xhc3NfZGV2aWNlX3VucmVnaXN0ZXIoc3RydWN0IGRldmlj
ZSAqZGV2KTsKPiAgCj4gIHZvaWQgZHJtX3N5c2ZzX2hvdHBsdWdfZXZlbnQoc3RydWN0IGRybV9k
ZXZpY2UgKmRldik7Cj4gLQo+ICt2b2lkIGRybV9zeXNmc19jb25uZWN0b3Jfc3RhdHVzX2V2ZW50
KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gKwkJCQkgICAgICBzdHJ1Y3QgZHJt
X3Byb3BlcnR5ICpwcm9wZXJ0eSk7Cj4gICNlbmRpZgo+IC0tIAo+IDIuMTkuMQo+IAoKLS0gCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
