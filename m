Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DABC9C8D2B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 17:45:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E5C16E22A;
	Wed,  2 Oct 2019 15:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13A66E22A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 15:45:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 08:45:22 -0700
X-IronPort-AV: E=Sophos;i="5.67,574,1566889200"; d="scan'208";a="190979243"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 02 Oct 2019 08:45:20 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Petri Latvala <petri.latvala@intel.com>
References: <20191002124820.1862-1-janusz.krzysztofik@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7a564b60-8e4b-4fbe-81f0-eca7c0156cef@linux.intel.com>
Date: Wed, 2 Oct 2019 16:45:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002124820.1862-1-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915/debugfs: Only wedge if we have
 reset available
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAyLzEwLzIwMTkgMTM6NDgsIEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToKPiBJZiB3ZSBw
cm9jZXNzIERST1BfUkVTRVRfQUNUSVZFIGFuZCBjYW5jZWwgYWxsIG91dHN0YW5kaW5nIHJlcXVl
c3RzIGJ5Cj4gZm9yY2luZyBhIEdQVSByZXNldCBvbiBhIGhhcmR3YXJlIHdpdGggcmVzZXQgY2Fw
YWJpbGl0aWVzIGRpc2FibGVkIG9yCj4gbm90IHN1cHBvcnRlZCwgd2UgY2VydGFpbmx5IGVuZCB1
cCB3aXRoIGEgdGVybWluYWxseSB3ZWRnZWQgR1BVLAo+IGltcG9zc2libGUgdG8gcmVjb3Zlci4g
IFRoYXQncyBwcm9iYWJseSBub3Qgd2hhdCB3ZSB3YW50LgoKSSBmb3Jnb3QgdGhlIHdob2xlIGJh
Y2tncm91bmQgc3RvcnkgaGVyZSBJJ20gYWZyYWlkLiBJcyB0aGUgY29uY2VybiBoZXJlIAp0aGUg
SUdUIGV4aXQgaGFuZGxlciBjYWxsaW5nIERST1BfUkVTRVRfQUNUSVZFPyBJZiBzbyB3aXRoIHRo
aXMgcGF0Y2ggaXQgCndpbGwgZmFpbCB3aXRoIC1FQlVTWSwgd2hpY2ggY291bGQgYmUgZmluZSwg
YnV0IHdoYXQgaGFwcGVucyBmcm9tIHRoZSAKcGVyc3BlY3RpdmUgb2YgbmV4dCB0ZXN0IHdoaWNo
IGdldHMgdG8gcnVuPyBJdCB3b24ndCBmaW5kIGEgd2VkZ2VkIEdQVSwgCmJ1dCB3aWxsIGVuY291
bnRlciBhIHBvc3NpYmx5IG5vbmRldGVybWluaXN0aWMgYW1vdW50IG9mIEdQVSB3b3JrIApzY2hl
ZHVsZWQgYmVmb3JlIGl0LCBubz8KClJlZ2FyZHMsCgpUdnJ0a28KCj4gQmVmb3JlIHNldHRpbmcg
dGhlIEdQVSB3ZWRnZWQsIHZlcmlmeSBpZiB3ZSBoYXZlIEdQVSByZXNldCBhdmFpbGFibGUKPiBh
bmQgZmFpbCB3aXRoIC1FQlVTWSBpZiBub3QuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBQZXRyaSBMYXR2
YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6
eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1pY2hh
xYIgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzogTWljaGHFgiBX
aW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+IENjOiBQaW90ciBQacOzcmtv
d3NraSA8cGlvdHIucGlvcmtvd3NraUBpbnRlbC5jb20+Cj4gQ2M6IFRvbWFzeiBMaXMgPHRvbWFz
ei5saXNAaW50ZWwuY29tPgo+IENjOiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVs
LmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBD
YzogTWFydGluIFBlcmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAxMSArKysrKysrKysrLQo+ICAg
MSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IGluZGV4IGZlYzlmYjdjYzM4NC4uMDc3NGNhNmUy
YTA1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBAQCAtMzYyNyw4ICsz
NjI3LDE3IEBAIGk5MTVfZHJvcF9jYWNoZXNfc2V0KHZvaWQgKmRhdGEsIHU2NCB2YWwpCj4gICAK
PiAgIAlpZiAodmFsICYgRFJPUF9SRVNFVF9BQ1RJVkUgJiYKPiAgIAkgICAgd2FpdF9mb3IoaW50
ZWxfZW5naW5lc19hcmVfaWRsZSgmaTkxNS0+Z3QpLAo+IC0JCSAgICAgSTkxNV9JRExFX0VOR0lO
RVNfVElNRU9VVCkpCj4gKwkJICAgICBJOTE1X0lETEVfRU5HSU5FU19USU1FT1VUKSkgewo+ICsJ
CS8qCj4gKwkJICogT25seSB3ZWRnZSBpZiByZXNldCBpcyBzdXBwb3J0ZWQgYW5kIG5vdCBkaXNh
YmxlZCwgb3RoZXJ3aXNlCj4gKwkJICogd2UgY2VydGFpbmx5IGVuZCB1cCB3aXRoIHRoZSBHUFUg
dGVybWluYWxseSB3ZWRnZWQuICBJbmZvcm0KPiArCQkgKiB1c2Vyc3BhY2UgYWJvdXQgdGhlIHBy
b2JsZW0gaW5zdGVhZC4KPiArCQkgKi8KPiArCQlpZiAoIWludGVsX2hhc19ncHVfcmVzZXQoJmk5
MTUtPmd0KSkKPiArCQkJcmV0dXJuIC1FQlVTWTsKPiArCj4gICAJCWludGVsX2d0X3NldF93ZWRn
ZWQoJmk5MTUtPmd0KTsKPiArCX0KPiAgIAo+ICAgCS8qIE5vIG5lZWQgdG8gY2hlY2sgYW5kIHdh
aXQgZm9yIGdwdSByZXNldHMsIG9ubHkgbGliZHJtIGF1dG8tcmVzdGFydHMKPiAgIAkgKiBvbiBp
b2N0bHMgb24gLUVBR0FJTi4gKi8KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
