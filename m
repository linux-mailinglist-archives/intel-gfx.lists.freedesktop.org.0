Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A34F763B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 15:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4ED6E202;
	Mon, 11 Nov 2019 14:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E57316E202
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 14:19:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 06:19:35 -0800
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="197680843"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Nov 2019 06:19:33 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191111133205.11590-1-chris@chris-wilson.co.uk>
 <20191111133205.11590-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <57389ded-7186-9d5c-3d46-b8aa0a7e025c@linux.intel.com>
Date: Mon, 11 Nov 2019 14:19:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111133205.11590-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [FIXES 2/3] drm/i915/userptr: Handle unlocked gup
 retries
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

Ck9uIDExLzExLzIwMTkgMTM6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBFbmFibGUgZ3VwIHRv
IHJldHJ5IGFuZCBmYXVsdCB0aGUgcGFnZXMgb3V0c2lkZSBvZiB0aGUgbW1hcF9zZW0gbG9jayBp
bgo+IG91ciB3b3JrZXIuIEFzIHdlIGFyZSBpbnNpZGUgb3VyIHdvcmtlciwgb3V0c2lkZSBvZiBh
bnkgY3JpdGljYWwgcGF0aCwKPiB3ZSBjYW4gYWxsb3cgdGhlIG1tYXBfc2VtIGxvY2sgdG8gYmUg
ZHJvcHBlZCBpbiBvcmRlciB0byBzZXJ2aWNlIGEgcGFnZQo+IGZhdWx0OyB0aGlzIGluIHR1cm4g
YWxsb3dzIHRoZSBtbSB0byBwb3B1bGF0ZSB0aGUgcGFnZSB1c2luZyBhIHNsb3cKPiBmYXVsdCBo
YW5kbGVyLgo+IAo+IFRlc3RjYXNlOiBpZ3QvZ2VtX3VzZXJwdHIvdXNlcmZhdWx0CgpUaGVyZSBh
cmUgbm8gcmVmZXJlbmNlcyBvciBleHBsYW5hdGlvbiBvbiB3aGF0IGRvZXMgdGhpcyBmaXg/CgpS
ZWdhcmRzLAoKVHZydGtvCgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJw
dHIuYyB8IDExICsrKysrKysrLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fdXNlcnB0ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3VzZXJwdHIuYwo+IGluZGV4IGRkMTA0YjBlMjA3MS4uNTRlYmM3YWI3MWJjIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCj4gQEAgLTQ1OSwyNiAr
NDU5LDMxIEBAIF9faTkxNV9nZW1fdXNlcnB0cl9nZXRfcGFnZXNfd29ya2VyKHN0cnVjdCB3b3Jr
X3N0cnVjdCAqX3dvcmspCj4gICAJaWYgKHB2ZWMgIT0gTlVMTCkgewo+ICAgCQlzdHJ1Y3QgbW1f
c3RydWN0ICptbSA9IG9iai0+dXNlcnB0ci5tbS0+bW07Cj4gICAJCXVuc2lnbmVkIGludCBmbGFn
cyA9IDA7Cj4gKwkJaW50IGxvY2tlZCA9IDA7Cj4gICAKPiAgIAkJaWYgKCFpOTE1X2dlbV9vYmpl
Y3RfaXNfcmVhZG9ubHkob2JqKSkKPiAgIAkJCWZsYWdzIHw9IEZPTExfV1JJVEU7Cj4gICAKPiAg
IAkJcmV0ID0gLUVGQVVMVDsKPiAgIAkJaWYgKG1tZ2V0X25vdF96ZXJvKG1tKSkgewo+IC0JCQlk
b3duX3JlYWQoJm1tLT5tbWFwX3NlbSk7Cj4gICAJCQl3aGlsZSAocGlubmVkIDwgbnBhZ2VzKSB7
Cj4gKwkJCQlpZiAoIWxvY2tlZCkgewo+ICsJCQkJCWRvd25fcmVhZCgmbW0tPm1tYXBfc2VtKTsK
PiArCQkJCQlsb2NrZWQgPSAxOwo+ICsJCQkJfQo+ICAgCQkJCXJldCA9IGdldF91c2VyX3BhZ2Vz
X3JlbW90ZQo+ICAgCQkJCQkod29yay0+dGFzaywgbW0sCj4gICAJCQkJCSBvYmotPnVzZXJwdHIu
cHRyICsgcGlubmVkICogUEFHRV9TSVpFLAo+ICAgCQkJCQkgbnBhZ2VzIC0gcGlubmVkLAo+ICAg
CQkJCQkgZmxhZ3MsCj4gLQkJCQkJIHB2ZWMgKyBwaW5uZWQsIE5VTEwsIE5VTEwpOwo+ICsJCQkJ
CSBwdmVjICsgcGlubmVkLCBOVUxMLCAmbG9ja2VkKTsKPiAgIAkJCQlpZiAocmV0IDwgMCkKPiAg
IAkJCQkJYnJlYWs7Cj4gICAKPiAgIAkJCQlwaW5uZWQgKz0gcmV0Owo+ICAgCQkJfQo+IC0JCQl1
cF9yZWFkKCZtbS0+bW1hcF9zZW0pOwo+ICsJCQlpZiAobG9ja2VkKQo+ICsJCQkJdXBfcmVhZCgm
bW0tPm1tYXBfc2VtKTsKPiAgIAkJCW1tcHV0KG1tKTsKPiAgIAkJfQo+ICAgCX0KPiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
