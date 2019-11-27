Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C308F10B4F2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 18:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F3AD89C98;
	Wed, 27 Nov 2019 17:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E0089C98
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 17:59:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 09:59:49 -0800
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="383573927"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 09:59:49 -0800
Date: Wed, 27 Nov 2019 09:59:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191127175839.u6k6yffui4o6vdkk@ldmartin-desk1>
References: <20191126210732.407496-1-matthew.d.roper@intel.com>
 <20191126210732.407496-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126210732.407496-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/ehl: Make
 icp_digital_port_connected() use phy instead of port
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMDE6MDc6MzFQTSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPldoZW4gbG9va2luZyBhdCBTREVJU1IgdG8gZGV0ZXJtaW5lIHRoZSBjb25uZWN0aW9uIHN0
YXR1cyBvZiBjb21ibwo+b3V0cHV0cywgd2Ugc2hvdWxkIHVzZSB0aGUgcGh5IGluZGV4IHJhdGhl
ciB0aGFuIHRoZSBwb3J0IGluZGV4Lgo+QWx0aG91Z2ggdGhleSdyZSB1c3VhbGx5IHRoZSBzYW1l
IHRoaW5nLCBFSEwncyBEREktRCAocG9ydCBEKSBpcwo+YXR0YWNoZWQgdG8gUEhZLUEgYW5kIFNE
RUlTUiBkb2Vzbid0IGV2ZW4gaGF2ZSBiaXRzIGZvciBhICJEIiBvdXRwdXQuCj5JdCdzIGFsc28g
cG9zc2libGUgdGhhdCBmdXR1cmUgcGxhdGZvcm1zIG1heSBtYXAgRERJcyAodGhlIGludGVybmFs
Cj5kaXNwbGF5IGVuZ2luZSBwcm9ncmFtbWluZyB1bml0cykgdG8gUEhZcyAodGhlIG91dHB1dCBo
YW5kbGluZyBvbiB0aGUgSU8KPnNpZGUpIGluIHdheXMgd2hlcmUgcG9ydCE9cGh5LCBzbyBsZXQn
cyBsb29rIGF0IHRoZSBQSFkgaW5kZXggYnkKPmRlZmF1bHQuCj4KPkZpeGVzOiA3MTlkMjQwMDI2
MDIgKCJkcm0vaTkxNS9laGw6IEVuYWJsZSBEREktRCIpCj5DYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj5DYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+Cj5TaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jIHwgMTAgKysrKy0tLS0tLQo+IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMK
PmluZGV4IGRkZjViYWQxYjk2OS4uNTljNWZkN2JmMjdkIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKPkBAIC01NDc3LDE0ICs1NDc3LDEyIEBAIHN0YXRpYyBib29s
IGJ4dF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
KQo+IH0KPgo+IHN0YXRpYyBib29sIGljbF9jb21ib19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCgp3aGlsZSBhdCBpdCBJIHRoaW5rIGl0IHdvdWxkIG1h
a2UgbW9yZSBzZW5zZSB0byBjYWxsIHRoaXMKaWNsX2NvbWJvX3BoeV9jb25uZWN0ZWQoKSBhbmQg
bWF5YmUgZXZlbiBpbnRlbF9jb21ib19waHlfY29ubmVjdGVkKCkKClJldmlld2VkLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkx1Y2FzIERlIE1hcmNoaQoK
Pi0JCQkJICAgICBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCkKPisJ
CQkJICAgICBlbnVtIHBoeSBwaHkpCj4gewo+LQllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19w
b3J0LT5iYXNlLnBvcnQ7Cj4tCj4tCWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikgJiYgcG9ydCA9
PSBQT1JUX0MpCj4rCWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikgJiYgcGh5ID09IFBIWV9DKQo+
IAkJcmV0dXJuIEk5MTVfUkVBRChTREVJU1IpICYgU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMx
KTsKPgo+LQlyZXR1cm4gSTkxNV9SRUFEKFNERUlTUikgJiBTREVfRERJX0hPVFBMVUdfSUNQKHBv
cnQpOwo+KwlyZXR1cm4gSTkxNV9SRUFEKFNERUlTUikgJiBTREVfRERJX0hPVFBMVUdfSUNQKHBo
eSk7Cj4gfQo+Cj4gc3RhdGljIGJvb2wgaWNwX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj5AQCAtNTQ5NCw3ICs1NDkyLDcgQEAgc3RhdGljIGJv
b2wgaWNwX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIpCj4gCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVy
LT5wb3J0KTsKPgo+IAlpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKQo+LQkJ
cmV0dXJuIGljbF9jb21ib19wb3J0X2Nvbm5lY3RlZChkZXZfcHJpdiwgZGlnX3BvcnQpOwo+KwkJ
cmV0dXJuIGljbF9jb21ib19wb3J0X2Nvbm5lY3RlZChkZXZfcHJpdiwgcGh5KTsKPiAJZWxzZSBp
ZiAoaW50ZWxfcGh5X2lzX3RjKGRldl9wcml2LCBwaHkpKQo+IAkJcmV0dXJuIGludGVsX3RjX3Bv
cnRfY29ubmVjdGVkKGRpZ19wb3J0KTsKPiAJZWxzZQo+LS0gCj4yLjIzLjAKPgo+X19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
