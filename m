Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4162FB8197
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 21:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E616FA1E;
	Thu, 19 Sep 2019 19:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE556FA1E
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 19:42:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 12:42:52 -0700
X-IronPort-AV: E=Sophos;i="5.64,526,1559545200"; d="scan'208";a="199508301"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 12:42:50 -0700
Date: Thu, 19 Sep 2019 22:41:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
Message-ID: <20190919194157.GI29039@ideak-desk.fi.intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-2-jose.souza@intel.com>
 <20190919172007.GG29039@ideak-desk.fi.intel.com>
 <CAKi4VAJ8V9qo9LtVSQaF9Ph6qZw9HVxHhntyP+LpCu18yzFsWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKi4VAJ8V9qo9LtVSQaF9Ph6qZw9HVxHhntyP+LpCu18yzFsWw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 01/13] drm/i915/tgl: Add missing ddi
 clock select during DP init sequence
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
Reply-To: imre.deak@intel.com
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTksIDIwMTkgYXQgMTE6NTY6MjdBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIFRodSwgU2VwIDE5LCAyMDE5IGF0IDEwOjIxIEFNIEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gV2VkLCBTZXAgMTgsIDIwMTkgYXQg
MDU6MDc6MTRQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToKPiA+ID4gRnJv
bTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+Cj4gPiA+Cj4g
PiA+IFN0ZXAgNC5iIHdhcyBjb21wbGV0ZSBtaXNzZWQgYmVjYXVzZSBpdCBpcyBvbmx5IHJlcXVp
cmVkIHRvIFRDIGFuZCBUQlQuCj4gPiA+Cj4gPiA+IEJzcGVjOiA0OTE5MAo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBDbGludG9uIEEgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KPiA+
ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyB8IDUgKysrKy0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCj4gPiA+IGluZGV4IDNlNjM5NDEzOTk2NC4uODE3OTJhMDRlMGFhIDEwMDY0NAo+
ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+ID4gQEAg
LTMyMjQsMTEgKzMyMjQsMTQgQEAgc3RhdGljIHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ID4gPiAgICAgICBpbnRlbF9lZHBfcGFuZWxf
b24oaW50ZWxfZHApOwo+ID4gPgo+ID4gPiAgICAgICAvKgo+ID4gPiAtICAgICAgKiAxLmIsIDMu
IGFuZCA0LiBpcyBkb25lIGJlZm9yZSB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoKSBieToKPiA+ID4g
KyAgICAgICogMS5iLCAzLiBhbmQgNC5hIGlzIGRvbmUgYmVmb3JlIHRnbF9kZGlfcHJlX2VuYWJs
ZV9kcCgpIGJ5Ogo+ID4gPiAgICAgICAgKiBoYXN3ZWxsX2NydGNfZW5hYmxlKCktPmludGVsX2Vu
Y29kZXJzX3ByZV9wbGxfZW5hYmxlKCkgYW5kCj4gPiA+ICAgICAgICAqIGhhc3dlbGxfY3J0Y19l
bmFibGUoKS0+aW50ZWxfZW5hYmxlX3NoYXJlZF9kcGxsKCkKPiA+ID4gICAgICAgICovCj4gPiA+
Cj4gPiA+ICsgICAgIC8qIDQuYiAqLwo+ID4gPiArICAgICBpbnRlbF9kZGlfY2xrX3NlbGVjdChl
bmNvZGVyLCBjcnRjX3N0YXRlKTsKPiA+Cj4gPiBUaGUgQlNwZWMgNC5iIHN0ZXAgY291bGQgYmUg
bW9yZSBzcGVjaWZpYyBhYm91dCB0aGUgcmVnaXN0ZXIgdG8gcHJvZ3JhbQo+ID4gKGF0IGxlYXN0
IEkgaGF2ZW4ndCBmb3VuZCB0aGUgbWVudGlvbiBhYm91dCBpdCkgYnV0IHNlZW1zIHRvIG1hdGNo
Ogo+ID4KPiA+IFJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4g
Pgo+ID4gV2hpbGUgcmV2aWV3aW5nIHRoaXMgSSBub3RpY2VkIHRoYXQgYm90aAo+ID4gaWNsX3Bs
bF90b19kZGlfY2xrX3NlbCgpICAgKG1pc3NpbmcgY2FzZXMgZm9yIE1HUExMNSw2KQo+ID4gYW5k
Cj4gPiBpbnRlbF9waHlfaXNfY29tYm8oKSAgIChub3QgY29ycmVjdCBmb3IgcG9ydC9waHkgQykK
PiA+IHdpbGwgYWxzbyBuZWVkIHRvIGdldCB1cGRhdGVkIGZvciBUR0wuCj4gCj4gcG9ydC9waHkg
QyBpcyBkaXNhYmxlZCBmb3IgVEdMLiBpbnRlbF9waHlfaXNfY29tYm8oKSBsb29rcyBjb3JyZWN0
IHRvIG1lLgo+IFNlZSBlYTY1OTFiNGRhZGIgKCJkcm0vaTkxNS90Z2w6IGRpc2FibGUgRERJQyIp
CgpPaywgbWlzc2VkIHRoYXQuIEhvdyBhYm91dCBhIFdBUk4gYXQgbGVhc3QgZm9yIHRoYXQgY2Fz
ZSBpbgppbnRlbF9waHlfaXNfY29tYm8oKT8gRm9yIHJlZmVyZW5jZSBhbmQgc28gdGhhdCByZS1l
bmFibGluZyBERElDIHdvbid0CnNpbGVudGx5IGZhaWwuCgo+IAo+IFJldmlld2VkLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiAKPiBMdWNhcyBEZSBNYXJj
aGkKPiAKPiA+Cj4gPiA+ICsKPiA+ID4gICAgICAgLyogNS4gKi8KPiA+ID4gICAgICAgaWYgKCFp
bnRlbF9waHlfaXNfdGMoZGV2X3ByaXYsIHBoeSkgfHwKPiA+ID4gICAgICAgICAgIGRpZ19wb3J0
LT50Y19tb2RlICE9IFRDX1BPUlRfVEJUX0FMVCkKPiA+ID4gLS0KPiA+ID4gMi4yMy4wCj4gPiA+
Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
PiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCj4gCj4gCj4gLS0gCj4gTHVjYXMgRGUgTWFyY2hpCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
