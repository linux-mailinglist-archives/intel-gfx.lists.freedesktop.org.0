Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7073A4637F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D210389A86;
	Fri, 14 Jun 2019 15:58:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DAC289A86
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:58:37 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 08:58:37 -0700
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga002-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Jun 2019 08:58:37 -0700
Date: Fri, 14 Jun 2019 08:59:08 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190614155908.GI19512@intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-17-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614151731.17608-17-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [RFC 16/31] drm/i915: Compartmentalize
 i915_ggtt_probe_hw
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDQ6MTc6MTZQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBIYXZpbmcgbWFkZSBzdGFydCB0byBiZXR0ZXIgY29kZSBjb21wYXJ0bWVudGFsaXphdGlv
biBieSBpbnRyb2R1Y2luZwo+IHN0cnVjdCBpbnRlbF9ndCwgY29udGludWUgdGhlIHRoZW1lIGVs
c2V3aGVyZSBpbiBjb2RlIGJ5IG1ha2luZyBmdW5jdGlvbnMKPiB0YWtlIHBhcmFtZXRlcnMgdGFr
ZSB3aGF0IGxvZ2ljYWxseSBtYWtlcyBtb3N0IHNlbnNlIGZvciB0aGVtIGluc3RlYWQgb2YKPiB0
aGUgZ2xvYmFsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogUm9k
cmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzMSArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBpbmRleCAwODEwYzE2NTUyMjQuLmM4
ODIxM2ZhMThhZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gQEAgLTM1
MDcsMjEgKzM1MDcsMTYgQEAgc3RhdGljIGludCBpOTE1X2dtY2hfcHJvYmUoc3RydWN0IGk5MTVf
Z2d0dCAqZ2d0dCkKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+IC0vKioKPiAtICogaTkxNV9nZ3R0
X3Byb2JlX2h3IC0gUHJvYmUgR0dUVCBoYXJkd2FyZSBsb2NhdGlvbgo+IC0gKiBAZGV2X3ByaXY6
IGk5MTUgZGV2aWNlCj4gLSAqLwo+IC1pbnQgaTkxNV9nZ3R0X3Byb2JlX2h3KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiArc3RhdGljIGludCBnZ3R0X3Byb2JlX2h3KHN0cnVj
dCBpOTE1X2dndHQgKmdndHQsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICB7Cj4g
LQlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmRldl9wcml2LT5nZ3R0Owo+ICAJaW50IHJldDsK
PiAgCj4gLQlnZ3R0LT52bS5pOTE1ID0gZGV2X3ByaXY7Cj4gLQlnZ3R0LT52bS5kbWEgPSAmZGV2
X3ByaXYtPmRybS5wZGV2LT5kZXY7Cj4gKwlnZ3R0LT52bS5pOTE1ID0gaTkxNTsKPiArCWdndHQt
PnZtLmRtYSA9ICZpOTE1LT5kcm0ucGRldi0+ZGV2Owo+ICAKPiAtCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpIDw9IDUpCj4gKwlpZiAoSU5URUxfR0VOKGk5MTUpIDw9IDUpCj4gIAkJcmV0ID0gaTkx
NV9nbWNoX3Byb2JlKGdndHQpOwo+IC0JZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDgp
Cj4gKwllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPCA4KQo+ICAJCXJldCA9IGdlbjZfZ21jaF9w
cm9iZShnZ3R0KTsKPiAgCWVsc2UKPiAgCQlyZXQgPSBnZW44X2dtY2hfcHJvYmUoZ2d0dCk7Cj4g
QEAgLTM1NDksNiArMzU0NCwyMiBAQCBpbnQgaTkxNV9nZ3R0X3Byb2JlX2h3KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCURSTV9ERUJVR19EUklWRVIoIkdNQURSIHNpemUg
PSAlbGx1TVxuIiwgKHU2NClnZ3R0LT5tYXBwYWJsZV9lbmQgPj4gMjApOwo+ICAJRFJNX0RFQlVH
X0RSSVZFUigiRFNNIHNpemUgPSAlbGx1TVxuIiwKPiAgCQkJICh1NjQpcmVzb3VyY2Vfc2l6ZSgm
aW50ZWxfZ3JhcGhpY3Nfc3RvbGVuX3JlcykgPj4gMjApOwo+ICsKPiArCXJldHVybiAwOwo+ICt9
Cj4gKwo+ICsvKioKPiArICogaTkxNV9nZ3R0X3Byb2JlX2h3IC0gUHJvYmUgR0dUVCBoYXJkd2Fy
ZSBsb2NhdGlvbgo+ICsgKiBAZGV2X3ByaXY6IGk5MTUgZGV2aWNlCj4gKyAqLwo+ICtpbnQgaTkx
NV9nZ3R0X3Byb2JlX2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICt7Cj4gKwlp
bnQgcmV0Owo+ICsKPiArCXJldCA9IGdndHRfcHJvYmVfaHcoJmk5MTUtPmdndHQsIGk5MTUpOwo+
ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiAgCWlmIChpbnRlbF92dGRfYWN0aXZl
KCkpCj4gIAkJRFJNX0lORk8oIlZULWQgYWN0aXZlIGZvciBnZnggYWNjZXNzXG4iKTsKPiAgCj4g
LS0gCj4gMi4yMC4xCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
