Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2476CDA94
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 05:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A33889F03;
	Mon,  7 Oct 2019 03:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1CE89F03
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 03:12:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Oct 2019 20:12:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,265,1566889200"; d="scan'208";a="192168417"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga008.fm.intel.com with ESMTP; 06 Oct 2019 20:12:30 -0700
Date: Sun, 6 Oct 2019 20:14:21 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191007031421.GA20745@intel.com>
References: <20190922170807.12436-1-manasi.d.navare@intel.com>
 <20190922170807.12436-4-manasi.d.navare@intel.com>
 <20190930152816.GE1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930152816.GE1208@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 4/6] drm/i915/display/icl: Enable
 master-slaves in trans port sync
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMzAsIDIwMTkgYXQgMDY6Mjg6MTZQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFN1biwgU2VwIDIyLCAyMDE5IGF0IDEwOjA4OjA1QU0gLTA3MDAsIE1hbmFz
aSBOYXZhcmUgd3JvdGU6Cj4gPiBBcyBwZXIgdGhlIGRpc3BsYXkgZW5hYmxlIHNlcXVlbmNlLCB3
ZSBuZWVkIHRvIGZvbGxvdyB0aGUgZW5hYmxlIHNlcXVlbmNlCj4gPiBmb3Igc2xhdmVzIGZpcnN0
IHdpdGggRFBfVFBfQ1RMIHNldCB0byBJZGxlIGFuZCBjb25maWd1cmUgdGhlIHRyYW5zY29kZXIK
PiA+IHBvcnQgc3luYyByZWdpc3RlciB0byBzZWxlY3QgdGhlIGNvcmVyc3BvbmRpbmcgbWFzdGVy
LCB0aGVuIGZvbGxvdyB0aGUKPiA+IGVuYWJsZSBzZXF1ZW5jZSBmb3IgbWFzdGVyIGxlYXZpbmcg
RFBfVFBfQ1RMIHRvIGlkbGUuCj4gPiBBdCB0aGlzIHBvaW50IHRoZSB0cmFuc2NvZGVyIHBvcnQg
c3luYyBtb2RlIGlzIGNvbmZpZ3VyZWQgYW5kIGVuYWJsZWQKPiA+IGFuZCB0aGUgVmJsYW5rcyBv
ZiBib3RoIHBvcnRzIGFyZSBzeW5jaHJvbml6ZWQgc28gdGhlbiBzZXQgRFBfVFBfQ1RMCj4gPiBm
b3IgdGhlIHNsYXZlIGFuZCBtYXN0ZXIgdG8gTm9ybWFsIGFuZCBkbyBwb3N0IGNydGMgZW5hYmxl
IHVwZGF0ZXMuCj4gPiAKPiA+IHY2Ogo+ID4gKiBNb2Rlc2V0IGltcGxpZXMgYWN0aXZlX2NoYW5n
ZWQsIHJlbW92ZSBvbmUgY29uZGl0aW9uIChNYWFydGVuKQo+ID4gdjU6Cj4gPiAqIEZpeCBjaGVj
a3BhdGNoIHdhcm5pbmcgKE1hbmFzaSkKPiA+IHY0Ogo+ID4gKiBSZXVzZSBza2xfY29tbWl0X21v
ZGVzZXRfZW5hYmxlcygpIGhvb2sgKE1hYXJ0ZW4pCj4gPiAqIE9idGFpbiBzbGF2ZSBjcnRjIGFu
ZCBzdGF0ZXMgZnJvbSBtYXN0ZXIgKE1hYXJ0ZW4pCj4gPiB2MzoKPiA+ICogUmViYXNlIG9uIGRy
bS10aXAgKE1hbmFzaSkKPiA+IHYyOgo+ID4gKiBDcmVhdGUgYSBpY2xfdXBkYXRlX2NydGNzIGhv
b2sgKE1hYXJ0ZW4sIERhbnZldCkKPiA+ICogVGhpcyBzZXF1ZW5jZSBvbmx5IGZvciBDUlRDcyBp
biB0cmFucyBwb3J0IHN5bmMgbW9kZSAoTWFhcnRlbikKPiA+IAo+ID4gQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxt
YW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8ICAgMyArLQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTQxICsrKysrKysr
KysrKysrKysrKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaCB8ICAgMiArCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNDIgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCj4gPiBpbmRleCAzZTYzOTQxMzk5NjQuLjYyZTlmNTYwMmI2YiAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+IEBAIC0zMzQ3LDcgKzMzNDcs
OCBAQCBzdGF0aWMgdm9pZCBoc3dfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCj4gPiAgCQkJCQkgICAgICB0cnVlKTsKPiA+ICAJaW50ZWxfZHBfc2lua19z
ZXRfZmVjX3JlYWR5KGludGVsX2RwLCBjcnRjX3N0YXRlKTsKPiA+ICAJaW50ZWxfZHBfc3RhcnRf
bGlua190cmFpbihpbnRlbF9kcCk7Cj4gPiAtCWlmIChwb3J0ICE9IFBPUlRfQSB8fCBJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDkpCj4gPiArCWlmICgocG9ydCAhPSBQT1JUX0EgfHwgSU5URUxfR0VO
KGRldl9wcml2KSA+PSA5KSAmJgo+ID4gKwkgICAgIWlzX3RyYW5zX3BvcnRfc3luY19tb2RlKGRl
dl9wcml2LCBjcnRjX3N0YXRlKSkKPiA+ICAJCWludGVsX2RwX3N0b3BfbGlua190cmFpbihpbnRl
bF9kcCk7Cj4gPiAgCj4gPiAgCWludGVsX2RkaV9lbmFibGVfZmVjKGVuY29kZXIsIGNydGNfc3Rh
dGUpOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
PiA+IGluZGV4IDcxMTk4N2ViNGU5ZS4uMTA0MjVhNzg5YjVlIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBAQCAtMTM5MjgsNiAr
MTM5MjgsMzAgQEAgc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX2NydGMoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMsCj4gPiAgCWludGVsX2ZpbmlzaF9jcnRjX2NvbW1pdChzdGF0ZSwgY3J0Yyk7Cj4g
PiAgfQo+ID4gIAo+ID4gK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfZ2V0X3NsYXZl
X2NydGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+IAo+ICdkZXZfcHJpdicg
Y2FuIGJlIGRlcml2ZWQgZnJvbSB0aGUgY3J0YyBzdGF0ZS4KCk9rIHllcyB3aWxsIGp1c3QgcGFz
cyB0aGUgY3J0Y19zdGF0ZQoKPiAKPiA+ICsJCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqbmV3X2NydGNfc3RhdGUpCj4gCj4gY29uc3QKPiAKPiA+ICt7Cj4gCj4gY3B1X3RyYW5z
Y29kZXIgPSBmZnMoc2xhdmVzKSAtIDE7CgpDb29sLCB0aGFua3MgZm9yIHBvaW50aW5nIG91dCB0
aGlzIGZmcyBmdW5jdGlvbgoKCj4gcmV0dXJuIGdldF9jcnRjKChlbnVtIHBpcGUpY3B1X3RyYW5z
Y29kZXIpOwo+IAo+IG9yIHNvbWV0aGluZy4KPiAKPiBNYXliZSB0b3NzIGluIGEgIFdBUk5fT04o
IWlzX3Bvd2VyX29mXzIoc2xhdmVzKSkuCgpZZXMgYW5kIHRoYXQgc2hkIHRha2UgY2FyZSBvZiBm
ZnMoc2xhdmVzKSA9PSAwIGFzIHdlbGwKCk1hbmFzaQoKPiAKPiAKPiAKPiA+ICsJaWYgKG5ld19j
cnRjX3N0YXRlLT5zeW5jX21vZGVfc2xhdmVzX21hc2sgJgo+ID4gKwkgICAgQklUKFRSQU5TQ09E
RVJfQSkpCj4gPiArCQlyZXR1cm4gaW50ZWxfZ2V0X2NydGNfZm9yX3BpcGUoZGV2X3ByaXYsCj4g
PiArCQkJCQkgICAgICAgUElQRV9BKTsKPiA+ICsJZWxzZSBpZiAobmV3X2NydGNfc3RhdGUtPnN5
bmNfbW9kZV9zbGF2ZXNfbWFzayAmCj4gPiArCQkgQklUKFRSQU5TQ09ERVJfQikpCj4gPiArCQly
ZXR1cm4gaW50ZWxfZ2V0X2NydGNfZm9yX3BpcGUoZGV2X3ByaXYsCj4gPiArCQkJCQkgICAgICAg
UElQRV9CKTsKPiA+ICsJZWxzZSBpZiAobmV3X2NydGNfc3RhdGUtPnN5bmNfbW9kZV9zbGF2ZXNf
bWFzayAmCj4gPiArCQkgQklUKFRSQU5TQ09ERVJfQykpCj4gPiArCQlyZXR1cm4gaW50ZWxfZ2V0
X2NydGNfZm9yX3BpcGUoZGV2X3ByaXYsCj4gPiArCQkJCQkgICAgICAgUElQRV9DKTsKPiA+ICsJ
ZWxzZSBpZiAobmV3X2NydGNfc3RhdGUtPnN5bmNfbW9kZV9zbGF2ZXNfbWFzayAmCj4gPiArCQkg
QklUKFRSQU5TQ09ERVJfRCkpCj4gPiArCQlyZXR1cm4gaW50ZWxfZ2V0X2NydGNfZm9yX3BpcGUo
ZGV2X3ByaXYsCj4gPiArCQkJCQkgICAgICAgUElQRV9EKTsKPiA+ICsJLyogc2hvdWxkIG5ldmVy
IGhhcHBlbiAqLwo+ID4gKwlXQVJOX09OKDEpOwo+ID4gKwlyZXR1cm4gTlVMTDsKPiA+ICt9Cj4g
PiArCj4gPiAgc3RhdGljIHZvaWQgaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiAgCQkJCQkgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKPiA+ICAJCQkJCSAgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKm5ld19jcnRjX3N0YXRlLAo+ID4gQEAgLTE0MDA2LDYgKzE0MDMwLDEwNCBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQo+ID4gIAl9Cj4gPiAgfQo+ID4gIAo+ID4gK3N0YXRpYyB2b2lkIGludGVsX2Ny
dGNfZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiA+ICsJ
CQkJCSAgICAgIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gKwkJCQkJICAg
ICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQo+ID4gK3sKPiA+ICsJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5k
ZXYpOwo+ID4gKwo+ID4gKwl1cGRhdGVfc2NhbmxpbmVfb2Zmc2V0KG5ld19jcnRjX3N0YXRlKTsK
PiA+ICsJZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19lbmFibGUobmV3X2NydGNfc3RhdGUsIHN0YXRl
KTsKPiA+ICsJaW50ZWxfY3J0Y19lbmFibGVfcGlwZV9jcmMoY3J0Yyk7Cj4gPiArfQo+ID4gKwo+
ID4gK3N0YXRpYyB2b2lkIGludGVsX3NldF9kcF90cF9jdGxfbm9ybWFsKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjLAo+ID4gKwkJCQkgICAgICAgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCj4gPiArewo+ID4gKwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZTsK
PiA+ICsJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm47Cj4gPiArCXN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHA7Cj4gPiArCWludCBpOwo+ID4gKwo+ID4gKwlmb3JfZWFjaF9uZXdfY29ubmVjdG9y
X2luX3N0YXRlKCZzdGF0ZS0+YmFzZSwgY29ubiwgY29ubl9zdGF0ZSwgaSkgewo+ID4gKwkJaWYg
KGNvbm5fc3RhdGUtPmNydGMgPT0gJmNydGMtPmJhc2UpCj4gPiArCQkJYnJlYWs7Cj4gPiArCX0K
PiA+ICsJaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoJmludGVsX2F0dGFjaGVkX2VuY29kZXIo
Y29ubiktPmJhc2UpOwo+ID4gKwlpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4oaW50ZWxfZHApOwo+
ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9wb3N0X2NydGNfZW5hYmxlX3VwZGF0
ZXMoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gPiArCQkJCQkgICBzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKPiA+ICsJCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpv
bGRfY3J0Y19zdGF0ZSwKPiA+ICsJCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdf
Y3J0Y19zdGF0ZSkKPiA+ICt7Cj4gPiArCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3Bs
YW5lX3N0YXRlID0KPiA+ICsJCWludGVsX2F0b21pY19nZXRfbmV3X3BsYW5lX3N0YXRlKHN0YXRl
LAo+ID4gKwkJCQkJCSB0b19pbnRlbF9wbGFuZShjcnRjLT5iYXNlLnByaW1hcnkpKTsKPiA+ICsK
PiA+ICsJaWYgKG5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGlwZSAmJiAhbmV3X2NydGNfc3RhdGUt
PmVuYWJsZV9mYmMpCj4gPiArCQlpbnRlbF9mYmNfZGlzYWJsZShjcnRjKTsKPiA+ICsJZWxzZSBp
ZiAobmV3X3BsYW5lX3N0YXRlKQo+ID4gKwkJaW50ZWxfZmJjX2VuYWJsZShjcnRjLCBuZXdfY3J0
Y19zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKPiA+ICsKPiA+ICsJaW50ZWxfYmVnaW5fY3J0Y19j
b21taXQoc3RhdGUsIGNydGMpOwo+ID4gKwlza2xfdXBkYXRlX3BsYW5lc19vbl9jcnRjKHN0YXRl
LCBjcnRjKTsKPiA+ICsJaW50ZWxfZmluaXNoX2NydGNfY29tbWl0KHN0YXRlLCBjcnRjKTsKPiA+
ICt9Cj4gPiArCj4gPiArc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX3RyYW5zX3BvcnRfc3luY19j
cnRjcyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiA+ICsJCQkJCSAgICAgICBzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+ICsJCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gPiArCQkJCQkgICAgICAgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQo+ID4gK3sKPiA+ICsJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOwo+ID4gKwlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqc2xhdmVfY3J0YyA9IGludGVsX2dldF9zbGF2ZV9jcnRjKGRldl9wcml2LAo+
ID4gKwkJCQkJCQkgICAgIG5ld19jcnRjX3N0YXRlKTsKPiA+ICsJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm5ld19zbGF2ZV9jcnRjX3N0YXRlID0KPiA+ICsJCWludGVsX2F0b21pY19nZXRfbmV3
X2NydGNfc3RhdGUoc3RhdGUsIHNsYXZlX2NydGMpOwo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX3NsYXZlX2NydGNfc3RhdGUgPQo+ID4gKwkJaW50ZWxfYXRvbWljX2dldF9vbGRf
Y3J0Y19zdGF0ZShzdGF0ZSwgc2xhdmVfY3J0Yyk7Cj4gPiArCj4gPiArCVdBUk5fT04oIXNsYXZl
X2NydGMgfHwgIW5ld19zbGF2ZV9jcnRjX3N0YXRlIHx8Cj4gPiArCQkhb2xkX3NsYXZlX2NydGNf
c3RhdGUpOwo+ID4gKwo+ID4gKwlEUk1fREVCVUdfS01TKCJVcGRhdGluZyBUcmFuc2NvZGVyIFBv
cnQgU3luYyBNYXN0ZXIgQ1JUQyA9ICVkICVzIGFuZCBTbGF2ZSBDUlRDICVkICVzXG4iLAo+ID4g
KwkJICAgICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsIHNsYXZlX2NydGMt
PmJhc2UuYmFzZS5pZCwKPiA+ICsJCSAgICAgIHNsYXZlX2NydGMtPmJhc2UubmFtZSk7Cj4gPiAr
Cj4gPiArCS8qIEVuYWJsZSBzZXEgZm9yIHNsYXZlIHdpdGggd2l0aCBEUF9UUF9DVEwgbGVmdCBJ
ZGxlIHVudGlsIHRoZQo+ID4gKwkgKiBtYXN0ZXIgaXMgcmVhZHkKPiA+ICsJICovCj4gPiArCWlu
dGVsX2NydGNfZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhzbGF2ZV9jcnRjLAo+ID4gKwkJCQkJICBz
dGF0ZSwKPiA+ICsJCQkJCSAgbmV3X3NsYXZlX2NydGNfc3RhdGUpOwo+ID4gKwo+ID4gKwkvKiBF
bmFibGUgc2VxIGZvciBtYXN0ZXIgd2l0aCB3aXRoIERQX1RQX0NUTCBsZWZ0IElkbGUgKi8KPiA+
ICsJaW50ZWxfY3J0Y19lbmFibGVfdHJhbnNfcG9ydF9zeW5jKGNydGMsCj4gPiArCQkJCQkgIHN0
YXRlLAo+ID4gKwkJCQkJICBuZXdfY3J0Y19zdGF0ZSk7Cj4gPiArCj4gPiArCS8qIFNldCBTbGF2
ZSdzIERQX1RQX0NUTCB0byBOb3JtYWwgKi8KPiA+ICsJaW50ZWxfc2V0X2RwX3RwX2N0bF9ub3Jt
YWwoc2xhdmVfY3J0YywKPiA+ICsJCQkJICAgc3RhdGUpOwo+ID4gKwo+ID4gKwkvKiBTZXQgTWFz
dGVyJ3MgRFBfVFBfQ1RMIFRvIE5vcm1hbCAqLwo+ID4gKwl1c2xlZXBfcmFuZ2UoMjAwLCA0MDAp
Owo+ID4gKwlpbnRlbF9zZXRfZHBfdHBfY3RsX25vcm1hbChjcnRjLAo+ID4gKwkJCQkgICBzdGF0
ZSk7Cj4gPiArCj4gPiArCS8qIE5vdyBkbyB0aGUgcG9zdCBjcnRjIGVuYWJsZSBmb3IgYWxsIG1h
c3RlciBhbmQgc2xhdmVzICovCj4gPiArCWludGVsX3Bvc3RfY3J0Y19lbmFibGVfdXBkYXRlcyhz
bGF2ZV9jcnRjLAo+ID4gKwkJCQkgICAgICAgc3RhdGUsCj4gPiArCQkJCSAgICAgICBuZXdfc2xh
dmVfY3J0Y19zdGF0ZSwKPiA+ICsJCQkJICAgICAgIG9sZF9zbGF2ZV9jcnRjX3N0YXRlKTsKPiA+
ICsJaW50ZWxfcG9zdF9jcnRjX2VuYWJsZV91cGRhdGVzKGNydGMsCj4gPiArCQkJCSAgICAgICBz
dGF0ZSwKPiA+ICsJCQkJICAgICAgIG5ld19jcnRjX3N0YXRlLAo+ID4gKwkJCQkgICAgICAgb2xk
X2NydGNfc3RhdGUpOwo+ID4gK30KPiA+ICsKPiA+ICBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21v
ZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiA+ICB7Cj4g
PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJh
c2UuZGV2KTsKPiA+IEBAIC0xNDA0MCw2ICsxNDE2Miw3IEBAIHN0YXRpYyB2b2lkIHNrbF9jb21t
aXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ID4g
IAkJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9j
cnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgaSkgewo+ID4gIAkJCWJvb2wgdmJsX3dhaXQgPSBm
YWxzZTsKPiA+ICAJCQl1bnNpZ25lZCBpbnQgY21hc2sgPSBkcm1fY3J0Y19tYXNrKCZjcnRjLT5i
YXNlKTsKPiA+ICsJCQlib29sIG1vZGVzZXQgPSBuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRl
KTsKPiA+ICAKPiA+ICAJCQlwaXBlID0gY3J0Yy0+cGlwZTsKPiA+ICAKPiA+IEBAIC0xNDA2Miwx
MiArMTQxODUsMjQgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gPiAgCQkJICovCj4gPiAgCQkJaWYgKCFz
a2xfZGRiX2VudHJ5X2VxdWFsKCZuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYiwKPiA+ICAJCQkJ
CQkgJm9sZF9jcnRjX3N0YXRlLT53bS5za2wuZGRiKSAmJgo+ID4gLQkJCSAgICAhbmV3X2NydGNf
c3RhdGUtPmJhc2UuYWN0aXZlX2NoYW5nZWQgJiYKPiA+ICsJCQkgICAgIW1vZGVzZXQgJiYKPiA+
ICAJCQkgICAgc3RhdGUtPndtX3Jlc3VsdHMuZGlydHlfcGlwZXMgIT0gdXBkYXRlZCkKPiA+ICAJ
CQkJdmJsX3dhaXQgPSB0cnVlOwo+ID4gIAo+ID4gLQkJCWludGVsX3VwZGF0ZV9jcnRjKGNydGMs
IHN0YXRlLCBvbGRfY3J0Y19zdGF0ZSwKPiA+IC0JCQkJCSAgbmV3X2NydGNfc3RhdGUpOwo+ID4g
KwkJCWlmIChtb2Rlc2V0ICYmIGlzX3RyYW5zX3BvcnRfc3luY19tb2RlKGRldl9wcml2LAo+ID4g
KwkJCQkJCQkgICAgICAgbmV3X2NydGNfc3RhdGUpKSB7Cj4gPiArCQkJCWlmIChpc190cmFuc19w
b3J0X3N5bmNfbWFzdGVyKGRldl9wcml2LAo+ID4gKwkJCQkJCQkgICAgICBuZXdfY3J0Y19zdGF0
ZSkpCj4gPiArCQkJCQlpbnRlbF91cGRhdGVfdHJhbnNfcG9ydF9zeW5jX2NydGNzKGNydGMsCj4g
PiArCQkJCQkJCQkJICAgc3RhdGUsCj4gPiArCQkJCQkJCQkJICAgb2xkX2NydGNfc3RhdGUsCj4g
PiArCQkJCQkJCQkJICAgbmV3X2NydGNfc3RhdGUpOwo+ID4gKwkJCQllbHNlCj4gPiArCQkJCQlj
b250aW51ZTsKPiA+ICsJCQl9IGVsc2Ugewo+ID4gKwkJCQlpbnRlbF91cGRhdGVfY3J0YyhjcnRj
LCBzdGF0ZSwgb2xkX2NydGNfc3RhdGUsCj4gPiArCQkJCQkJICBuZXdfY3J0Y19zdGF0ZSk7Cj4g
PiArCQkJfQo+ID4gIAo+ID4gIAkJCWlmICh2Ymxfd2FpdCkKPiA+ICAJCQkJaW50ZWxfd2FpdF9m
b3JfdmJsYW5rKGRldl9wcml2LCBwaXBlKTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gPiBpbmRleCAxNjIzZmFjZTQzNmIuLmVmYTRkNjI1MTRj
ZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaAo+ID4gQEAgLTI3LDYgKzI3LDcgQEAKPiA+ICAKPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV91
dGlsLmg+Cj4gPiAgI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPgo+ID4gKyNpbmNsdWRlICJpbnRl
bF9kcF9saW5rX3RyYWluaW5nLmgiCj4gPiAgCj4gPiAgZW51bSBsaW5rX21fbl9zZXQ7Cj4gPiAg
c3RydWN0IGRwbGw7Cj4gPiBAQCAtNTQsNiArNTUsNyBAQCBzdHJ1Y3QgaW50ZWxfcGxhbmU7Cj4g
PiAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlOwo+ID4gIHN0cnVjdCBpbnRlbF9yZW1hcHBlZF9p
bmZvOwo+ID4gIHN0cnVjdCBpbnRlbF9yb3RhdGlvbl9pbmZvOwo+ID4gK3N0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlOwo+ID4gIAo+ID4gIGVudW0gaTkxNV9ncGlvIHsKPiA+ICAJR1BJT0EsCj4gPiAt
LSAKPiA+IDIuMTkuMQo+IAo+IC0tIAo+IFZpbGxlIFN5cmrDpGzDpAo+IEludGVsCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
