Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B010311013C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 16:28:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CB886E9CD;
	Tue,  3 Dec 2019 15:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5722E6E9CD
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 15:28:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 07:28:06 -0800
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="205008870"
Received: from shaywa1-mobl.ger.corp.intel.com (HELO [10.252.9.203])
 ([10.252.9.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 03 Dec 2019 07:28:05 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191203115339.2943374-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3b503198-65bd-af92-c934-c994d7b7c92b@linux.intel.com>
Date: Tue, 3 Dec 2019 15:28:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191203115339.2943374-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Add a couple more
 validity checks to assert_pending()
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

Ck9uIDAzLzEyLzIwMTkgMTE6NTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBDaGVjayB0aGUgcGVu
ZGluZyByZXF1ZXN0IHN1Ym1pc3Npb24gaXMgdmFsaWQ6IHRoYXQgaXQgYXQgbGVhc3QgaGFzIGEK
PiByZWZlcmVuY2UgZm9yIHRoZSBzdWJtaXNzaW9uIGFuZCB0aGF0IHRoZSByZXF1ZXN0IGlzIG9u
IHRoZSBhY3RpdmUgbGlzdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jIHwgMyArKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IGZlZjRiN2U4MjNmNS4uMzdh
Yjk3NDJhYmU3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMTMw
Myw2ICsxMzAzLDkgQEAgYXNzZXJ0X3BlbmRpbmdfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX2Vu
Z2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cywKPiAgIAkJdW5zaWduZWQgbG9uZyBmbGFnczsKPiAg
IAkJYm9vbCBvayA9IHRydWU7Cj4gICAKPiArCQlHRU1fQlVHX09OKCFrcmVmX3JlYWQoJnJxLT5m
ZW5jZS5yZWZjb3VudCkpOwo+ICsJCUdFTV9CVUdfT04oIWk5MTVfcmVxdWVzdF9pc19hY3RpdmUo
cnEpKTsKPiArCj4gICAJCWlmIChjZSA9PSBycS0+aHdfY29udGV4dCkgewo+ICAgCQkJR0VNX1RS
QUNFX0VSUigiRHVwIGNvbnRleHQ6JWxseCBpbiBwZW5kaW5nWyV6ZF1cbiIsCj4gICAJCQkJICAg
ICAgY2UtPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0LAo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
