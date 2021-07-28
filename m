Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F2E3D91C8
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 17:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B26C6E84C;
	Wed, 28 Jul 2021 15:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 145916E84E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 15:23:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212676848"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212676848"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:23:33 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="417277843"
Received: from uokonkwo-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.255.229.128])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 08:23:33 -0700
Date: Wed, 28 Jul 2021 08:23:19 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>;,
 intel-gfx@lists.freedesktop.org
Message-ID: <20210728152319.GD21818@msatwood-mobl>
References: <20210722054338.12891-1-jose.souza@intel.com>
 <20210722054338.12891-10-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722054338.12891-10-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915/display/tgl+: Use PPS index
 from vbt
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMjEsIDIwMjEgYXQgMTA6NDM6MzhQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBUaWdlcmxha2UgYW5kIG5ld2VyIGhhcyB0d28gaW5zdGFuY2VzIG9m
IFBQUywgdG8gc3VwcG9ydCB1cCB0byB0d28KPiBlRFAgcGFuZWxzLgo+IAo+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpSZXZlaXdlZC1ieTogTWF0dCBBdHdvb2Qg
PG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bwcy5jIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wcHMuYwo+IGluZGV4IGY0YzE1YTFmMzFkMTUuLmVlOTJmNDE2ODM0ZTUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMKPiBAQCAtMzY4LDcgKzM2OCw4
IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bwc19nZXRfcmVnaXN0ZXJzKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsCj4gIAo+ICAJbWVtc2V0KHJlZ3MsIDAsIHNpemVvZigqcmVncykpOwo+ICAKPiAt
CWlmIChJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBJU19CUk9YVE9OKGRldl9wcml2KSkKPiAr
CWlmIChJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fCBJU19CUk9YVE9OKGRldl9wcml2KSB8fAo+
ICsJICAgIERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikKPiAgCQlwcHNfaWR4ID0gYnh0X3Bv
d2VyX3NlcXVlbmNlcl9pZHgoaW50ZWxfZHApOwo+ICAJZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhk
ZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCj4gIAkJcHBzX2lkeCA9IHZsdl9w
b3dlcl9zZXF1ZW5jZXJfcGlwZShpbnRlbF9kcCk7Cj4gLS0gCj4gMi4zMi4wCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
