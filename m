Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E45D8103FF9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 16:49:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F256E61F;
	Wed, 20 Nov 2019 15:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 520986E61F;
 Wed, 20 Nov 2019 15:49:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 07:49:41 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200758944"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 07:49:40 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
Date: Wed, 20 Nov 2019 16:49:33 +0100
Message-ID: <15750995.rd5hDIP3c3@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <157426420137.13839.15400764934886889585@skylake-alporthouse-com>
References: <20191120153219.30989-1-janusz.krzysztofik@linux.intel.com>
 <157426420137.13839.15400764934886889585@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/prime_vgem: Skip
 basic-read/write subtests if no mappable GGTT
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
Cc: Joonas Lahtinen <joonas.lahtinen@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

KGZpeGluZyBtYWxmb3JtZWQgaW50ZWwtZ2Z4IGxpc3QgYWRkcmVzcyBpbiBDYzopCgpPbiBXZWRu
ZXNkYXksIE5vdmVtYmVyIDIwLCAyMDE5IDQ6MzY6NDEgUE0gQ0VUIENocmlzIFdpbHNvbiB3cm90
ZToKPiBRdW90aW5nIEphbnVzeiBLcnp5c3p0b2ZpayAoMjAxOS0xMS0yMCAxNTozMjoxOSkKPiA+
IEFzIHdlJ3ZlIGFncmVlZCB0aGF0IHVzaW5nIEk5MTVfR0VNX1BSRUFEL1BXUklURSBJT0NUTHMg
b24gZG1hLWJ1Zgo+ID4gb2JqZWN0cyBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSwgd2UgYXJlIG5v
dCBnb2luZyB0byBleHRlbmQgdGhlaXIKPiA+IGhhbmRsZXJzIGluIHRoZSBpOTE1IGRyaXZlciB3
aXRoIG5ldyBwcm9jZXNzaW5nIHBhdGhzIHJlcXVpcmVkIGZvciB0aGVtCj4gPiB0byB3b3JrIGNv
cnJlY3RseSB3aXRoIGRtYS1idWYgb2JqZWN0cyBvbiBmdXR1cmUgaGFyZHdhcmUgd2l0aCBubwo+
ID4gbWFwcGFibGUgYXBlcnR1cmUuICBXaGVuIHJ1bm5pbmcgb24gdGhhdCBraW5kIG9mIGhhcmR3
YXJlLCBqdXN0IHNraXAKPiA+IHN1YnRlc3RzIHdoaWNoIHVzZSB0aG9zZSBJT0NUTHMuCj4gPiAK
PiA+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlr
QGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+
Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiAgdGVzdHMvcHJpbWVfdmdlbS5jIHwgNiArKysrKysKPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS90ZXN0cy9wcmltZV92Z2Vt
LmMgYi90ZXN0cy9wcmltZV92Z2VtLmMKPiA+IGluZGV4IDJiMjFmZjQxLi5iN2JiZDk4OSAxMDA2
NDQKPiA+IC0tLSBhL3Rlc3RzL3ByaW1lX3ZnZW0uYwo+ID4gKysrIGIvdGVzdHMvcHJpbWVfdmdl
bS5jCj4gPiBAQCAtMzcsNiArMzcsOCBAQCBzdGF0aWMgdm9pZCB0ZXN0X3JlYWQoaW50IHZnZW0s
IGludCBpOTE1KQo+ID4gICAgICAgICB1aW50MzJfdCAqcHRyOwo+ID4gICAgICAgICBpbnQgZG1h
YnVmLCBpOwo+ID4gIAo+ID4gKyAgICAgICBnZW1fcmVxdWlyZV9tYXBwYWJsZV9nZ3R0KGk5MTUp
Owo+IAo+IElmIHRoYXQgd2VyZSB0aGUgY2FzZSwgdGhlIGNoYW5nZSBpbiBBQkkgd291bGQgbm90
IGJlIHRpZWQgdG8gdGhlIG1tYXAKPiBBQkkuCgpTSW5jZSBkbWEtYnVmIG9iamVjdHMgaGF2ZSBu
byBzdHVjdCBwYWdlLCB0aGUgcHdyaXRlIGlvY3RsIGhhbmRsZXIgdHJpZXMgdG8gCnVzZSBpOTE1
X2dlbV9ndHRfcHdyaXRlX2Zhc3QoKS4gIFRoZXJlLCBib3RoIGk5MTVfZ2VtX29iamVjdF9nZ3R0
X3BpbigpIGFuZCAKaW5zZXJ0X21hcHBhYmxlX25vZGUoKSBmYWlsLiAgSXNuJ3QgdGhhdCBiZWNh
dXNlIG9mIG1pc3NpbmcgbWFwcGFibGUgYXBlcnR1cmU/CgpUaGFua3MsCkphbnVzegoKPiAtQ2hy
aXMKPiAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
