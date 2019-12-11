Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F40A11B8FE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 17:39:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82B0C6EB8A;
	Wed, 11 Dec 2019 16:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 766C86EB8A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 16:39:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 08:39:08 -0800
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="207748863"
Received: from jmcrann-mobl1.ger.corp.intel.com (HELO [10.252.9.248])
 ([10.252.9.248])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Dec 2019 08:39:07 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
 <d7b95242-51d0-f052-aabb-fae4ab66e9c3@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <96a54ef7-86d2-0e9b-e0bc-20878883cfea@linux.intel.com>
Date: Wed, 11 Dec 2019 16:39:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d7b95242-51d0-f052-aabb-fae4ab66e9c3@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Register sysctl path
 globally
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
Cc: chris.p.wilson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzEyLzIwMTkgMTY6MzEsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IE9uIDExLzEyLzIw
MTkgMTY6MDcsIFZlbmthdGEgU2FuZGVlcCBEaGFuYWxha290YSB3cm90ZToKPj4gV2UgZG8gbm90
IHJlcXVpcmUgdG8gcmVnaXN0ZXIgdGhlIHN5c2N0bCBwYXRocyBwZXIgaW5zdGFuY2UsCj4+IHNv
IG1ha2luZyByZWdpc3RyYXRpb24gZ2xvYmFsLgo+Pgo+PiBDYzogU3VkZWVwIER1dHQgPHN1ZGVl
cC5kdXR0QGludGVsLmNvbT4KPj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KPj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gQ2M6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFZlbmthdGEgU2Fu
ZGVlcCBEaGFuYWxha290YSAKPj4gPHZlbmthdGEucy5kaGFuYWxha290YUBpbnRlbC5jb20+Cj4+
IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuY8KgwqDCoMKgwqDCoCB8
IDEwICsrKysrKysrLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5cGVz
LmggfMKgIDEgLQo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+IGluZGV4IDhkMmUz
Nzk0OWY0Ni4uNDI2ZDA0MjE0YTVkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+
PiBAQCAtMzg3LDYgKzM4Nyw4IEBAIHN0cnVjdCBpOTE1X29hX2NvbmZpZ19ibyB7Cj4+IMKgwqDC
oMKgwqAgc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4+IMKgIH07Cj4+ICtzdGF0aWMgc3RydWN0IGN0
bF90YWJsZV9oZWFkZXIgKnN5c2N0bF9oZWFkZXI7Cj4+ICsKPj4gwqAgc3RhdGljIGVudW0gaHJ0
aW1lcl9yZXN0YXJ0IG9hX3BvbGxfY2hlY2tfdGltZXJfY2Ioc3RydWN0IGhydGltZXIgCj4+ICpo
cnRpbWVyKTsKPj4gwqAgdm9pZCBpOTE1X29hX2NvbmZpZ19yZWxlYXNlKHN0cnVjdCBrcmVmICpy
ZWYpCj4+IEBAIC00MzQ1LDcgKzQzNDcsOCBAQCB2b2lkIGk5MTVfcGVyZl9pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgb2Ffc2FtcGxlX3Jh
dGVfaGFyZF9saW1pdCA9IDEwMDAgKgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoUlVO
VElNRV9JTkZPKGk5MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2toeiAvIDIpOwo+PiAtwqDC
oMKgwqDCoMKgwqAgcGVyZi0+c3lzY3RsX2hlYWRlciA9IHJlZ2lzdGVyX3N5c2N0bF90YWJsZShk
ZXZfcm9vdCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIXN5c2N0bF9oZWFkZXIpCj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHN5c2N0bF9oZWFkZXIgPSByZWdpc3Rlcl9zeXNjdGxfdGFibGUo
ZGV2X3Jvb3QpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbXV0ZXhfaW5pdCgmcGVyZi0+bWV0cmlj
c19sb2NrKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlkcl9pbml0KCZwZXJmLT5tZXRyaWNzX2lk
cik7Cj4+IEBAIC00Mzk1LDcgKzQzOTgsMTAgQEAgdm9pZCBpOTE1X3BlcmZfZmluaShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gwqDCoMKgwqDCoCBpZHJfZm9yX2VhY2goJnBlcmYt
Pm1ldHJpY3NfaWRyLCBkZXN0cm95X2NvbmZpZywgcGVyZik7Cj4+IMKgwqDCoMKgwqAgaWRyX2Rl
c3Ryb3koJnBlcmYtPm1ldHJpY3NfaWRyKTsKPj4gLcKgwqDCoCB1bnJlZ2lzdGVyX3N5c2N0bF90
YWJsZShwZXJmLT5zeXNjdGxfaGVhZGVyKTsKPj4gK8KgwqDCoCBpZiAoc3lzY3RsX2hlYWRlcikg
ewo+PiArwqDCoMKgwqDCoMKgwqAgdW5yZWdpc3Rlcl9zeXNjdGxfdGFibGUoc3lzY3RsX2hlYWRl
cik7Cj4+ICvCoMKgwqDCoMKgwqDCoCBzeXNjdGxfaGVhZGVyID0gTlVMTDsKPj4gK8KgwqDCoCB9
Cj4gCj4gSSBhbSBub3Qgc3VyZSBpZiB0aGlzIGNvdWxkIGJlIHJhY3kgd2l0aCBtYW51YWwgdW5i
aW5kIGZyb20gc3lzZnMuIERvZXMgCj4gUENJIGNvcmUgc2VyaWFsaXplIGZvciB1cz8KCkFjdHVh
bGx5IHdpdGggdHdvIGRldmljZXMgeW91IGFsc28gbmVlZCB0byByZWZlcmVuY2UgY291bnQgaXQg
c2luY2UgeW91IApkb24ndCB3YW50IHJlbW92YWwgb2YgdGhlIGZpcnN0IGRldmljZSB0byByZW1v
dmUgdGhlIG5vZGUgYnV0IGxhc3QuCgo+IFJlZ2FyZHMsCj4gCj4gVHZydGtvCj4gCj4+IMKgwqDC
oMKgwqAgbWVtc2V0KCZwZXJmLT5vcHMsIDAsIHNpemVvZihwZXJmLT5vcHMpKTsKPj4gwqDCoMKg
wqDCoCBwZXJmLT5pOTE1ID0gTlVMTDsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGVyZl90eXBlcy5oIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zl90eXBlcy5oCj4+IGluZGV4IDc0ZGRjMjBhMGQzNy4uNDVlNTgxNDU1ZjVkIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaAo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaAo+PiBAQCAtMzgwLDcgKzM4MCw2IEBA
IHN0cnVjdCBpOTE1X3BlcmYgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1Owo+PiDCoMKgwqDCoMKgIHN0cnVjdCBrb2JqZWN0ICptZXRyaWNzX2tvYmo7Cj4+IC3C
oMKgwqAgc3RydWN0IGN0bF90YWJsZV9oZWFkZXIgKnN5c2N0bF9oZWFkZXI7Cj4+IMKgwqDCoMKg
wqAgLyoKPj4gwqDCoMKgwqDCoMKgICogTG9jayBhc3NvY2lhdGVkIHdpdGggYWRkaW5nL21vZGlm
eWluZy9yZW1vdmluZyBPQSBjb25maWdzCj4+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
