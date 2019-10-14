Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A7BD5B06
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 08:04:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB6B89FED;
	Mon, 14 Oct 2019 06:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C80989FED
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 06:04:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Oct 2019 23:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,294,1566889200"; d="scan'208";a="207110212"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga002.jf.intel.com with ESMTP; 13 Oct 2019 23:04:51 -0700
Date: Mon, 14 Oct 2019 11:34:54 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Juston Li <juston.li@intel.com>
Message-ID: <20191014060453.GA25849@intel.com>
References: <20191011181918.29618-1-juston.li@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011181918.29618-1-juston.li@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [intel-gfx] [PATCH] drm/i915: coffeelake supports
 hdcp2.2
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
Cc: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 nathan.d.ciobanu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMC0xMSBhdCAxMToxOToxOCAtMDcwMCwgSnVzdG9uIExpIHdyb3RlOgo+IFRoaXMg
aW5jbHVkZXMgb3RoZXIgcGxhdGZvcm1zIHRoYXQgdXRpbGl6ZSB0aGUgc2FtZSBnZW4gZ3JhcGhp
Y3MgYXMKPiBDRkw6IEFNTCwgV0hMIGFuZCBDTUwuCj4gCj4gU2lnbmVkLW9mZi1ieTogSnVzdG9u
IExpIDxqdXN0b24ubGlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkY3AuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRjcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZGNwLmMKPiBpbmRleCBlNjlmYTM0NTI4ZGYuLmY3ZGI2MWVhZWI3ZiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCj4gQEAgLTE4ODcsNyArMTg4Nyw3
IEBAIHN0YXRpYyBib29sIGlzX2hkY3AyX3N1cHBvcnRlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAKPiAgCXJldHVybiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSB8fAo+IC0JCUlTX0tB
QllMQUtFKGRldl9wcml2KSk7Cj4gKwkJSVNfS0FCWUxBS0UoZGV2X3ByaXYpIHx8IElTX0NPRkZF
RUxBS0UoZGV2X3ByaXYpKTsKTG9va3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBSYW1hbGlu
Z2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4gIH0KPiAgCj4gIHZvaWQgaW50ZWxfaGRj
cF9jb21wb25lbnRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gLS0g
Cj4gMi4yMS4wCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
