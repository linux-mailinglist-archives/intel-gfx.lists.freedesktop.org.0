Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3AB3B84F4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 16:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004C089F4F;
	Wed, 30 Jun 2021 14:20:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B575689C27;
 Wed, 30 Jun 2021 14:20:05 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id j184so2562330qkd.6;
 Wed, 30 Jun 2021 07:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WX+8s3+Ib0fTVasYW1m7EhFyc/UxyEHPeYqtWJPBvFI=;
 b=P8eAvemN48WNXeoX8cDWxWjJioN7F5JnuDcfCSl1xGAJBUUZY8TvuaTrGEv12dF6da
 ddR576FENOhwQu3R7RXb4MJndRSynkM2iXdeQi7Z0javxQFwee2rdseLCTbDHCE3MqSe
 2CVhI2N5W/IsHA1pKmC0UEmhmWid0NKrKwwAa9JXz4vp4Pa8ap1LtDEoFfyXxpW++B3O
 yvScfOJse+jlQm7EVm7jgnkcr5YmLZ+aHI21UfxeyNxiIU+VmLCrWjxDyzpU7Ol+gmKN
 9VJITVChnOizGCToOR5cjyXxcmijAl7O9leUEeu/CCvnx0VrAk3oXBfYehgTKaXukD0z
 nzug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WX+8s3+Ib0fTVasYW1m7EhFyc/UxyEHPeYqtWJPBvFI=;
 b=bzJCbTRTJAjAUYTUb5Kj90qV9Qmg/3MdQAuGRruClC+aHeCj0yBzK1FFdetg77nQV8
 zJQFOnnLE6Sc95QVUC8XfBXJxH5YkZdw+Cy5aHAKM7baFS20ayAytDoRT/0Bc/ha5i8r
 XjAWvaq4aPE0e5Ly7WKFpTI6zTRS1mIv8J8FXc+UzFf4CinNd0hqpojleIfcXWCGEf65
 vrqD1gMHcMMLcwZ3X/8Q1irTFdLWuOFOCNuk8G5G5LzrbAPnIWXs9pihjKSWFa7c5vMN
 v4QkXHs9Hk/3p1FravDbeIkf05W9ShcHrVtCpkrGbVWM12KiameW20zd20YPAl/j+J1z
 rwBg==
X-Gm-Message-State: AOAM5315IOdE7u9Rj0zORTDuelwUtx2lOhr+2tUL09IbA0m15t4vATGB
 ylaPHiV8w/zXX46PQCh4kFuD20eNG6gFeIOe/CA=
X-Google-Smtp-Source: ABdhPJx8RFgMjVZeJ4FqZTf2LdhOxbfGdPd7jK9XUUzmsRdAuYO5EfIRcaO3ydbSIFUG/7yugpVIi+3HNB3QdnO9gKs=
X-Received: by 2002:a37:b1c3:: with SMTP id a186mr37441161qkf.17.1625062804826; 
 Wed, 30 Jun 2021 07:20:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210624193045.5087-1-thomas.hellstrom@linux.intel.com>
 <20210624193045.5087-2-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210624193045.5087-2-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 30 Jun 2021 15:19:38 +0100
Message-ID: <CAM0jSHMbhYs5u7eV-Adjo1d=qB69WNuh-Z1gY-wfH31_=F7czg@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/ttm: Reorganize the ttm move
 code somewhat
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNCBKdW4gMjAyMSBhdCAyMDozMSwgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IEluIG9yZGVyIHRvIG1ha2UgdGhl
IGNvZGUgYSBiaXQgbW9yZSByZWFkYWJsZSBhbmQgdG8gZmFjaWxpdGF0ZQo+IGFzeW5jIG1lbWNw
eSBtb3ZlcywgcmVvcmdhbml6ZSB0aGUgbW92ZSBjb2RlIGEgbGl0dGxlLiBEZXRlcm1pbmUKPiBh
dCBhbiBlYXJseSBzdGFnZSB3aGV0aGVyIHRvIGNvcHkgb3IgdG8gY2xlYXIuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYyB8IDcw
ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQwIGluc2VydGlv
bnMoKyksIDMwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV90dG0uYwo+IGluZGV4IGMzOWQ5ODJjNGZhNi4uNGU1MjlhZGNkZmM3IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+IEBAIC00MzEsNiArNDMxLDcgQEAgaTkx
NV90dG1fcmVzb3VyY2VfZ2V0X3N0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4g
IH0KPgo+ICBzdGF0aWMgaW50IGk5MTVfdHRtX2FjY2VsX21vdmUoc3RydWN0IHR0bV9idWZmZXJf
b2JqZWN0ICpibywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBjbGVhciwK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHR0bV9yZXNvdXJjZSAqZHN0
X21lbSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHNnX3RhYmxlICpk
c3Rfc3QpCj4gIHsKPiBAQCAtNDQ5LDEzICs0NTAsMTAgQEAgc3RhdGljIGludCBpOTE1X3R0bV9h
Y2NlbF9tb3ZlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4gICAgICAgICAgICAgICAg
IHJldHVybiAtRUlOVkFMOwo+Cj4gICAgICAgICBkc3RfbGV2ZWwgPSBpOTE1X3R0bV9jYWNoZV9s
ZXZlbChpOTE1LCBkc3RfbWVtLCB0dG0pOwo+IC0gICAgICAgaWYgKCF0dG0gfHwgIXR0bV90dF9p
c19wb3B1bGF0ZWQodHRtKSkgewo+ICsgICAgICAgaWYgKGNsZWFyKSB7Cj4gICAgICAgICAgICAg
ICAgIGlmIChiby0+dHlwZSA9PSB0dG1fYm9fdHlwZV9rZXJuZWwpCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIC1FSU5WQUw7CgpXYXMgdGhhdCBtZWFudCB0byBiZToKcmV0dXJuIDA6
Cgo/CgpBbHNvIGRvZXMgdGhhdCBtZWFuIHdlIGFyZSBpbmNvcnJlY3RseSBmYWxsaW5nIGJhY2sg
dG8gbWVtc2V0LCBmb3IKbm9uLXVzZXJzcGFjZSBvYmplY3RzLCBpbnN0ZWFkIG9mIG1ha2luZyBp
dCBhIG5vb3A/Cgo+Cj4gLSAgICAgICAgICAgICAgIGlmICh0dG0gJiYgISh0dG0tPnBhZ2VfZmxh
Z3MgJiBUVE1fUEFHRV9GTEFHX1pFUk9fQUxMT0MpKQo+IC0gICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiAwOwo+IC0KPiAgICAgICAgICAgICAgICAgaW50ZWxfZW5naW5lX3BtX2dldChpOTE1
LT5ndC5taWdyYXRlLmNvbnRleHQtPmVuZ2luZSk7Cj4gICAgICAgICAgICAgICAgIHJldCA9IGlu
dGVsX2NvbnRleHRfbWlncmF0ZV9jbGVhcihpOTE1LT5ndC5taWdyYXRlLmNvbnRleHQsIE5VTEws
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkc3Rf
c3QtPnNnbCwgZHN0X2xldmVsLAo+IEBAIC00ODksMjcgKzQ4Nyw1MyBAQCBzdGF0aWMgaW50IGk5
MTVfdHRtX2FjY2VsX21vdmUoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPiAgICAgICAg
IHJldHVybiByZXQ7Cj4gIH0KPgo+IC1zdGF0aWMgaW50IGk5MTVfdHRtX21vdmUoc3RydWN0IHR0
bV9idWZmZXJfb2JqZWN0ICpibywgYm9vbCBldmljdCwKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IHR0bV9vcGVyYXRpb25fY3R4ICpjdHgsCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCB0dG1fcmVzb3VyY2UgKmRzdF9tZW0sCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCB0dG1fcGxhY2UgKmhvcCkKPiArc3RhdGljIHZvaWQgX19pOTE1X3R0bV9tb3Zl
KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sIGJvb2wgY2xlYXIsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCB0dG1fcmVzb3VyY2UgKmRzdF9tZW0sCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBzZ190YWJsZSAqZHN0X3N0KQo+ICB7Cj4gICAgICAg
ICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gaTkxNV90dG1fdG9fZ2VtKGJvKTsK
PiAtICAgICAgIHN0cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdlciAqZHN0X21hbiA9Cj4gLSAgICAg
ICAgICAgICAgIHR0bV9tYW5hZ2VyX3R5cGUoYm8tPmJkZXYsIGRzdF9tZW0tPm1lbV90eXBlKTsK
PiAgICAgICAgIHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICpkc3RfcmVnLCAqc3JjX3JlZzsK
PiAgICAgICAgIHVuaW9uIHsKPiAgICAgICAgICAgICAgICAgc3RydWN0IHR0bV9rbWFwX2l0ZXJf
dHQgdHQ7Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCB0dG1fa21hcF9pdGVyX2lvbWFwIGlvOwo+
ICAgICAgICAgfSBfZHN0X2l0ZXIsIF9zcmNfaXRlcjsKPiAgICAgICAgIHN0cnVjdCB0dG1fa21h
cF9pdGVyICpkc3RfaXRlciwgKnNyY19pdGVyOwo+IC0gICAgICAgc3RydWN0IHNnX3RhYmxlICpk
c3Rfc3Q7Cj4gICAgICAgICBpbnQgcmV0Owo+Cj4gICAgICAgICBkc3RfcmVnID0gaTkxNV90dG1f
cmVnaW9uKGJvLT5iZGV2LCBkc3RfbWVtLT5tZW1fdHlwZSk7Cj4gICAgICAgICBzcmNfcmVnID0g
aTkxNV90dG1fcmVnaW9uKGJvLT5iZGV2LCBiby0+cmVzb3VyY2UtPm1lbV90eXBlKTsKPiAgICAg
ICAgIEdFTV9CVUdfT04oIWRzdF9yZWcgfHwgIXNyY19yZWcpOwo+Cj4gKyAgICAgICByZXQgPSBp
OTE1X3R0bV9hY2NlbF9tb3ZlKGJvLCBjbGVhciwgZHN0X21lbSwgZHN0X3N0KTsKPiArICAgICAg
IGlmIChyZXQpIHsKCk9uZSBmdXR1cmUgY29uc2lkZXJhdGlvbiBpcyBmbGF0IENDUyB3aGVyZSBJ
IGRvbid0IHRoaW5rIHdlIGNhbiBlYXNpbHkKZmFsbCBiYWNrIHRvIG1lbWNweSBmb3IgdXNlcnNw
YWNlIG9iamVjdHMuIE1heWJlIHdlIGNhbiBtYWtlIHRoaXMKZmFsbGJhY2sgY29uZGl0aW9uYWwg
b24gREcxIG9yICFBTExPQ19VU0VSIGZvciBub3csIG9yIGp1c3QgYWRkIGEKVE9ETz8KCj4gKyAg
ICAgICAgICAgICAgIGRzdF9pdGVyID0gIWNwdV9tYXBzX2lvbWVtKGRzdF9tZW0pID8KPiArICAg
ICAgICAgICAgICAgICAgICAgICB0dG1fa21hcF9pdGVyX3R0X2luaXQoJl9kc3RfaXRlci50dCwg
Ym8tPnR0bSkgOgo+ICsgICAgICAgICAgICAgICAgICAgICAgIHR0bV9rbWFwX2l0ZXJfaW9tYXBf
aW5pdCgmX2RzdF9pdGVyLmlvLCAmZHN0X3JlZy0+aW9tYXAsCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRzdF9zdCwgZHN0X3JlZy0+cmVnaW9uLnN0
YXJ0KTsKPiArCj4gKyAgICAgICAgICAgICAgIHNyY19pdGVyID0gIWNwdV9tYXBzX2lvbWVtKGJv
LT5yZXNvdXJjZSkgPwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHR0bV9rbWFwX2l0ZXJfdHRf
aW5pdCgmX3NyY19pdGVyLnR0LCBiby0+dHRtKSA6Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
dHRtX2ttYXBfaXRlcl9pb21hcF9pbml0KCZfc3JjX2l0ZXIuaW8sICZzcmNfcmVnLT5pb21hcCwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb2JqLT50
dG0uY2FjaGVkX2lvX3N0LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzcmNfcmVnLT5yZWdpb24uc3RhcnQpOwo+ICsKPiArICAgICAgICAgICAgICAg
dHRtX21vdmVfbWVtY3B5KGJvLCBkc3RfbWVtLT5udW1fcGFnZXMsIGRzdF9pdGVyLCBzcmNfaXRl
cik7Cj4gKyAgICAgICB9Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaTkxNV90dG1fbW92ZShzdHJ1
Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLCBib29sIGV2aWN0LAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgc3RydWN0IHR0bV9yZXNvdXJjZSAqZHN0X21lbSwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgc3RydWN0IHR0bV9wbGFjZSAqaG9wKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqID0gaTkxNV90dG1fdG9fZ2VtKGJvKTsKPiArICAgICAgIHN0
cnVjdCB0dG1fcmVzb3VyY2VfbWFuYWdlciAqZHN0X21hbiA9Cj4gKyAgICAgICAgICAgICAgIHR0
bV9tYW5hZ2VyX3R5cGUoYm8tPmJkZXYsIGRzdF9tZW0tPm1lbV90eXBlKTsKPiArICAgICAgIHN0
cnVjdCB0dG1fdHQgKnR0bSA9IGJvLT50dG07Cj4gKyAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKmRz
dF9zdDsKPiArICAgICAgIGJvb2wgY2xlYXI7Cj4gKyAgICAgICBpbnQgcmV0Owo+ICsKPiAgICAg
ICAgIC8qIFN5bmMgZm9yIG5vdy4gV2UgY291bGQgZG8gdGhlIGFjdHVhbCBjb3B5IGFzeW5jLiAq
Lwo+ICAgICAgICAgcmV0ID0gdHRtX2JvX3dhaXRfY3R4KGJvLCBjdHgpOwo+ICAgICAgICAgaWYg
KHJldCkKPiBAQCAtNTI2LDkgKzU1MCw4IEBAIHN0YXRpYyBpbnQgaTkxNV90dG1fbW92ZShzdHJ1
Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLCBib29sIGV2aWN0LAo+ICAgICAgICAgfQo+Cj4gICAg
ICAgICAvKiBQb3B1bGF0ZSB0dG0gd2l0aCBwYWdlcyBpZiBuZWVkZWQuIFR5cGljYWxseSBzeXN0
ZW0gbWVtb3J5LiAqLwo+IC0gICAgICAgaWYgKGJvLT50dG0gJiYgKGRzdF9tYW4tPnVzZV90dCB8
fAo+IC0gICAgICAgICAgICAgICAgICAgICAgIChiby0+dHRtLT5wYWdlX2ZsYWdzICYgVFRNX1BB
R0VfRkxBR19TV0FQUEVEKSkpIHsKPiAtICAgICAgICAgICAgICAgcmV0ID0gdHRtX3R0X3BvcHVs
YXRlKGJvLT5iZGV2LCBiby0+dHRtLCBjdHgpOwo+ICsgICAgICAgaWYgKHR0bSAmJiAoZHN0X21h
bi0+dXNlX3R0IHx8ICh0dG0tPnBhZ2VfZmxhZ3MgJiBUVE1fUEFHRV9GTEFHX1NXQVBQRUQpKSkg
ewo+ICsgICAgICAgICAgICAgICByZXQgPSB0dG1fdHRfcG9wdWxhdGUoYm8tPmJkZXYsIHR0bSwg
Y3R4KTsKPiAgICAgICAgICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gcmV0Owo+ICAgICAgICAgfQo+IEBAIC01MzcsMjMgKzU2MCwxMCBAQCBzdGF0aWMg
aW50IGk5MTVfdHRtX21vdmUoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywgYm9vbCBldmlj
dCwKPiAgICAgICAgIGlmIChJU19FUlIoZHN0X3N0KSkKPiAgICAgICAgICAgICAgICAgcmV0dXJu
IFBUUl9FUlIoZHN0X3N0KTsKPgo+IC0gICAgICAgcmV0ID0gaTkxNV90dG1fYWNjZWxfbW92ZShi
bywgZHN0X21lbSwgZHN0X3N0KTsKPiAtICAgICAgIGlmIChyZXQpIHsKPiAtICAgICAgICAgICAg
ICAgLyogSWYgd2Ugc3RhcnQgbWFwcGluZyBHR1RULCB3ZSBjYW4gbm8gbG9uZ2VyIHVzZSBtYW46
OnVzZV90dCBoZXJlLiAqLwo+IC0gICAgICAgICAgICAgICBkc3RfaXRlciA9ICFjcHVfbWFwc19p
b21lbShkc3RfbWVtKSA/Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgdHRtX2ttYXBfaXRlcl90
dF9pbml0KCZfZHN0X2l0ZXIudHQsIGJvLT50dG0pIDoKPiAtICAgICAgICAgICAgICAgICAgICAg
ICB0dG1fa21hcF9pdGVyX2lvbWFwX2luaXQoJl9kc3RfaXRlci5pbywgJmRzdF9yZWctPmlvbWFw
LAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkc3Rf
c3QsIGRzdF9yZWctPnJlZ2lvbi5zdGFydCk7Cj4gLQo+IC0gICAgICAgICAgICAgICBzcmNfaXRl
ciA9ICFjcHVfbWFwc19pb21lbShiby0+cmVzb3VyY2UpID8KPiAtICAgICAgICAgICAgICAgICAg
ICAgICB0dG1fa21hcF9pdGVyX3R0X2luaXQoJl9zcmNfaXRlci50dCwgYm8tPnR0bSkgOgo+IC0g
ICAgICAgICAgICAgICAgICAgICAgIHR0bV9rbWFwX2l0ZXJfaW9tYXBfaW5pdCgmX3NyY19pdGVy
LmlvLCAmc3JjX3JlZy0+aW9tYXAsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIG9iai0+dHRtLmNhY2hlZF9pb19zdCwKPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3JjX3JlZy0+cmVnaW9uLnN0YXJ0KTsK
PiArICAgICAgIGNsZWFyID0gIWNwdV9tYXBzX2lvbWVtKGJvLT5yZXNvdXJjZSkgJiYgKCF0dG0g
fHwgIXR0bV90dF9pc19wb3B1bGF0ZWQodHRtKSk7Cj4gKyAgICAgICBpZiAoIShjbGVhciAmJiB0
dG0gJiYgISh0dG0tPnBhZ2VfZmxhZ3MgJiBUVE1fUEFHRV9GTEFHX1pFUk9fQUxMT0MpKSkKClNl
ZW1zIHF1aXRlIGhhcmQgdG8gcmVhZD8KClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRo
ZXcuYXVsZEBpbnRlbC5jb20+CgoKPiArICAgICAgICAgICAgICAgX19pOTE1X3R0bV9tb3ZlKGJv
LCBjbGVhciwgZHN0X21lbSwgZHN0X3N0KTsKPgo+IC0gICAgICAgICAgICAgICB0dG1fbW92ZV9t
ZW1jcHkoYm8sIGRzdF9tZW0tPm51bV9wYWdlcywgZHN0X2l0ZXIsIHNyY19pdGVyKTsKPiAtICAg
ICAgIH0KPiAtICAgICAgIC8qIEJlbG93IGRzdF9tZW0gYmVjb21lcyBiby0+cmVzb3VyY2UuICov
Cj4gICAgICAgICB0dG1fYm9fbW92ZV9zeW5jX2NsZWFudXAoYm8sIGRzdF9tZW0pOwo+ICAgICAg
ICAgaTkxNV90dG1fYWRqdXN0X2RvbWFpbnNfYWZ0ZXJfbW92ZShvYmopOwo+ICAgICAgICAgaTkx
NV90dG1fZnJlZV9jYWNoZWRfaW9fc3Qob2JqKTsKPiAtLQo+IDIuMzEuMQo+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
