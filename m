Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2573B21CF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 16:21:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A726F3CB;
	Fri, 13 Sep 2019 14:21:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DED2A6F3CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 14:21:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 07:20:59 -0700
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="336903779"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 07:20:58 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 13 Sep 2019 16:20:49 +0200
Message-ID: <2485639.tneI2q1gkl@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <156806572224.30942.3268138152609453265@skylake-alporthouse-com>
References: <20190905090949.30424-1-janusz.krzysztofik@linux.intel.com>
 <156784559237.2967.11063669231433263842@skylake-alporthouse-com>
 <156806572224.30942.3268138152609453265@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't unwedge if reset is disabled
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uZGF5LCBTZXB0ZW1iZXIgOSwgMjAxOSAxMTo0ODo0MiBQTSBDRVNUIENocmlzIFdpbHNv
biB3cm90ZToKPiBRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0wOS0wNyAwOTozOTo1MikKPiA+
IFF1b3RpbmcgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoMjAxOS0wOS0wNiAyMzoyODowNSkKPiA+
ID4gCj4gPiA+IAo+ID4gPiBPbiA5LzUvMTkgMjowOSBBTSwgSmFudXN6IEtyenlzenRvZmlrIHdy
b3RlOgo+ID4gPiA+IFdoZW4gdHJ5aW5nIHRvIHJlc2V0IGEgZGV2aWNlIHdpdGggcmVzZXQgY2Fw
YWJpbGl0eSBkaXNhYmxlZCBvciBub3QKPiA+ID4gPiBzdXBwb3J0ZWQgd2hpbGUgcmluZ3MgYXJl
IGZ1bGwgb2YgcmVxdWVzdHMsIGl0IGhhcyBiZWVuIG9ic2VydmVkIHdoZW4KPiA+ID4gPiBydW5u
aW5nIGluIGV4ZWNsaXN0cyBzdWJtaXNzaW9uIG1vZGUgdGhhdCBjb21tYW5kIHN0cmVhbSBidWZm
ZXIgdGFpbAo+ID4gPiA+IHRlbmRzIHRvIGJlIGluY3JlbWVudGVkIGJ5IGFwcGFyZW50bHkgc3Rp
bGwgcnVubmluZyBHUFUgcmVnYXJkbGVzcyBvZgo+ID4gPiA+IGFsbCByZXF1ZXN0cyBiZWluZyBh
bHJlYWR5IGNhbmNlbGxlZCBhbmQgY29tbWFuZCBzdHJlYW0gYnVmZmVyIApwb2ludGVycwo+ID4g
PiA+IHJlc2V0LiAgQXMgYSByZXN1bHQsIGtlcm5lbCBwYW5pYyBvbiBOVUxMIHBvaW50ZXIgZGVy
ZWZlcmVuY2Ugb2NjdXJzCj4gPiA+ID4gd2hlbiBhIHRyYWNlX3BvcnRzKCkgaGVscGVyIGlzIGNh
bGxlZCB3aXRoIGNvbW1hbmQgc3RyZWFtIGJ1ZmZlciB0YWlsCj4gPiA+ID4gaW5jcmVtZW50ZWQg
YnV0IHJlcXVlc3QgcG9pbnRlcnMgYmVpbmcgTlVMTCBkdXJpbmcgZmluYWwKPiA+ID4gPiBfX2lu
dGVsX2d0X3NldF93ZWRnZWQoKSBvcGVyYXRpb24gY2FsbGVkIGZyb20gaW50ZWxfZ3RfcmVzZXQo
KS4KPiA+ID4gPiAKPiA+ID4gPiBTa2lwIGFjdHVhbCByZXNldCBwcm9jZWR1cmUgaWYgcmVzZXQg
aXMgZGlzYWJsZWQgb3Igbm90IHN1cHBvcnRlZC4KPiA+ID4gCj4gPiA+IFRoaXMgbGFzdCBzZW50
ZW5jZSBpcyBhIGJpdCBjb25mdXNpbmcuIFlvdSdyZSBub3Qgc2tpcHBpbmcgdGhlIHJlc2V0IAo+
ID4gPiBwcm9jZWR1cmUsIHlvdSdyZSBza2lwcGluZyB0aGUgYXR0ZW1wdCBvZiB1bndlZGdpbmcg
YW5kIHJlc2V0dGluZyBhZ2FpbiAKPiA+ID4gYWZ0ZXIgYSByZXNldCAmIHdlZGdlIGFscmVhZHkg
aGFwcGVuZWQuCj4gPiAKPiA+IExvc3Mgb2YgZW1haWwgb3ZlciB0aGUgbGFzdCB3ZWVrLCBzbyBq
dW1waW5nIGluIGF0IHRoZSBlbmQuIE15IGd1dAo+ID4gcmVzcG9uc2UgaXMgdGhhdCB0aGlzIGlz
IHN0aWxsIGp1c3QgcGFwZXJpbmcgb3ZlciB0aGUgYnVnLCBhcyB3aGF0IHlvdQo+ID4gc2F5IGFi
b3ZlIG1ha2VzIG5vIHNlbnNlLgo+IAo+IFNvIG15IGd1dCByZXNwb25zZSB3YXMgdG8gdGhlIHJ1
biBvbiBzZW50ZW5jZSwgd2hlbiBhbGwgeW91IG5lZWRlZCB0bwo+IHNheSB0aGF0IHdpdGhvdXQg
YSBzdWNjZXNzZnVsIHJlc2V0IHByaW9yIHRvIGNhbGxpbmcKPiByZXNldF9kZWZhdWx0X3N1Ym1p
c3Npb24sIHRoZSBlbmdpbmUgbWF5IHN0aWxsIGdlbmVyYXRlIENTIGV2ZW50cyBvdXQgb2YKPiB0
aGUgYmx1ZS4gQW5kIEkgdGhpbmsgdGhlIHBhdGNoIHNob3VsZCBiZSB3cml0dGVuIHRvIHJlcXVp
cmUgdGhlCj4gc3VjY2Vzc2Z1bCByZXNldC4KCllvdSBhcmUgcmlnaHQsIHN1Y2Nlc3NmdWwgcmVz
ZXQgc2VlbXMgdGhlIG9ubHkgc2FmZSBwcm90ZWN0aW9uLgoKQnV0IGFueXdheSwgd2hpbGUgZGln
Z2luZyBkZWVwZXIgd2FpdGluZyBmb3IgeW91ciBjbGFyaWZpY2F0aW9uIG9mIHRoYXQgZ3V0IApy
ZXNwb25lIDstKSAsIEkndmUgZGlzY292ZXJlZCB0aGF0IHN5bXB0b21zIGZyb20gd2hpY2ggdGhl
IGlzc3VlIGNhbiBiZSAKcHJlZGljdGVkIG1heSBiZSBzb21ldGltZXMgb2JzZXJ2ZWQgZHVyaW5n
IHJlc2V0X3ByZXBlcmUoKSBhcyBmYWlsaW5nIAppbnRlbF9lbmdpbmVfc3RvcF9jcygpLiAgQ2hl
Y2tpbmcgZm9yIHRoYXQgZmFpbHVyZSBhbG9uZSBtYXkgYmUgdG9vIHdlYWsgYXMgaXQgCmNhbiBw
cm9iYWJseSBoYXBwZW4gdG8gc3VjY2VlZCByZWdhcmRsZXNzIG9mIHRoZSB1bmNlcnRhaW4gaGFy
ZHdhcmUgc3RhdHVzLCAKYnV0IGFueXdheSwgd2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgbW9kaWZ5
aW5nIHJlc2V0X3ByZXBhcmUoKSBzbyBpdCBtYXkgZmFpbCAKd2l0aCBhbiBlcnJvciBwcm9wYWdh
dGVkIGZyb20gZnVuY3Rpb25zIGl0IGNhbGxzLCB0aGVuIGNhbGxpbmcgcmVzZXRfcHJlcGFyZSgp
IAphdCB0aGUgYmVnaW5uaW5nIG9mIGludGVsX2d0X3Jlc2V0KCkgYW5kIHNraXBpbmcgb3ZlciAK
X19pbnRlbF9ndF91bnNldF93ZWRnZWRlKCkgYW5kIGZ1cnRoZXIgc3RlcHMgKGRvX3Jlc2V0KCks
IC4uLiwgcmVzZXRfZmluaXNoKCkpIAppZiByZXNldF9wcmVwYXJlKCkgZmFpbHM/ICBXb3VsZG4n
dCB0aGF0IGJlIGEgdXNlZnVsIGFkZGl0aW9uYWwgbGF5ZXIgb2YgCnByb3RlY3Rpb24/CgpJZiB5
b3UgdGhpbmsgdGhlIGlkZWEgaXMgd29ydGggb2YgYmVpbmcgY29uc2lkZXJlZCwgcGxlYXNlIGhh
dmUgYSBsb29rIGF0IG15IApmaXJzdCBhdHRlbXB0IHNlbnQgdG8gdHJ5Ym90IGFscmVhZHkgYmVm
b3JlIHlvdXIgZXhwbGFuYXRpb24gYXJyaXZlZDoKaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3BhdGNoLzMyOTg0MC8/c2VyaWVzPTY2NDQ3JnJldj0xCihkb24ndCBjb21wbGFpbiBv
biBpdHMgY29tbWl0IG1lc3NhZ2UgbWFraW5nIG5vIHNlbnNlLCBwbGVhc2UgOy0pICkuCgpUaGFu
a3MsCkphbnVzegoKPiAtQ2hyaXMKPiAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
