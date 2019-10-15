Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 326CDD71E9
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 11:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BFE89F4A;
	Tue, 15 Oct 2019 09:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8106789F4A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 09:16:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 02:16:03 -0700
X-IronPort-AV: E=Sophos;i="5.67,298,1566889200"; d="scan'208";a="185754981"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Oct 2019 02:16:03 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191014220534.1662-1-chris@chris-wilson.co.uk>
 <20191014220534.1662-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1e4de31a-25c9-d266-712c-da59c632e392@linux.intel.com>
Date: Tue, 15 Oct 2019 10:16:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191014220534.1662-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/execlists: Clear semaphore
 immediately upon ELSP promotion
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

Ck9uIDE0LzEwLzIwMTkgMjM6MDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGVyZSBpcyBubyBz
aWduaWZpY2FuY2UgdG8gb3VyIGRlbGF5IGJlZm9yZSBjbGVhcmluZyB0aGUgc2VtYXBob3JlIHRo
ZQo+IGVuZ2luZSBpcyB3YWl0aW5nIG9uLCBzbyByZWxlYXNlIGl0IGFzIHNvb24gYXMgd2UgYWNr
bm93bGVkZ2UgdGhlIENTCj4gdXBkYXRlIGZvbGxvd2luZyBvdXIgcHJlZW1wdGlvbiByZXF1ZXN0
LgoKQW5kIHNpZ25pZmljYW5jZSBvZiBtb3ZpbmcgaXQgZWFybGllcj8gTW9yZSBwYXJhbGxlbGl6
YXRpb24gYmV0d2VlbiBHUFUgCmFuZCBDUFU/IENvdWxkIGRyb3AgYSBub3RlIHRvIHNheSBzby4K
Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDYgKysrLS0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggNDg0ZWZlM2I0MjczLi4yMTYz
NWRiOGQ3NmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0xOTEw
LDYgKzE5MTAsOSBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCj4gICAJCWVsc2UKPiAgIAkJCXByb21vdGUgPSBnZW44X2NzYl9wYXJzZShl
eGVjbGlzdHMsIGJ1ZiArIDIgKiBoZWFkKTsKPiAgIAkJaWYgKHByb21vdGUpIHsKPiArCQkJaWYg
KCFpbmplY3RfcHJlZW1wdF9oYW5nKGV4ZWNsaXN0cykpCj4gKwkJCQlyaW5nX3NldF9wYXVzZWQo
ZW5naW5lLCAwKTsKPiArCj4gICAJCQkvKiBjYW5jZWwgb2xkIGluZmxpZ2h0LCBwcmVwYXJlIGZv
ciBzd2l0Y2ggKi8KPiAgIAkJCXRyYWNlX3BvcnRzKGV4ZWNsaXN0cywgInByZWVtcHRlZCIsIGV4
ZWNsaXN0cy0+YWN0aXZlKTsKPiAgIAkJCXdoaWxlICgqZXhlY2xpc3RzLT5hY3RpdmUpCj4gQEAg
LTE5MjYsOSArMTkyOSw2IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKPiAgIAkJCWlmIChlbmFibGVfdGltZXNsaWNlKGV4ZWNsaXN0cykp
Cj4gICAJCQkJbW9kX3RpbWVyKCZleGVjbGlzdHMtPnRpbWVyLCBqaWZmaWVzICsgMSk7Cj4gICAK
PiAtCQkJaWYgKCFpbmplY3RfcHJlZW1wdF9oYW5nKGV4ZWNsaXN0cykpCj4gLQkJCQlyaW5nX3Nl
dF9wYXVzZWQoZW5naW5lLCAwKTsKPiAtCj4gICAJCQlXUklURV9PTkNFKGV4ZWNsaXN0cy0+cGVu
ZGluZ1swXSwgTlVMTCk7Cj4gICAJCX0gZWxzZSB7Cj4gICAJCQlHRU1fQlVHX09OKCEqZXhlY2xp
c3RzLT5hY3RpdmUpOwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
