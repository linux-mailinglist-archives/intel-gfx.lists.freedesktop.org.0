Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FE4116942
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 10:25:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5554B6E0F4;
	Mon,  9 Dec 2019 09:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A44026E0F4;
 Mon,  9 Dec 2019 09:25:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 01:25:19 -0800
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="206833670"
Received: from cpreilly-mobl1.ger.corp.intel.com (HELO [10.251.80.64])
 ([10.251.80.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 09 Dec 2019 01:25:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191207010835.2100418-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <be75993a-5c7a-24cf-3af8-0ced5dce6972@linux.intel.com>
Date: Mon, 9 Dec 2019 09:25:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191207010835.2100418-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] Revert "tests/i915: Use
 engine query interface for gem_ctx_isolation/persistence"
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

Ck9uIDA3LzEyLzIwMTkgMDE6MDgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGlzIHJldmVydHMg
Y29tbWl0IDM0M2FhZTc3NmE1OGE2N2ZhMTUzODI1Mzg1ZTZmZTkwZTMxODVjNWIuCj4gCj4gX19m
b3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoKSByZXByb2dyYW1zIHRoZSBjb250ZXh0LCBpbnZhbGlk
YXRpbmcgdGhlCj4gdXNlIG9mIGUtPmZsYWdzIHRvIHNlbGVjdCBlbmdpbmVzLCBuZWNlc3NpdGF0
aW5nIGUtPmluZGV4IGluc3RlYWQuCj4gV2l0aG90IGFsc28gZml4aW5nIHVwIHRoZSBlbmdpbmUg
c2VsZWN0aW9uLCB0aGUgcmVzdWx0IGlzIHRoYXQgcmFuZG9tCj4gZW5naW5lcyB3ZXJlIGJlaW5n
IHVzZWQgdG8gcmVhZCByZWdpc3RlcnMgZnJvbSB0aGUgaW50ZW5kZWQgZW5naW5lLgo+IFRoaXMg
ZG9lcyBub3QgZW5kIHdlbGwuCgpBcmdoLCBhbiBvdmVyc2lnaHQuLiB0ZXN0KHMpIG5lZWRzIHRv
IGJlIGxvb2tlZCBhdCBpbiBkZXRhaWwgYW5kIApjb252ZXJ0ZWQgZnVsbHkuIE9uIGEgY3Vyc29y
eSBnbGFuY2UgYSBzcHJpbmtsZSBvZiAKZ2VtX2NvbnRleHRfc2V0X2FsbF9lbmdpbmVzIG9uIGlu
dGVybmFsbHkgY3JlYXRlZCBjb250ZXh0cyBpcyBuZWVkZWQgdG8gCmFsaWduIHdpdGggdGhlIHBh
c3NlZCBpbiBlIGFuZCBlLT5mbGFncy4KCkFja2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwoKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogU3R1YXJ0IFN1bW1l
cnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIHRlc3RzL2k5MTUvZ2VtX2N0eF9pc29sYXRp
b24uYyAgIHwgNCArKy0tCj4gICB0ZXN0cy9pOTE1L2dlbV9jdHhfcGVyc2lzdGVuY2UuYyB8IDIg
Ky0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMgYi90ZXN0cy9p
OTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKPiBpbmRleCA5NDM1MjA5ZTkuLjZhYTI3MTMzYyAxMDA2
NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKPiArKysgYi90ZXN0cy9p
OTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKPiBAQCAtODU2LDcgKzg1Niw2IEBAIHN0YXRpYyB1bnNp
Z25lZCBpbnQgX19oYXNfY29udGV4dF9pc29sYXRpb24oaW50IGZkKQo+ICAgCj4gICBpZ3RfbWFp
bgo+ICAgewo+IC0Jc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICplOwo+ICAgCXVuc2ln
bmVkIGludCBoYXNfY29udGV4dF9pc29sYXRpb24gPSAwOwo+ICAgCWludCBmZCA9IC0xOwo+ICAg
Cj4gQEAgLTg3Nyw3ICs4NzYsOCBAQCBpZ3RfbWFpbgo+ICAgCQlpZ3Rfc2tpcF9vbihnZW4gPiBM
QVNUX0tOT1dOX0dFTik7Cj4gICAJfQo+ICAgCj4gLQlfX2Zvcl9lYWNoX3BoeXNpY2FsX2VuZ2lu
ZShmZCwgZSkgewo+ICsJZm9yIChjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIg
KmUgPSBpbnRlbF9leGVjdXRpb25fZW5naW5lczI7Cj4gKwkgICAgIGUtPm5hbWU7IGUrKykgewo+
ICAgCQlpZ3Rfc3VidGVzdF9ncm91cCB7Cj4gICAJCQlpZ3RfZml4dHVyZSB7Cj4gICAJCQkJaWd0
X3JlcXVpcmUoaGFzX2NvbnRleHRfaXNvbGF0aW9uICYgKDEgPDwgZS0+Y2xhc3MpKTsKPiBkaWZm
IC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fY3R4X3BlcnNpc3RlbmNlLmMgYi90ZXN0cy9pOTE1L2dl
bV9jdHhfcGVyc2lzdGVuY2UuYwo+IGluZGV4IDMwNzcyMTU5Yi4uZDY4NDMxYWUwIDEwMDY0NAo+
IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9wZXJzaXN0ZW5jZS5jCj4gKysrIGIvdGVzdHMvaTkx
NS9nZW1fY3R4X3BlcnNpc3RlbmNlLmMKPiBAQCAtNzI3LDcgKzcyNyw3IEBAIGlndF9tYWluCj4g
ICAJaWd0X3N1YnRlc3QoImhhbmdjaGVjayIpCj4gICAJCXRlc3Rfbm9oYW5nY2hlY2tfaG9zdGls
ZShpOTE1KTsKPiAgIAo+IC0JX19mb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoaTkxNSwgZSkgewo+
ICsJX19mb3JfZWFjaF9zdGF0aWNfZW5naW5lKGUpIHsKPiAgIAkJaWd0X3N1YnRlc3RfZ3JvdXAg
ewo+ICAgCQkJaWd0X2ZpeHR1cmUgewo+ICAgCQkJCWdlbV9yZXF1aXJlX3JpbmcoaTkxNSwgZS0+
ZmxhZ3MpOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
