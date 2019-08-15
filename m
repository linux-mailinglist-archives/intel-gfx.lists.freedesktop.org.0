Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B858F329
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 20:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9205D6EA25;
	Thu, 15 Aug 2019 18:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82FE6EA25
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 18:22:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 11:22:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="179442585"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga003.jf.intel.com with ESMTP; 15 Aug 2019 11:22:20 -0700
Date: Thu, 15 Aug 2019 11:24:21 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <20190815182420.GA22762@intel.com>
References: <20190814235117.11304-1-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814235117.11304-1-madhumitha.tolakanahalli.pradeep@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMDQ6NTE6MTdQTSAtMDcwMCwgTWFkaHVtaXRoYSBUb2xh
a2FuYWhhbGxpIFByYWRlZXAgd3JvdGU6Cj4gUmVtb3ZpbmcgcmVzdHJpY3Rpb24gb24gUGlwZSBB
IGFzIFRpZ2VyTGFrZSBvbndhcmRzLCBhbGwgdGhlIHBpcGVzIHN1cHBvcnQgRFNDLgoKTWF5IGJl
IGVsYWJvcmF0ZSB0aGlzIGNvbW1pdCBtZXNzYWdlIGEgbGl0dGxlIGJpdCBzb21ldGhpbmcgbGlr
ZToKIk9uIHByZXZpb3VzIHBsYXRmb3JtcywgRFNDIHdhcyBub3Qgc3VwcG9ydGVkIG9uIFBpcGUg
QSB3aGlsZSBzdGFydGluZyBUR0wsIGl0cyBpcyBzdXBwb3J0ZWQKb24gYWxsIHBpcGVzLiBTbyBy
ZW1vdmUgdGhlIERTQyBhbmQgRkVDIHJlc3RyaWN0aW9uIG9uIFBpcGUgQSBmb3IgVEdMIG9ud2Fy
ZHMuCgo+IAo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFkZWVwIDxtYWRodW1p
dGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDE2ICsrKysrKysrKysrKy0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IDQ4ODRjODdjOGVkNy4uYTVi
NTBmOTNmYWM1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+
IEBAIC0xNzM5LDggKzE3MzksMTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc291cmNlX3N1cHBv
cnRzX2ZlYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiAgCj4gLQlyZXR1
cm4gSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJgo+IC0JCXBpcGVfY29uZmlnLT5jcHVfdHJh
bnNjb2RlciAhPSBUUkFOU0NPREVSX0E7Cj4gKwkvKiBPbiBUR0wsIERTQyBpcyBzdXBwb3J0ZWQg
b24gYWxsIFBpcGVzICovCgogICAgICAgICAgICAgICAgICAgXl5eXiBGRUMgc3VwcG9ydGVkIG9u
IGFsbCBwaXBlcwo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gKwkJcmV0dXJu
IHRydWU7Cj4gKwllbHNlCj4gKwkJcmV0dXJuIElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEgJiYK
PiArCQkJcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfQTsKPiAgfQo+
ICAKPiAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc3VwcG9ydHNfZmVjKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsCj4gQEAgLTE3NTUsOCArMTc1OSwxMiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kcF9z
b3VyY2Vfc3VwcG9ydHNfZHNjKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIHsKPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+
ICAKPiAtCXJldHVybiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwICYmCj4gLQkJcGlwZV9jb25m
aWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfQTsKPiArCS8qIE9uIFRHTCwgRFNDIGlz
IHN1cHBvcnRlZCBvbiBhbGwgUGlwZXMgKi8KPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEyKQo+ICsJCXJldHVybiB0cnVlOwo+ICsJZWxzZQo+ICsJCXJldHVybiAoSU5URUxfR0VOKGRl
dl9wcml2KSA9PSAxMCB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID09IDExKSAmJgoKV2h5IGNhbnQg
eW91IGp1c3QgdXNlIElOVEVMX0dFTihkZXZfcHJpdikgPj0xMCA/CgpNYW5hc2kKCj4gKwkJCXBp
cGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0E7Cj4gIH0KPiAgCj4gIHN0
YXRpYyBib29sIGludGVsX2RwX3N1cHBvcnRzX2RzYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LAo+IC0tIAo+IDIuMTcuMQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
