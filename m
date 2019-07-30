Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CF87AC08
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 17:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13B06E591;
	Tue, 30 Jul 2019 15:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FFD6E591
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 15:12:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17733236-1500050 for multiple; Tue, 30 Jul 2019 16:12:08 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
 <20190729234727.28286-3-daniele.ceraolospurio@intel.com>
 <6d6dae02-ceef-1517-e3af-2bc6a8d5c883@linux.intel.com>
 <156447368738.6373.5868749624839885661@skylake-alporthouse-com>
 <1f3a5fc1-7eda-4bbc-1f41-7f4a8631306b@intel.com>
In-Reply-To: <1f3a5fc1-7eda-4bbc-1f41-7f4a8631306b@intel.com>
Message-ID: <156449952721.6373.11192721571431718539@skylake-alporthouse-com>
Date: Tue, 30 Jul 2019 16:12:07 +0100
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: move gt_cleanup_early out of
 gem_cleanup_early
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTMwIDE1OjU2OjU3KQo+IAo+
IAo+IE9uIDcvMzAvMTkgMTowMSBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBU
dnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0zMCAwODoxOToxOCkKPiA+Pgo+ID4+IE9uIDMwLzA3LzIw
MTkgMDA6NDcsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gPj4+IFdlIGRvbid0IGNh
bGwgdGhlIGluaXRfZWFybHkgZnVuY3Rpb24gZnJvbSB3aXRoaW4gdGhlIGdlbSBjb2RlLCBzbyB3
ZQo+ID4+PiBzaG91bGRuJ3QgZG8gaXQgZm9yIHRoZSBjbGVhbnVwIGVpdGhlci4KPiA+Pj4KPiA+
Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT4KPiA+Pj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+ID4+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4KPiA+Pj4gLS0tCj4gPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMgfCAyICsrCj4gPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAy
IC0tCj4gPj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiA+Pj4gaW5kZXggZjJkM2Q3
NTRhZjM3Li45MzRlNjA1ZTI0NjYgMTAwNjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+ID4+PiBAQCAtOTUxLDYgKzk1MSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfZWFybHlf
cHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4+PiAgICAgICAgaW50
ZWxfdWNfY2xlYW51cF9lYXJseSgmZGV2X3ByaXYtPmd0LnVjKTsKPiA+Pj4gICAgICAgIGk5MTVf
Z2VtX2NsZWFudXBfZWFybHkoZGV2X3ByaXYpOwo+ID4+PiAgICBlcnJfd29ya3F1ZXVlczoKPiA+
Pj4gKyAgICAgaW50ZWxfZ3RfY2xlYW51cF9lYXJseSgmZGV2X3ByaXYtPmd0KTsKPiA+Pj4gICAg
ICAgIGk5MTVfd29ya3F1ZXVlc19jbGVhbnVwKGRldl9wcml2KTsKPiA+Pj4gICAgICAgIHJldHVy
biByZXQ7Cj4gPj4+ICAgIH0KPiA+Pj4gQEAgLTk2Niw2ICs5NjcsNyBAQCBzdGF0aWMgdm9pZCBp
OTE1X2RyaXZlcl9sYXRlX3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQo+ID4+PiAgICAgICAgaW50ZWxfcG93ZXJfZG9tYWluc19jbGVhbnVwKGRldl9wcml2KTsKPiA+
Pj4gICAgICAgIGludGVsX3VjX2NsZWFudXBfZWFybHkoJmRldl9wcml2LT5ndC51Yyk7Cj4gPj4+
ICAgICAgICBpOTE1X2dlbV9jbGVhbnVwX2Vhcmx5KGRldl9wcml2KTsKPiA+Pj4gKyAgICAgaW50
ZWxfZ3RfY2xlYW51cF9lYXJseSgmZGV2X3ByaXYtPmd0KTsKPiA+IAo+ID4gTm90ZSB0aGUgY2hh
bmdlIGluIG5hbWluZyBjb252ZW50aW9uLCBpbnRlbF9ndF9kcml2ZXJfbGF0ZV9yZWxlYXNlKCku
Cj4gPiAtQ2hyaXMKPiA+IAo+IAo+IERvZXMgaXQgbWFrZSBzZW5zZSB0byBmbGlwIG9ubHkgdGhl
IGd0IGZ1bmN0aW9uPyBpdCdkIGxvb2sgdGVycmlibHkgb3V0IAo+IG9mIHBsYWNlIGNsb3NlIHRv
IGFsbCB0aG9zZSBvdGhlciBjbGVhbnVwX2Vhcmx5KCkgY2FsbHMuIEkgY2FuIGZvbGxvdyB1cCAK
PiB3aXRoIGEgcGF0Y2ggdG8gZmxpcCB0aGVtIGFsbCBhdCB0aGUgc2FtZSB0aW1lIGlmIHRoYXQg
d29ya3MgZm9yIHlvdS4KCkJhYnkgc3RlcHMsIHRoZSBjb25zaXN0ZW5jeSBpcyBpbiB0aGUgZnVu
Y3Rpb24gY2FsbGdyYXBocyAtLSBpdCBsb29rcwpvdXQgb2YgcGxhY2UgdG8gaGF2ZSBsYXRlX3Jl
bGVhc2UgY2FsbCBjbGVhbnVwX2Vhcmx5IDopCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
