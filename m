Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ACB10B4FA
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 19:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6060C6E558;
	Wed, 27 Nov 2019 18:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2466E42E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 18:00:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 10:00:50 -0800
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="221056905"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.108])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 10:00:49 -0800
Date: Wed, 27 Nov 2019 10:00:44 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191127180032.ux6g2qob7ptxlysr@ldmartin-desk1>
References: <20191126210732.407496-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126210732.407496-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Handle SDEISR according to
 PCH rather than platform
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

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMDE6MDc6MzBQTSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPlRoZSBTb3V0aCBEaXNwbGF5IGlzIHBhcnQgb2YgdGhlIFBDSCBzbyB3ZSBzaG91bGQgdGVj
aG5pY2FsbHkgYmUgYmFzaW5nCj5vdXIgcG9ydCBkZXRlY3Rpb24gbG9naWMgb2ZmIHRoZSBQQ0gg
aW4gdXNlIHJhdGhlciB0aGFuIHRoZSBwbGF0Zm9ybQo+Z2VuZXJhdGlvbi4KPgo+Q2M6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCgpSZXZpZXdlZC1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpMdWNhcyBEZSBNYXJjaGkKCj4t
LS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA4ICsrKystLS0t
Cj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+ZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+aW5kZXggMzEyMzk1OGUyMDgxLi5k
ZGY1YmFkMWI5NjkgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+
QEAgLTU0ODcsNyArNTQ4Nyw3IEBAIHN0YXRpYyBib29sIGljbF9jb21ib19wb3J0X2Nvbm5lY3Rl
ZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gCXJldHVybiBJOTE1X1JFQUQo
U0RFSVNSKSAmIFNERV9ERElfSE9UUExVR19JQ1AocG9ydCk7Cj4gfQo+Cj4tc3RhdGljIGJvb2wg
aWNsX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIp
Cj4rc3RhdGljIGJvb2wgaWNwX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIpCj4gewo+IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKPiAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9y
dCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoJmVuY29kZXItPmJhc2UpOwo+QEAgLTU1MjUs
OSArNTUyNSw5IEBAIHN0YXRpYyBib29sIF9faW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiAJCQlyZXR1cm4gZzR4X2RpZ2l0YWxfcG9y
dF9jb25uZWN0ZWQoZW5jb2Rlcik7Cj4gCX0KPgo+LQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMSkKPi0JCXJldHVybiBpY2xfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKPi0J
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMCkgfHwgSVNfR0VOOV9CQyhkZXZfcHJpdikpCj4r
CWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPj0gUENIX0lDUCkKPisJCXJldHVybiBpY3Bf
ZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChlbmNvZGVyKTsKPisJZWxzZSBpZiAoSU5URUxfUENIX1RZ
UEUoZGV2X3ByaXYpID49IFBDSF9TUFQpCj4gCQlyZXR1cm4gc3B0X2RpZ2l0YWxfcG9ydF9jb25u
ZWN0ZWQoZW5jb2Rlcik7Cj4gCWVsc2UgaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKQo+IAkJcmV0
dXJuIGJ4dF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKGVuY29kZXIpOwo+LS0gCj4yLjIzLjAKPgo+
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
