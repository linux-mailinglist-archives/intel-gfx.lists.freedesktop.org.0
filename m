Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDEF104193
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0916EA76;
	Wed, 20 Nov 2019 16:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 195066E954
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:55:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 08:55:38 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200781782"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 08:55:37 -0800
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
References: <20191120164020.21352-1-ramalingam.c@intel.com>
 <20191120164020.21352-4-ramalingam.c@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <748e3937-c8d3-efa4-15c1-f0a4b31d27f3@linux.intel.com>
Date: Wed, 20 Nov 2019 16:55:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120164020.21352-4-ramalingam.c@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Skip the Wa_1604555607
 verification
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwLzExLzIwMTkgMTY6NDAsIFJhbWFsaW5nYW0gQyB3cm90ZToKPiBBdCBUR0wgQTAgc3Rl
cHBpbmcsIEZGX01PREUyIHJlZ2lzdGVyIHJlYWQgYmFjayBpcyBicm9rZW4sIGhlbmNlCj4gZGlz
YWJsaW5nIHRoZSBXQSB2ZXJpZmljYXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdh
bSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+IGNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDUgKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMKPiBpbmRleCA4YzQ0MWJmMTBjYjEuLjBhMzAzNGU4NDFjNCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBA
IC01ODAsNyArNTgwLDEwIEBAIHN0YXRpYyB2b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAJdmFsID0gaW50ZWxfdW5jb3JlX3Jl
YWQoZW5naW5lLT51bmNvcmUsIEZGX01PREUyKTsKPiAgIAl2YWwgJj0gfkZGX01PREUyX1REU19U
SU1FUl9NQVNLOwo+ICAgCXZhbCB8PSBGRl9NT0RFMl9URFNfVElNRVJfMTI4Owo+IC0Jd2Ffd3Jp
dGVfbWFza2VkX29yKHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2YWws
IHRydWUpOwo+ICsJLyogQXQgVEdMIEEwIHNpbGljb24gRkZfTU9ERTIgcmVnIHJlYWQgaXMgbm90
IGZ1bmN0aW9uYWwuICovCj4gKwl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZf
TU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCwKPiArCQkJICAgIUlTX1RHTF9SRVZJRChlbmdpbmUt
PnVuY29yZS0+aTkxNSwgMCwKPiArCQkJCQkgVEdMX1JFVklEX0EwKSk7CgpXaHkgZG8geW91IG5l
ZWQgdGhlIHByZXZpb3VzIHBhdGNoIGFuZCBjYW4ndCBqdXN0IHJlLWFkZCB0aGUgaGVscGVyICh3
ZSAKaGFkIGl0IGF0IHNvbWUgcG9pbnQpIHdoaWNoIGNyZWF0ZXMgdGhlIHdvcmthcm91bmQgd2l0
aCB3YS0+cmVhZCA9IDAgCmRpcmVjdGx5PwoKd2Ffd3JpdGVfbWFza2VkX29yX19ub192ZXJpZnks
IG9yIF9fd2Ffd3JpdGVfbWFza2VkX29yIHdpdGggcmVhZCBtYXNrIApleHBsaWNpdGx5IHBhc3Nl
ZCBpbj8KClJlZ2FyZHMsCgpUdnJ0a28KCj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkCj4gCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
