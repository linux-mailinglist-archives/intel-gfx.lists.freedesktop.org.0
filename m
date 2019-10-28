Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F3CE7387
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 15:22:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FA16E8BA;
	Mon, 28 Oct 2019 14:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED2A56E8BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 14:22:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 07:22:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="202521256"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 28 Oct 2019 07:22:31 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.149.60])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x9SEMT1g023897; Mon, 28 Oct 2019 14:22:30 GMT
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20191028125703.29872-1-michal.wajdeczko@intel.com>
 <157226814562.32326.13807251276342582214@skylake-alporthouse-com>
Date: Mon, 28 Oct 2019 15:22:29 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0adjjrw5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <157226814562.32326.13807251276342582214@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Use vfunc to check
 engine submission mode
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyOCBPY3QgMjAxOSAxNDowOTowNSArMDEwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0xMC0yOCAxMjo1NzowMykKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5oICAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
aAo+PiBpbmRleCA5OWRjNTc2YTRlMjUuLjIzZGRlOTA4MzM0OSAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmgKPj4gQEAgLTE0NSw0ICsxNDUsNiBAQCBzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICoKPj4gIGludGVsX3ZpcnR1YWxfZW5naW5lX2dldF9zaWJsaW5nKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdW5zaWduZWQgaW50IHNpYmxpbmcpOwo+Pgo+PiArYm9vbCBpbnRlbF9lbmdpbmVfaW5fZXhl
Y2xpc3RzX3N1Ym1pc3Npb25fbW9kZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICAKPj4gKmVuZ2lu
ZSk7Cj4KPiBQbGFubmluZyB0byB1c2UgaXQgb3V0c2lkZT8KClllcywgdGhlcmUgYXJlIGZldyBw
bGFjZXMgd2hlcmUgZ2xvYmFsIFVTRVNfR1VDX1NVQk1JU1NJT04oaTkxNSkgaXMgdXNlZCwKYW5k
IHNvbWUgb2YgdGhlbSBjYW4gYmUgcmVwbGFjZWQgYnkgaW5fZXhlY2xpc3RzX3N1Ym1pc3Npb25f
bW9kZShlKSByaWdodAphd2F5IChpOTE1X3BlcmYuYykuCgpBbmQgZm9yIG90aGVycyB3ZSBjYW4g
dXNlIHNhbWUgYXBwcm9hY2ggYW5kIHByb3ZpZGUgdHdpbiBpbl9ndWNfbW9kZShlKSBhbmQKdGhl
biB1c2UgaXQgYXMgYSBiYXNlIGZvciBpbXByb3ZlZCB1c2VzX2d1Y19zdWJtaXNzaW9uKGk5MTUp
IGlmIHN0aWxsICAKbmVlZGVkLgoKQWxsIGFib3ZlIHdpbGwgaGVscCB1cyByZXZpZXcgY3VycmVu
dCB1c2FnZXMgb2YgVVNFU19HVUNfU1VCTUlTU0lPTiBtYWNybwphcyBpdCBsb29rcyBpdCdzIG1l
YW5pbmcgaXMgbm8gbG9uZ2VyIGltbXV0YWJsZSBhcyBpdCB1c2VkIHRvIGJlLgoKPiBTaG91bGQg
d2UgaGF2ZSBhIGRlZGljYXRlZCBmbGFnIGZvciB0aGUKPiBzdWJtaXNzaW9uIG1vZGU/CgpQb3Rl
bnRpYWwgcHJvYmxlbSB3aXRoIGRlZGljYXRlZCBmbGFnIGlzIHRoYXQgc29tZW9uZSBuZWVkcyB0
byBtYWludGFpbiBpdC4KClVzZSBvZiBzZXRfZGVmYXVsdF9zdWJtaXNzaW9uIHZmdW5jLCBhc3N1
bWluZyBpdCBpcyBkaWZmZXJlbnQgZm9yIGRpZmZlcmVudApzdWJtaXNzaW9uIG1vZGUgKGFuZCB0
aGlzIGlzIHRydWUgdG9kYXkpLCBnaXZlcyB1cyBhdCBsZWFzdCBzb21lIGNvbmZpZGVuY2UKdGhh
dCB3ZSByZXBvcnQgY29ycmVjdCBzdWJtaXNzaW9uIG1vZGUgYXMgdGFrZW4gZGlyZWN0bHkgZnJv
bSBlbmdpbmUgc2V0dXAuCgpNaWNoYWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
