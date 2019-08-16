Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF60904AB
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 17:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 496DC6E46D;
	Fri, 16 Aug 2019 15:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9102D6E46D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 15:30:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 08:30:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; d="scan'208";a="184944913"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 08:30:18 -0700
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
References: <20190816012343.36433-1-daniele.ceraolospurio@intel.com>
 <20190816012343.36433-5-daniele.ceraolospurio@intel.com>
 <CAKi4VAJm5NJhofo57mygqQNsb-MMj_C=nnp_yT8EqtMRS-SepA@mail.gmail.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e5688c58-baf5-276e-b3c4-5ccb915b5def@intel.com>
Date: Fri, 16 Aug 2019 08:30:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKi4VAJm5NJhofo57mygqQNsb-MMj_C=nnp_yT8EqtMRS-SepA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Dynamically allocate s0ix
 struct for VLV
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PHNuaXA+Cgo+Pgo+PiBAQCAtMjIyOSw3ICsyMzIwLDcgQEAgc3RhdGljIHZvaWQgdmx2X3Jlc3Rv
cmVfZ3VuaXRfczBpeF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+
ICAgICAgICAgIEk5MTVfV1JJVEUoR0VON19HRlhfUEVORF9UTEIwLCAgcy0+Z2Z4X3BlbmRfdGxi
MCk7Cj4+ICAgICAgICAgIEk5MTVfV1JJVEUoR0VON19HRlhfUEVORF9UTEIxLCAgcy0+Z2Z4X3Bl
bmRfdGxiMSk7Cj4+Cj4+IC0gICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUocy0+bHJh
X2xpbWl0cyk7IGkrKykKPj4gKyAgICAgICBmb3IgKGkgPSAwOyBpIDwgR0VON19MUkFfTElNSVRT
X1JFR19OVU07IGkrKykKPiAKPiB3aHk/CgpMZWZ0b3ZlciBmcm9tIHRoZSBmaXJzdCB2ZXJzaW9u
IEkgaGFkIGxvY2FsbHkgd2hlcmUgSSB3YXMgdHJ5aW5nIHRvIApkeW5hbWljYWxseSBhbGxvY2F0
ZSBqdXN0IHRoZSBhcnJheXMgaW5zdGVhZCBvZiB0aGUgd2hvbGUgdGhpbmcuIFdpbGwgCmdldCBy
aWQgb2YgaXQuCgpEYW5pZWxlCgo+IAo+IEx1Y2FzIERlIE1hcmNoaQo+IAo+PiAgICAgICAgICAg
ICAgICAgIEk5MTVfV1JJVEUoR0VON19MUkFfTElNSVRTKGkpLCBzLT5scmFfbGltaXRzW2ldKTsK
Pj4KPj4gICAgICAgICAgSTkxNV9XUklURShHRU43X01FRElBX01BWF9SRVFfQ09VTlQsIHMtPm1l
ZGlhX21heF9yZXFfY291bnQpOwo+PiBAQCAtMjI3Myw3ICsyMzY0LDcgQEAgc3RhdGljIHZvaWQg
dmx2X3Jlc3RvcmVfZ3VuaXRfczBpeF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCj4+ICAgICAgICAgIEk5MTVfV1JJVEUoR0VONl9QTUlNUiwgICAgICAgICAgcy0+cG1f
aW1yKTsKPj4gICAgICAgICAgSTkxNV9XUklURShHRU42X1BNSUVSLCAgICAgICAgICBzLT5wbV9p
ZXIpOwo+Pgo+PiAtICAgICAgIGZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHMtPmd0X3NjcmF0
Y2gpOyBpKyspCj4+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IEdFTjdfR1RfU0NSQVRDSF9SRUdf
TlVNOyBpKyspCj4+ICAgICAgICAgICAgICAgICAgSTkxNV9XUklURShHRU43X0dUX1NDUkFUQ0go
aSksIHMtPmd0X3NjcmF0Y2hbaV0pOwo+Pgo+PiAgICAgICAgICAvKiBHVCBTQSBDWiBkb21haW4s
IDB4MTAwMDAwLTB4MTM4MTI0ICovCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+PiBpbmRleCBj
NjcyMmQ1NGNjZDUuLjliNDFmMjIwOWI2OSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
Cj4+IEBAIC01MjcsNjggKzUyNyw2IEBAIHN0cnVjdCBpOTE1X3N1c3BlbmRfc2F2ZWRfcmVnaXN0
ZXJzIHsKPj4gICAgICAgICAgdTE2IHNhdmVHQ0RHTUJVUzsKPj4gICB9Owo+Pgo+PiAtc3RydWN0
IHZsdl9zMGl4X3N0YXRlIHsKPj4gLSAgICAgICAvKiBHQU0gKi8KPj4gLSAgICAgICB1MzIgd3Jf
d2F0ZXJtYXJrOwo+PiAtICAgICAgIHUzMiBnZnhfcHJpb19jdHJsOwo+PiAtICAgICAgIHUzMiBh
cmJfbW9kZTsKPj4gLSAgICAgICB1MzIgZ2Z4X3BlbmRfdGxiMDsKPj4gLSAgICAgICB1MzIgZ2Z4
X3BlbmRfdGxiMTsKPj4gLSAgICAgICB1MzIgbHJhX2xpbWl0c1tHRU43X0xSQV9MSU1JVFNfUkVH
X05VTV07Cj4+IC0gICAgICAgdTMyIG1lZGlhX21heF9yZXFfY291bnQ7Cj4+IC0gICAgICAgdTMy
IGdmeF9tYXhfcmVxX2NvdW50Owo+PiAtICAgICAgIHUzMiByZW5kZXJfaHdzcDsKPj4gLSAgICAg
ICB1MzIgZWNvY2hrOwo+PiAtICAgICAgIHUzMiBic2RfaHdzcDsKPj4gLSAgICAgICB1MzIgYmx0
X2h3c3A7Cj4+IC0gICAgICAgdTMyIHRsYl9yZF9hZGRyOwo+PiAtCj4+IC0gICAgICAgLyogTUJD
ICovCj4+IC0gICAgICAgdTMyIGczZGN0bDsKPj4gLSAgICAgICB1MzIgZ3Nja2djdGw7Cj4+IC0g
ICAgICAgdTMyIG1iY3RsOwo+PiAtCj4+IC0gICAgICAgLyogR0NQICovCj4+IC0gICAgICAgdTMy
IHVjZ2N0bDE7Cj4+IC0gICAgICAgdTMyIHVjZ2N0bDM7Cj4+IC0gICAgICAgdTMyIHJjZ2N0bDE7
Cj4+IC0gICAgICAgdTMyIHJjZ2N0bDI7Cj4+IC0gICAgICAgdTMyIHJzdGN0bDsKPj4gLSAgICAg
ICB1MzIgbWlzY2NwY3RsOwo+PiAtCj4+IC0gICAgICAgLyogR1BNICovCj4+IC0gICAgICAgdTMy
IGdmeHBhdXNlOwo+PiAtICAgICAgIHUzMiBycGRldWh3dGM7Cj4+IC0gICAgICAgdTMyIHJwZGV1
YzsKPj4gLSAgICAgICB1MzIgZWNvYnVzOwo+PiAtICAgICAgIHUzMiBwd3Jkd251cGN0bDsKPj4g
LSAgICAgICB1MzIgcnBfZG93bl90aW1lb3V0Owo+PiAtICAgICAgIHUzMiBycF9kZXVjc3c7Cj4+
IC0gICAgICAgdTMyIHJjdWJtYWJkdG1yOwo+PiAtICAgICAgIHUzMiByY2VkYXRhOwo+PiAtICAg
ICAgIHUzMiBzcGFyZTJnaDsKPj4gLQo+PiAtICAgICAgIC8qIERpc3BsYXkgMSBDWiBkb21haW4g
Ki8KPj4gLSAgICAgICB1MzIgZ3RfaW1yOwo+PiAtICAgICAgIHUzMiBndF9pZXI7Cj4+IC0gICAg
ICAgdTMyIHBtX2ltcjsKPj4gLSAgICAgICB1MzIgcG1faWVyOwo+PiAtICAgICAgIHUzMiBndF9z
Y3JhdGNoW0dFTjdfR1RfU0NSQVRDSF9SRUdfTlVNXTsKPj4gLQo+PiAtICAgICAgIC8qIEdUIFNB
IENaIGRvbWFpbiAqLwo+PiAtICAgICAgIHUzMiB0aWxlY3RsOwo+PiAtICAgICAgIHUzMiBndF9m
aWZvY3RsOwo+PiAtICAgICAgIHUzMiBndGxjX3dha2VfY3RybDsKPj4gLSAgICAgICB1MzIgZ3Rs
Y19zdXJ2aXZlOwo+PiAtICAgICAgIHUzMiBwbXdnaWN6Owo+PiAtCj4+IC0gICAgICAgLyogRGlz
cGxheSAyIENaIGRvbWFpbiAqLwo+PiAtICAgICAgIHUzMiBndV9jdGwwOwo+PiAtICAgICAgIHUz
MiBndV9jdGwxOwo+PiAtICAgICAgIHUzMiBwY2JyOwo+PiAtICAgICAgIHUzMiBjbG9ja19nYXRl
X2RpczI7Cj4+IC19Owo+PiAtCj4+ICAgc3RydWN0IGludGVsX3Jwc19laSB7Cj4+ICAgICAgICAg
IGt0aW1lX3Qga3RpbWU7Cj4+ICAgICAgICAgIHUzMiByZW5kZXJfYzA7Cj4+IEBAIC0xNjIyLDcg
KzE1NjAsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7Cj4+ICAgICAgICAgIHUzMiBzdXNw
ZW5kX2NvdW50Owo+PiAgICAgICAgICBib29sIHBvd2VyX2RvbWFpbnNfc3VzcGVuZGVkOwo+PiAg
ICAgICAgICBzdHJ1Y3QgaTkxNV9zdXNwZW5kX3NhdmVkX3JlZ2lzdGVycyByZWdmaWxlOwo+PiAt
ICAgICAgIHN0cnVjdCB2bHZfczBpeF9zdGF0ZSB2bHZfczBpeF9zdGF0ZTsKPj4gKyAgICAgICB2
b2lkICpzMGl4X3N0YXRlOwo+Pgo+PiAgICAgICAgICBlbnVtIHsKPj4gICAgICAgICAgICAgICAg
ICBJOTE1X1NBR1ZfVU5LTk9XTiA9IDAsCj4+IC0tCj4+IDIuMjIuMAo+Pgo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAKPiAKPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
