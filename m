Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1D85F601
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 11:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A196E2DF;
	Thu,  4 Jul 2019 09:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B7C6E2DC;
 Thu,  4 Jul 2019 09:51:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 02:51:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="184966011"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2019 02:51:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703165956.16232-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a85e32da-d4df-6291-e875-59051db06b1d@linux.intel.com>
Date: Thu, 4 Jul 2019 10:51:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703165956.16232-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_workarounds: Adapt
 to change in file format for per-engine wa
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzA3LzIwMTkgMTc6NTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBUbyByZWR1Y2UgdGhl
IGFzc3VtcHRpb25zIG9mIFJDUzAgaW4gdGhlIGtlcm5lbCwgd2Ugd2FudCB0byBtYWtlIHRoZQo+
IGRlYnVnZnMgZW5naW5lIGFnbm9zdGljIGFuZCBzbyB3ZSBuZWVkIHRvIGFkYXB0IHRoZSBpZ3Qg
cGFyc2VyIGZvcgo+IGZsZXhpYmlsaXR5Lgo+IAo+IElmIHdlIGNvdWxkIGp1c3QgYWRlcXVhdGVs
eSBzaW11bGF0ZSBTMy9TNCBpbiB0aGUga2VybmVsIHdlIGNvdWxkIGZvcmdvCj4gdGhpcyB0ZXN0
IGVudGlyZWx5Li4uCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Cj4gLS0tCj4gICB0ZXN0cy9pOTE1L2dlbV93b3JrYXJvdW5kcy5jIHwgMTIgKysrKysr
KysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYyBiL3Rlc3Rz
L2k5MTUvZ2VtX3dvcmthcm91bmRzLmMKPiBpbmRleCA0MDM4NjNjMGIuLjgxYzM1NmYwNiAxMDA2
NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV93b3JrYXJvdW5kcy5jCj4gKysrIGIvdGVzdHMvaTkx
NS9nZW1fd29ya2Fyb3VuZHMuYwo+IEBAIC0yNDksNiArMjQ5LDcgQEAgaWd0X21haW4KPiAgIAlp
Z3RfZml4dHVyZSB7Cj4gICAJCUZJTEUgKmZpbGU7Cj4gICAJCWNoYXIgKmxpbmUgPSBOVUxMOwo+
ICsJCWNoYXIgKnN0cjsKPiAgIAkJc2l6ZV90IGxpbmVfc2l6ZTsKPiAgIAkJaW50IGksIGZkOwo+
ICAgCj4gQEAgLTI2MSw5ICsyNjIsMTMgQEAgaWd0X21haW4KPiAgIAo+ICAgCQlmZCA9IGlndF9k
ZWJ1Z2ZzX29wZW4oZGV2aWNlLCAiaTkxNV93YV9yZWdpc3RlcnMiLCBPX1JET05MWSk7Cj4gICAJ
CWZpbGUgPSBmZG9wZW4oZmQsICJyIik7Cj4gLQkJaWd0X2Fzc2VydChnZXRsaW5lKCZsaW5lLCAm
bGluZV9zaXplLCBmaWxlKSA+IDApOwo+ICsJCWlndF9yZXF1aXJlKGdldGxpbmUoJmxpbmUsICZs
aW5lX3NpemUsIGZpbGUpID4gMCk7Cj4gICAJCWlndF9kZWJ1ZygiaTkxNV93YV9yZWdpc3RlcnM6
ICVzIiwgbGluZSk7Cj4gLQkJc3NjYW5mKGxpbmUsICJXb3JrYXJvdW5kcyBhcHBsaWVkOiAlZCIs
ICZudW1fd2FfcmVncyk7Cj4gKwo+ICsJCS8qIFdlIGFzc3VtZSB0aGF0IHRoZSBmaXJzdCBiYXRj
aCBpcyBmb3IgcmNzICovCgpJIHRoaW5rIHlvdSBtZWFuICJmaXJzdCBsaW5lIi4KCj4gKwkJc3Ry
ID0gc3Ryc3RyKGxpbmUsICJXb3JrYXJvdW5kcyBhcHBsaWVkOiIpOwo+ICsJCWlndF9hc3NlcnQo
c3RyKTsKPiArCQlzc2NhbmYoc3RyLCAiV29ya2Fyb3VuZHMgYXBwbGllZDogJWQiLCAmbnVtX3dh
X3JlZ3MpOwo+ICAgCQlpZ3RfcmVxdWlyZShudW1fd2FfcmVncyA+IDApOwoKSSBoYXZlIGEgc3Vz
cGljaW9uIGFsbCB0aGUgYWJvdmUgc2VjdGlvbiBjb3VsZCBiZSBzaW1wbGlmaWVkIHVzaW5nIApm
c2NhbmYgYW5kIGp1c3QgY2hlY2tpbmcgcmV0dXJuIHZhbHVlIGFuZCBlcnJubyBidXQgdGhhdCB3
b3VsZCBiZSBhc2tpbmcgCmZvciB0b28gbXVjaCB3b3JrIGZvciB3aGF0IHRoaXMgaXMuCgo+ICAg
Cj4gICAJCXdhX3JlZ3MgPSBtYWxsb2MobnVtX3dhX3JlZ3MgKiBzaXplb2YoKndhX3JlZ3MpKTsK
PiBAQCAtMjcxLDYgKzI3Niw5IEBAIGlndF9tYWluCj4gICAKPiAgIAkJaSA9IDA7Cj4gICAJCXdo
aWxlIChnZXRsaW5lKCZsaW5lLCAmbGluZV9zaXplLCBmaWxlKSA+IDApIHsKPiArCQkJaWYgKHN0
cnN0cihsaW5lLCAiV29ya2Fyb3VuZHMgYXBwbGllZDoiKSkKPiArCQkJCWJyZWFrOwo+ICsKPiAg
IAkJCWlndF9kZWJ1ZygiJXMiLCBsaW5lKTsKPiAgIAkJCWlmIChzc2NhbmYobGluZSwgIjB4JVg6
IDB4JTA4WCwgbWFzazogMHglMDhYIiwKPiAgIAkJCQkgICAmd2FfcmVnc1tpXS5hZGRyLAo+IAoK
SSBqdXN0IGhhZCBhIHRob3VnaHQgdGhhdCBzaW5jZSB3ZSBhcmUgZmlkZGxpbmcgd2l0aCB0aGlz
IHdlIHNob3VsZCBhZGQgCmVuZ2luZSBuYW1lcyBpbnRvIHN0cmluZ3MuIEFuZC9vciBjbGFzczpp
bnN0YW5jZSBwYWlycy4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
