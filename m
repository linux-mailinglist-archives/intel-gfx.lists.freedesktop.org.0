Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEC461E58
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 14:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672F089C8D;
	Mon,  8 Jul 2019 12:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B2989C8D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 12:24:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 05:24:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="170273401"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by orsmga006.jf.intel.com with ESMTP; 08 Jul 2019 05:24:40 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190708111944.20095-1-chris@chris-wilson.co.uk>
 <90ade255-1338-0c87-4df9-f445b66cefaf@linux.intel.com>
 <156258817632.9375.11792986185475548766@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <30a45908-0857-83fa-5f03-07dd481d8ec2@linux.intel.com>
Date: Mon, 8 Jul 2019 13:24:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <156258817632.9375.11792986185475548766@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/oa: Reconfigure contexts on
 the fly
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

Ck9uIDA4LzA3LzIwMTkgMTM6MTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTA4IDEzOjEwOjM0KQo+Pgo+PiBPbiAwOC8wNy8yMDE5IDEyOjE5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBdm9pZCBhIGdsb2JhbCBpZGxlIGJhcnJpZXIgYnkg
cmVjb25maWd1cmluZyBlYWNoIGNvbnRleHQgYnkgcmV3cml0aW5nCj4+PiB0aGVtIHdpdGggTUlf
U1RPUkVfRFdPUkQgZnJvbSB0aGUga2VybmVsIGNvbnRleHQuCj4+Pgo+Pj4gdjI6IFdlIG9ubHkg
bmVlZCB0byBkZXRlcm1pbmUgdGhlIGRlc2lyZWQgcmVnaXN0ZXIgdmFsdWVzIG9uY2UsIHRoZXkg
YXJlCj4+PiB0aGUgc2FtZSBmb3IgYWxsIGNvbnRleHRzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gQ2M6IExpb25lbCBM
YW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPj4+IENjOiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pj4gUmV2aWV3ZWQtYnk6IExpb25l
bCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4g
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyB8ICAgMiArCj4+
PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgIHwgICA3ICst
Cj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgIHwgMjQ4
ICsrKysrKysrKysrKysrKy0tLS0tCj4+PiAgICAzIGZpbGVzIGNoYW5nZWQsIDE5NSBpbnNlcnRp
b25zKCspLCA2MiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMKPj4+IGluZGV4IGUzNjdkY2UyYTY5Ni4uMWYwZDEwYmI4OGMx
IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
Ywo+Pj4gQEAgLTYyNCw3ICs2MjQsOSBAQCBpOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9rZXJuZWwo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCBwcmlvKQo+Pj4gICAgICAgIGN0eC0+
c2NoZWQucHJpb3JpdHkgPSBJOTE1X1VTRVJfUFJJT1JJVFkocHJpbyk7Cj4+PiAgICAgICAgY3R4
LT5yaW5nX3NpemUgPSBQQUdFX1NJWkU7Cj4+PiAgICAKPj4+ICsgICAgIC8qIElzb2xhdGUgdGhl
IGtlcm5lbCBjb250ZXh0IGZyb20gcHJ5aW5nIGV5ZXMgYW5kIHN0aWNreSBmaW5nZXJzICovCj4+
PiAgICAgICAgR0VNX0JVR19PTighaTkxNV9nZW1fY29udGV4dF9pc19rZXJuZWwoY3R4KSk7Cj4+
PiArICAgICBsaXN0X2RlbF9pbml0KCZjdHgtPmxpbmspOwo+Pgo+PiBXaHkgZXhhY3RseT8KPiAK
PiBPdGhlcndpc2Ugd2UgcmVjdXJzaXZlbHkgdHJ5IHRvIG1vZGlmeSB0aGUgY29udGV4dC4KCiBG
cm9tIGdlbjhfY29uZmlndXJlX2FsbF9jb250ZXh0cywgdHdpY2UsIG9yIHJlYWxseSByZWN1cnNp
dmVseT8gSWYgCmZvcm1lciBpc24ndCB0aGF0IHNvbHZhYmxlIGJ5IHNpbXBseSBza2lwcGluZyBr
ZXJuZWwgY29udGV4dHMgaW4gdGhlIApmaXJzdCBsb29wPwoKPj4gQW55IHJlcGVyY3Vzc2lvbnMg
Zm9yIGk5MTVfc3lzZnMvaTkxNV9sM193cml0ZT8gZGVidWdmcyBJIGdhdGhlciB5b3UKPj4gd29u
J3QgY2FyZSBhYm91dD8KPiAKPiBObywgYmVjYXVzZSB3aGF0IG1hdHRlcnMgZm9yIHRob3NlIGlz
IHVzZXIgY29udGV4dHMuCgpUaGVyZSBpc24ndCBzb21lIHRpbWUgY29zdCBhc3NvY2lhdGVkIHdp
dGggbDNfcmVtYXAgY2FsbHMgd2hlbiBzd2l0Y2hpbmcgCmNvbnRleHRzPwoKPiAgIAo+PiBTaG91
bGQgYWRkaW5nIHRvIGk5MTUtPmNvbnRleHRzLmxpc3QgYmUgZG9uZSBmcm9tIGdlbV9jb250ZXh0
X3JlZ2lzdGVyPwo+PiBXaGF0IHJlbWFpbnMgbm90IGEga2VybmVsIGNvbnRleHQsIGJ1dCBvbiBh
IGxpc3Q/Cj4gCj4gQW5kIEkgYWxzbyBwbGFuIHRvIHB1bGwgaXQgdW5kZXIgaXRzIG93biBtdXRl
eC4KPiAgIAo+PiBXb24ndCBwcmVlbXB0IGNvbnRleHQgYmUgbWlzc2VkIGluIHJlLWNvbmZpZ3Vy
YXRpb24/Cj4gCj4gV2hhdCBwcmVlbXB0LWNvbnRleHQ/IDotcCBBbmQgSSB3b3VsZCBza2lwIGtl
cm5lbF9jb250ZXh0IGlmIEkgY291bGQsIGJ1dAo+IGZvciB3aGF0ZXZlciByZWFzb24gb2EgZXZl
bnRzIGFyZSBiZWluZyBzZW50IHRvIHVzZXJzcGFjZSBldmVuIHdoaWxlIHRoZQo+IEdQVSBpcyBp
ZGxlIGFuZCBpZ3QgZXhwZWN0cyB0aGUgcmVndWxhciB0aWNrLgoKTXkgdHJlZSBzdGlsbCBoYXMg
aXQ/IElzIGl0IG91dCBvZiBkYXRlPyBTb2x1dGlvbiB3aXRoIGtlZXBpbmcgaXQgb24gdGhlIAps
aXN0IGFuZCBza2lwcGluZyBzb3VuZHMgbW9yZSBmdXR1cmUgcHJvb2YgaWYgZG9hYmxlLgoKUmVn
YXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
