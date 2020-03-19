Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 570CC18B0ED
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 11:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B39456E9D3;
	Thu, 19 Mar 2020 10:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F2A6E9D2;
 Thu, 19 Mar 2020 10:07:43 +0000 (UTC)
IronPort-SDR: fR4mfp1WzWJhKYsQnfNGMdjhUmK9ChehImEggPITrKnQvMwDeWLGNbx1ZPnhAXOkMW3TqfHmCX
 8ELFLlOZ090Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 03:07:41 -0700
IronPort-SDR: wKKKqb7hZJDAGD8+GR3UwIBGZ3QqYffK3ebRLGql4w68hYU3zmikOLSc/MbYQltTi0m36V5b0Z
 Uq/ycCM4F+UA==
X-IronPort-AV: E=Sophos;i="5.70,571,1574150400"; d="scan'208";a="418291211"
Received: from jnavarro-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.32.36])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 03:07:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
In-Reply-To: <20200318063517.3844-2-manasi.d.navare@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200318063517.3844-1-manasi.d.navare@intel.com>
 <20200318063517.3844-2-manasi.d.navare@intel.com>
Date: Thu, 19 Mar 2020 12:07:37 +0200
Message-ID: <87y2rwd5ee.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm: Create a
 drm_connector_helper_funcs hook for Adaptive Sync support
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
Cc: Harry Wentland <harry.wentland@amd.com>,
 Nicholas Kazlauskas <Nicholas.Kazlauskas@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxNyBNYXIgMjAyMCwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRzIGEgaG9vayBpbiBkcm1fY29ubmVjdG9yX2hl
bHBlcl9mdW5jcyB0byBnZXQgdGhlCj4gc3VwcG9ydCBvZiB0aGUgZHJpdmVyIGZvciBhZGFwdGl2
ZSBzeW5jIGZ1bmN0aW9uYWxpdHkuCj4KPiBUaGlzIGNhbiBiZSBjYWxsZWQgaW4gdGhlIGNvbm5l
Y3RvciBwcm9iZSBoZWxwZXIgZnVuY3Rpb24gYWZ0ZXIKPiB0aGUgY29ubmVjdG9yIGRldGVjdCgp
IGFuZCBnZXRfbW9kZXMoKSBob29rcyB0byBhbHNvCj4gcXVlcnkgdGhlIGFkYXB0aXZlIHN5bmMg
c3VwcG9ydCBvZiB0aGUgZHJpdmVyLgoKSSBjYW4gb2J2aW91c2x5IHNlZSB0aGF0IGZyb20gdGhl
IHBhdGNoLiBCdXQgdGhpcyBkb2VzIG5vdCBleHBsYWluIGF0CmFsbCAqd2h5KiB3ZSBuZWVkIGFu
b3RoZXIgaG9vayB0byBiZWdpbiB3aXRoLCBhbmQgd2h5IGl0IG5lZWVkcyB0byBiZQpjYWxsZWQg
ZnJvbSAtPmZpbGxfbW9kZXMgdGhhdCBpcyBzZXQgdG8KZHJtX2hlbHBlcl9wcm9iZV9zaW5nbGVf
Y29ubmVjdG9yX21vZGVzKCkuCgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXgu
aW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+IENjOiBIYXJyeSBXZW50bGFuZCA8aGFycnkud2VudGxhbmRAYW1kLmNvbT4KPiBD
YzogTmljaG9sYXMgS2F6bGF1c2thcyA8TmljaG9sYXMuS2F6bGF1c2thc0BhbWQuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fcHJvYmVfaGVscGVyLmMgICAgICAgfCAgNCArKysr
Cj4gIGluY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92dGFibGVzLmggfCAxNiArKysrKysr
KysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJvYmVfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX3Byb2JlX2hlbHBlci5jCj4gaW5kZXggNTc2YjRiN2RjZDg5Li40NDAzODE3YmZiMDIg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJvYmVfaGVscGVyLmMKPiBAQCAtNDgyLDYgKzQ4MiwxMCBA
QCBpbnQgZHJtX2hlbHBlcl9wcm9iZV9zaW5nbGVfY29ubmVjdG9yX21vZGVzKHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAo+ICAJY291bnQgPSAoKmNvbm5lY3Rvcl9mdW5jcy0+
Z2V0X21vZGVzKShjb25uZWN0b3IpOwo+ICAKPiArCS8qIEdldCB0aGUgQWRhcHRpdmUgU3luYyBT
dXBwb3J0IGlmIGhlbHBlciBleGlzdHMgKi8KPiArCWlmICgqY29ubmVjdG9yX2Z1bmNzLT5nZXRf
YWRhcHRpdmVfc3luY19zdXBwb3J0KQo+ICsJCSgqKmNvbm5lY3Rvcl9mdW5jcy0+Z2V0X2FkYXB0
aXZlX3N5bmNfc3VwcG9ydCkoY29ubmVjdG9yKTsKPiArCgpUaGlzIGlzIGluIHRoZSBtaWRkbGUg
b2YgYSBzZXF1ZW5jZSBmaWd1cmluZyBvdXQgdGhlIG1vZGVzLiBGaXJzdAotPmdldF9tb2Rlcywg
dGhlbiBmYWxsYmFjayB0byBvdGhlciBtZWNoYW5pc21zLiBDZXJ0YWlubHkgd2UgZG9uJ3Qgd2Fu
dAp0byBkbyBzb21ldGhpbmcgZWxzZSBpbiB0aGUgbWlkZGxlLgoKPiAgCS8qCj4gIAkgKiBGYWxs
YmFjayBmb3Igd2hlbiBEREMgcHJvYmUgZmFpbGVkIGluIGRybV9nZXRfZWRpZCgpIGFuZCB0aHVz
IHNraXBwZWQKPiAgCSAqIG92ZXJyaWRlL2Zpcm13YXJlIEVESUQuCj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92dGFibGVzLmggYi9pbmNsdWRlL2RybS9kcm1f
bW9kZXNldF9oZWxwZXJfdnRhYmxlcy5oCj4gaW5kZXggN2MyMGIxYzhiNmE3Li4wYjIwM2ZkZDI1
ZGYgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX21vZGVzZXRfaGVscGVyX3Z0YWJsZXMu
aAo+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hlbHBlcl92dGFibGVzLmgKPiBAQCAt
MTA3OSw2ICsxMDc5LDIyIEBAIHN0cnVjdCBkcm1fY29ubmVjdG9yX2hlbHBlcl9mdW5jcyB7Cj4g
IAkJCQkgICAgIHN0cnVjdCBkcm1fd3JpdGViYWNrX2pvYiAqam9iKTsKPiAgCXZvaWQgKCpjbGVh
bnVwX3dyaXRlYmFja19qb2IpKHN0cnVjdCBkcm1fd3JpdGViYWNrX2Nvbm5lY3RvciAqY29ubmVj
dG9yLAo+ICAJCQkJICAgICAgc3RydWN0IGRybV93cml0ZWJhY2tfam9iICpqb2IpOwo+ICsKPiAr
CS8qKgo+ICsJICogQGdldF9hZGFwdGl2ZV9zeW5jX3N1cHBvcnQ6Cj4gKwkgKgo+ICsJICogVGhp
cyBob29rIGlzIHVzZWQgYnkgdGhlIHByb2JlIGhlbHBlciB0byBnZXQgdGhlIGRyaXZlcidzIHN1
cHBvcnQKPiArCSAqIGZvciBhZGFwdGl2ZSBzeW5jIG9yIHZhcmlhYmxlIHJlZnJlc2ggcmF0ZS4K
PiArCSAqIFRoaXMgaXMgY2FsbGVkIGZyb20gZHJtX2hlbHBlcl9wcm9iZV9zaW5nbGVfY29ubmVj
dG9yX21vZGVzKCkKPiArCSAqIFRoaXMgaXMgY2FsbGVkIGFmdGVyIHRoZSBAZ2V0X21vZGVzIGhv
b2sgc28gdGhhdCB0aGUgY29ubmVjdG9yIG1vZGVzCj4gKwkgKiBhcmUgYWxyZWFkeSBvYnRhaW5l
ZCBhbmQgRURJRCBpcyBwYXJzZWQgdG8gb2J0YWluIHRoZSBtb25pdG9yCj4gKwkgKiByYW5nZSBk
ZXNjcmlwdG9yIGluZm9ybWF0aW9uLgo+ICsJICoKPiArCSAqIFRoaXMgaG9vayBpcyBvcHRpb25h
bCBhbmQgZGVmaW5lZCBvbmx5IGZvciB0aGUgZHJpdmVycyBhbmQgb24KPiArCSAqIGNvbm5lY3Rv
cnMgdGhhdCBhZHZlcnRpc2UgYWRhcHRpdmUgc3luYyBzdXBwb3J0Lgo+ICsJICoKPiArCSAqLwo+
ICsJdm9pZCAoKmdldF9hZGFwdGl2ZV9zeW5jX3N1cHBvcnQpKHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IpOwo+ICB9Owo+ICAKPiAgLyoqCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9w
ZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
