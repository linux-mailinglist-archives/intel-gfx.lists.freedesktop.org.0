Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBEB15DAC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 08:46:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C9489B33;
	Tue,  7 May 2019 06:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF82A89B33
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 06:45:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 23:45:56 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 May 2019 23:45:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Sharma\, Swati2" <swati2.sharma@intel.com>, Ville =?utf-8?B?U3lyasOk?=
 =?utf-8?B?bMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <1eda6a72-a84b-e17e-7653-84be392d522c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
 <1556989900-21972-2-git-send-email-swati2.sharma@intel.com>
 <87pnovn2gs.fsf@intel.com> <20190506132949.GB24299@intel.com>
 <87mujzn1jn.fsf@intel.com> <1eda6a72-a84b-e17e-7653-84be392d522c@intel.com>
Date: Tue, 07 May 2019 09:48:02 +0300
Message-ID: <87d0kun4kd.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwNiBNYXkgMjAxOSwgIlNoYXJtYSwgU3dhdGkyIiA8c3dhdGkyLnNoYXJtYUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIDA2LU1heS0xOSA3OjExIFBNLCBKYW5pIE5pa3VsYSB3cm90ZToK
Pj4gT24gTW9uLCAwNiBNYXkgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+PiBPbiBNb24sIE1heSAwNiwgMjAxOSBhdCAwNDoyMTow
N1BNICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4+PiBPbiBTYXQsIDA0IE1heSAyMDE5LCBT
d2F0aSBTaGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPiB3cm90ZToKPj4+Pj4gSW4gdGhp
cyBwYXRjaCwgYSB2ZnVuYyByZWFkX2x1dHMoKSBpcyBpbnRyb2R1Y2VkIHRvIGNyZWF0ZSBhIGh3
IGx1dAo+Pj4+PiBpLmUuIGx1dCBoYXZpbmcgdmFsdWVzIHJlYWQgZnJvbSBnYW1tYS9kZWdhbW1h
IHJlZ2lzdGVycyB3aGljaCB3aWxsCj4+Pj4+IGxhdGVyIGJlIHVzZWQgdG8gY29tcGFyZSB3aXRo
IHN3IGx1dCB0byB2YWxpZGF0ZSBnYW1tYS9kZWdhbW1hIGx1dCB2YWx1ZXMuCj4+Pj4+Cj4+Pj4+
IHYzOiAtUmViYXNlCj4+Pj4+IHY0OiAtUmVuYW1lZCBpbnRlbF9nZXRfY29sb3JfY29uZmlnIHRv
IGludGVsX2NvbG9yX2dldF9jb25maWcgW0phbmldCj4+Pj4+ICAgICAgLVdyYXBwZWQgZ2V0X2Nv
bG9yX2NvbmZpZygpIFtKYW5pXQo+Pj4+PiB2NTogLVJlbmFtZWQgaW50ZWxfY29sb3JfZ2V0X2Nv
bmZpZygpIHRvIGludGVsX2NvbG9yX3JlYWRfbHV0cygpCj4+Pj4gVmlsbGUsIGRpZCB5b3UgcmVh
bGx5IHdhbnQgdGhpcyBjaGFnZT8gSSBzdXJlIGRpZG4ndC4KPj4+IEkgd2FudCB0aGUgbG93IGxl
dmVsIGZ1bmNzIHRvIGJlIGNhbGxlZCBzb21ldGhpbmcgbGlrZQo+Pj4gaWxrX3JlYWRfbHV0XzEw
KCksIGNodl9yZWFkX2NnbV9nYW1tYV9sdXQoKSwgZXRjLgo+Pj4gVGhlIG5hbWUgb2YgdGhlIHZm
dW5jIGlzIG1vcmUgb2YgYSBtZWguCj4+IEFuZCBJIGRvbid0IGNhcmUgYWJvdXQgdGhlIGxvdyBs
ZXZlbCBmdW5jdGlvbnMgc28gbXVjaCwgSSBjYXJlIGFib3V0IHRoZQo+PiBpbnRlcmZhY2Ugd2hp
Y2ggSSBzaG91bGQgZW1waGFzaXplIHRoZSAiZ2V0IGNvbmZpZyIgc3RhZ2UuIDopCj4KPiBTdXJl
LCB3aWxsIGRvIHRoYXQuQnV0IG15IG1ham9yIGNvbmNlcm5zIGFyZSBpbiBwYXRjaCAxMSA6LyBQ
bGVhc2UgcmV2aWV3IGFuZCBndWlkZS4KPiBBbHNvLCBvbiBDSSB0ZXN0cyBhcmUgZ2V0dGluZyBh
Ym9ydGVkLi5kb24ndCBrbm93IHdoeS4gTG9jYWxseSBpdCdzIE9LLiBEZWJ1Z2dpbmcuCgpQbGVh
c2UgbW92ZSBwYXRjaCAxMSByaWdodCBhZnRlciBjdXJyZW50IHBhdGNoIDIuIFRoaXMgd2FzIHRo
ZSBwb2ludCBpbgptYWtpbmcgdGhlIHZmdW5jcyBvcHRpb25hbDsgeW91IGNhbiB0aGVuIGFkZCBw
bGF0Zm9ybXMgb25lIGJ5IG9uZSBhbmQKZWFjaCBjaGFuZ2UgaXMgbWVhbmluZ2Z1bC4gTm93IHlv
dSBhZGQgZXZlcnl0aGluZyBidXQgb25seSByZWFsbHkgZW5hYmxlCnRoZSBjaGVja3MgaW4gb25l
IGJpZyBsdW1wIGF0IHRoZSBlbmQuCgpCUiwKSmFuaS4KCgo+Cj4+Cj4+IEJSLAo+PiBKYW5pLgo+
Pgo+Pj4+IEJSLAo+Pj4+IEphbmkuCj4+Pj4KPj4+Pgo+Pj4+PiAgICAgIC1SZW5hbWVkIGdldF9j
b2xvcl9jb25maWcgdG8gcmVhZF9sdXRzCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFN3YXRp
IFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgfCAxICsKPj4+Pj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jb2xvci5jIHwgOCArKysrKysrKwo+Pj4+PiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2NvbG9yLmggfCAxICsKPj4+Pj4gICAzIGZpbGVzIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKykKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4+Pj4+IGluZGV4
IDFjZWE5OGYuLjFiNmQ4OTEgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+
Pj4+PiBAQCAtMzQyLDYgKzM0Miw3IEBAIHN0cnVjdCBkcm1faTkxNV9kaXNwbGF5X2Z1bmNzIHsK
Pj4+Pj4gICAJICogaW52b2x2ZWQgd2l0aCB0aGUgc2FtZSBjb21taXQuCj4+Pj4+ICAgCSAqLwo+
Pj4+PiAgIAl2b2lkICgqbG9hZF9sdXRzKShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSk7Cj4+Pj4+ICsJdm9pZCAoKnJlYWRfbHV0cykoc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpOwo+Pj4+PiAgIH07Cj4+Pj4+ICAgCj4+Pj4+ICAgI2RlZmluZSBD
U1JfVkVSU0lPTihtYWpvciwgbWlub3IpCSgobWFqb3IpIDw8IDE2IHwgKG1pbm9yKSkKPj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCj4+Pj4+IGluZGV4IDk2MmRiMTIuLjAwNDhkOGEg
MTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPj4+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwo+Pj4+PiBAQCAtODc5
LDYgKzg3OSwxNCBAQCBpbnQgaW50ZWxfY29sb3JfY2hlY2soc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCj4+Pj4+ICAgCXJldHVybiBkZXZfcHJpdi0+ZGlzcGxheS5jb2xvcl9j
aGVjayhjcnRjX3N0YXRlKTsKPj4+Pj4gICB9Cj4+Pj4+ICAgCj4+Pj4+ICt2b2lkIGludGVsX2Nv
bG9yX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPj4+Pj4g
K3sKPj4+Pj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNy
dGNfc3RhdGUtPmJhc2UuY3J0Yy0+ZGV2KTsKPj4+Pj4gKwo+Pj4+PiArCWlmIChkZXZfcHJpdi0+
ZGlzcGxheS5yZWFkX2x1dHMpCj4+Pj4+ICsJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyhj
cnRjX3N0YXRlKTsKPj4+Pj4gK30KPj4+Pj4gKwo+Pj4+PiAgIHN0YXRpYyBib29sIG5lZWRfcGxh
bmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4+Pj4+ICAgCQkJICAgICAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+Pj4+ICAgewo+Pj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmgKPj4+Pj4gaW5kZXggYjhhM2NlNi4uZmM1M2RlOSAx
MDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaAo+Pj4+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5oCj4+Pj4+IEBAIC0xMyw1
ICsxMyw2IEBACj4+Pj4+ICAgaW50IGludGVsX2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKTsKPj4+Pj4gICB2b2lkIGludGVsX2NvbG9yX2NvbW1pdChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4+Pj4+ICAgdm9pZCBpbnRl
bF9jb2xvcl9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpOwo+Pj4+PiArdm9pZCBpbnRlbF9jb2xvcl9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpOwo+Pj4+PiAgIAo+Pj4+PiAgICNlbmRpZiAvKiBfX0lOVEVMX0NP
TE9SX0hfXyAqLwo+Pj4+IC0tIAo+Pj4+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
