Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A97599903
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 18:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A36AC89C48;
	Thu, 22 Aug 2019 16:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F3389C48
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 16:20:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 09:20:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="208227144"
Received: from anshuma1-mobl1.gar.corp.intel.com (HELO [10.252.69.203])
 ([10.252.69.203])
 by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2019 09:20:27 -0700
To: intel-gfx@lists.freedesktop.org
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-7-lucas.demarchi@intel.com>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <6939d64c-eae0-fd7b-e3d3-88b5809b5621@intel.com>
Date: Thu, 22 Aug 2019 21:50:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816080503.28594-7-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/39] drm/i915/bdw+: Enable PSR in any eDP
 port
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VmVyaWZpZWQgZnJvbSBCLlNwZWNzOjc3MjMgYW5kIEIuU3BlYzo4MDQxCgpPbiA4LzE2LzIwMTkg
MTozNCBQTSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IAo+ICBGcm9tIEJEVysgdGhlIFBTUiByZWdp
c3RlcnMgbW92ZWQgZnJvbSBERElBIHRvIHRyYW5zY29kZXIsIHNvIGFueSBwb3J0Cj4gd2l0aCBh
IGVEUCBwYW5lbCBjb25uZWN0ZWQgY2FuIGhhdmUgUFNSLCBzbyBsZXRzIHJlbW92ZSB0aGlzIGxp
bWl0YXRpb24uCj4gCj4gQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5
YW5AaW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50
ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDcgKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBp
bmRleCAzNmJkYzE2ZmI0M2IuLjZlZWRkODI4MWU3MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IEBAIC01NzgsMTEgKzU3OCwxMCBAQCB2b2lkIGludGVs
X3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICAgCj4gICAJ
LyoKPiAgIAkgKiBIU1cgc3BlYyBleHBsaWNpdGx5IHNheXMgUFNSIGlzIHRpZWQgdG8gcG9ydCBB
Lgo+IC0JICogQkRXKyBwbGF0Zm9ybXMgaGF2ZSBhIGluc3RhbmNlIG9mIFBTUiByZWdpc3RlcnMg
cGVyIHRyYW5zY29kZXIgYnV0Cj4gLQkgKiBmb3Igbm93IGl0IG9ubHkgc3VwcG9ydHMgb25lIGlu
c3RhbmNlIG9mIFBTUiwgc28gbGV0cyBrZWVwIGl0Cj4gLQkgKiBoYXJkY29kZWQgdG8gUE9SVF9B
Cj4gKyAgICAgICAgICogQkRXKyBwbGF0Zm9ybXMgd2l0aCBEREkgaW1wbGVtZW50YXRpb24gb2Yg
UFNSIGhhdmUgZGlmZmVyZW50Cj4gKwkgKiBQU1IgcmVnaXN0ZXJzIHBlciB0cmFuc2NvZGVyLgo+
ICAgCSAqLwo+IC0JaWYgKGRpZ19wb3J0LT5iYXNlLnBvcnQgIT0gUE9SVF9BKSB7Cj4gKwlpZiAo
SVNfSEFTV0VMTChkZXZfcHJpdikgJiYgZGlnX3BvcnQtPmJhc2UucG9ydCAhPSBQT1JUX0EpIHsK
PiAgIAkJRFJNX0RFQlVHX0tNUygiUFNSIGNvbmRpdGlvbiBmYWlsZWQ6IFBvcnQgbm90IHN1cHBv
cnRlZFxuIik7Cj4gICAJCXJldHVybjsKPiAgIAl9Cj4gCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
