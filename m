Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B80BB35FEFE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 02:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C0E6E982;
	Thu, 15 Apr 2021 00:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B39C6E982
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Apr 2021 00:45:43 +0000 (UTC)
IronPort-SDR: NXAe5cgjSUUQr8N6m+B5MPStd/0UKXproZj5iqxT/hFph3EJGPqgh4Ojg1GHGzscxUC9iftlTo
 G3q3j/iY5ETQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="191579049"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="191579049"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 17:45:42 -0700
IronPort-SDR: paAmg2Dpetfgo+XLdNdN1vx68cF3bx9eu65SnWD8Op3qcouyr/Jl1EzwjJFpjXZyimOWRLxqQa
 Z9/NETDTz+ZQ==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="389573960"
Received: from hchegond-ivm.ra.intel.com (HELO intel.com) ([10.23.184.25])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 17:45:41 -0700
Date: Wed, 14 Apr 2021 17:45:36 -0700
From: Harish Chegondi <harish.chegondi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210415004536.GA75059@intel.com>
References: <20210409231738.238682-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210409231738.238682-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/psr: Fix cppcheck warnings
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

T24gRnJpLCBBcHIgMDksIDIwMjEgYXQgMDQ6MTc6MzhQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBGaXggcmVkdW5kYW50IGNvbmRpdGlvbiwgY2F1Z2h0IGluIGNwcGNo
ZWNrIGJ5IGtlcm5lbCB0ZXN0IHJvYm90Lgo+IAo+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCBy
b2JvdCA8bGtwQGludGVsLmNvbT4KPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5t
dW5AaW50ZWwuY29tPgo+IEZpeGVzOiBiNjRkNmM1MTM4MGIgKCJkcm0vaTkxNS9kaXNwbGF5OiBT
dXBwb3J0IFBTUiBNdWx0aXBsZSBJbnN0YW5jZXMiKQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSGFyaXNo
IENoZWdvbmRpIDxoYXJpc2guY2hlZ29uZGlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMyArLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IDI2MjdkMGI1NThmMy4uMDZjYjI4NmU5YTRhIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gQEAgLTE1MzIs
OCArMTUzMiw3IEBAIHZvaWQgaW50ZWxfcHNyX3dhaXRfZm9yX2lkbGUoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQo+ICAJCXUzMiBwc3Jfc3RhdHVzOwo+ICAK
PiAgCQltdXRleF9sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOwo+IC0JCWlmICghaW50ZWxfZHAt
PnBzci5lbmFibGVkIHx8Cj4gLQkJICAgIChpbnRlbF9kcC0+cHNyLmVuYWJsZWQgJiYgaW50ZWxf
ZHAtPnBzci5wc3IyX2VuYWJsZWQpKSB7Cj4gKwkJaWYgKCFpbnRlbF9kcC0+cHNyLmVuYWJsZWQg
fHwgaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpIHsKPiAgCQkJbXV0ZXhfdW5sb2NrKCZpbnRl
bF9kcC0+cHNyLmxvY2spOwo+ICAJCQljb250aW51ZTsKPiAgCQl9Cj4gLS0gCj4gMi4zMS4xCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
