Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BD010B508
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 19:02:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E980089829;
	Wed, 27 Nov 2019 18:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A8BE89829
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 18:02:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 10:02:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="383575411"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 27 Nov 2019 10:02:12 -0800
Date: Wed, 27 Nov 2019 10:02:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191127180212.GM6337@mdroper-desk1.amr.corp.intel.com>
References: <20191106014504.167656-1-jose.souza@intel.com>
 <20191106014504.167656-5-jose.souza@intel.com>
 <20191112212155.GN21445@mdroper-desk1.amr.corp.intel.com>
 <3eb0c3b944fe92f1bdc76808f2176ece5af8538f.camel@intel.com>
 <2fb0dddb1389172dd75be95f2758d04440cb149a.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fb0dddb1389172dd75be95f2758d04440cb149a.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/vbt: Parse power conservation
 features block
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

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgMDQ6NDc6MzlQTSAtMDgwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTExLTEyIGF0IDIzOjU2ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90
ZToKPiA+IE9uIFR1ZSwgMjAxOS0xMS0xMiBhdCAxMzoyMSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiA+ID4gT24gVHVlLCBOb3YgMDUsIDIwMTkgYXQgMDU6NDU6MDRQTSAtMDgwMCwgSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YQo+ID4gPiB3cm90ZToKPiA+ID4gPiBTaW5jZSBWQlQgMjI4IGlzIGZy
b20gdGhpcyBibG9jayB0aGF0IFBTUiBhbmQgb3RoZXIgcG93ZXIgc2F2aW5nCj4gPiA+ID4gZmVh
dHVyZXMgY29uZmlndXJhdGlvbiBzaG91bGQgYmUgcmVhZCBmcm9tLgo+ID4gPiA+IAo+ID4gPiA+
IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Cj4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jICAgICB8IDE5ICsrKysrKysrKysrLQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCAyOQo+ID4gPiA+ICsrKysrKysrKysrKysr
KysrKysKPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYwo+ID4gPiA+IGluZGV4IGEwM2Y1NmI3YjRlZi4uYmY3OWU5ODU4YmQ4
IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMKPiA+ID4gPiBAQCAtNTYxLDcgKzU2MSwyMyBAQCBwYXJzZV9kcml2ZXJfZmVhdHVyZXMo
c3RydWN0Cj4gPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZQo+ID4gPiA+ICpkZXZfcHJpdiwKPiA+ID4g
PiAgCSAqLwo+ID4gPiA+ICAJaWYgKCFkcml2ZXItPmRycnNfZW5hYmxlZCkKPiA+ID4gPiAgCQlk
ZXZfcHJpdi0+dmJ0LmRycnNfdHlwZSA9IERSUlNfTk9UX1NVUFBPUlRFRDsKPiA+ID4gPiAtCWRl
dl9wcml2LT52YnQucHNyLmVuYWJsZSA9IGRyaXZlci0+cHNyX2VuYWJsZWQ7Cj4gPiA+ID4gKwlp
ZiAoYmRiLT52ZXJzaW9uIDwgMjI4KQo+ID4gPiA+ICsJCWRldl9wcml2LT52YnQucHNyLmVuYWJs
ZSA9IGRyaXZlci0+cHNyX2VuYWJsZWQ7Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4gPiA+ID4gK3N0
YXRpYyB2b2lkCj4gPiA+ID4gK3BhcnNlX3Bvd2VyX2NvbnNlcnZhdGlvbl9mZWF0dXJlcyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZQo+ID4gPiA+ICpkZXZfcHJpdiwKPiA+ID4gPiArCQkJCSAgY29u
c3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYikKPiA+ID4gPiArewo+ID4gPiA+ICsJY29uc3Qgc3Ry
dWN0IGJkYl9sZnBfcG93ZXIgKnBvd2VyOwo+ID4gPiA+ICsJdTggcGFuZWxfdHlwZSA9IGRldl9w
cml2LT52YnQucGFuZWxfdHlwZTsKPiA+ID4gPiArCj4gPiA+ID4gKwlwb3dlciA9IGZpbmRfc2Vj
dGlvbihiZGIsIEJEQl9MVkRTX1BPV0VSKTsKPiA+ID4gPiArCWlmICghcG93ZXIpCj4gPiA+ID4g
KwkJcmV0dXJuOwo+ID4gPiA+ICsKPiA+ID4gPiArCWlmIChiZGItPnZlcnNpb24gPj0gMjI4KQo+
ID4gPiA+ICsJCWRldl9wcml2LT52YnQucHNyLmVuYWJsZSA9IHBvd2VyLT5wc3IgJiAoMSA8PAo+
ID4gPiA+IHBhbmVsX3R5cGUpOwo+ID4gPiAKPiA+ID4gU2hvdWxkIHdlIGFsc28gYmUgc2V0dGlu
ZyBkZXZfcHJpdi0+dmJ0LmRycnNfdHlwZSA9Cj4gPiA+IERSUlNfTk9UX1NVUFBPUlRFRAo+ID4g
PiBpZiBibG9jayA0NCB0ZWxscyB1cyBpdCBpc24ndCB2YWxpZCBvbiB0aGlzIHBhbmVsPwo+ID4g
PiAKPiA+IAo+ID4gWWVwLCBpdCBzaG91bGQuCj4gPiBUaGFua3MgZm9yIGNhdGNoaW5nIHRoaXMu
Cj4gCj4gTm90aGluZyBmcm9tIGJsb2NrIDQwIGlzIG9ic29sZXRlLCBpdCBoYXMgdGhlIGluZm9y
bWF0aW9uIGFib3V0IHRoZQo+IERSUlMgdHlwZSBvZiBhbGwgdGhlIDE2IHBvc3NpYmxlIHBhbmVs
cyBzbyBpcyBiZXR0ZXIga2VlcCByZWx5aW5nIG9uIGl0Cj4gYXMgYmxvY2sgNDQgb25seSBoYXZl
IG9ubHkgdGhlIGluZm9ybWF0aW9uIGlmIERSUlMgaXMgc3VwcG9ydGVkIG9yIG5vdC4KPiAKPiBJ
IGFsc28gY2hlY2tlZCB0aGUgb3RoZXIgZmVhdHVyZXMgYnV0IHdlIGRvbid0IGltcGxlbWVudCB0
aG9zZS4KCkkgdGhpbmsgdGhlIERSUlNfTk9UX1NVUFBPUlRFRCBpcyBjdXJyZW50bHkgYmVpbmcg
c2V0IGJhc2VkIG9uIHRoZQpjb250ZW50cyBvZiBibG9jayAxMiAoaW4gcGFyc2VfZHJpdmVyX2Zl
YXR1cmVzKS4gIEJsb2NrIDEyIGRvZXMgbGlzdCB0aGUKYml0IHdlJ3JlIGxvb2tpbmcgYXQgYXMg
b2Jzb2xldGUgaW4gdmVyc2lvbiAyMjggKG1vdmVkIHRvIGJsb2NrIDQ0KS4KCgpNYXR0Cgo+IAo+
IAo+ID4gCj4gPiA+IE1hdHQKPiA+ID4gCj4gPiA+ID4gIH0KPiA+ID4gPiAgCj4gPiA+ID4gIHN0
YXRpYyB2b2lkCj4gPiA+ID4gQEAgLTE4NzgsNiArMTg5NCw3IEBAIHZvaWQgaW50ZWxfYmlvc19p
bml0KHN0cnVjdAo+ID4gPiA+IGRybV9pOTE1X3ByaXZhdGUKPiA+ID4gPiAqZGV2X3ByaXYpCj4g
PiA+ID4gIAlwYXJzZV9sZnBfYmFja2xpZ2h0KGRldl9wcml2LCBiZGIpOwo+ID4gPiA+ICAJcGFy
c2Vfc2R2b19wYW5lbF9kYXRhKGRldl9wcml2LCBiZGIpOwo+ID4gPiA+ICAJcGFyc2VfZHJpdmVy
X2ZlYXR1cmVzKGRldl9wcml2LCBiZGIpOwo+ID4gPiA+ICsJcGFyc2VfcG93ZXJfY29uc2VydmF0
aW9uX2ZlYXR1cmVzKGRldl9wcml2LCBiZGIpOwo+ID4gPiA+ICAJcGFyc2VfZWRwKGRldl9wcml2
LCBiZGIpOwo+ID4gPiA+ICAJcGFyc2VfcHNyKGRldl9wcml2LCBiZGIpOwo+ID4gPiA+ICAJcGFy
c2VfbWlwaV9jb25maWcoZGV2X3ByaXYsIGJkYik7Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAo+ID4gPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4gPiA+ID4gaW5kZXggNjlh
N2NiMWZhMTIxLi4zMWY0N2NlNTY1ODcgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4gPiA+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4gPiA+ID4gQEAgLTc5Miw2ICs3
OTIsMzUgQEAgc3RydWN0IGJkYl9sZnBfYmFja2xpZ2h0X2RhdGEgewo+ID4gPiA+ICAJc3RydWN0
IGxmcF9iYWNrbGlnaHRfY29udHJvbF9tZXRob2QgYmFja2xpZ2h0X2NvbnRyb2xbMTZdOwo+ID4g
PiA+ICB9IF9fcGFja2VkOwo+ID4gPiA+ICAKPiA+ID4gPiArLyoKPiA+ID4gPiArICogQmxvY2sg
NDQgLSBMRlAgUG93ZXIgQ29uc2VydmF0aW9uIEZlYXR1cmVzIEJsb2NrCj4gPiA+ID4gKyAqLwo+
ID4gPiA+ICsKPiA+ID4gPiArc3RydWN0IGFsc19kYXRhX2VudHJ5IHsKPiA+ID4gPiArCXUxNiBi
YWNrbGlnaHRfYWRqdXN0Owo+ID4gPiA+ICsJdTE2IGx1eDsKPiA+ID4gPiArfSBfX3BhY2tlZDsK
PiA+ID4gPiArCj4gPiA+ID4gK3N0cnVjdCBhZ3Jlc3NpdmVuZXNzX3Byb2ZpbGVfZW50cnkgewo+
ID4gPiA+ICsJdTggZHBzdF9hZ3Jlc3NpdmVuZXNzIDogNDsKPiA+ID4gPiArCXU4IGxhY2VfYWdy
ZXNzaXZlbmVzcyA6IDQ7Cj4gPiA+ID4gK30gX19wYWNrZWQ7Cj4gPiA+ID4gKwo+ID4gPiA+ICtz
dHJ1Y3QgYmRiX2xmcF9wb3dlciB7Cj4gPiA+ID4gKwl1OCBsZnBfZmVhdHVyZV9iaXRzOwo+ID4g
PiA+ICsJc3RydWN0IGFsc19kYXRhX2VudHJ5IGFsc1s1XTsKPiA+ID4gPiArCXU4IGxhY2VfYWdn
cmVzc2l2ZW5lc3NfcHJvZmlsZTsKPiA+ID4gPiArCXUxNiBkcHN0Owo+ID4gPiA+ICsJdTE2IHBz
cjsKPiA+ID4gPiArCXUxNiBkcnJzOwo+ID4gPiA+ICsJdTE2IGxhY2Vfc3VwcG9ydDsKPiA+ID4g
PiArCXUxNiBhZHQ7Cj4gPiA+ID4gKwl1MTYgZG1ycnM7Cj4gPiA+ID4gKwl1MTYgYWRiOwo+ID4g
PiA+ICsJdTE2IGxhY2VfZW5hYmxlZF9zdGF0dXM7Cj4gPiA+ID4gKwlzdHJ1Y3QgYWdyZXNzaXZl
bmVzc19wcm9maWxlX2VudHJ5IGFnZ3Jlc3NpdmVuZXNbMTZdOwo+ID4gPiA+ICt9IF9fcGFja2Vk
Owo+ID4gPiA+ICsKPiA+ID4gPiAgLyoKPiA+ID4gPiAgICogQmxvY2sgNTIgLSBNSVBJIENvbmZp
Z3VyYXRpb24gQmxvY2sKPiA+ID4gPiAgICovCj4gPiA+ID4gLS0gCj4gPiA+ID4gMi4yNC4wCj4g
PiA+ID4gCj4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gPiA+ID4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNz
IFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29y
cG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
