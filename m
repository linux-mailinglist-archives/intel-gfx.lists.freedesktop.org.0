Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 271F4164532
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 14:21:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B84F6E7D4;
	Wed, 19 Feb 2020 13:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1211C6E7D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 13:21:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 05:21:41 -0800
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="229108450"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 05:21:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200214135058.7580-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200214135058.7580-1-jani.nikula@intel.com>
Date: Wed, 19 Feb 2020 15:21:36 +0200
Message-ID: <87h7zmvhjz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915: split
 intel_modeset_driver_remove() to pre/post irq uninstall
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNCBGZWIgMjAyMCwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gU3BsaXQgaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKCkgdG8gdHdvLCB0aGUg
cGFydCB3aXRoIHdvcmtpbmcgaXJxcwo+IGJlZm9yZSBpcnEgdW5pbnN0YWxsLCBhbmQgdGhlIHBh
cnQgYWZ0ZXIgaXJxIHVuaW5zdGFsbC4gTW92ZQo+IGlycV91bmludGFsbCgpIGNsb3NlciB0byB0
aGUgbGF5ZXIgaXQgYmVsb25ncy4KPgo+IFRoZSBlcnJvciBwYXRoIGluIGk5MTVfZHJpdmVyX21v
ZGVzZXRfcHJvYmUoKSBsb29rcyBvYnZpb3VzbHkgd2VpcmQKPiBhZnRlciB0aGlzLCBidXQgcmVt
YWlucyBhcyBnb29kIG9yIGJyb2tlbiBhcyBpdCBldmVyIHdhcy4gTm8gZnVuY3Rpb25hbAo+IGNo
YW5nZXMuCj4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgoKUHVzaGVkIGJvdGgsIHRoYW5rcyBhZ2FpbiBmb3IgcmV2aWV3LgoKQlIsCkphbmku
CgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCAxMiArKysrKy0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmggfCAgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAg
ICAgICAgIHwgIDUgKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA3
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKPiBpbmRleCBlMDlkM2M5M2M1MmIuLmQ5YzFjOTUyYTI3ZCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTE4ODk4LDYg
KzE4ODk4LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfaHBkX3BvbGxfZmluaShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCWRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2VuZCgmY29ubl9p
dGVyKTsKPiAgfQo+ICAKPiArLyogcGFydCAjMTogY2FsbCBiZWZvcmUgaXJxIHVuaW5zdGFsbCAq
Lwo+ICB2b2lkIGludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKPiAgewo+ICAJZmx1c2hfd29ya3F1ZXVlKGk5MTUtPmZsaXBfd3EpOwo+IEBA
IC0xODkwNSwxNCArMTg5MDYsMTEgQEAgdm9pZCBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAo+ICAJZmx1c2hfd29yaygmaTkxNS0+
YXRvbWljX2hlbHBlci5mcmVlX3dvcmspOwo+ICAJV0FSTl9PTighbGxpc3RfZW1wdHkoJmk5MTUt
PmF0b21pY19oZWxwZXIuZnJlZV9saXN0KSk7Cj4gK30KPiAgCj4gLQkvKgo+IC0JICogSW50ZXJy
dXB0cyBhbmQgcG9sbGluZyBhcyB0aGUgZmlyc3QgdGhpbmcgdG8gYXZvaWQgY3JlYXRpbmcgaGF2
b2MuCj4gLQkgKiBUb28gbXVjaCBzdHVmZiBoZXJlICh0dXJuaW5nIG9mIGNvbm5lY3RvcnMsIC4u
Likgd291bGQKPiAtCSAqIGV4cGVyaWVuY2UgZmFuY3kgcmFjZXMgb3RoZXJ3aXNlLgo+IC0JICov
Cj4gLQlpbnRlbF9pcnFfdW5pbnN0YWxsKGk5MTUpOwo+IC0KPiArLyogcGFydCAjMjogY2FsbCBh
ZnRlciBpcnEgdW5pbnN0YWxsICovCj4gK3ZvaWQgaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3Zl
X25vaXJxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICt7Cj4gIAkvKgo+ICAJICog
RHVlIHRvIHRoZSBocGQgaXJxIHN0b3JtIGhhbmRsaW5nIHRoZSBob3RwbHVnIHdvcmsgY2FuIHJl
LWFybSB0aGUKPiAgCSAqIHBvbGwgaGFuZGxlcnMuIEhlbmNlIGRpc2FibGUgcG9sbGluZyBhZnRl
ciBocGQgaGFuZGxpbmcgaXMgc2h1dCBkb3duLgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gaW5kZXggNzU0MzhhMTM2ZDU4Li5mOTJlZmJiZWM4Mzgg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAo+
IEBAIC02MTYsNiArNjE2LDcgQEAgaW50ZWxfZm9ybWF0X2luZm9faXNfeXV2X3NlbWlwbGFuYXIo
Y29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqaW5mbywKPiAgdm9pZCBpbnRlbF9tb2Rlc2V0
X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICBpbnQgaW50ZWxfbW9k
ZXNldF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiAgdm9pZCBpbnRlbF9t
b2Rlc2V0X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICt2
b2lkIGludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZV9ub2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSk7Cj4gIHZvaWQgaW50ZWxfZGlzcGxheV9yZXN1bWUoc3RydWN0IGRybV9kZXZp
Y2UgKmRldik7Cj4gIHZvaWQgaW50ZWxfaW5pdF9wY2hfcmVmY2xrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGluZGV4IDk1
NWY1MmJjZDZhMi4uNDYzNmQ3MjNkNTMxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4g
QEAgLTMzMyw2ICszMzMsOSBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAlpOTE1X2dlbV9kcml2ZXJfcmVsZWFz
ZShpOTE1KTsKPiAgY2xlYW51cF9tb2Rlc2V0Ogo+ICAJaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVt
b3ZlKGk5MTUpOwo+ICsJaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1KTsKPiArCWludGVsX21vZGVz
ZXRfZHJpdmVyX3JlbW92ZV9ub2lycShpOTE1KTsKPiArCWdvdG8gY2xlYW51cF9jc3I7Cj4gIGNs
ZWFudXBfaXJxOgo+ICAJaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1KTsKPiAgY2xlYW51cF9jc3I6
Cj4gQEAgLTM0OSw2ICszNTIsOCBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Jl
bW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCj4gIAlpbnRlbF9pcnFfdW5p
bnN0YWxsKGk5MTUpOwo+ICAKPiArCWludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZV9ub2lycShp
OTE1KTsKPiArCj4gIAlpbnRlbF9iaW9zX2RyaXZlcl9yZW1vdmUoaTkxNSk7Cj4gIAo+ICAJaW50
ZWxfdmdhX3VucmVnaXN0ZXIoaTkxNSk7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
