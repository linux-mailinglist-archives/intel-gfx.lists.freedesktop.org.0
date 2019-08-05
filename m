Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2718142E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 10:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA63A89D4B;
	Mon,  5 Aug 2019 08:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D733389D4B
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 08:28:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 01:28:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,349,1559545200"; d="scan'208";a="192365950"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 05 Aug 2019 01:28:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Lisovskiy\, Stanislav" <stanislav.lisovskiy@intel.com>,
 "patchwork\@emeril.freedesktop.org" <patchwork@emeril.freedesktop.org>
In-Reply-To: <25f45ca4aa1fcbbaeee2d5ea78de5b69fe9bdee8.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190712081938.14185-1-stanislav.lisovskiy@intel.com>
 <20190712085932.29165.67395@emeril.freedesktop.org>
 <87ftmgkpps.fsf@intel.com>
 <25f45ca4aa1fcbbaeee2d5ea78de5b69fe9bdee8.camel@intel.com>
Date: Mon, 05 Aug 2019 11:32:21 +0300
Message-ID: <874l2wko6i.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_wrong_escape_clock_divisor_init_for_GLK_=28?=
 =?utf-8?q?rev3=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwNSBBdWcgMjAxOSwgIkxpc292c2tpeSwgU3RhbmlzbGF2IiA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+IHdyb3RlOgo+IE9uIE1vbiwgMjAxOS0wOC0wNSBhdCAxMDo1OSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIEZyaSwgMTIgSnVsIDIwMTksIFBhdGNod29y
ayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+Cj4+IHdyb3RlOgo+PiA+ID09IFNl
cmllcyBEZXRhaWxzID09Cj4+ID4gCj4+ID4gU2VyaWVzOiBkcm0vaTkxNTogRml4IHdyb25nIGVz
Y2FwZSBjbG9jayBkaXZpc29yIGluaXQgZm9yIEdMSwo+PiA+IChyZXYzKQo+PiA+IFVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzUwNS8KPj4gPiBTdGF0
ZSA6IHdhcm5pbmcKPj4gPiAKPj4gPiA9PSBTdW1tYXJ5ID09Cj4+ID4gCj4+ID4gJCBkaW0gY2hl
Y2twYXRjaCBvcmlnaW4vZHJtLXRpcAo+PiA+IGJjZDc4NzFhZjEzZCBkcm0vaTkxNTogRml4IHdy
b25nIGVzY2FwZSBjbG9jayBkaXZpc29yIGluaXQgZm9yIEdMSwo+PiA+IC06NDM6IFdBUk5JTkc6
Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkKPj4gPiBu
b21pbmFsIHBhdGNoIGF1dGhvciAnU3RhbmlzbGF2IExpc292c2tpeSA8Cj4+ID4gc3RhbmlzbGF2
Lmxpc292c2tpeUBpbnRlbC5jb20+Jwo+PiAKPj4gU3RhbiwgcGxlYXNlIHJlcGx5IHRvIHRoZSBw
YXRjaCB3aXRoIHlvdXIgc2lnbmVkLW9mZi1ieSB0byBsZXQgbWUKPj4gcHVzaAo+PiA+IHRoaXMu
Cj4KPiBOZWVkIHRvIGZpeCB0aGlzIGluIG15IGdpdCBjb21taXQgdGVtcGxhdGUuLgoKJ2dpdCBj
b21taXQgLXMnIHdpbGwgZG8gdGhlIHRyaWNrIQoKPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYg
TGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KClRoYW5rcywgcHVzaGVk
IHdpdGggYW5vdGhlciBmaXg6CgpGaXhlczogdGFnIHNob3VsZCBwb2ludCBhdCBhIGNvbW1pdCwg
Zm9yIGJ1Z3ppbGxhIHJlZmVyZW5jZXMgdXNlCkJ1Z3ppbGxhOi4KCkJSLApKYW5pLgoKCj4KPj4g
Cj4+IEJSLAo+PiBKYW5pLgo+PiAKPj4gCj4+ID4gCj4+ID4gdG90YWw6IDAgZXJyb3JzLCAxIHdh
cm5pbmdzLCAwIGNoZWNrcywgMTAgbGluZXMgY2hlY2tlZAo+PiA+IAo+PiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+ID4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+PiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+PiAKPj4g
CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
