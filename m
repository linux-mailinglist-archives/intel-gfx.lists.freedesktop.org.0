Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AE4142263
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 05:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9E16E554;
	Mon, 20 Jan 2020 04:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2285F6E558
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 04:30:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jan 2020 20:30:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,340,1574150400"; d="scan'208";a="249836814"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jan 2020 20:30:25 -0800
Date: Mon, 20 Jan 2020 09:51:49 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200120042149.GB20564@intel.com>
References: <20200116185421.66585-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116185421.66585-1-jose.souza@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH rebased 1/3] drm/i915/dc3co: Do the full
 calculation of DC3CO exit only once
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

TG9va3MgZ29vZCB0byBtZS4KT24gMjAyMC0wMS0xNiBhdCAxMDo1NDoxOSAtMDgwMCwgSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSB3cm90ZToKPiBUaGlzIHdpbGwgY2FsY3VsYWV0IHRoZSBEQzNDTyBl
eGl0IGRlbGF5IG9ubHkgb25jZSBwZXIgZnVsbCBtb2Rlc2V0Lgo+IAo+IENjOiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+Cj4gQ2M6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0
YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4u
Z3VwdGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jIHwgMTAgKysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYwo+IGluZGV4IDFkMmZkMWE4OTI1YS4uZTY0ZTBjNGM4MGRjIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gQEAgLTgwMiw3ICs4MDIsOSBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCj4gIAlkZXZfcHJpdi0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9IDA7
Cj4gIAlkZXZfcHJpdi0+cHNyLnBpcGUgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGku
Y3J0YyktPnBpcGU7Cj4gIAlkZXZfcHJpdi0+cHNyLmRjM2NvX2VuYWJsZWQgPSAhIWNydGNfc3Rh
dGUtPmRjM2NvX2V4aXRsaW5lOwo+IC0JZGV2X3ByaXYtPnBzci5kYzNjb19leGl0X2RlbGF5ID0g
aW50ZWxfZ2V0X2ZyYW1lX3RpbWVfdXMoY3J0Y19zdGF0ZSk7Cj4gKwkvKiBEQzUvREM2IHJlcXVp
cmVkIGlkbGUgZnJhbWVzID0gNiAqLwo+ICsJdmFsID0gdXNlY3NfdG9famlmZmllcyhpbnRlbF9n
ZXRfZnJhbWVfdGltZV91cyhjcnRjX3N0YXRlKSAqIDYpOwo+ICsJZGV2X3ByaXYtPnBzci5kYzNj
b19leGl0X2RlbGF5ID0gdmFsOwo+ICAJZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyID0gY3J0Y19z
dGF0ZS0+Y3B1X3RyYW5zY29kZXI7Cj4gIAo+ICAJLyoKPiBAQCAtMTI3Nyw4ICsxMjc5LDYgQEAg
c3RhdGljIHZvaWQKPiAgdGdsX2RjM2NvX2ZsdXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKPiAgCQl1bnNpZ25lZCBpbnQgZnJvbnRidWZmZXJfYml0cywgZW51bSBmYl9vcF9v
cmlnaW4gb3JpZ2luKQo+ICB7Cj4gLQl1MzIgZGVsYXk7Cj4gLQo+ICAJbXV0ZXhfbG9jaygmZGV2
X3ByaXYtPnBzci5sb2NrKTsKPiAgCj4gIAlpZiAoIWRldl9wcml2LT5wc3IuZGMzY29fZW5hYmxl
ZCkKPiBAQCAtMTI5NiwxMCArMTI5Niw4IEBAIHRnbF9kYzNjb19mbHVzaChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJZ290byB1bmxvY2s7Cj4gIAo+ICAJdGdsX3BzcjJf
ZW5hYmxlX2RjM2NvKGRldl9wcml2KTsKPiAtCS8qIERDNS9EQzYgcmVxdWlyZWQgaWRsZSBmcmFt
ZXMgPSA2ICovCj4gLQlkZWxheSA9IDYgKiBkZXZfcHJpdi0+cHNyLmRjM2NvX2V4aXRfZGVsYXk7
Cj4gIAltb2RfZGVsYXllZF93b3JrKHN5c3RlbV93cSwgJmRldl9wcml2LT5wc3IuaWRsZV93b3Jr
LAo+IC0JCQkgdXNlY3NfdG9famlmZmllcyhkZWxheSkpOwo+ICsJCQkgZGV2X3ByaXYtPnBzci5k
YzNjb19leGl0X2RlbGF5KTsKPiAgCj4gIHVubG9jazoKPiAgCW11dGV4X3VubG9jaygmZGV2X3By
aXYtPnBzci5sb2NrKTsKPiAtLSAKPiAyLjI1LjAKPiAKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
