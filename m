Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66304A3630
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 14:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2108389857;
	Fri, 30 Aug 2019 12:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D79089857
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 12:02:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 05:02:36 -0700
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="183783984"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 05:02:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1567153913-20166-2-git-send-email-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
 <1567153913-20166-2-git-send-email-swati2.sharma@intel.com>
Date: Fri, 30 Aug 2019 15:02:29 +0300
Message-ID: <87zhjq6eui.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v9][PATCH 01/11] drm/i915/display: Add func to get
 gamma bit precision
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAzMCBBdWcgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gRWFjaCBwbGF0Zm9ybSBzdXBwb3J0cyBkaWZmZXJlbnQgZ2FtbWEgbW9kZXMg
YW5kIGVhY2ggZ2FtbWEgbW9kZQo+IGhhcyBkaWZmZXJlbnQgYml0IHByZWNpc2lvbi4gSGVyZSBi
aXQgcHJlY2lzaW9uIGNvcnJlc3BvbmRzCj4gdG8gbnVtYmVyIG9mIGJpdHMgdGhlIGh3IExVVCBz
dXBwb3J0cy4KPgo+IEFkZCBmdW5jIHBlciBwbGF0Zm9ybSB0byByZXR1cm4gYml0IHByZWNpc2lv
biBjb3JyZXNwb25kaW5nIHRvIGdhbW1hIG1vZGUKPiB3aGljaCB3aWxsIGJlIGxhdGVyIHVzZWQg
YXMgYSBwYXJhbWV0ZXIgaW4gbHV0IGNvbXBhcmlzb24gZnVuY3Rpb24KPiBpbnRlbF9jb2xvcl9s
dXRfZXF1YWwoKS4KPgo+IFRoaXMgaXMgZG9uZSBmb3IgbGVnYWN5LCBpOTY1LCBpbGssIGdsaywg
aWNsIGFuZCB0aGVpciB2YXJpYW50IHBsYXRmb3Jtcy4KPgo+IHY2OiAtQWRkZWQgZnVuYyBpbnRl
bF9jb2xvcl9nZXRfYml0X3ByZWNpc2lvbigpIHRvIGdldCBiaXQgcHJlY2lzaW9uIGZvcgo+ICAg
ICAgZ2FtbWEgYW5kIGRlZ2FtbWEgbHV0IHJlYWRvdXQgZGVwZW5kaW5nIHVwb24gcGxhdGZvcm0g
YW5kCj4gICAgICBjb3JyZXNwb25kaW5nIHRvIGxvYWRfbHV0cygpIFtBbmtpdF0KPiAgICAgLU1h
ZGUgcGF0Y2gxMSBhcyBwYXRjaDMgW0phbmldCj4gdjc6IC1SZW5hbWVkIGZ1bmMgaW50ZWxfY29s
b3JfZ2V0X2JpdF9wcmVjaXNpb24oKSB0bwo+ICAgICAgaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2Jp
dF9wcmVjaXNpb24oKQo+ICAgICAtQWRkZWQgc2VwYXJhdGUgZnVuY3Rpb24vcGxhdGZvcm0gZm9y
IGdhbW1hIGJpdCBwcmVjaXNpb24gW1ZpbGxlXQo+ICAgICAtQ29ycmVjdGVkIGNoZWNrcGF0Y2gg
d2FybmluZ3MKPiB2ODogLVNwbGl0IHBhdGNoIDMgaW50byA0IHNlcGFyYXRlIHBhdGNoZXMKPiB2
OTogLUNoYW5nZWQgY29tbWl0IG1lc3NhZ2UsIGdhdmUgbW9yZSBpbmZvIFtVbWFdCj4gICAgIC1B
ZGRlZCBwcmVjaXNpb24gZnVuYyBmb3IgaWNsKyBwbGF0Zm9ybQo+Cj4gU2lnbmVkLW9mZi1ieTog
U3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgOTkgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
aCB8ICAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMDAgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+IGluZGV4IDcxYTAyMDEuLmRj
YzY1ZDcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5j
Cj4gQEAgLTEzNzEsNiArMTM3MSwxMDUgQEAgc3RhdGljIGludCBpY2xfY29sb3JfY2hlY2soc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAK
PiArc3RhdGljIGludCBpOXh4X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFi
bGUpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2Rl
KSB7Cj4gKwljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgo+ICsJCXJldHVybiA4Owo+ICsJY2Fz
ZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Cj4gKwkJcmV0dXJuIDE2Owo+ICsJZGVmYXVsdDoKPiAr
CQlNSVNTSU5HX0NBU0UoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSk7Cj4gKwkJcmV0dXJuIDA7Cj4g
Kwl9Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJaWYgKCFjcnRjX3N0YXRl
LT5nYW1tYV9lbmFibGUpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJaWYgKChjcnRjX3N0YXRlLT5j
c2NfbW9kZSAmIENTQ19QT1NJVElPTl9CRUZPUkVfR0FNTUEpID09IDApCj4gKwkJcmV0dXJuIDA7
Cj4gKwo+ICsJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKSB7Cj4gKwljYXNlIEdBTU1B
X01PREVfTU9ERV84QklUOgo+ICsJCXJldHVybiA4Owo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVf
MTBCSVQ6Cj4gKwkJcmV0dXJuIDEwOwo+ICsJZGVmYXVsdDoKPiArCQlNSVNTSU5HX0NBU0UoY3J0
Y19zdGF0ZS0+Z2FtbWFfbW9kZSk7Cj4gKwkJcmV0dXJuIDA7Cj4gKwl9Cj4gK30KPiArCj4gK3N0
YXRpYyBpbnQgY2h2X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJaWYgKGNydGNfc3RhdGUtPmNnbV9tb2RlICYgQ0dNX1BJ
UEVfTU9ERV9HQU1NQSkKPiArCQlyZXR1cm4gMTA7Cj4gKwllbHNlCj4gKwkJcmV0dXJuIGk5eHhf
Z2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwoKV2h5IGRvZXMgb25lIGJyYW5jaCBjaGVjayBm
b3IgLT5nYW1tYV9lbmFibGUgYW5kIHRoZSBvdGhlciBub3Q/IFNlZSBiZWxvdy4KCj4gK30KPiAr
Cj4gK3N0YXRpYyBpbnQgZ2xrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFi
bGUpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2Rl
KSB7Cj4gKwljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgo+ICsJCXJldHVybiA4Owo+ICsJY2Fz
ZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Cj4gKwkJcmV0dXJuIDEwOwo+ICsJZGVmYXVsdDoKPiAr
CQlNSVNTSU5HX0NBU0UoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSk7Cj4gKwkJcmV0dXJuIDA7Cj4g
Kwl9Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaWNsX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewoKV2h5IGRvZXMgdGhpcyBmdW5j
dGlvbiBub3QgY2hlY2sgZm9yIC0+Z2FtbWFfZW5hYmxlIGJ1dCB0aGUgb3RoZXJzIGRvPwpTZWUg
YmVsb3cuCgo+ICsJaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgUE9TVF9DU0NfR0FNTUFf
RU5BQkxFKSA9PSAwKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCXN3aXRjaCAoY3J0Y19zdGF0ZS0+
Z2FtbWFfbW9kZSAmIEdBTU1BX01PREVfTU9ERV9NQVNLKSB7Cj4gKwljYXNlIEdBTU1BX01PREVf
TU9ERV84QklUOgo+ICsJCXJldHVybiA4Owo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6
Cj4gKwkJcmV0dXJuIDEwOwo+ICsJY2FzZSBHQU1NQV9NT0RFX01PREVfMTJCSVRfTVVMVElfU0VH
TUVOVEVEOgo+ICsJCXJldHVybiAxNjsKPiArCWRlZmF1bHQ6Cj4gKwkJTUlTU0lOR19DQVNFKGNy
dGNfc3RhdGUtPmdhbW1hX21vZGUpOwo+ICsJCXJldHVybiAwOwo+ICsJfQo+ICt9Cj4gKwo+ICtp
bnQgaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
ID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwo+ICsJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gKwoKU2hv
dWxkIHRoZSAtPmdhbW1hX2VuYWJsZSBjaGVjayBiZSBoZXJlIG9uY2UsIGluc3RlYWQ/CgpXaXRo
IHRoYXQgZml4ZWQsCgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KCgpCUiwKSmFuaS4KCgo+ICsJaWYgKEhBU19HTUNIKGRldl9wcml2KSkgewo+ICsJCWlm
IChJU19DSEVSUllWSUVXKGRldl9wcml2KSkKPiArCQkJcmV0dXJuIGNodl9nYW1tYV9wcmVjaXNp
b24oY3J0Y19zdGF0ZSk7Cj4gKwkJZWxzZQo+ICsJCQlyZXR1cm4gaTl4eF9nYW1tYV9wcmVjaXNp
b24oY3J0Y19zdGF0ZSk7Cj4gKwl9IGVsc2Ugewo+ICsJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDExKQo+ICsJCQlyZXR1cm4gaWNsX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKPiAr
CQllbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1JTklMQUtFKGRldl9w
cml2KSkKPiArCQkJcmV0dXJuIGdsa19nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Cj4gKwkJ
ZWxzZSBpZiAoSVNfSVJPTkxBS0UoZGV2X3ByaXYpKQo+ICsJCQlyZXR1cm4gaWxrX2dhbW1hX3By
ZWNpc2lvbihjcnRjX3N0YXRlKTsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAg
dm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICB7Cj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2
KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5oCj4gaW5kZXgg
MDU3ZThhYy4uMDIyNmQzYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbG9yLmgKPiBAQCAtMTQsNSArMTQsNiBAQAo+ICB2b2lkIGludGVsX2NvbG9yX2NvbW1p
dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gIHZvaWQgaW50
ZWxfY29sb3JfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsKPiAgdm9pZCBpbnRlbF9jb2xvcl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKTsKPiAraW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJlY2lz
aW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPiAgCj4gICNl
bmRpZiAvKiBfX0lOVEVMX0NPTE9SX0hfXyAqLwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
