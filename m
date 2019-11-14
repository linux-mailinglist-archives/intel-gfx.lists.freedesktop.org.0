Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A0AFC428
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 11:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF536E190;
	Thu, 14 Nov 2019 10:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D9E6E5E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 10:28:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 02:28:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="288177665"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 14 Nov 2019 02:28:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Nov 2019 12:28:45 +0200
Date: Thu, 14 Nov 2019 12:28:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20191114102845.GV1208@intel.com>
References: <20191113191840.23620-1-radhakrishna.sripada@intel.com>
 <20191113191840.23620-2-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113191840.23620-2-radhakrishna.sripada@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add Wa_1408615072
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

T24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMTE6MTg6NDBBTSAtMDgwMCwgUmFkaGFrcmlzaG5hIFNy
aXBhZGEgd3JvdGU6Cj4gRGlzYWJsZSBWUyBVbml0IENsb2NrZ2F0aW5nLgo+IAo+IEJTcGVjOiA1
Mjg1Nwo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBh
ZGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwg
MSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA0ICsrKysKPiAgMiBmaWxl
cyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBp
bmRleCAyZmZjYzIxNjcwYjcuLjM3MTRlYjY0MTEyNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAo+IEBAIC00MTcyLDYgKzQxNzIsNyBAQCBlbnVtIHsKPiAgCj4gICNkZWZpbmUgVU5TTElD
RV9VTklUX0xFVkVMX0NMS0dBVEUJX01NSU8oMHg5NDM0KQo+ICAjZGVmaW5lICBWRlVOSVRfQ0xL
R0FURV9ESVMJCSgxIDw8IDIwKQo+ICsjZGVmaW5lICBWU1VOSVRfQ0xLR0FURV9ESVMJCSgxIDw8
IDMpCj4gIAo+ICAjZGVmaW5lIElORl9VTklUX0xFVkVMX0NMS0dBVEUJCV9NTUlPKDB4OTU2MCkK
PiAgI2RlZmluZSAgIENHUFNGX0NMS0dBVEVfRElTCQkoMSA8PCAzKQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYwo+IGluZGV4IDJkMzg5ZTQzN2U4Ny4uZmUzMmMwNDMzOTcxIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCj4gQEAgLTY1NzIsNiArNjU3MiwxMCBAQCBzdGF0aWMgdm9pZCB0Z2xf
aW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAK
PiAgCUk5MTVfV1JJVEUoUE9XRVJHQVRFX0VOQUJMRSwKPiAgCQkgICBJOTE1X1JFQUQoUE9XRVJH
QVRFX0VOQUJMRSkgfCB2ZF9wZ19lbmFibGUpOwo+ICsKPiArCS8qIFdhXzE0MDg2MTUwNzI6dGds
ICovCj4gKwlJOTE1X1dSSVRFKFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFLAo+ICsJCSAgIEk5
MTVfUkVBRChVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSkgfCBWRlVOSVRfQ0xLR0FURV9ESVMp
OwoKVkYgdnMuIFZTCgo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBjbnBfaW5pdF9jbG9ja19nYXRp
bmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IC0tIAo+IDIuMjAuMQo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0g
ClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
