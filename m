Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC16DFE6C9
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 22:06:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF7376EAE9;
	Fri, 15 Nov 2019 21:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E3856EAE9
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 21:06:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 13:06:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,309,1569308400"; d="scan'208";a="217212163"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga002.jf.intel.com with ESMTP; 15 Nov 2019 13:06:19 -0800
Date: Fri, 15 Nov 2019 13:07:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20191115210730.GB21445@mdroper-desk1.amr.corp.intel.com>
References: <20191113191840.23620-2-radhakrishna.sripada@intel.com>
 <20191114215046.25171-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114215046.25171-1-radhakrishna.sripada@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Add Wa_1408615072
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

T24gVGh1LCBOb3YgMTQsIDIwMTkgYXQgMDE6NTA6NDZQTSAtMDgwMCwgUmFkaGFrcmlzaG5hIFNy
aXBhZGEgd3JvdGU6Cj4gRGlzYWJsZSBWUyBVbml0IENsb2NrZ2F0aW5nLgo+IAo+IHYyOiBGaXgg
VlNVTklUIGluc3RlYWQgb2YgVkZVTklUKFZpbGxlKQoKVGhlIFZTVU5JVCBiaXQgKGJpdCAzKSBp
c24ndCBzdXBwb3NlZCB0byBleGlzdCBvbiBnZW4xMiBhY2NvcmRpbmcgdG8gdGhlCmJzcGVjLiAg
SG93ZXZlciB0aGVyZSdzIGEgc2VwYXJhdGUgcHJvZ3JhbW1pbmcgbm90ZSBpbmRpY2F0aW5nIHRo
YXQgdGhlCihzdXBwb3NlZGx5IG5vbi1leGlzdGVudCkgYml0IHNob3VsZCBiZSBzZXQgYXMgYSB3
b3JrYXJvdW5kIG9uIFRHTC4KCkkgcHJldmlvdXNseSByYWlzZWQgdGhpcyBpbiBIU0QgYnV0IG5l
dmVyIGdvdCBhIHJlc3BvbnNlLiAgSSdsbCBmaWxlIGEKYnNwZWMgdGlja2V0LgoKCk1hdHQKCgo+
IAo+IEJTcGVjOiA1Mjg1Nwo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlz
aG5hLnNyaXBhZGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIHwgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA0ICsrKysK
PiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPiBpbmRleCA0NzhmNWZmNmM1NTQuLjhmYjNkMjA4MjgwNiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAo+IEBAIC00MTc4LDYgKzQxNzgsNyBAQCBlbnVtIHsKPiAgCj4gICNkZWZp
bmUgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUJX01NSU8oMHg5NDM0KQo+ICAjZGVmaW5lICBW
RlVOSVRfQ0xLR0FURV9ESVMJCSgxIDw8IDIwKQo+ICsjZGVmaW5lICBWU1VOSVRfQ0xLR0FURV9E
SVMJCSgxIDw8IDMpCj4gIAo+ICAjZGVmaW5lIElORl9VTklUX0xFVkVMX0NMS0dBVEUJCV9NTUlP
KDB4OTU2MCkKPiAgI2RlZmluZSAgIENHUFNGX0NMS0dBVEVfRElTCQkoMSA8PCAzKQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYwo+IGluZGV4IDA1YmE5ZTFiZDI0Ny4uM2FhYWQ0OTU3Njc1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gQEAgLTY1ODAsNiArNjU4MCwxMCBAQCBzdGF0aWMg
dm9pZCB0Z2xfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+ICAKPiAgCUk5MTVfV1JJVEUoUE9XRVJHQVRFX0VOQUJMRSwKPiAgCQkgICBJOTE1X1JF
QUQoUE9XRVJHQVRFX0VOQUJMRSkgfCB2ZF9wZ19lbmFibGUpOwo+ICsKPiArCS8qIFdhXzE0MDg2
MTUwNzI6dGdsICovCj4gKwlJOTE1X1dSSVRFKFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFLAo+
ICsJCSAgIEk5MTVfUkVBRChVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSkgfCBWU1VOSVRfQ0xL
R0FURV9ESVMpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBjbnBfaW5pdF9jbG9ja19nYXRpbmco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IC0tIAo+IDIuMjAuMQo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCk1h
dHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0gRW5h
YmxlbWVudApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
