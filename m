Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2866B30C660
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 17:49:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00186E956;
	Tue,  2 Feb 2021 16:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C35D76E956
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 16:49:27 +0000 (UTC)
IronPort-SDR: K3cLom8bMAF8v2kUlzNet3MjzyrkB+R+iOL/Y2tUoLDU2g0fe92EeI1okycIaq2b72HrjAyEat
 35P/7tacCu2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="199812720"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="199812720"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 08:49:21 -0800
IronPort-SDR: ExfpmaayVtwcxqvg2iY7eEF4DDmpBTayA4IVYjrUzdJWqG5yHz2Mke4DDuYNNZpT5DDSpVcd43
 pbhXIKN2cYVQ==
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="433000801"
Received: from irisshal-mobl1.ger.corp.intel.com (HELO [10.214.210.18])
 ([10.214.210.18])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 08:49:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210202151445.20002-1-chris@chris-wilson.co.uk>
 <20210202151445.20002-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bdffc744-4401-44d5-c705-22a194204a1f@linux.intel.com>
Date: Tue, 2 Feb 2021 16:49:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210202151445.20002-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 06/14] drm/i915/selftests: Measure set-priority
 duration
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAyLzAyLzIwMjEgMTU6MTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyBhIHRvcG9sb2dp
Y2FsIHNvcnQsIHdlIGV4cGVjdCBpdCB0byBydW4gaW4gbGluZWFyIGdyYXBoIHRpbWUsCj4gTyhW
K0UpLiBJbiByZW1vdmluZyB0aGUgcmVjdXJzaW9uLCBpdCBpcyBubyBsb25nZXIgYSBERlMgYnV0
IHJhdGhlciBhCj4gQkZTLCBhbmQgcGVyZm9ybXMgYXMgTyhWRSkuIExldCdzIGRlbW9uc3RyYXRl
IGhvdyBiYWQgdGhpcyBpcyB3aXRoIGEgZmV3Cj4gZXhhbXBsZXMsIGFuZCBidWlsZCBhIGZldyB0
ZXN0IGNhc2VzIHRvIHZlcmlmeSBhIHBvdGVudGlhbCBmaXguCj4gCj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jICAgICAgICAgfCAgIDQgKwo+ICAgLi4uL2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggIHwgICAxICsKPiAgIC4uLi9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9wZXJmX3NlbGZ0ZXN0cy5oICB8ICAgMSArCj4gICAuLi4v
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NjaGVkdWxlci5jICAgfCA2NzIgKysrKysrKysr
KysrKysrKysrCj4gICA0IGZpbGVzIGNoYW5nZWQsIDY3OCBpbnNlcnRpb25zKCspCj4gICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2NoZWR1
bGVyLmMKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVs
ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMKPiBpbmRleCAwMzVl
NGJlNWQ1NzMuLjI3YmRhNzYxN2IyOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3NjaGVkdWxlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hl
ZHVsZXIuYwo+IEBAIC02MDksNiArNjA5LDEwIEBAIHZvaWQgaTkxNV9yZXF1ZXN0X3Nob3dfd2l0
aF9zY2hlZHVsZShzdHJ1Y3QgZHJtX3ByaW50ZXIgKm0sCj4gICAJcmN1X3JlYWRfdW5sb2NrKCk7
Cj4gICB9Cj4gICAKPiArI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X1NFTEZURVNUKQo+
ICsjaW5jbHVkZSAic2VsZnRlc3RzL2k5MTVfc2NoZWR1bGVyLmMiCj4gKyNlbmRpZgo+ICsKPiAg
IHN0YXRpYyB2b2lkIGk5MTVfZ2xvYmFsX3NjaGVkdWxlcl9zaHJpbmsodm9pZCkKPiAgIHsKPiAg
IAlrbWVtX2NhY2hlX3NocmluayhnbG9iYWwuc2xhYl9kZXBlbmRlbmNpZXMpOwo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaAo+
IGluZGV4IGE5MmMwZTliN2U2Yi4uMjIwMGE1YmFhNjhlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCj4gQEAgLTI2
LDYgKzI2LDcgQEAgc2VsZnRlc3QoZ3RfbW9jcywgaW50ZWxfbW9jc19saXZlX3NlbGZ0ZXN0cykK
PiAgIHNlbGZ0ZXN0KGd0X3BtLCBpbnRlbF9ndF9wbV9saXZlX3NlbGZ0ZXN0cykKPiAgIHNlbGZ0
ZXN0KGd0X2hlYXJ0YmVhdCwgaW50ZWxfaGVhcnRiZWF0X2xpdmVfc2VsZnRlc3RzKQo+ICAgc2Vs
ZnRlc3QocmVxdWVzdHMsIGk5MTVfcmVxdWVzdF9saXZlX3NlbGZ0ZXN0cykKPiArc2VsZnRlc3Qo
c2NoZWR1bGVyLCBpOTE1X3NjaGVkdWxlcl9saXZlX3NlbGZ0ZXN0cykKPiAgIHNlbGZ0ZXN0KGFj
dGl2ZSwgaTkxNV9hY3RpdmVfbGl2ZV9zZWxmdGVzdHMpCj4gICBzZWxmdGVzdChvYmplY3RzLCBp
OTE1X2dlbV9vYmplY3RfbGl2ZV9zZWxmdGVzdHMpCj4gICBzZWxmdGVzdChtbWFuLCBpOTE1X2dl
bV9tbWFuX2xpdmVfc2VsZnRlc3RzKQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9wZXJmX3NlbGZ0ZXN0cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfcGVyZl9zZWxmdGVzdHMuaAo+IGluZGV4IGMyMzg5ZjhhMjU3ZC4uMTM3
ZTM1MjgzZmVlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
OTE1X3BlcmZfc2VsZnRlc3RzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9wZXJmX3NlbGZ0ZXN0cy5oCj4gQEAgLTE3LDUgKzE3LDYgQEAKPiAgICAqLwo+ICAg
c2VsZnRlc3QoZW5naW5lX2NzLCBpbnRlbF9lbmdpbmVfY3NfcGVyZl9zZWxmdGVzdHMpCj4gICBz
ZWxmdGVzdChyZXF1ZXN0LCBpOTE1X3JlcXVlc3RfcGVyZl9zZWxmdGVzdHMpCj4gK3NlbGZ0ZXN0
KHNjaGVkdWxlciwgaTkxNV9zY2hlZHVsZXJfcGVyZl9zZWxmdGVzdHMpCj4gICBzZWxmdGVzdChi
bHQsIGk5MTVfZ2VtX29iamVjdF9ibHRfcGVyZl9zZWxmdGVzdHMpCj4gICBzZWxmdGVzdChyZWdp
b24sIGludGVsX21lbW9yeV9yZWdpb25fcGVyZl9zZWxmdGVzdHMpCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NjaGVkdWxlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2NoZWR1bGVyLmMKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uZDA5NWZhYjJjY2VjCj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NjaGVkdWxlci5jCj4g
QEAgLTAsMCArMSw2NzIgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+ICsv
Kgo+ICsgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgo+ICsgKi8KPiArCj4g
KyNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCj4gKwo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfY29u
dGV4dC5oIgo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgiCj4gKyNpbmNsdWRl
ICJndC9zZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmgiCj4gKyNpbmNsdWRlICJzZWxmdGVzdHMv
aWd0X3NwaW5uZXIuaCIKPiArI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X3JhbmRvbS5oIgo+ICsK
PiArc3RhdGljIHZvaWQgc2NoZWR1bGluZ19kaXNhYmxlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKPiArewo+ICsJZW5naW5lLT5wcm9wcy5wcmVlbXB0X3RpbWVvdXRfbXMgPSAwOwo+
ICsJZW5naW5lLT5wcm9wcy50aW1lc2xpY2VfZHVyYXRpb25fbXMgPSAwOwo+ICsKPiArCXN0X2Vu
Z2luZV9oZWFydGJlYXRfZGlzYWJsZShlbmdpbmUpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBz
Y2hlZHVsaW5nX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gK3sKPiAr
CXN0X2VuZ2luZV9oZWFydGJlYXRfZW5hYmxlKGVuZ2luZSk7Cj4gKwo+ICsJZW5naW5lLT5wcm9w
cy5wcmVlbXB0X3RpbWVvdXRfbXMgPQo+ICsJCWVuZ2luZS0+ZGVmYXVsdHMucHJlZW1wdF90aW1l
b3V0X21zOwo+ICsJZW5naW5lLT5wcm9wcy50aW1lc2xpY2VfZHVyYXRpb25fbXMgPQo+ICsJCWVu
Z2luZS0+ZGVmYXVsdHMudGltZXNsaWNlX2R1cmF0aW9uX21zOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
aW50IGZpcnN0X2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiArCQkJaW50
ICgqY2hhaW4pKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiArCQkJCSAgICAgdW5z
aWduZWQgbG9uZyBwYXJhbSwKPiArCQkJCSAgICAgYm9vbCAoKmZuKShzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSwKPiArCQkJCQkJdW5zaWduZWQgbG9uZyB2LAo+ICsJCQkJCQl1bnNpZ25lZCBsb25n
IGUpKSwKPiArCQkJdW5zaWduZWQgbG9uZyBwYXJhbSwKPiArCQkJYm9vbCAoKmZuKShzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSwKPiArCQkJCSAgIHVuc2lnbmVkIGxvbmcgdiwgdW5zaWduZWQgbG9u
ZyBlKSkKPiArewo+ICsJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+ICsKPiArCWZv
cl9lYWNoX3VhYmlfZW5naW5lKGVuZ2luZSwgaTkxNSkgewo+ICsJCWlmICghaW50ZWxfZW5naW5l
X2hhc19zY2hlZHVsZXIoZW5naW5lKSkKPiArCQkJY29udGludWU7Cj4gKwo+ICsJCXJldHVybiBj
aGFpbihlbmdpbmUsIHBhcmFtLCBmbik7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiAr
Cj4gK3N0YXRpYyBpbnQgYWxsX2VuZ2luZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
Cj4gKwkJICAgICAgIGludCAoKmNoYWluKShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
Cj4gKwkJCQkgICAgdW5zaWduZWQgbG9uZyBwYXJhbSwKPiArCQkJCSAgICBib29sICgqZm4pKHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+ICsJCQkJCSAgICAgICB1bnNpZ25lZCBsb25nIHYsCj4g
KwkJCQkJICAgICAgIHVuc2lnbmVkIGxvbmcgZSkpLAo+ICsJCSAgICAgICB1bnNpZ25lZCBsb25n
IHBhcmFtLAo+ICsJCSAgICAgICBib29sICgqZm4pKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+
ICsJCQkJICB1bnNpZ25lZCBsb25nIHYsIHVuc2lnbmVkIGxvbmcgZSkpCj4gK3sKPiArCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiArCWludCBlcnI7Cj4gKwo+ICsJZm9yX2VhY2hf
dWFiaV9lbmdpbmUoZW5naW5lLCBpOTE1KSB7Cj4gKwkJaWYgKCFpbnRlbF9lbmdpbmVfaGFzX3Nj
aGVkdWxlcihlbmdpbmUpKQo+ICsJCQljb250aW51ZTsKPiArCj4gKwkJZXJyID0gY2hhaW4oZW5n
aW5lLCBwYXJhbSwgZm4pOwo+ICsJCWlmIChlcnIpCj4gKwkJCXJldHVybiBlcnI7Cj4gKwl9Cj4g
Kwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBib29sIGNoZWNrX2NvbnRleHRfb3Jk
ZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICt7Cj4gKwl1NjQgbGFzdF9zZXFu
bywgbGFzdF9jb250ZXh0Owo+ICsJdW5zaWduZWQgbG9uZyBjb3VudDsKPiArCWJvb2wgcmVzdWx0
ID0gZmFsc2U7Cj4gKwlzdHJ1Y3QgcmJfbm9kZSAqcmI7Cj4gKwlpbnQgbGFzdF9wcmlvOwo+ICsK
PiArCS8qIFdlIGV4cGVjdCB0aGUgZXhlY3V0aW9uIG9yZGVyIHRvIGZvbGxvdyBhc2NlbmRpbmcg
ZmVuY2UtY29udGV4dCAqLwo+ICsJc3Bpbl9sb2NrX2lycSgmZW5naW5lLT5hY3RpdmUubG9jayk7
Cj4gKwo+ICsJY291bnQgPSAwOwo+ICsJbGFzdF9jb250ZXh0ID0gMDsKPiArCWxhc3Rfc2Vxbm8g
PSAwOwo+ICsJbGFzdF9wcmlvID0gMDsKPiArCWZvciAocmIgPSByYl9maXJzdF9jYWNoZWQoJmVu
Z2luZS0+ZXhlY2xpc3RzLnF1ZXVlKTsgcmI7IHJiID0gcmJfbmV4dChyYikpIHsKPiArCQlzdHJ1
Y3QgaTkxNV9wcmlvbGlzdCAqcCA9IHJiX2VudHJ5KHJiLCB0eXBlb2YoKnApLCBub2RlKTsKPiAr
CQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiArCj4gKwkJcHJpb2xpc3RfZm9yX2VhY2hfcmVx
dWVzdChycSwgcCkgewo+ICsJCQlpZiAocnEtPmZlbmNlLmNvbnRleHQgPCBsYXN0X2NvbnRleHQg
fHwKPiArCQkJICAgIChycS0+ZmVuY2UuY29udGV4dCA9PSBsYXN0X2NvbnRleHQgJiYKPiArCQkJ
ICAgICBycS0+ZmVuY2Uuc2Vxbm8gPCBsYXN0X3NlcW5vKSkgewo+ICsJCQkJcHJfZXJyKCJbJWx1
XSAlbGx4OiVsbGQgW3ByaW86JWRdIGFmdGVyICVsbHg6JWxsZCBbcHJpbzolZF1cbiIsCj4gKwkJ
CQkgICAgICAgY291bnQsCj4gKwkJCQkgICAgICAgcnEtPmZlbmNlLmNvbnRleHQsCj4gKwkJCQkg
ICAgICAgcnEtPmZlbmNlLnNlcW5vLAo+ICsJCQkJICAgICAgIHJxX3ByaW8ocnEpLAo+ICsJCQkJ
ICAgICAgIGxhc3RfY29udGV4dCwKPiArCQkJCSAgICAgICBsYXN0X3NlcW5vLAo+ICsJCQkJICAg
ICAgIGxhc3RfcHJpbyk7Cj4gKwkJCQlnb3RvIG91dF91bmxvY2s7Cj4gKwkJCX0KPiArCj4gKwkJ
CWxhc3RfY29udGV4dCA9IHJxLT5mZW5jZS5jb250ZXh0Owo+ICsJCQlsYXN0X3NlcW5vID0gcnEt
PmZlbmNlLnNlcW5vOwo+ICsJCQlsYXN0X3ByaW8gPSBycV9wcmlvKHJxKTsKPiArCQkJY291bnQr
KzsKPiArCQl9Cj4gKwl9Cj4gKwlyZXN1bHQgPSB0cnVlOwo+ICtvdXRfdW5sb2NrOgo+ICsJc3Bp
bl91bmxvY2tfaXJxKCZlbmdpbmUtPmFjdGl2ZS5sb2NrKTsKPiArCj4gKwlyZXR1cm4gcmVzdWx0
Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IF9fc2luZ2xlX2NoYWluKHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwgdW5zaWduZWQgbG9uZyBsZW5ndGgsCj4gKwkJCSAgYm9vbCAoKmZuKShz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiArCQkJCSAgICAgdW5zaWduZWQgbG9uZyB2LCB1bnNp
Z25lZCBsb25nIGUpKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4gKwlzdHJ1
Y3QgaWd0X3NwaW5uZXIgc3BpbjsKPiArCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+ICsJdW5z
aWduZWQgbG9uZyBjb3VudDsKPiArCXVuc2lnbmVkIGxvbmcgbWluOwo+ICsJaW50IGVyciA9IDA7
Cj4gKwo+ICsJaWYgKCFpbnRlbF9lbmdpbmVfY2FuX3N0b3JlX2R3b3JkKGVuZ2luZSkpCj4gKwkJ
cmV0dXJuIDA7Cj4gKwo+ICsJc2NoZWR1bGluZ19kaXNhYmxlKGVuZ2luZSk7Cj4gKwo+ICsJaWYg
KGlndF9zcGlubmVyX2luaXQoJnNwaW4sIGVuZ2luZS0+Z3QpKSB7Cj4gKwkJZXJyID0gLUVOT01F
TTsKPiArCQlnb3RvIGVycl9oZWFydGJlYXQ7Cj4gKwl9Cj4gKwo+ICsJY2UgPSBpbnRlbF9jb250
ZXh0X2NyZWF0ZShlbmdpbmUpOwo+ICsJaWYgKElTX0VSUihjZSkpIHsKPiArCQllcnIgPSBQVFJf
RVJSKGNlKTsKPiArCQlnb3RvIGVycl9zcGluOwo+ICsJfQo+ICsJY2UtPnJpbmcgPSBfX2ludGVs
X2NvbnRleHRfcmluZ19zaXplKFNaXzUxMkspOwo+ICsKPiArCXJxID0gaWd0X3NwaW5uZXJfY3Jl
YXRlX3JlcXVlc3QoJnNwaW4sIGNlLCBNSV9OT09QKTsKPiArCWlmIChJU19FUlIocnEpKSB7Cj4g
KwkJZXJyID0gUFRSX0VSUihycSk7Cj4gKwkJZ290byBlcnJfY29udGV4dDsKPiArCX0KPiArCWk5
MTVfcmVxdWVzdF9hZGQocnEpOwo+ICsJbWluID0gY2UtPnJpbmctPnNpemUgLSBjZS0+cmluZy0+
c3BhY2U7Cj4gKwo+ICsJY291bnQgPSAxOwo+ICsJd2hpbGUgKGNvdW50IDwgbGVuZ3RoICYmIGNl
LT5yaW5nLT5zcGFjZSA+IG1pbikgewo+ICsJCXJxID0gaW50ZWxfY29udGV4dF9jcmVhdGVfcmVx
dWVzdChjZSk7Cj4gKwkJaWYgKElTX0VSUihycSkpIHsKPiArCQkJZXJyID0gUFRSX0VSUihycSk7
Cj4gKwkJCWJyZWFrOwo+ICsJCX0KPiArCQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKPiArCQljb3Vu
dCsrOwo+ICsJfQo+ICsJaW50ZWxfZW5naW5lX2ZsdXNoX3N1Ym1pc3Npb24oZW5naW5lKTsKPiAr
Cj4gKwlleGVjbGlzdHNfYWN0aXZlX2xvY2tfYmgoJmVuZ2luZS0+ZXhlY2xpc3RzKTsKPiArCWlm
IChmbihycSwgY291bnQsIGNvdW50IC0gMSkgJiYgIWNoZWNrX2NvbnRleHRfb3JkZXIoZW5naW5l
KSkKPiArCQllcnIgPSAtRUlOVkFMOwo+ICsJZXhlY2xpc3RzX2FjdGl2ZV91bmxvY2tfYmgoJmVu
Z2luZS0+ZXhlY2xpc3RzKTsKPiArCj4gKwlpZ3Rfc3Bpbm5lcl9lbmQoJnNwaW4pOwo+ICtlcnJf
Y29udGV4dDoKPiArCWludGVsX2NvbnRleHRfcHV0KGNlKTsKPiArZXJyX3NwaW46Cj4gKwlpZ3Rf
c3Bpbm5lcl9maW5pKCZzcGluKTsKPiArZXJyX2hlYXJ0YmVhdDoKPiArCXNjaGVkdWxpbmdfZW5h
YmxlKGVuZ2luZSk7Cj4gKwlyZXR1cm4gZXJyOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IF9fd2lk
ZV9jaGFpbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHVuc2lnbmVkIGxvbmcgd2lk
dGgsCj4gKwkJCWJvb2wgKCpmbikoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gKwkJCQkgICB1
bnNpZ25lZCBsb25nIHYsIHVuc2lnbmVkIGxvbmcgZSkpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9j
b250ZXh0ICoqY2U7Cj4gKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqcnE7Cj4gKwlzdHJ1Y3QgaWd0
X3NwaW5uZXIgc3BpbjsKPiArCXVuc2lnbmVkIGxvbmcgY291bnQ7Cj4gKwl1bnNpZ25lZCBsb25n
IGksIGo7Cj4gKwlpbnQgZXJyID0gMDsKPiArCj4gKwlpZiAoIWludGVsX2VuZ2luZV9jYW5fc3Rv
cmVfZHdvcmQoZW5naW5lKSkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlzY2hlZHVsaW5nX2Rpc2Fi
bGUoZW5naW5lKTsKPiArCj4gKwlpZiAoaWd0X3NwaW5uZXJfaW5pdCgmc3BpbiwgZW5naW5lLT5n
dCkpIHsKPiArCQllcnIgPSAtRU5PTUVNOwo+ICsJCWdvdG8gZXJyX2hlYXJ0YmVhdDsKPiArCX0K
PiArCj4gKwljZSA9IGttYWxsb2NfYXJyYXkod2lkdGgsIHNpemVvZigqY2UpLCBHRlBfS0VSTkVM
KTsKPiArCWlmICghY2UpIHsKPiArCQllcnIgPSAtRU5PTUVNOwo+ICsJCWdvdG8gZXJyX3NwaW47
Cj4gKwl9Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IHdpZHRoOyBpKyspIHsKPiArCQljZVtpXSA9
IGludGVsX2NvbnRleHRfY3JlYXRlKGVuZ2luZSk7Cj4gKwkJaWYgKElTX0VSUihjZVtpXSkpIHsK
PiArCQkJZXJyID0gUFRSX0VSUihjZVtpXSk7Cj4gKwkJCXdpZHRoID0gaTsKPiArCQkJZ290byBl
cnJfY29udGV4dDsKPiArCQl9Cj4gKwl9Cj4gKwo+ICsJcnEgPSBrbWFsbG9jX2FycmF5KHdpZHRo
LCBzaXplb2YoKnJxKSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXJxKSB7Cj4gKwkJZXJyID0gLUVO
T01FTTsKPiArCQlnb3RvIGVycl9jb250ZXh0Owo+ICsJfQo+ICsKPiArCXJxWzBdID0gaWd0X3Nw
aW5uZXJfY3JlYXRlX3JlcXVlc3QoJnNwaW4sIGNlWzBdLCBNSV9OT09QKTsKPiArCWlmIChJU19F
UlIocnFbMF0pKSB7Cj4gKwkJZXJyID0gUFRSX0VSUihycVswXSk7Cj4gKwkJZ290byBlcnJfZnJl
ZTsKPiArCX0KPiArCWk5MTVfcmVxdWVzdF9hZGQocnFbMF0pOwo+ICsKPiArCWNvdW50ID0gMDsK
PiArCWZvciAoaSA9IDE7IGkgPCB3aWR0aDsgaSsrKSB7Cj4gKwkJR0VNX0JVR19PTihpOTE1X3Jl
cXVlc3RfY29tcGxldGVkKHJxWzBdKSk7Cj4gKwo+ICsJCXJxW2ldID0gaW50ZWxfY29udGV4dF9j
cmVhdGVfcmVxdWVzdChjZVtpXSk7Cj4gKwkJaWYgKElTX0VSUihycVtpXSkpIHsKPiArCQkJZXJy
ID0gUFRSX0VSUihycVtpXSk7Cj4gKwkJCWJyZWFrOwo+ICsJCX0KPiArCQlmb3IgKGogPSAwOyBq
IDwgaTsgaisrKSB7Cj4gKwkJCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVuY2UocnFb
aV0sCj4gKwkJCQkJCQkgICAmcnFbal0tPmZlbmNlKTsKPiArCQkJaWYgKGVycikKPiArCQkJCWJy
ZWFrOwo+ICsJCQljb3VudCsrOwo+ICsJCX0KPiArCQlpOTE1X3JlcXVlc3RfYWRkKHJxW2ldKTsK
PiArCX0KPiArCWludGVsX2VuZ2luZV9mbHVzaF9zdWJtaXNzaW9uKGVuZ2luZSk7Cj4gKwo+ICsJ
ZXhlY2xpc3RzX2FjdGl2ZV9sb2NrX2JoKCZlbmdpbmUtPmV4ZWNsaXN0cyk7Cj4gKwlpZiAoZm4o
cnFbaSAtIDFdLCBpLCBjb3VudCkgJiYgIWNoZWNrX2NvbnRleHRfb3JkZXIoZW5naW5lKSkKPiAr
CQllcnIgPSAtRUlOVkFMOwo+ICsJZXhlY2xpc3RzX2FjdGl2ZV91bmxvY2tfYmgoJmVuZ2luZS0+
ZXhlY2xpc3RzKTsKPiArCj4gKwlpZ3Rfc3Bpbm5lcl9lbmQoJnNwaW4pOwo+ICtlcnJfZnJlZToK
PiArCWtmcmVlKHJxKTsKPiArZXJyX2NvbnRleHQ6Cj4gKwlmb3IgKGkgPSAwOyBpIDwgd2lkdGg7
IGkrKykKPiArCQlpbnRlbF9jb250ZXh0X3B1dChjZVtpXSk7Cj4gKwlrZnJlZShjZSk7Cj4gK2Vy
cl9zcGluOgo+ICsJaWd0X3NwaW5uZXJfZmluaSgmc3Bpbik7Cj4gK2Vycl9oZWFydGJlYXQ6Cj4g
KwlzY2hlZHVsaW5nX2VuYWJsZShlbmdpbmUpOwo+ICsJcmV0dXJuIGVycjsKPiArfQo+ICsKPiAr
c3RhdGljIGludCBfX2ludl9jaGFpbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHVu
c2lnbmVkIGxvbmcgd2lkdGgsCj4gKwkJICAgICAgIGJvb2wgKCpmbikoc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEsCj4gKwkJCQkgIHVuc2lnbmVkIGxvbmcgdiwgdW5zaWduZWQgbG9uZyBlKSkKPiAr
ewo+ICsJc3RydWN0IGludGVsX2NvbnRleHQgKipjZTsKPiArCXN0cnVjdCBpOTE1X3JlcXVlc3Qg
KipycTsKPiArCXN0cnVjdCBpZ3Rfc3Bpbm5lciBzcGluOwo+ICsJdW5zaWduZWQgbG9uZyBjb3Vu
dDsKPiArCXVuc2lnbmVkIGxvbmcgaSwgajsKPiArCWludCBlcnIgPSAwOwo+ICsKPiArCWlmICgh
aW50ZWxfZW5naW5lX2Nhbl9zdG9yZV9kd29yZChlbmdpbmUpKQo+ICsJCXJldHVybiAwOwo+ICsK
PiArCXNjaGVkdWxpbmdfZGlzYWJsZShlbmdpbmUpOwo+ICsKPiArCWlmIChpZ3Rfc3Bpbm5lcl9p
bml0KCZzcGluLCBlbmdpbmUtPmd0KSkgewo+ICsJCWVyciA9IC1FTk9NRU07Cj4gKwkJZ290byBl
cnJfaGVhcnRiZWF0Owo+ICsJfQo+ICsKPiArCWNlID0ga21hbGxvY19hcnJheSh3aWR0aCwgc2l6
ZW9mKCpjZSksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCFjZSkgewo+ICsJCWVyciA9IC1FTk9NRU07
Cj4gKwkJZ290byBlcnJfc3BpbjsKPiArCX0KPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwgd2lkdGg7
IGkrKykgewo+ICsJCWNlW2ldID0gaW50ZWxfY29udGV4dF9jcmVhdGUoZW5naW5lKTsKPiArCQlp
ZiAoSVNfRVJSKGNlW2ldKSkgewo+ICsJCQllcnIgPSBQVFJfRVJSKGNlW2ldKTsKPiArCQkJd2lk
dGggPSBpOwo+ICsJCQlnb3RvIGVycl9jb250ZXh0Owo+ICsJCX0KPiArCX0KPiArCj4gKwlycSA9
IGttYWxsb2NfYXJyYXkod2lkdGgsIHNpemVvZigqcnEpLCBHRlBfS0VSTkVMKTsKPiArCWlmICgh
cnEpIHsKPiArCQllcnIgPSAtRU5PTUVNOwo+ICsJCWdvdG8gZXJyX2NvbnRleHQ7Cj4gKwl9Cj4g
Kwo+ICsJcnFbMF0gPSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmc3BpbiwgY2VbMF0sIE1J
X05PT1ApOwo+ICsJaWYgKElTX0VSUihycVswXSkpIHsKPiArCQllcnIgPSBQVFJfRVJSKHJxWzBd
KTsKPiArCQlnb3RvIGVycl9mcmVlOwo+ICsJfQo+ICsJaTkxNV9yZXF1ZXN0X2FkZChycVswXSk7
Cj4gKwo+ICsJY291bnQgPSAwOwo+ICsJZm9yIChpID0gMTsgaSA8IHdpZHRoOyBpKyspIHsKPiAr
CQlHRU1fQlVHX09OKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnFbMF0pKTsKPiArCj4gKwkJcnFb
aV0gPSBpbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KGNlW2ldKTsKPiArCQlpZiAoSVNfRVJS
KHJxW2ldKSkgewo+ICsJCQllcnIgPSBQVFJfRVJSKHJxW2ldKTsKPiArCQkJYnJlYWs7Cj4gKwkJ
fQo+ICsJCWZvciAoaiA9IGk7IGogPiAwOyBqLS0pIHsKPiArCQkJZXJyID0gaTkxNV9yZXF1ZXN0
X2F3YWl0X2RtYV9mZW5jZShycVtpXSwKPiArCQkJCQkJCSAgICZycVtqIC0gMV0tPmZlbmNlKTsK
PiArCQkJaWYgKGVycikKPiArCQkJCWJyZWFrOwo+ICsJCQljb3VudCsrOwo+ICsJCX0KPiArCQlp
OTE1X3JlcXVlc3RfYWRkKHJxW2ldKTsKPiArCX0KPiArCWludGVsX2VuZ2luZV9mbHVzaF9zdWJt
aXNzaW9uKGVuZ2luZSk7Cj4gKwo+ICsJZXhlY2xpc3RzX2FjdGl2ZV9sb2NrX2JoKCZlbmdpbmUt
PmV4ZWNsaXN0cyk7Cj4gKwlpZiAoZm4ocnFbaSAtIDFdLCBpLCBjb3VudCkgJiYgIWNoZWNrX2Nv
bnRleHRfb3JkZXIoZW5naW5lKSkKPiArCQllcnIgPSAtRUlOVkFMOwo+ICsJZXhlY2xpc3RzX2Fj
dGl2ZV91bmxvY2tfYmgoJmVuZ2luZS0+ZXhlY2xpc3RzKTsKPiArCj4gKwlpZ3Rfc3Bpbm5lcl9l
bmQoJnNwaW4pOwo+ICtlcnJfZnJlZToKPiArCWtmcmVlKHJxKTsKPiArZXJyX2NvbnRleHQ6Cj4g
Kwlmb3IgKGkgPSAwOyBpIDwgd2lkdGg7IGkrKykKPiArCQlpbnRlbF9jb250ZXh0X3B1dChjZVtp
XSk7Cj4gKwlrZnJlZShjZSk7Cj4gK2Vycl9zcGluOgo+ICsJaWd0X3NwaW5uZXJfZmluaSgmc3Bp
bik7Cj4gK2Vycl9oZWFydGJlYXQ6Cj4gKwlzY2hlZHVsaW5nX2VuYWJsZShlbmdpbmUpOwo+ICsJ
cmV0dXJuIGVycjsKPiArfQo+ICsKPiArc3RhdGljIGludCBfX3NwYXJzZV9jaGFpbihzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHVuc2lnbmVkIGxvbmcgd2lkdGgsCj4gKwkJCSAgYm9v
bCAoKmZuKShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiArCQkJCSAgICAgdW5zaWduZWQgbG9u
ZyB2LCB1bnNpZ25lZCBsb25nIGUpKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqKmNl
Owo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAqKnJxOwo+ICsJc3RydWN0IGlndF9zcGlubmVyIHNw
aW47Cj4gKwlJOTE1X1JORF9TVEFURShwcm5nKTsKPiArCXVuc2lnbmVkIGxvbmcgY291bnQ7Cj4g
Kwl1bnNpZ25lZCBsb25nIGksIGo7Cj4gKwlpbnQgZXJyID0gMDsKPiArCj4gKwlpZiAoIWludGVs
X2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoZW5naW5lKSkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlz
Y2hlZHVsaW5nX2Rpc2FibGUoZW5naW5lKTsKPiArCj4gKwlpZiAoaWd0X3NwaW5uZXJfaW5pdCgm
c3BpbiwgZW5naW5lLT5ndCkpIHsKPiArCQllcnIgPSAtRU5PTUVNOwo+ICsJCWdvdG8gZXJyX2hl
YXJ0YmVhdDsKPiArCX0KPiArCj4gKwljZSA9IGttYWxsb2NfYXJyYXkod2lkdGgsIHNpemVvZigq
Y2UpLCBHRlBfS0VSTkVMKTsKPiArCWlmICghY2UpIHsKPiArCQllcnIgPSAtRU5PTUVNOwo+ICsJ
CWdvdG8gZXJyX3NwaW47Cj4gKwl9Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IHdpZHRoOyBpKysp
IHsKPiArCQljZVtpXSA9IGludGVsX2NvbnRleHRfY3JlYXRlKGVuZ2luZSk7Cj4gKwkJaWYgKElT
X0VSUihjZVtpXSkpIHsKPiArCQkJZXJyID0gUFRSX0VSUihjZVtpXSk7Cj4gKwkJCXdpZHRoID0g
aTsKPiArCQkJZ290byBlcnJfY29udGV4dDsKPiArCQl9Cj4gKwl9Cj4gKwo+ICsJcnEgPSBrbWFs
bG9jX2FycmF5KHdpZHRoLCBzaXplb2YoKnJxKSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXJxKSB7
Cj4gKwkJZXJyID0gLUVOT01FTTsKPiArCQlnb3RvIGVycl9jb250ZXh0Owo+ICsJfQo+ICsKPiAr
CXJxWzBdID0gaWd0X3NwaW5uZXJfY3JlYXRlX3JlcXVlc3QoJnNwaW4sIGNlWzBdLCBNSV9OT09Q
KTsKPiArCWlmIChJU19FUlIocnFbMF0pKSB7Cj4gKwkJZXJyID0gUFRSX0VSUihycVswXSk7Cj4g
KwkJZ290byBlcnJfZnJlZTsKPiArCX0KPiArCWk5MTVfcmVxdWVzdF9hZGQocnFbMF0pOwo+ICsK
PiArCWNvdW50ID0gMDsKPiArCWZvciAoaSA9IDE7IGkgPCB3aWR0aDsgaSsrKSB7Cj4gKwkJR0VN
X0JVR19PTihpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxWzBdKSk7Cj4gKwo+ICsJCXJxW2ldID0g
aW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChjZVtpXSk7Cj4gKwkJaWYgKElTX0VSUihycVtp
XSkpIHsKPiArCQkJZXJyID0gUFRSX0VSUihycVtpXSk7Cj4gKwkJCWJyZWFrOwo+ICsJCX0KPiAr
Cj4gKwkJaWYgKGVyciA9PSAwICYmIGkgPiAxKSB7Cj4gKwkJCWogPSBpOTE1X3ByYW5kb21fdTMy
X21heF9zdGF0ZShpIC0gMSwgJnBybmcpOwo+ICsJCQllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRf
ZG1hX2ZlbmNlKHJxW2ldLAo+ICsJCQkJCQkJICAgJnJxW2pdLT5mZW5jZSk7Cj4gKwkJCWNvdW50
Kys7Cj4gKwkJfQo+ICsKPiArCQlpZiAoZXJyID09IDApIHsKPiArCQkJZXJyID0gaTkxNV9yZXF1
ZXN0X2F3YWl0X2RtYV9mZW5jZShycVtpXSwKPiArCQkJCQkJCSAgICZycVtpIC0gMV0tPmZlbmNl
KTsKPiArCQkJY291bnQrKzsKPiArCQl9Cj4gKwo+ICsJCWlmIChlcnIgPT0gMCAmJiBpID4gMikg
ewo+ICsJCQlqID0gaTkxNV9wcmFuZG9tX3UzMl9tYXhfc3RhdGUoaSAtIDIsICZwcm5nKTsKPiAr
CQkJZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZShycVtpXSwKPiArCQkJCQkJCSAg
ICZycVtqXS0+ZmVuY2UpOwo+ICsJCQljb3VudCsrOwo+ICsJCX0KPiArCj4gKwkJaTkxNV9yZXF1
ZXN0X2FkZChycVtpXSk7Cj4gKwkJaWYgKGVycikKPiArCQkJYnJlYWs7Cj4gKwl9Cj4gKwlpbnRl
bF9lbmdpbmVfZmx1c2hfc3VibWlzc2lvbihlbmdpbmUpOwo+ICsKPiArCWV4ZWNsaXN0c19hY3Rp
dmVfbG9ja19iaCgmZW5naW5lLT5leGVjbGlzdHMpOwo+ICsJaWYgKGZuKHJxW2kgLSAxXSwgaSwg
Y291bnQpICYmICFjaGVja19jb250ZXh0X29yZGVyKGVuZ2luZSkpCj4gKwkJZXJyID0gLUVJTlZB
TDsKPiArCWV4ZWNsaXN0c19hY3RpdmVfdW5sb2NrX2JoKCZlbmdpbmUtPmV4ZWNsaXN0cyk7Cj4g
Kwo+ICsJaWd0X3NwaW5uZXJfZW5kKCZzcGluKTsKPiArZXJyX2ZyZWU6Cj4gKwlrZnJlZShycSk7
Cj4gK2Vycl9jb250ZXh0Ogo+ICsJZm9yIChpID0gMDsgaSA8IHdpZHRoOyBpKyspCj4gKwkJaW50
ZWxfY29udGV4dF9wdXQoY2VbaV0pOwo+ICsJa2ZyZWUoY2UpOwo+ICtlcnJfc3BpbjoKPiArCWln
dF9zcGlubmVyX2ZpbmkoJnNwaW4pOwo+ICtlcnJfaGVhcnRiZWF0Ogo+ICsJc2NoZWR1bGluZ19l
bmFibGUoZW5naW5lKTsKPiArCXJldHVybiBlcnI7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaWd0
X3NjaGVkdWxlX2NoYWlucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiArCQkJICAg
ICAgIGJvb2wgKCpmbikoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gKwkJCQkJICB1bnNpZ25l
ZCBsb25nIHYsIHVuc2lnbmVkIGxvbmcgZSkpCj4gK3sKPiArCXN0YXRpYyBpbnQgKCogY29uc3Qg
Y2hhaW5zW10pKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiArCQkJCSAgICAgIHVu
c2lnbmVkIGxvbmcgbGVuZ3RoLAo+ICsJCQkJICAgICAgYm9vbCAoKmZuKShzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSwKPiArCQkJCQkJIHVuc2lnbmVkIGxvbmcgdiwgdW5zaWduZWQgbG9uZyBlKSkg
PSB7Cj4gKwkJX19zaW5nbGVfY2hhaW4sCj4gKwkJX193aWRlX2NoYWluLAo+ICsJCV9faW52X2No
YWluLAo+ICsJCV9fc3BhcnNlX2NoYWluLAo+ICsJfTsKPiArCWludCBuLCBlcnI7Cj4gKwo+ICsJ
Zm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUoY2hhaW5zKTsgbisrKSB7Cj4gKwkJZXJyID0gYWxs
X2VuZ2luZXMoaTkxNSwgY2hhaW5zW25dLCAxNywgZm4pOwo+ICsJCWlmIChlcnIpCj4gKwkJCXJl
dHVybiBlcnI7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBib29s
IGlndF9wcmlvcml0eShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiArCQkJIHVuc2lnbmVkIGxv
bmcgdiwgdW5zaWduZWQgbG9uZyBlKQo+ICt7Cj4gKwlpOTE1X3JlcXVlc3Rfc2V0X3ByaW9yaXR5
KHJxLCBJOTE1X1BSSU9SSVRZX0JBUlJJRVIpOwo+ICsJR0VNX0JVR19PTihycV9wcmlvKHJxKSAh
PSBJOTE1X1BSSU9SSVRZX0JBUlJJRVIpOwo+ICsJcmV0dXJuIHRydWU7Cj4gK30KPiArCj4gK3N0
YXRpYyBpbnQgaWd0X3ByaW9yaXR5X2NoYWlucyh2b2lkICphcmcpCj4gK3sKPiArCXJldHVybiBp
Z3Rfc2NoZWR1bGVfY2hhaW5zKGFyZywgaWd0X3ByaW9yaXR5KTsKPiArfQo+ICsKPiAraW50IGk5
MTVfc2NoZWR1bGVyX2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQo+ICt7Cj4gKwlzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0gewo+
ICsJCVNVQlRFU1QoaWd0X3ByaW9yaXR5X2NoYWlucyksCj4gKwl9Owo+ICsKPiArCXJldHVybiBp
OTE1X3N1YnRlc3RzKHRlc3RzLCBpOTE1KTsKPiArfQo+ICsKPiArc3RhdGljIGludCBjaGFpbnMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gKwkJICBpbnQgKCpjaGFpbikoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gKwkJCSAgICAgICB1bnNpZ25lZCBsb25nIGxlbmd0
aCwKPiArCQkJICAgICAgIGJvb2wgKCpmbikoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gKwkJ
CQkJICB1bnNpZ25lZCBsb25nIHYsIHVuc2lnbmVkIGxvbmcgZSkpLAo+ICsJCSAgYm9vbCAoKmZu
KShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiArCQkJICAgICB1bnNpZ25lZCBsb25nIHYsIHVu
c2lnbmVkIGxvbmcgZSkpCj4gK3sKPiArCXVuc2lnbmVkIGxvbmcgeFtdID0geyAxLCA0LCAxNiwg
NjQsIDEyOCwgMjU2LCA1MTIsIDEwMjQsIDQwOTYgfTsKPiArCWludCBpLCBlcnI7Cj4gKwo+ICsJ
Zm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoeCk7IGkrKykgewo+ICsJCUlHVF9USU1FT1VUKGVu
ZF90aW1lKTsKPiArCj4gKwkJZXJyID0gY2hhaW4oaTkxNSwgeFtpXSwgZm4pOwo+ICsJCWlmIChl
cnIpCj4gKwkJCXJldHVybiBlcnI7Cj4gKwo+ICsJCWlmIChfX2lndF90aW1lb3V0KGVuZF90aW1l
LCBOVUxMKSkKPiArCQkJYnJlYWs7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4g
K3N0YXRpYyBpbnQgc2luZ2xlX2NoYWluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+
ICsJCQl1bnNpZ25lZCBsb25nIGxlbmd0aCwKPiArCQkJYm9vbCAoKmZuKShzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSwKPiArCQkJCSAgIHVuc2lnbmVkIGxvbmcgdiwgdW5zaWduZWQgbG9uZyBlKSkK
PiArewo+ICsJcmV0dXJuIGZpcnN0X2VuZ2luZShpOTE1LCBfX3NpbmdsZV9jaGFpbiwgbGVuZ3Ro
LCBmbik7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgc2luZ2xlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAo+ICsJCSAgYm9vbCAoKmZuKShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiAr
CQkJICAgICB1bnNpZ25lZCBsb25nIHYsIHVuc2lnbmVkIGxvbmcgZSkpCj4gK3sKPiArCXJldHVy
biBjaGFpbnMoaTkxNSwgc2luZ2xlX2NoYWluLCBmbik7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQg
d2lkZV9jaGFpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiArCQkgICAgICB1bnNp
Z25lZCBsb25nIHdpZHRoLAo+ICsJCSAgICAgIGJvb2wgKCpmbikoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsCj4gKwkJCQkgdW5zaWduZWQgbG9uZyB2LCB1bnNpZ25lZCBsb25nIGUpKQo+ICt7Cj4g
KwlyZXR1cm4gZmlyc3RfZW5naW5lKGk5MTUsIF9fd2lkZV9jaGFpbiwgd2lkdGgsIGZuKTsKPiAr
fQo+ICsKPiArc3RhdGljIGludCB3aWRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+
ICsJCWJvb2wgKCpmbikoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gKwkJCSAgIHVuc2lnbmVk
IGxvbmcgdiwgdW5zaWduZWQgbG9uZyBlKSkKPiArewo+ICsJcmV0dXJuIGNoYWlucyhpOTE1LCB3
aWRlX2NoYWluLCBmbik7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaW52X2NoYWluKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LAo+ICsJCSAgICAgdW5zaWduZWQgbG9uZyB3aWR0aCwKPiAr
CQkgICAgIGJvb2wgKCpmbikoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gKwkJCQl1bnNpZ25l
ZCBsb25nIHYsIHVuc2lnbmVkIGxvbmcgZSkpCj4gK3sKPiArCXJldHVybiBmaXJzdF9lbmdpbmUo
aTkxNSwgX19pbnZfY2hhaW4sIHdpZHRoLCBmbik7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaW52
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICsJICAgICAgIGJvb2wgKCpmbikoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4gKwkJCSAgdW5zaWduZWQgbG9uZyB2LCB1bnNpZ25lZCBs
b25nIGUpKQo+ICt7Cj4gKwlyZXR1cm4gY2hhaW5zKGk5MTUsIGludl9jaGFpbiwgZm4pOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgaW50IHNwYXJzZV9jaGFpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKPiArCQkJdW5zaWduZWQgbG9uZyB3aWR0aCwKPiArCQkJYm9vbCAoKmZuKShzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSwKPiArCQkJCSAgIHVuc2lnbmVkIGxvbmcgdiwgdW5zaWduZWQgbG9u
ZyBlKSkKPiArewo+ICsJcmV0dXJuIGZpcnN0X2VuZ2luZShpOTE1LCBfX3NwYXJzZV9jaGFpbiwg
d2lkdGgsIGZuKTsKPiArfQo+ICsKPiArc3RhdGljIGludCBzcGFyc2Uoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsCj4gKwkJICBib29sICgqZm4pKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
LAo+ICsJCQkgICAgIHVuc2lnbmVkIGxvbmcgdiwgdW5zaWduZWQgbG9uZyBlKSkKPiArewo+ICsJ
cmV0dXJuIGNoYWlucyhpOTE1LCBzcGFyc2VfY2hhaW4sIGZuKTsKPiArfQo+ICsKPiArc3RhdGlj
IHZvaWQgcmVwb3J0KGNvbnN0IGNoYXIgKndoYXQsIHVuc2lnbmVkIGxvbmcgdiwgdW5zaWduZWQg
bG9uZyBlLCB1NjQgZHQpCj4gK3sKPiArCXByX2luZm8oIiglNGx1LCAlN2x1KSwgJXM6JTEwbGx1
bnNcbiIsIHYsIGUsIHdoYXQsIGR0KTsKPiArfQo+ICsKPiArc3RhdGljIHU2NCBfX3NldF9wcmlv
cml0eShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgaW50IHByaW8pCj4gK3sKPiArCXU2NCBkdDsK
PiArCj4gKwlwcmVlbXB0X2Rpc2FibGUoKTsKPiArCWR0ID0ga3RpbWVfZ2V0X3Jhd19mYXN0X25z
KCk7Cj4gKwlpOTE1X3JlcXVlc3Rfc2V0X3ByaW9yaXR5KHJxLCBwcmlvKTsKPiArCWR0ID0ga3Rp
bWVfZ2V0X3Jhd19mYXN0X25zKCkgLSBkdDsKPiArCXByZWVtcHRfZW5hYmxlKCk7Cj4gKwo+ICsJ
cmV0dXJuIGR0Owo+ICt9Cj4gKwo+ICtzdGF0aWMgYm9vbCBzZXRfcHJpb3JpdHkoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsCj4gKwkJCSB1bnNpZ25lZCBsb25nIHYsIHVuc2lnbmVkIGxvbmcgZSkK
PiArewo+ICsJcmVwb3J0KCJzZXQtcHJpb3JpdHkiLCB2LCBlLCBfX3NldF9wcmlvcml0eShycSwg
STkxNV9QUklPUklUWV9CQVJSSUVSKSk7Cj4gKwlyZXR1cm4gdHJ1ZTsKPiArfQo+ICsKPiArc3Rh
dGljIGludCBzaW5nbGVfcHJpb3JpdHkodm9pZCAqYXJnKQo+ICt7Cj4gKwlyZXR1cm4gc2luZ2xl
KGFyZywgc2V0X3ByaW9yaXR5KTsKPiArfQo+ICsKPiArc3RhdGljIGludCB3aWRlX3ByaW9yaXR5
KHZvaWQgKmFyZykKPiArewo+ICsJcmV0dXJuIHdpZGUoYXJnLCBzZXRfcHJpb3JpdHkpOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgaW50IGludl9wcmlvcml0eSh2b2lkICphcmcpCj4gK3sKPiArCXJldHVy
biBpbnYoYXJnLCBzZXRfcHJpb3JpdHkpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHNwYXJzZV9w
cmlvcml0eSh2b2lkICphcmcpCj4gK3sKPiArCXJldHVybiBzcGFyc2UoYXJnLCBzZXRfcHJpb3Jp
dHkpOwo+ICt9Cj4gKwo+ICtpbnQgaTkxNV9zY2hlZHVsZXJfcGVyZl9zZWxmdGVzdHMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gK3sKPiArCXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkx
NV9zdWJ0ZXN0IHRlc3RzW10gPSB7Cj4gKwkJU1VCVEVTVChzaW5nbGVfcHJpb3JpdHkpLAo+ICsJ
CVNVQlRFU1Qod2lkZV9wcmlvcml0eSksCj4gKwkJU1VCVEVTVChpbnZfcHJpb3JpdHkpLAo+ICsJ
CVNVQlRFU1Qoc3BhcnNlX3ByaW9yaXR5KSwKPiArCX07Cj4gKwlzdGF0aWMgY29uc3Qgc3RydWN0
IHsKPiArCQljb25zdCBjaGFyICpuYW1lOwo+ICsJCXNpemVfdCBzejsKPiArCX0gdHlwZXNbXSA9
IHsKPiArI2RlZmluZSBUKHQpIHsgI3QsIHNpemVvZihzdHJ1Y3QgdCkgfQo+ICsJCVQoaTkxNV9w
cmlvbGlzdCksCj4gKwkJVChpOTE1X3NjaGVkX2F0dHIpLAo+ICsJCVQoaTkxNV9zY2hlZF9ub2Rl
KSwKPiArCQlUKGk5MTVfZGVwZW5kZW5jeSksCj4gKyN1bmRlZiBUCj4gKwkJe30KPiArCX07Cj4g
Kwl0eXBlb2YoKnR5cGVzKSAqdDsKPiArCj4gKwlmb3IgKHQgPSB0eXBlczsgdC0+bmFtZTsgdCsr
KQo+ICsJCXByX2luZm8oInNpemVvZiglcyk6ICV6ZFxuIiwgdC0+bmFtZSwgdC0+c3opOwo+ICsK
PiArCXJldHVybiBpOTE1X3N1YnRlc3RzKHRlc3RzLCBpOTE1KTsKPiArfQo+IAoKVG9vIHJlc3Bv
bnNpYmxlIHRvIHdyaXRlIHRoYXQgbXVjaCB0ZXN0IGNvZGUuIDopIExvb2tzIHRpZHkgYnV0IEkg
ZGlkIApub3QgbXVzdGVyIGRvaW5nIGEgZnVsbCByZXZpZXcgc28sIGlmIGl0IHdpbGwgY3V0IGl0
OgoKQWNrZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpS
ZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
