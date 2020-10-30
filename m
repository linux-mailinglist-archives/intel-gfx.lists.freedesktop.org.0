Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95642A0092
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 09:59:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE346ED0F;
	Fri, 30 Oct 2020 08:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D5F6ED13
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 08:59:22 +0000 (UTC)
IronPort-SDR: P3Ix9TDO2KjDHQqK2YlMQaYkVm8VOMUQYAnTt6vSIdJH1OfhES0X4VwiZPO0czMWFb/PWVxNVu
 vKq/zKwflysQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="155553458"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="155553458"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 01:59:22 -0700
IronPort-SDR: hE6/4+C39hSFwmacXTrTPg0Txg32GcPDzdrGN60QdJgbicdfbXG0U5eUrOQ5CL1tUhTS0h0keH
 qPeZnElH9lbA==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="351797206"
Received: from oc5mblwhs02.amr.corp.intel.com (HELO
 Win10-45-1tb161.SSPE.ch.intel.com) ([10.249.254.155])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 01:59:21 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-11-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <ddce6604-2d5d-30c5-4c7e-53cd636ff706@linux.intel.com>
Date: Fri, 30 Oct 2020 09:59:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-11-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 10/61] drm/i915: make lockdep slightly
 happier about execbuf.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzE2LzIwIDEyOjQzIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBBcyBzb29u
IGFzIHdlIGluc3RhbGwgZmVuY2VzLCB3ZSBzaG91bGQgc3RvcCBhbGxvY2F0aW5nIG1lbW9yeQo+
IGluIG9yZGVyIHRvIHByZXZlbnQgYW55IHBvdGVudGlhbCBkZWFkbG9ja3MuCj4KPiBUaGlzIGlz
IHJlcXVpcmVkIGxhdGVyIG9uLCB3aGVuIHdlIHN0YXJ0IGFkZGluZyBzdXBwb3J0IGZvcgo+IGRt
YS1mZW5jZSBhbm5vdGF0aW9ucy4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpDb21tZW50IGJlbG93LCBidXQg
d2Ugc2hvdWxkIHByb2JhYmx5IGZpeCB0aGF0IHVwIGFmdGVyd2FyZHMuCgpSZXZpZXdlZC1ieTog
VGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgoKCj4g
LS0tCj4gICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAy
NCArKysrKysrKysrKysrKy0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2
ZS5jICAgICAgICAgICAgfCAyMCArKysrKysrKy0tLS0tLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ZtYS5jICAgICAgICAgICAgICAgfCAgOCArKysrLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYS5oICAgICAgICAgICAgICAgfCAgMyArKysKPiAgIDQgZmlsZXMg
Y2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBpbmRleCAwZjVlZmNl
ZDBiODcuLjlhNDRkOWE2YjVlZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+IEBAIC00OSwxMSArNDksMTIgQEAgZW51bSB7Cj4gICAj
ZGVmaW5lIERCR19GT1JDRV9SRUxPQyAwIC8qIGNob29zZSBvbmUgb2YgdGhlIGFib3ZlISAqLwo+
ICAgfTsKPiAgIAo+IC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSEFTX1BJTgkJQklUKDMxKQo+IC0j
ZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSEFTX0ZFTkNFCQlCSVQoMzApCj4gLSNkZWZpbmUgX19FWEVD
X09CSkVDVF9ORUVEU19NQVAJCUJJVCgyOSkKPiAtI2RlZmluZSBfX0VYRUNfT0JKRUNUX05FRURT
X0JJQVMJQklUKDI4KQo+IC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSU5URVJOQUxfRkxBR1MJKH4w
dSA8PCAyOCkgLyogYWxsIG9mIHRoZSBhYm92ZSAqLwo+ICsvKiBfX0VYRUNfT0JKRUNUX05PX1JF
U0VSVkUgaXMgQklUKDMxKSwgZGVmaW5lZCBpbiBpOTE1X3ZtYS5oICovCgpVZ2guIFdlIHNob3Vs
ZCBwcm9iYWJseSBtb3ZlIHRoZXNlIGZsYWdzIHRvIGEgc2VwYXJhdGUgaGVhZGVyIGlmIHRoaXMg
aXMgCm5lZWRlZC4KU2luY2UgdGhlIHVhcGkgYXBwZWFycyB0b8KgIGFsbG93IDY0IGJpdHMgZm9y
IEVYRUMgZmxhZ3MsIGxvb2tzIGxpa2UgYSAKZ2VuZXJhbCBvdmVoYXVsIGlzIG5lZWRlZCBhdCBz
b21lIHBvaW50LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
