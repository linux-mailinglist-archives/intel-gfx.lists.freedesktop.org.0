Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F0D382BDF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 14:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B1C16E93F;
	Mon, 17 May 2021 12:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D84F6E93F;
 Mon, 17 May 2021 12:15:46 +0000 (UTC)
IronPort-SDR: bomVbLXnIfuIDRK+VIpw6mWDlDoK5mqILvT2NypzweKs60Wz27rPZ+fU/Q1CsZW264BjOBEk+B
 /nn6D+FzXhpg==
X-IronPort-AV: E=McAfee;i="6200,9189,9986"; a="285979920"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="285979920"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 05:15:45 -0700
IronPort-SDR: 7Ht9fR84yA4Rq8Y8w3Q2gXOI2V6j3777dycbyy09H98pxYDgPaGBbYFG66HJ8MS8XTvkcZkwbY
 lnxhCVCbYQ5Q==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="472382788"
Received: from sudhirk1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.50.192])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 05:15:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <CAAd53p7kFD-PrdeONF8-c=JG5rtHXpz1sxTbPkwg8YY4ZcCYWg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210426152420.359402-1-kai.heng.feng@canonical.com>
 <YJrKnHppE5FnaZ72@intel.com>
 <CAAd53p7kFD-PrdeONF8-c=JG5rtHXpz1sxTbPkwg8YY4ZcCYWg@mail.gmail.com>
Date: Mon, 17 May 2021 15:15:36 +0300
Message-ID: <87fsylh7yv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Invoke another _DSM to enable
 MUX on HP Workstation laptops
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Takashi Iwai <tiwai@suse.de>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNCBNYXkgMjAyMSwgS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmlj
YWwuY29tPiB3cm90ZToKPiBPbiBXZWQsIE1heSAxMiwgMjAyMSBhdCAyOjE5IEFNIFZpbGxlIFN5
cmrDpGzDpAo+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+Cj4+IE9u
IE1vbiwgQXByIDI2LCAyMDIxIGF0IDExOjI0OjEwUE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3Jv
dGU6Cj4+ID4gT24gSFAgRnVyeSBHNyBXb3Jrc3RhdGlvbnMsIGdyYXBoaWNzIG91dHB1dCBpcyBy
ZS1yb3V0ZWQgZnJvbSBJbnRlbCBHRlgKPj4gPiB0byBkaXNjcmV0ZSBHRlggYWZ0ZXIgUzMuIFRo
aXMgaXMgbm90IGRlc2lyYWJsZSwgYmVjYXVzZSB1c2Vyc3BhY2Ugd2lsbAo+PiA+IHRyZWF0IGNv
bm5lY3RlZCBkaXNwbGF5IGFzIGEgbmV3IG9uZSwgbG9zaW5nIGRpc3BsYXkgc2V0dGluZ3MuCj4+
ID4KPj4gPiBUaGUgZXhwZWN0ZWQgYmVoYXZpb3IgaXMgdG8gbGV0IGRpc2NyZXRlIEdGWCBkcml2
ZXMgYWxsIGV4dGVybmFsCj4+ID4gZGlzcGxheXMuCj4+ID4KPj4gPiBUaGUgcGxhdGZvcm0gaW4g
cXVlc3Rpb24gdXNlcyBBQ1BJIG1ldGhvZCBcX1NCLlBDSTAuSEdNRSB0byBlbmFibGUgTVVYLgo+
PiA+IFRoZSBtZXRob2QgaXMgaW5zaWRlIHRoZSBhbm90aGVyIF9EU00sIHNvIGFkZCB0aGUgX0RT
TSBhbmQgY2FsbCBpdAo+PiA+IGFjY29yZGluZ2x5Lgo+PiA+Cj4+ID4gSSBhbHNvIHRlc3RlZCBz
b21lIE1VWC1sZXNzIGFuZCBpR1BVIG9ubHkgbGFwdG9wcyB3aXRoIHRoYXQgX0RTTSwgbm8KPj4g
PiByZWdyZXNzaW9uIHdhcyBmb3VuZC4KPj4gPgo+PiA+IHYzOgo+PiA+ICAtIFJlbW92ZSBCWFQg
ZnJvbSBuYW1lcy4KPj4gPiAgLSBDaGFuZ2UgdGhlIHBhcmFtZXRlciB0eXBlLgo+PiA+ICAtIEZv
bGQgdGhlIGZ1bmN0aW9uIGludG8gaW50ZWxfbW9kZXNldF9pbml0X2h3KCkuCj4+ID4KPj4gPiB2
MjoKPj4gPiAgLSBGb3J3YXJkIGRlY2xhcmUgc3RydWN0IHBjaV9kZXYuCj4+ID4KPj4gPiBDbG9z
ZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMzEx
Mwo+PiA+IFJlZmVyZW5jZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2ludGVsLWdmeC8xNDYw
MDQwNzMyLTMxNDE3LTQtZ2l0LXNlbmQtZW1haWwtYW5pbWVzaC5tYW5uYUBpbnRlbC5jb20vCj4+
ID4gU2lnbmVkLW9mZi1ieTogS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwu
Y29tPgo+PiA+IC0tLQo+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fj
cGkuYyAgICB8IDE4ICsrKysrKysrKysrKysrKysrKwo+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2FjcGkuaCAgICB8ICAzICsrKwo+PiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICAyICsrCj4+ID4gIDMgZmlsZXMgY2hhbmdl
ZCwgMjMgaW5zZXJ0aW9ucygrKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWNwaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hY3BpLmMKPj4gPiBpbmRleCA4MzNkMGMxYmU0ZjEuLmQwMDhkMzk3NjI2MSAxMDA2
NDQKPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FjcGkuYwo+
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWNwaS5jCj4+ID4g
QEAgLTEzLDEyICsxMywxNyBAQAo+PiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5o
Igo+PiA+Cj4+ID4gICNkZWZpbmUgSU5URUxfRFNNX1JFVklTSU9OX0lEIDEgLyogRm9yIENhbHBl
bGxhIGFueXdheS4uLiAqLwo+PiA+ICsjZGVmaW5lIElOVEVMX0RTTV9GTl9QTEFURk9STV9NVVhf
RU5BQkxFIDAgLyogTm8gYXJncyAqLwo+Pgo+PiBUaGlzIGJsb2NrIG9mIGRlZmluZXMgaXMgZm9y
IHRoZSBvdGhlciBEU00uIFdlIGRvbid0IHdhbnQgdG8KPj4gbWl4IHRoZXNlIHVwLiBXZSBhbHNv
IHdhbnQgdG8gbmFtZSBpdCBhY2NvcmRpbmcgdG8gdGhlIHNwZWMsCj4+IHNvIHNvbWV0aGluZyBs
aWtlIEdFVF9CSU9TX0RBVEFfRlVOQ1NfU1VQUE9SVEVELiBTaW1pbGFybHkKPj4gZm9yIHRoZSBp
bnRlbF9kc21fZW5hYmxlX211eCgpIHdyYXBwZXIgZnVuY3Rpb24uICsgaXQgbmVlZHMKPj4gYSBj
b21tZW50IHRvIGRvY3VtZW50IHRoYXQgc29tZSBCSU9TZXMgYWJ1c2UgaXQgdG8gZG8gTVVYCj4+
IGluaXRpYWxpemF0aW9uIGFuZCB3aGF0bm90Lgo+Cj4gV2lsbCBkby4KPgo+Cj4+Cj4+IFdlIHNo
b3VsZCBwZXJoYXBzIHJlbmFtZSBhbGwgdGhlIG9sZCBEU00gc3R1ZmYgdG8KPj4gc29tZXRoaW5n
IGEgYml0IGxlc3MgZ2VuZXJpYyBhcyB3ZWxsLi4uCj4KPiBJIGNhbiByZW5hbWUgdGhlbSBhcyB3
ZWxsLiBCdXQgd2hhdCdzIHRoZSBuYW1pbmcgc2NoZW1lIHlvdSBwcmVmZXI/Cj4KPj4KPj4gPiAg
I2RlZmluZSBJTlRFTF9EU01fRk5fUExBVEZPUk1fTVVYX0lORk8gMSAvKiBObyBhcmdzICovCj4+
ID4KPj4gPiAgc3RhdGljIGNvbnN0IGd1aWRfdCBpbnRlbF9kc21fZ3VpZCA9Cj4+ID4gICAgICAg
R1VJRF9JTklUKDB4N2VkODczZDMsIDB4YzJkMCwgMHg0ZTRmLAo+PiA+ICAgICAgICAgICAgICAg
ICAweGE4LCAweDU0LCAweDBmLCAweDEzLCAweDE3LCAweGIwLCAweDFjLCAweDJjKTsKPj4gPgo+
PiA+ICtzdGF0aWMgY29uc3QgZ3VpZF90IGludGVsX2RzbV9ndWlkMiA9Cj4+ID4gKyAgICAgR1VJ
RF9JTklUKDB4M2U1YjQxYzYsIDB4ZWIxZCwgMHg0MjYwLAo+PiA+ICsgICAgICAgICAgICAgICAw
eDlkLCAweDE1LCAweGM3LCAweDFmLCAweGJhLCAweGRhLCAweGU0LCAweDE0KTsKPj4gPiArCj4+
ID4gIHN0YXRpYyBjaGFyICppbnRlbF9kc21fcG9ydF9uYW1lKHU4IGlkKQo+PiA+ICB7Cj4+ID4g
ICAgICAgc3dpdGNoIChpZCkgewo+PiA+IEBAIC0xNzYsNiArMTgxLDE5IEBAIHZvaWQgaW50ZWxf
dW5yZWdpc3Rlcl9kc21faGFuZGxlcih2b2lkKQo+PiA+ICB7Cj4+ID4gIH0KPj4gPgo+PiA+ICt2
b2lkIGludGVsX2RzbV9lbmFibGVfbXV4KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+
PiA+ICt7Cj4+ID4gKyAgICAgc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBpOTE1LT5kcm0ucGRldjsK
Pj4gPiArICAgICBhY3BpX2hhbmRsZSBkaGFuZGxlOwo+PiA+ICsKPj4gPiArICAgICBkaGFuZGxl
ID0gQUNQSV9IQU5ETEUoJnBkZXYtPmRldik7Cj4+ID4gKyAgICAgaWYgKCFkaGFuZGxlKQo+PiA+
ICsgICAgICAgICAgICAgcmV0dXJuOwo+PiA+ICsKPj4gPiArICAgICBhY3BpX2V2YWx1YXRlX2Rz
bShkaGFuZGxlLCAmaW50ZWxfZHNtX2d1aWQyLCBJTlRFTF9EU01fUkVWSVNJT05fSUQsCj4+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgSU5URUxfRFNNX0ZOX1BMQVRGT1JNX01VWF9FTkFCTEUs
IE5VTEwpOwo+PiA+ICt9Cj4+ID4gKwo+PiA+ICAvKgo+PiA+ICAgKiBBQ1BJIFNwZWNpZmljYXRp
b24sIFJldmlzaW9uIDUuMCwgQXBwZW5kaXggQi4zLjIgX0RPRCAoRW51bWVyYXRlIEFsbCBEZXZp
Y2VzCj4+ID4gICAqIEF0dGFjaGVkIHRvIHRoZSBEaXNwbGF5IEFkYXB0ZXIpLgo+PiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FjcGkuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWNwaS5oCj4+ID4gaW5kZXggZThiMDY4NjYx
ZDIyLi5kZWYwMTNjZjYzMDggMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hY3BpLmgKPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2FjcGkuaAo+PiA+IEBAIC0xMSwxMSArMTEsMTQgQEAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGU7Cj4+ID4gICNpZmRlZiBDT05GSUdfQUNQSQo+PiA+ICB2b2lkIGludGVsX3JlZ2lz
dGVyX2RzbV9oYW5kbGVyKHZvaWQpOwo+PiA+ICB2b2lkIGludGVsX3VucmVnaXN0ZXJfZHNtX2hh
bmRsZXIodm9pZCk7Cj4+ID4gK3ZvaWQgaW50ZWxfZHNtX2VuYWJsZV9tdXgoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpOwo+PiA+ICB2b2lkIGludGVsX2FjcGlfZGV2aWNlX2lkX3VwZGF0
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4+ID4gICNlbHNlCj4+ID4gIHN0YXRp
YyBpbmxpbmUgdm9pZCBpbnRlbF9yZWdpc3Rlcl9kc21faGFuZGxlcih2b2lkKSB7IHJldHVybjsg
fQo+PiA+ICBzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfdW5yZWdpc3Rlcl9kc21faGFuZGxlcih2
b2lkKSB7IHJldHVybjsgfQo+PiA+ICBzdGF0aWMgaW5saW5lCj4+ID4gK3ZvaWQgaW50ZWxfZHNt
X2VuYWJsZV9tdXgoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpIHsgcmV0dXJuOyB9Cj4+
ID4gK3N0YXRpYyBpbmxpbmUKPj4gPiAgdm9pZCBpbnRlbF9hY3BpX2RldmljZV9pZF91cGRhdGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpIHsgcmV0dXJuOyB9Cj4+ID4gICNlbmRpZiAv
KiBDT05GSUdfQUNQSSAqLwo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPj4gPiBpbmRleCBhMTBlMjYzODBlZjMuLmQ3OWRhZTM3MGIyMCAx
MDA2NDQKPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4+ID4gQEAgLTExNDcyLDYgKzExNDcyLDggQEAgdm9pZCBpbnRlbF9tb2Rlc2V0X2luaXRf
aHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ID4gIHsKPj4gPiAgICAgICBzdHJ1
Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRlOwo+PiA+Cj4+ID4gKyAgICAgaW50ZWxf
ZHNtX2VuYWJsZV9tdXgoaTkxNSk7Cj4+ID4gKwo+Pgo+PiBUaGlzIHNob3VsZCBwcm9iYWJseSBi
ZSBzb21ld2hlcmUgYXJvdW5kIHdoZXJlIHdlIGRvIGFsbCB0aGUgb3RoZXIKPj4gc2VtaSBBQ1BJ
IHJlbGF0ZWQgaW5pdCAoT3BSZWdpb24vZXRjLikuCj4KPiBIbW0sIGJ1dCBKYW5pIHByZWZlcnMg
dG8gcHV0IGl0IGluc2lkZSBpbnRlbF9tb2Rlc2V0XyooKSBoZWxwZXJzLiBCdXQKPiBJIGRvbid0
IHNlZSBhbnkgb3ByZWdpb24gcmVsYXRlZCBmdW5jdGlvbnMgYXJlIGJlaW5nIGNhbGxlZCBieQo+
IGludGVsX21vZGVzZXRfKigpIGhlbHBlcnMuIEFueSBzdWdnZXN0aW9uPwoKSSB0aGluayBJIG1h
aW5seSB3YW50ZWQgaXQgaW4gaW50ZWxfZGlzcGxheS5jIGluc3RlYWQgb2YgYXQgdGhlIGRyaXZl
cgp0b3AgbGV2ZWwuCgpCUiwKSmFuaS4KCgo+Cj4gS2FpLUhlbmcKPgo+Pgo+PiA+ICAgICAgIGlm
ICghSEFTX0RJU1BMQVkoaTkxNSkpCj4+ID4gICAgICAgICAgICAgICByZXR1cm47Cj4+ID4KPj4g
PiAtLQo+PiA+IDIuMzAuMgo+Pgo+PiAtLQo+PiBWaWxsZSBTeXJqw6Rsw6QKPj4gSW50ZWwKCi0t
IApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
