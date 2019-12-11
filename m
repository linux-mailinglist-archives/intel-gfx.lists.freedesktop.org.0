Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E458611A4AE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 07:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD606E9C6;
	Wed, 11 Dec 2019 06:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB6936E9C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 06:46:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 22:46:53 -0800
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="207567959"
Received: from amondald-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.35.51])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 22:46:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <157598608411.9435.15464881874218047518@jlahtine-desk.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1575302334.git.jani.nikula@intel.com>
 <46e0b2530f37cb0226006231e273a37aecf98461.1575302334.git.jani.nikula@intel.com>
 <157598608411.9435.15464881874218047518@jlahtine-desk.ger.corp.intel.com>
Date: Wed, 11 Dec 2019 08:46:47 +0200
Message-ID: <877e33l5pk.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915: add display engine uncore
 helpers
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxMCBEZWMgMjAxOSwgSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGlu
dXguaW50ZWwuY29tPiB3cm90ZToKPiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDE5LTEyLTAyIDE4
OjAwOjUyKQo+PiBBZGQgY29udmVuaWVuY2UgaGVscGVycyBmb3IgdGhlIG1vc3QgY29tbW9uIHVu
Y29yZSBvcGVyYXRpb25zIHdpdGgKPj4gc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKiBhcyBjb250
ZXh0IHJhdGhlciB0aGFuIHN0cnVjdCBpbnRlbF91bmNvcmUgKi4KPj4gCj4+IFRoZSBnb2FsIGlz
IHRvIHJlcGxhY2UgYWxsIGluc3RhbmNlcyBvZiBJOTE1X1JFQUQoKSwKPj4gSTkxNV9QT1NUSU5H
X1JFQUQoKSwgSTkxNV9XUklURSgpLCBJOTE1X1JFQURfRlcoKSwgYW5kIEk5MTVfV1JJVEVfRlco
KQo+PiBpbiBkaXNwbGF5LyB3aXRoIHRoZXNlLCB0byBmaW5hbGx5IGJlIGFibGUgdG8gZ2V0IHJp
ZCBvZiB0aGUgaW1wbGljaXQKPj4gZGV2X3ByaXYgbG9jYWwgcGFyYW1ldGVyIHVzZS4KPj4gCj4+
IFRoZSBpZGVhIGlzIHRoYXQgYW55IG5vbi11MzIgcmVhZHMgb3Igd3JpdGVzIGFyZSBzcGVjaWFs
IGVub3VnaCB0aGF0Cj4+IHRoZXkgY2FuIHVzZSB0aGUgaW50ZWxfdW5jb3JlXyogZnVuY3Rpb25z
IGRpcmVjdGx5Lgo+PiAKPj4gdjI6Cj4+IC0gcmVuYW1lIHRoZSBmaWxlIGludGVsX2RlLmgKPj4g
LSBtb3ZlIGludGVsX2RlX3dhaXRfZm9yXyogdGhlcmUgdG9vCj4+IC0gYWxzbyBhZGQgZGUgZncg
aGVscGVycwo+PiAKPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KPj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KPj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
Pgo+PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiBDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmggICAgICAgfCA3MiArKysrKysrKysr
KysrKysrKysrCj4+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
ICAgfCAgMSArCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAg
ICAgfCAxNCAtLS0tCj4+ICAzIGZpbGVzIGNoYW5nZWQsIDczIGluc2VydGlvbnMoKyksIDE0IGRl
bGV0aW9ucygtKQo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGUuaAo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGUuaAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjAwZGEx
MGJmMzVmNQo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGUuaAo+PiBAQCAtMCwwICsxLDcyIEBACj4+ICsvKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogTUlUICovCj4+ICsvKgo+PiArICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwg
Q29ycG9yYXRpb24KPj4gKyAqLwo+PiArCj4+ICsjaWZuZGVmIF9fSU5URUxfREVfSF9fCj4+ICsj
ZGVmaW5lIF9fSU5URUxfREVfSF9fCj4+ICsKPj4gKyNpbmNsdWRlICJpOTE1X2Rydi5oIgo+PiAr
I2luY2x1ZGUgImk5MTVfcmVnLmgiCj4+ICsjaW5jbHVkZSAiaW50ZWxfdW5jb3JlLmgiCj4+ICsK
Pj4gK3N0YXRpYyBpbmxpbmUgdTMyCj4+ICtpbnRlbF9kZV9yZWFkKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBpOTE1X3JlZ190IHJlZykKPgo+IElzIHRoZSBwbGFuIHRvIGhhdmUgc3Ry
dWN0IGludGVsX2RlIGluc2lkZSBpOTE1IGFuZCB0aGVuIGhhdmUgdGhhdCBhcwo+IHRoZSBwcmlt
ZSBwYXJhbWV0ZXIgZ29pbmcgZm9yd2FyZD8KCk5vLiBUaGUgcGxhbiBpcyB0byBrZWVwIGk5MTUg
YXMgdGhlIHByaW1lIHBhcmFtZXRlciBmb3IgZGlzcGxheS4KCkJSLApKYW5pLgoKCi0tIApKYW5p
IE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
