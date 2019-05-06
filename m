Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F204A14BC1
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 16:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8933899BC;
	Mon,  6 May 2019 14:24:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 777B0899BC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 14:24:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 07:24:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="137393478"
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.66.99.144])
 ([10.66.99.144])
 by orsmga007.jf.intel.com with ESMTP; 06 May 2019 07:24:27 -0700
To: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
 <1556989900-21972-2-git-send-email-swati2.sharma@intel.com>
 <87pnovn2gs.fsf@intel.com> <20190506132949.GB24299@intel.com>
 <87mujzn1jn.fsf@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <1eda6a72-a84b-e17e-7653-84be392d522c@intel.com>
Date: Mon, 6 May 2019 19:54:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87mujzn1jn.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [v5][PATCH 01/11] drm/i915: Introduce vfunc
 read_luts() to create hw lut
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
Cc: daniel.vetter@ffwll.ch, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDYtTWF5LTE5IDc6MTEgUE0sIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIE1vbiwgMDYgTWF5
IDIwMTksIFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdy
b3RlOgo+PiBPbiBNb24sIE1heSAwNiwgMjAxOSBhdCAwNDoyMTowN1BNICswMzAwLCBKYW5pIE5p
a3VsYSB3cm90ZToKPj4+IE9uIFNhdCwgMDQgTWF5IDIwMTksIFN3YXRpIFNoYXJtYSA8c3dhdGky
LnNoYXJtYUBpbnRlbC5jb20+IHdyb3RlOgo+Pj4+IEluIHRoaXMgcGF0Y2gsIGEgdmZ1bmMgcmVh
ZF9sdXRzKCkgaXMgaW50cm9kdWNlZCB0byBjcmVhdGUgYSBodyBsdXQKPj4+PiBpLmUuIGx1dCBo
YXZpbmcgdmFsdWVzIHJlYWQgZnJvbSBnYW1tYS9kZWdhbW1hIHJlZ2lzdGVycyB3aGljaCB3aWxs
Cj4+Pj4gbGF0ZXIgYmUgdXNlZCB0byBjb21wYXJlIHdpdGggc3cgbHV0IHRvIHZhbGlkYXRlIGdh
bW1hL2RlZ2FtbWEgbHV0IHZhbHVlcy4KPj4+Pgo+Pj4+IHYzOiAtUmViYXNlCj4+Pj4gdjQ6IC1S
ZW5hbWVkIGludGVsX2dldF9jb2xvcl9jb25maWcgdG8gaW50ZWxfY29sb3JfZ2V0X2NvbmZpZyBb
SmFuaV0KPj4+PiAgICAgIC1XcmFwcGVkIGdldF9jb2xvcl9jb25maWcoKSBbSmFuaV0KPj4+PiB2
NTogLVJlbmFtZWQgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpIHRvIGludGVsX2NvbG9yX3JlYWRf
bHV0cygpCj4+PiBWaWxsZSwgZGlkIHlvdSByZWFsbHkgd2FudCB0aGlzIGNoYWdlPyBJIHN1cmUg
ZGlkbid0Lgo+PiBJIHdhbnQgdGhlIGxvdyBsZXZlbCBmdW5jcyB0byBiZSBjYWxsZWQgc29tZXRo
aW5nIGxpa2UKPj4gaWxrX3JlYWRfbHV0XzEwKCksIGNodl9yZWFkX2NnbV9nYW1tYV9sdXQoKSwg
ZXRjLgo+PiBUaGUgbmFtZSBvZiB0aGUgdmZ1bmMgaXMgbW9yZSBvZiBhIG1laC4KPiBBbmQgSSBk
b24ndCBjYXJlIGFib3V0IHRoZSBsb3cgbGV2ZWwgZnVuY3Rpb25zIHNvIG11Y2gsIEkgY2FyZSBh
Ym91dCB0aGUKPiBpbnRlcmZhY2Ugd2hpY2ggSSBzaG91bGQgZW1waGFzaXplIHRoZSAiZ2V0IGNv
bmZpZyIgc3RhZ2UuIDopCgpTdXJlLCB3aWxsIGRvIHRoYXQuQnV0IG15IG1ham9yIGNvbmNlcm5z
IGFyZSBpbiBwYXRjaCAxMSA6LyBQbGVhc2UgcmV2aWV3IGFuZCBndWlkZS4KQWxzbywgb24gQ0kg
dGVzdHMgYXJlIGdldHRpbmcgYWJvcnRlZC4uZG9uJ3Qga25vdyB3aHkuIExvY2FsbHkgaXQncyBP
Sy4gRGVidWdnaW5nLgoKPgo+IEJSLAo+IEphbmkuCj4KPj4+IEJSLAo+Pj4gSmFuaS4KPj4+Cj4+
Pgo+Pj4+ICAgICAgLVJlbmFtZWQgZ2V0X2NvbG9yX2NvbmZpZyB0byByZWFkX2x1dHMKPj4+Pgo+
Pj4+IFNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+
Cj4+Pj4gLS0tCj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgIHwgMSAr
Cj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIHwgOCArKysrKysrKwo+
Pj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCB8IDEgKwo+Pj4+ICAgMyBm
aWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKPj4+PiBpbmRleCAxY2VhOThmLi4xYjZkODkxIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCj4+Pj4gQEAgLTM0Miw2ICszNDIsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfZGlz
cGxheV9mdW5jcyB7Cj4+Pj4gICAJICogaW52b2x2ZWQgd2l0aCB0aGUgc2FtZSBjb21taXQuCj4+
Pj4gICAJICovCj4+Pj4gICAJdm9pZCAoKmxvYWRfbHV0cykoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+Pj4+ICsJdm9pZCAoKnJlYWRfbHV0cykoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+Pj4+ICAgfTsKPj4+PiAgIAo+Pj4+ICAgI2Rl
ZmluZSBDU1JfVkVSU0lPTihtYWpvciwgbWlub3IpCSgobWFqb3IpIDw8IDE2IHwgKG1pbm9yKSkK
Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPj4+PiBpbmRleCA5NjJkYjEyLi4wMDQ4
ZDhhIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMK
Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCj4+Pj4gQEAgLTg3
OSw2ICs4NzksMTQgQEAgaW50IGludGVsX2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQo+Pj4+ICAgCXJldHVybiBkZXZfcHJpdi0+ZGlzcGxheS5jb2xvcl9j
aGVjayhjcnRjX3N0YXRlKTsKPj4+PiAgIH0KPj4+PiAgIAo+Pj4+ICt2b2lkIGludGVsX2NvbG9y
X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPj4+PiArewo+
Pj4+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0
YXRlLT5iYXNlLmNydGMtPmRldik7Cj4+Pj4gKwo+Pj4+ICsJaWYgKGRldl9wcml2LT5kaXNwbGF5
LnJlYWRfbHV0cykKPj4+PiArCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMoY3J0Y19zdGF0
ZSk7Cj4+Pj4gK30KPj4+PiArCj4+Pj4gICBzdGF0aWMgYm9vbCBuZWVkX3BsYW5lX3VwZGF0ZShz
dHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+Pj4+ICAgCQkJICAgICAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+Pj4gICB7Cj4+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jb2xvci5oCj4+Pj4gaW5kZXggYjhhM2NlNi4uZmM1M2RlOSAxMDA2NDQKPj4+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5oCj4+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaAo+Pj4+IEBAIC0xMyw1ICsxMyw2IEBACj4+Pj4gICBp
bnQgaW50ZWxfY29sb3JfY2hlY2soc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Owo+Pj4+ICAgdm9pZCBpbnRlbF9jb2xvcl9jb21taXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpOwo+Pj4+ICAgdm9pZCBpbnRlbF9jb2xvcl9sb2FkX2x1dHMoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+Pj4+ICt2b2lkIGludGVs
X2NvbG9yX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4+
Pj4gICAKPj4+PiAgICNlbmRpZiAvKiBfX0lOVEVMX0NPTE9SX0hfXyAqLwo+Pj4gLS0gCj4+PiBK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCgoKLS0gCn5Td2F0
aSBTaGFybWEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
