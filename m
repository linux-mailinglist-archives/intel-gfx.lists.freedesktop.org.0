Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C119CDC0
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 13:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2B089E4C;
	Mon, 26 Aug 2019 11:09:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C26E89E4C
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 11:09:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 04:09:07 -0700
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="174173544"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 04:09:05 -0700
Date: Mon, 26 Aug 2019 14:08:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: Simon Ser <simon.ser@intel.com>
Message-ID: <20190826110801.GA24261@ideak-desk.fi.intel.com>
References: <20190823094946.5708-1-simon.ser@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823094946.5708-1-simon.ser@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: add port info to debugfs
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Manasi Navare <nanasi.d.navare@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMTI6NDk6NDZQTSArMDMwMCwgU2ltb24gU2VyIHdyb3Rl
Ogo+IFRoaXMgcGF0Y2ggYWRkcyBhIGxpbmUgd2l0aCB0aGUgcG9ydCBuYW1lIHRvIGNvbm5lY3Rv
cnMgaW4KPiBkZWJ1Z2ZzL2k5MTVfZGVidWdfaW5mby4gSWYgdGhlIHBvcnQgaXMgVHlwZS1DLCB0
aGUgVHlwZS1DIHBvcnQgbnVtYmVyIGlzCj4gcHJpbnRlZCB0b28uCj4gCj4gU2lnbmVkLW9mZi1i
eTogU2ltb24gU2VyIDxzaW1vbi5zZXJAaW50ZWwuY29tPgo+IENjOiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Cj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG5hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiAt
LS0KPiAKPiBSZXNlbmRpbmcgdjIgdG8gdGhlIGNvcnJlY3QgbWFpbGluZyBsaXN0LgoKVGVzdCBy
ZXN1bHRzIHdlcmUgZHJvcHBlZCBzb21ld2hlcmUsIHRoZXJlIGlzIG9uZSBmYWlsdXJlCmh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTY0L2ZpLWlj
bC11Mi9pZ3RAa21zX2NoYW1lbGl1bUBkcC1lZGlkLXJlYWQuaHRtbAoKYnV0IGl0IGxvb2tzIHRv
IGJlIHRoZSB1bnJlbGF0ZWQKaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTExNDc0CgpJIGFza2VkIExha3NobWkgdG8gdXBkYXRlIHRoZSBjaWJ1ZyBmaWx0ZXIg
Zm9yIHRoZSBidWcuCgo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8
IDEwICsrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IGluZGV4IGIzOTIyNmQ3ZjhkMi4uNGJhNTA4
Yzk1NGY4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBAQCAtMjU1Nyw5
ICsyNTU3LDExIEBAIHN0YXRpYyB2b2lkIGludGVsX2x2ZHNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUg
Km0sCj4gIHN0YXRpYyB2b2lkIGludGVsX2Nvbm5lY3Rvcl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAq
bSwKPiAgCQkJCSBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ICB7Cj4gKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY29ubmVjdG9yLT5kZXYpOwo+ICAJ
c3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVj
dG9yKGNvbm5lY3Rvcik7Cj4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2RlciA9
IGludGVsX2Nvbm5lY3Rvci0+ZW5jb2RlcjsKPiAgCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpt
b2RlOwo+ICsJZW51bSB0Y19wb3J0IHRjX3BvcnQ7Cj4gCj4gIAlzZXFfcHJpbnRmKG0sICJjb25u
ZWN0b3IgJWQ6IHR5cGUgJXMsIHN0YXR1czogJXNcbiIsCj4gIAkJICAgY29ubmVjdG9yLT5iYXNl
LmlkLCBjb25uZWN0b3ItPm5hbWUsCj4gQEAgLTI1NzgsNiArMjU4MCwxNCBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9jb25uZWN0b3JfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCj4gIAlpZiAoIWludGVs
X2VuY29kZXIpCj4gIAkJcmV0dXJuOwo+IAo+ICsJaWYgKGludGVsX2VuY29kZXItPnBvcnQgIT0g
UE9SVF9OT05FKSB7Cj4gKwkJc2VxX3ByaW50ZihtLCAiXHRwb3J0OiAlYyIsIHBvcnRfbmFtZShp
bnRlbF9lbmNvZGVyLT5wb3J0KSk7Cj4gKwkJdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoaTkx
NSwgaW50ZWxfZW5jb2Rlci0+cG9ydCk7Cj4gKwkJaWYgKHRjX3BvcnQgIT0gUE9SVF9UQ19OT05F
KQo+ICsJCQlzZXFfcHJpbnRmKG0sICIvVEMjJWQiLCB0Y19wb3J0ICsgMSk7Cj4gKwkJc2VxX3By
aW50ZihtLCAiXG4iKTsKPiArCX0KPiArCj4gIAlzd2l0Y2ggKGNvbm5lY3Rvci0+Y29ubmVjdG9y
X3R5cGUpIHsKPiAgCWNhc2UgRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0Ogo+ICAJY2Fz
ZSBEUk1fTU9ERV9DT05ORUNUT1JfZURQOgo+IC0tCj4gMi4yMi4xCj4gCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
