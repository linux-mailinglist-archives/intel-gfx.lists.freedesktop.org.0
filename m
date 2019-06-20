Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713984CE87
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 15:20:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBA496E41A;
	Thu, 20 Jun 2019 13:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32DCD6E41A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 13:20:18 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id e8so2677298otl.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 06:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G+5vzHEXtZOcwD7mP0Ux6WvOIYL5SHkbeIFFPB4d86s=;
 b=L8pzckK6OmstHuhgGn2ndqRmLj/KGB6pPwp4YKZ3Q+DyZpaTRENnWmtFbcTfqwQjFQ
 tClOLPOObg1lXjUNY9NYviSdcVeTo0v+Wy+HEHGCJ5KBhNrKVBQyTaxqH2sByRMZnmjN
 83Qc5+aXjIv3r6SetUmgvDfQuuVKEKpEJCI+EqocqsdMGon0huAUKzzz0gpvhrcdqam7
 QSYEkmdvE6o2v17TpZskHgon0+o4W6BNqs0GXeM1i1qOlIJlHbPcu1NU1161VpazmI0N
 EXs1GZIxnTyJH9q8giuGywEQOe3jJFFdO2Pkh5611cbJje/plbYb5I990tyAhuW6iRad
 8ixA==
X-Gm-Message-State: APjAAAUcJdjtdfhOQ05YV+ko74RMDiskfKH6Lh4V8vNcWVBTDvKkFEGE
 KeCKAQ4PCDk6GONT5a97mgFb5IfSn7ZiKYnMQoRoyBvy
X-Google-Smtp-Source: APXvYqz/ZMWNJCtnsIfyxujP0vIkG//ClbSbHHgPXyFzkbtmiVB6EPHl3vxv/aEPv1Zv2wAF4WM+2M7hMbMQP+62K0I=
X-Received: by 2002:a05:6830:ce:: with SMTP id
 x14mr8123394oto.188.1561036817335; 
 Thu, 20 Jun 2019 06:20:17 -0700 (PDT)
MIME-Version: 1.0
References: <20181016222341.1537-1-drawat@vmware.com>
 <20181016222341.1537-5-drawat@vmware.com>
In-Reply-To: <20181016222341.1537-5-drawat@vmware.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 20 Jun 2019 15:20:02 +0200
Message-ID: <CAKMK7uEUN_-cdkMxvO1VwhD7YhGTNgd56y+Z8Pjv53Ri7wMSNw@mail.gmail.com>
To: Deepak Rawat <drawat@vmware.com>, Petri Latvala <petri.latvala@intel.com>, 
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=G+5vzHEXtZOcwD7mP0Ux6WvOIYL5SHkbeIFFPB4d86s=;
 b=FVCre1JkHtO+YHAC+/iSJBnUCIVKtf9+xgeyWTpL05C+4dfclz5/KV22ljLMJSrL1H
 o3OUiWPeViTooGljGZ+BksorhxaM+LLlkUEELhpKrBWULk0XhVcq6xnoEPrmHsN0aPFv
 f/Mw+TQvtP3wHdVhWsF6zBvIJh7ito7V3JLqM=
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/5] tests/kms_selftest: Integrate
 kernel selftest test-drm_modeset
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
Cc: IGT development <igt-dev@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMTYsIDIwMTggYXQgMDM6MjM6NDFQTSAtMDcwMCwgRGVlcGFrIFJhd2F0IHdy
b3RlOgo+IENhbGwga2VybmVsIHNlbGZ0ZXN0IG1vZHVsZSB0ZXN0LWRybV9tb2Rlc2V0IGZvciB0
ZXN0aW5nIEtNUy4KPgo+IHYyOgo+IC0gQWRkIHRlc3QgYWxwaGFiZXRpY2FsbHkuCj4gLSBBZGQg
dGVzdCB0byBtZXNvbiBidWlsZC4KPgo+IHYzOiBSZW5hbWUgdG8ga21zX3NlbGZ0ZXN0Lgo+Cj4g
U2lnbmVkLW9mZi1ieTogRGVlcGFrIFJhd2F0IDxkcmF3YXRAdm13YXJlLmNvbT4KCkp1c3QgcmVh
bGl6ZWQgdGhhdCB0aGlzIG5ldmVyIGxhbmRlZCAuLi4gYW55IHJlYXNvbnM/IFdvdWxkIGJlIG5p
Y2UgdG8gZ2V0CnRoaXMgaGFuZGxlZC4KClBldHJpL0FyZWs/CgpDaGVlcnMsIERhbmllbAoKCj4g
LS0tCj4gIHRlc3RzL01ha2VmaWxlLnNvdXJjZXMgICAgfCAgMSArCj4gIHRlc3RzL2lndF9jb21t
YW5kX2xpbmUuc2ggfCAgMiArLQo+ICB0ZXN0cy9rbXNfc2VsZnRlc3QuYyAgICAgIHwgMTAgKysr
KysrKysrKwo+ICB0ZXN0cy9tZXNvbi5idWlsZCAgICAgICAgIHwgIDEgKwo+ICA0IGZpbGVzIGNo
YW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IHRlc3RzL2ttc19zZWxmdGVzdC5jCj4KPiBkaWZmIC0tZ2l0IGEvdGVzdHMvTWFrZWZpbGUu
c291cmNlcyBiL3Rlc3RzL01ha2VmaWxlLnNvdXJjZXMKPiBpbmRleCAwMDFmMWEyYi4uY2RmNWE3
ZTEgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvTWFrZWZpbGUuc291cmNlcwo+ICsrKyBiL3Rlc3RzL01h
a2VmaWxlLnNvdXJjZXMKPiBAQCAtMjAyLDYgKzIwMiw3IEBAIFRFU1RTX3Byb2dzID0gXAo+ICAg
ICAgIGttc19wd3JpdGVfY3JjIFwKPiAgICAgICBrbXNfcm1mYiBcCj4gICAgICAga21zX3JvdGF0
aW9uX2NyYyBcCj4gKyAgICAga21zX3NlbGZ0ZXN0IFwKPiAgICAgICBrbXNfc2V0bW9kZSBcCj4g
ICAgICAga21zX3N5c2ZzX2VkaWRfdGltaW5nIFwKPiAgICAgICBrbXNfdHZfbG9hZF9kZXRlY3Qg
XAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pZ3RfY29tbWFuZF9saW5lLnNoIGIvdGVzdHMvaWd0X2Nv
bW1hbmRfbGluZS5zaAo+IGluZGV4IDgyODViYTYyLi5hNGVjM2Y5NSAxMDA3NTUKPiAtLS0gYS90
ZXN0cy9pZ3RfY29tbWFuZF9saW5lLnNoCj4gKysrIGIvdGVzdHMvaWd0X2NvbW1hbmRfbGluZS5z
aAo+IEBAIC05MCw3ICs5MCw3IEBAIGNoZWNrX3Rlc3QgKCkKPiAgICAgICAgICAgICAgICMgU3Vi
dGVzdCBlbnVtZXJhdGlvbiBvZiBrZXJuZWwgc2VsZnRlc3QgbGF1bmNoZXJzIGRlcGVuZHMKPiAg
ICAgICAgICAgICAgICMgb24gdGhlIHJ1bm5pbmcga2VybmVsLiBJZiBzZWxmdGVzdHMgYXJlIG5v
dCBlbmFibGVkLAo+ICAgICAgICAgICAgICAgIyB0aGV5IHdpbGwgb3V0cHV0IG5vdGhpbmcgYW5k
IGV4aXQgd2l0aCAwLgo+IC0gICAgICAgICAgICAgaWYgWyAiJHRlc3RuYW1lIiAhPSAiZHJ2X3Nl
bGZ0ZXN0IiAtYSAiJHRlc3RuYW1lIiAhPSAiZHJtX21tIiBdOyB0aGVuCj4gKyAgICAgICAgICAg
ICBpZiBbICIkdGVzdG5hbWUiICE9ICJkcnZfc2VsZnRlc3QiIC1hICIkdGVzdG5hbWUiICE9ICJk
cm1fbW0iIC1hICIkdGVzdG5hbWUiICE9ICJrbXNfc2VsZnRlc3QiIF07IHRoZW4KPiAgICAgICAg
ICAgICAgICAgICAgICAgZmFpbCAkdGVzdAo+ICAgICAgICAgICAgICAgZmkKPiAgICAgICBmaQo+
IGRpZmYgLS1naXQgYS90ZXN0cy9rbXNfc2VsZnRlc3QuYyBiL3Rlc3RzL2ttc19zZWxmdGVzdC5j
Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMC4uZjYxZGRkOTkKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvdGVzdHMva21zX3NlbGZ0ZXN0LmMKPiBAQCAtMCwwICsxLDEwIEBA
Cj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovCj4gKyNpbmNsdWRlICJp
Z3QuaCIKPiArI2luY2x1ZGUgImlndF9rbW9kLmgiCj4gKwo+ICtJR1RfVEVTVF9ERVNDUklQVElP
TigiQmFzaWMgc2FuaXR5IGNoZWNrIG9mIEtNUyBzZWxmdGVzdHMuIik7Cj4gKwo+ICtpZ3RfbWFp
bgo+ICt7Cj4gKyAgICAgaWd0X2tzZWxmdGVzdHMoInRlc3QtZHJtX21vZGVzZXQiLCBOVUxMLCBO
VUxMLCBOVUxMKTsKPiArfQo+IGRpZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWlsZCBiL3Rlc3Rz
L21lc29uLmJ1aWxkCj4gaW5kZXggNjk3ZmY1MTUuLmQ3NGViMTA5IDEwMDY0NAo+IC0tLSBhL3Rl
c3RzL21lc29uLmJ1aWxkCj4gKysrIGIvdGVzdHMvbWVzb24uYnVpbGQKPiBAQCAtMTc3LDYgKzE3
Nyw3IEBAIHRlc3RfcHJvZ3MgPSBbCj4gICAgICAgJ2ttc19wd3JpdGVfY3JjJywKPiAgICAgICAn
a21zX3JtZmInLAo+ICAgICAgICdrbXNfcm90YXRpb25fY3JjJywKPiArICAgICAna21zX3NlbGZ0
ZXN0JywKPiAgICAgICAna21zX3NldG1vZGUnLAo+ICAgICAgICdrbXNfc3lzZnNfZWRpZF90aW1p
bmcnLAo+ICAgICAgICdrbXNfdHZfbG9hZF9kZXRlY3QnLAo+IC0tCj4gMi4xNy4xCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tCkRhbmll
bCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9n
LmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
