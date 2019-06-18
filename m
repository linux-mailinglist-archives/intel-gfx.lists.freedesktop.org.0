Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B48494AA11
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 20:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036DA6E219;
	Tue, 18 Jun 2019 18:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F306E219
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 18:40:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 11:40:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,390,1557212400"; d="scan'208";a="161823179"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jun 2019 11:40:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190617180935.505-1-daniele.ceraolospurio@intel.com>
 <20190617180935.505-5-daniele.ceraolospurio@intel.com>
 <156085336733.31375.11165168329236692610@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <36419c43-1b98-d313-4849-b9418f750b02@intel.com>
Date: Tue, 18 Jun 2019 11:40:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156085336733.31375.11165168329236692610@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: skip forcewake actions on
 forcewake-less uncore
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

CgpPbiA2LzE4LzE5IDM6MjIgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDYtMTcgMTk6MDk6MzMpCj4+IFdlIGFsd2F5cyBjYWxs
IHNvbWUgb2YgdGhlIHNldHVwL2NsZWFudXAgZnVuY3Rpb25zIGZvciBmb3JjZXdha2UsIGV2ZW4K
Pj4gaWYgdGhlIGZlYXR1cmUgaXMgbm90IGFjdHVhbGx5IGF2YWlsYWJsZS4gU2tpcHBpbmcgdGhl
c2Ugb3BlcmF0aW9ucyBpZgo+PiBmb3JjZXdha2UgaXMgbm90IGF2YWlsYWJsZSBzYXZlcyB1cyBz
b21lIG9wZXJhdGlvbnMgb24gb2xkZXIgZ2VucyBhbmQKPj4gcHJlcGFyZXMgdXMgZm9yIGhhdmlu
ZyBhIGZvcmNld2FrZS1sZXNzIGRpc3BsYXkgdW5jb3JlLgo+PiBUaGUgc3VzcGVuZC9yZXN1bWUg
ZnVuY3Rpb25zIGhhdmUgYWxzbyBiZWVuIHJlbmFtZWQgdG8gY2xlYXJseSBpbmRpY2F0ZQo+PiB0
aGF0IHRoZXkgb25seSBvcGVyYXRlIG9uIGZvcmNld2FrZSBzdGF0dXMuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgIHwg
IDE1ICstLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIHwgMTQ3ICsr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF91bmNvcmUuaCB8ICAgOCArLQo+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMTAxIGluc2VydGlvbnMo
KyksIDY5IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4gaW5kZXgg
ZDExMzI5NmNiZTM0Li45NWIzNmZlMTdmOTkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+PiBAQCAtOTk2LDcgKzk5Niw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfaW5pdF9tbWlv
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPj4gICAKPj4gICAgICAgICAgaW50
ZWxfZGV2aWNlX2luZm9faW5pdF9tbWlvKGRldl9wcml2KTsKPj4gICAKPj4gLSAgICAgICBpbnRl
bF91bmNvcmVfcHJ1bmVfbW1pb19kb21haW5zKCZkZXZfcHJpdi0+dW5jb3JlKTsKPj4gKyAgICAg
ICBpbnRlbF91bmNvcmVfcHJ1bmVfZm9yY2V3YWtlX2RvbWFpbnMoJmRldl9wcml2LT51bmNvcmUp
Owo+IAo+IFRoZSBfcHJ1bmVfIHdhcyB0aGUgZXhjZXB0aW9uYWwgY2FzZS4uLgo+IAo+PiAgICAg
ICAgICBpbnRlbF91Y19pbml0X21taW8oZGV2X3ByaXYpOwo+PiAgIAo+PiBAQCAtMjE1Miw3ICsy
MTUyLDcgQEAgc3RhdGljIGludCBpOTE1X2RybV9zdXNwZW5kX2xhdGUoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgYm9vbCBoaWJlcm5hdGlvbikKPj4gICAKPj4gICAgICAgICAgaTkxNV9nZW1fc3Vz
cGVuZF9sYXRlKGRldl9wcml2KTsKPj4gICAKPj4gLSAgICAgICBpbnRlbF91bmNvcmVfc3VzcGVu
ZCgmZGV2X3ByaXYtPnVuY29yZSk7Cj4+ICsgICAgICAgaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9z
dXNwZW5kKCZkZXZfcHJpdi0+dW5jb3JlKTsKPiAKPiBCdXQgYXJlIHlvdSBzdXJlIHlvdSB3YW50
IHRvIGRlbGVnYXRlIGFsbCB0aGUgZncgY29udHJvbCB0byBpOTE1X2Rydi5jLAo+IGFuZCBub3Qg
a2VlcCB0aGlzIGFzIGEgY2FsbCBpbnRvIGludGVsX3VuY29yZV9zdXNwZW5kKCkgPyBJdCBpcyBt
ZWFudCB0bwo+IGJlIHRlbGxpbmcgdGhlIHVuY29yZSBmdW5jdGlvbmFsaXR5IHRoYXQgaXQgaXMg
dGltZSB0byBzdXNwZW5kLCBhbmQgaXQKPiBoYXMgdG8gd29yayBvdXQgd2hhdCB0byBzYXZlLgo+
IAo+IEkgYW0gbm90IHNvbGQgb24gdGhpcyB5ZXQuIChPbmUgZGF5IHRoaXMgd2lsbCBqdXN0IGJl
IGEgYnVuY2ggb2YgYXN5bmMKPiB0YXNrcyBwbHVnZ2VkIGludG8gc2lnbmFscyB3aXRoIG9yZGVy
aW5nIGRldGVybWluZWQgYnkgdGhlaXIKPiBzZWxmLWRlY2xhcmVkIGRlcGVuZGVuY3kgdHJlZS4g
T25lIGRheS4pCj4gCj4gU28gc2VsbCBtZSBvbiB3aHkgd2Ugd2FudCBhbiB1bmNvcmVfZm9yY2V3
YWtlIG9iamVjdCwgYXMgY3VycmVudGx5IHlvdQo+IGFyZSBwcm9wb3NpbmcgYSBpbnRlbF91bmNv
cmVfc3VzcGVuZF9mb3JjZXdha2UoKS4KPiAtQ2hyaXMKPiAKCk15IGFpbSB3YXMgdG8gbWFrZSBp
dCBjbGVhciB0aGF0IHRoaXMgY2FsbCB3aWxsIG5vdCBiZSByZXF1aXJlZCBmb3IgCmRpc3BsYXlf
dW5jb3JlIHNpbmNlIHRoZXJlIGlzIG5vdGhpbmcgdG8gZG8gb24gc3VzcGVuZC9yZXN1bWUgaWYg
dGhlcmUgCmlzIG5vIGZvcmNld2FrZSAoYW5kIHlvdSdyZSByaWdodCwgaW50ZWxfdW5jb3JlX3N1
c3BlbmRfZm9yY2V3YWtlIGlzIGEgCmJldHRlciBuYW1pbmcpLiBVbHRpbWF0ZWx5IEknZCBsaWtl
IHRvIHRyYW5zaXRpb24gdGhlIEdUIHVuY29yZSBpbnNpZGUgCmludGVsX2d0IGFuZCBjYWxsIHRo
aXMgaW5zaWRlIGludGVsX2d0X3N1c3BlbmQoKS4gSG93ZXZlciwgSSBkb24ndCBtaW5kIAprZWVw
aW5nIHRoZSBjdXJyZW50IG5hbWluZyBhbmQgY2FsbGluZyBpdCBmb3IgZGlzcGxheSB1bmNvcmUg
YXMgd2VsbCB0byAKYmUgbW9yZSBnZW5lcmljLCB0aGVyZSBhcmUgY2hlY2tzIGV2ZXJ5d2hlcmUg
c28gdGhlIG92ZXJoZWFkIHNob3VsZCBtZSAKbWluaW1hbC4gV2hhdCdzIHlvdXIgcHJlZmVyZW5j
ZT8KCkRhbmllbGUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
