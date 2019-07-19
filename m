Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3926E793
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 16:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 661BE89C33;
	Fri, 19 Jul 2019 14:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEB6689C33
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 14:53:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 07:53:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="179644544"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 19 Jul 2019 07:53:23 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6JErN0K002118; Fri, 19 Jul 2019 15:53:23 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190719131524.827-1-chris@chris-wilson.co.uk>
Date: Fri, 19 Jul 2019 16:53:22 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z46jm8otxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190719131524.827-1-chris@chris-wilson.co.uk>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Correct unshifted 'from' for
 gen8_ppgtt_alloc errors
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxOSBKdWwgMjAxOSAxNToxNToyNCArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFNpbmNlIHRoZSB1bmRlcmx5aW5nIF9fZ2Vu
OF9wcGd0dF9jbGVhciB0YWtlcyB0aGUgc2hpZnRlZCBhZGRyZXNzLCB3ZQo+IG11c3QgcmVtZW1i
ZXIgdG8gcHJvdmlkZSBpdCB3aXRoIHRoZSBwcmVzaGlmdGVkIG9yaWdpbmFsIHN0YXJ0IGFkZHJl
c3MuCj4KPiBSZXBvcnRlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBD
YzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMgKystCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyAgCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IGluZGV4IDIyMGFiYTVhOTRkMi4uMDMxYmNkMjJmNWU2
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBAQCAtMTEwMyw3ICsxMTAz
LDcgQEAgc3RhdGljIGludCBfX2dlbjhfcHBndHRfYWxsb2Moc3RydWN0ICAKPiBpOTE1X2FkZHJl
c3Nfc3BhY2UgKiBjb25zdCB2bSwKPiAgc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9jKHN0cnVj
dCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICAJCQkgICAgdTY0IHN0YXJ0LCB1NjQgbGVuZ3Ro
KQo+ICB7Cj4gLQl1NjQgZnJvbSA9IHN0YXJ0Owo+ICsJdTY0IGZyb207Cj4gIAlpbnQgZXJyOwo+
IAlHRU1fQlVHX09OKCFJU19BTElHTkVEKHN0YXJ0LCBCSVRfVUxMKEdFTjhfUFRFX1NISUZUKSkp
Owo+IEBAIC0xMTEyLDYgKzExMTIsNyBAQCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2Moc3Ry
dWN0ICAKPiBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICAJc3RhcnQgPj49IEdFTjhfUFRFX1NI
SUZUOwo+ICAJbGVuZ3RoID4+PSBHRU44X1BURV9TSElGVDsKPiAgCUdFTV9CVUdfT04obGVuZ3Ro
ID09IDApOwo+ICsJZnJvbSA9IHN0YXJ0Owo+IAllcnIgPSBfX2dlbjhfcHBndHRfYWxsb2Modm0s
IGk5MTVfdm1fdG9fcHBndHQodm0pLT5wZCwKPiAgCQkJCSAmc3RhcnQsIHN0YXJ0ICsgbGVuZ3Ro
LCB2bS0+dG9wKTsKClRlc3RlZC1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3pr
b0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVj
emtvQGludGVsLmNvbT4KCnRoZXJlIGlzIHN0aWxsIG9uZSBpc3N1ZSB3aXRoIF9fZ2VuOF9wcGd0
dF9jbGVhciBjYWxsZWQKIGZyb20gaGVyZSBidXQgdGhpcyB3aWxsIGJlIGNvdmVyZWQgaW4gdXBj
b21pbmcgcGF0Y2gKCk1pY2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
