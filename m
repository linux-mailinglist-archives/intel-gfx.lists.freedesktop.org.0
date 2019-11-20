Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DB5104029
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 16:57:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B706E7BC;
	Wed, 20 Nov 2019 15:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DFC6E7BC;
 Wed, 20 Nov 2019 15:57:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 07:57:16 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="196900203"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 07:57:15 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 20 Nov 2019 16:56:47 +0100
Message-ID: <4480690.vaZdZ2q3tn@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <157426521008.13839.11819538026836369743@skylake-alporthouse-com>
References: <20191120153219.30989-1-janusz.krzysztofik@linux.intel.com>
 <15750995.rd5hDIP3c3@jkrzyszt-desk.ger.corp.intel.com>
 <157426521008.13839.11819538026836369743@skylake-alporthouse-com>
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
Cc: igt-dev@lists.freedesktop.org, Joonas Lahtinen <joonas.lahtinen@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkbmVzZGF5LCBOb3ZlbWJlciAyMCwgMjAxOSA0OjUzOjMwIFBNIENFVCBDaHJpcyBXaWxz
b24gd3JvdGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTEtMjAgMTU6NDk6
MzMpCj4gPiAoZml4aW5nIG1hbGZvcm1lZCBpbnRlbC1nZnggbGlzdCBhZGRyZXNzIGluIENjOikK
PiA+IAo+ID4gT24gV2VkbmVzZGF5LCBOb3ZlbWJlciAyMCwgMjAxOSA0OjM2OjQxIFBNIENFVCBD
aHJpcyBXaWxzb24gd3JvdGU6Cj4gPiA+IFF1b3RpbmcgSmFudXN6IEtyenlzenRvZmlrICgyMDE5
LTExLTIwIDE1OjMyOjE5KQo+ID4gPiA+IEFzIHdlJ3ZlIGFncmVlZCB0aGF0IHVzaW5nIEk5MTVf
R0VNX1BSRUFEL1BXUklURSBJT0NUTHMgb24gZG1hLWJ1Zgo+ID4gPiA+IG9iamVjdHMgZG9lc24n
dCBtYWtlIG11Y2ggc2Vuc2UsIHdlIGFyZSBub3QgZ29pbmcgdG8gZXh0ZW5kIHRoZWlyCj4gPiA+
ID4gaGFuZGxlcnMgaW4gdGhlIGk5MTUgZHJpdmVyIHdpdGggbmV3IHByb2Nlc3NpbmcgcGF0aHMg
cmVxdWlyZWQgZm9yIHRoZW0KPiA+ID4gPiB0byB3b3JrIGNvcnJlY3RseSB3aXRoIGRtYS1idWYg
b2JqZWN0cyBvbiBmdXR1cmUgaGFyZHdhcmUgd2l0aCBubwo+ID4gPiA+IG1hcHBhYmxlIGFwZXJ0
dXJlLiAgV2hlbiBydW5uaW5nIG9uIHRoYXQga2luZCBvZiBoYXJkd2FyZSwganVzdCBza2lwCj4g
PiA+ID4gc3VidGVzdHMgd2hpY2ggdXNlIHRob3NlIElPQ1RMcy4KPiA+ID4gPiAKPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51
eC5pbnRlbC5jb20+Cj4gPiA+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4K
PiA+ID4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AaW50ZWwuY29tPgo+
ID4gPiA+IC0tLQo+ID4gPiA+ICB0ZXN0cy9wcmltZV92Z2VtLmMgfCA2ICsrKysrKwo+ID4gPiA+
ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAt
LWdpdCBhL3Rlc3RzL3ByaW1lX3ZnZW0uYyBiL3Rlc3RzL3ByaW1lX3ZnZW0uYwo+ID4gPiA+IGlu
ZGV4IDJiMjFmZjQxLi5iN2JiZDk4OSAxMDA2NDQKPiA+ID4gPiAtLS0gYS90ZXN0cy9wcmltZV92
Z2VtLmMKPiA+ID4gPiArKysgYi90ZXN0cy9wcmltZV92Z2VtLmMKPiA+ID4gPiBAQCAtMzcsNiAr
MzcsOCBAQCBzdGF0aWMgdm9pZCB0ZXN0X3JlYWQoaW50IHZnZW0sIGludCBpOTE1KQo+ID4gPiA+
ICAgICAgICAgdWludDMyX3QgKnB0cjsKPiA+ID4gPiAgICAgICAgIGludCBkbWFidWYsIGk7Cj4g
PiA+ID4gIAo+ID4gPiA+ICsgICAgICAgZ2VtX3JlcXVpcmVfbWFwcGFibGVfZ2d0dChpOTE1KTsK
PiA+ID4gCj4gPiA+IElmIHRoYXQgd2VyZSB0aGUgY2FzZSwgdGhlIGNoYW5nZSBpbiBBQkkgd291
bGQgbm90IGJlIHRpZWQgdG8gdGhlIG1tYXAKPiA+ID4gQUJJLgo+ID4gCj4gPiBTSW5jZSBkbWEt
YnVmIG9iamVjdHMgaGF2ZSBubyBzdHVjdCBwYWdlLCB0aGUgcHdyaXRlIGlvY3RsIGhhbmRsZXIg
dHJpZXMgdG8gCj4gPiB1c2UgaTkxNV9nZW1fZ3R0X3B3cml0ZV9mYXN0KCkuICBUaGVyZSwgYm90
aCBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4oKSBhbmQgCj4gPiBpbnNlcnRfbWFwcGFibGVfbm9k
ZSgpIGZhaWwuICBJc24ndCB0aGF0IGJlY2F1c2Ugb2YgbWlzc2luZyBtYXBwYWJsZSBhcGVydHVy
ZT8KPiAKPiBCdXQgdGhlIHF1ZXJ5IHlvdSBtYWtlIHdvdWxkIGJlICJ3aGF0IGlzIHRoZSBwd3Jp
dGUvcHJlYWQgQUJJIj8gQW5kIHdlCj4gd2FudCB0aGF0IHRvIHRpY2sgaW5kZXBlbmRlbnRseSBv
ZiBvdGhlciBpb2N0bHMuCgpPSywgbm93IGl0J3MgY2xlYXIgZm9yIG1lLCBJIGhvcGUuCgpUaGFu
a3MsCkphbnVzegoKPiAtQ2hyaXMKPiAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
