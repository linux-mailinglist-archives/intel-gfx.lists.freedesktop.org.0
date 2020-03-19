Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6677818B9A5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 15:43:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D27886EA1D;
	Thu, 19 Mar 2020 14:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A56A76EA1D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 14:43:41 +0000 (UTC)
IronPort-SDR: RMuPdTEkYbv0ZOVAGt7ja/IRkn2Cg1UHwsLOrVWtF+SRllfMgDyyhkz1QWy+4Sfa3LdR4nPpbb
 0+LZUtbi8Xtw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 07:43:41 -0700
IronPort-SDR: obIxmmf3boA1vK8o2+I8jkB0y5izFq8Wy7zuR7u594o09nVQGZyzUVNvzb5HwANdnA6Lme82cF
 X/JujizAVyxA==
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="245178378"
Received: from amgotede-mobl.ger.corp.intel.com (HELO [10.254.158.140])
 ([10.254.158.140])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 07:43:39 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
 <20200319091943.7815-6-chris@chris-wilson.co.uk>
 <b5220941-797b-ade1-d6b6-78afe8c71601@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <73135453-dea9-fe7c-66d2-a829b97b5cce@linux.intel.com>
Date: Thu, 19 Mar 2020 14:43:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b5220941-797b-ade1-d6b6-78afe8c71601@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: Cancel a hung context if
 already closed
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

Ck9uIDE5LzAzLzIwMjAgMTQ6NDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDE5LzAz
LzIwMjAgMDk6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPj4gVXNlIHRoZSByZXN0b3JlZCBhYmls
aXR5IHRvIGNoZWNrIGlmIGEgY29udGV4dCBpcyBjbG9zZWQgdG8gZGVjaWRlCj4+IHdoZXRoZXIg
b3Igbm90IHRvIGltbWVkaWF0ZWx5IGJhbiB0aGUgY29udGV4dCBmcm9tIGZ1cnRoZXIgZXhlY3V0
aW9uCj4+IGFmdGVyIGEgaGFuZy4KPj4KPj4gRml4ZXM6IGJlOTBlMzQ0ODM2YSAoImRybS9pOTE1
L2d0OiBDYW5jZWwgYmFubmVkIGNvbnRleHRzIGFmdGVyIEdUIAo+PiByZXNldCIpCj4+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyB8IDUgKysrKysKPj4gwqAgMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jCj4+IGluZGV4IDlhMTViZGYzMWM3Zi4uMDAzZjI2YjQyOTk4IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPj4gQEAgLTg4LDYgKzg4LDExIEBAIHN0
YXRpYyBib29sIG1hcmtfZ3VpbHR5KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+PiDCoMKgwqDC
oMKgIGJvb2wgYmFubmVkOwo+PiDCoMKgwqDCoMKgIGludCBpOwo+PiArwqDCoMKgIGlmIChpbnRl
bF9jb250ZXh0X2lzX2Nsb3NlZChycS0+Y29udGV4dCkpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGlu
dGVsX2NvbnRleHRfc2V0X2Jhbm5lZChycS0+Y29udGV4dCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gdHJ1ZTsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gwqDCoMKgwqDCoCByY3VfcmVhZF9sb2Nr
KCk7Cj4+IMKgwqDCoMKgwqAgY3R4ID0gcmN1X2RlcmVmZXJlbmNlKHJxLT5jb250ZXh0LT5nZW1f
Y29udGV4dCk7Cj4+IMKgwqDCoMKgwqAgaWYgKGN0eCAmJiAha3JlZl9nZXRfdW5sZXNzX3plcm8o
JmN0eC0+cmVmKSkKPj4KPiAKPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KCkFsdGhvdWdoIHNoYXJkcyBhcmUgcmVwb3J0aW5nIHNvbWV0aGlu
ZyBpcyBub3QgcXVpdGUgcmlnaHQuIElzIGl0IHRoaXMgCnBhdGNoPyBEb2Vzbid0IGxvb2sgbGlr
ZSBpdC4uCgpSZWdhcmRzLAoKVHZydGtvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
