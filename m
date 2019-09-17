Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D15B4D0B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 13:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B086EBDD;
	Tue, 17 Sep 2019 11:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A6DE6EBDD
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 11:39:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 04:39:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="180745452"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 17 Sep 2019 04:39:16 -0700
Received: from [10.237.72.73] (mperes-desk.fi.intel.com [10.237.72.73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id A4B75580258;
 Tue, 17 Sep 2019 04:39:15 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190913164337.25829-1-chris@chris-wilson.co.uk>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <22b62176-53bf-3dfa-08f9-ab120766e459@linux.intel.com>
Date: Tue, 17 Sep 2019 14:39:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190913164337.25829-1-chris@chris-wilson.co.uk>
Content-Language: en-PH
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable stolen for iommu on snb/ivb
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTMvMDkvMjAxOSAxOTo0MywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IE5vdyB0aGF0IHdlIGhh
dmUgQ0kgdGVzdGluZyBvZiBpb21tdSwgbGV0J3MgZW5hYmxlIHN0b2xlbiArIGlvbW11IHdpdGgg
YQo+IGxvdCBtb3JlIGNvbmZpZGVuY2UgdGhhdCB3ZSBjYW4gZGlhZ25vc2UgYW55IHBvdGVudGlh
bCBlcm9ycy4KCkFGQUlLLCB3ZSBzdGlsbCBoYXZlbid0IGNoZWNrZWQgdGhhdCB0aGVzZSBtYWNo
aW5lcyBpbmRlZWQgaGF2ZSB0aGUKSU9NTVUgZW5hYmxlZCB5ZXQuIEFtIEkgd3Jvbmc/CgpJZiBJ
IGFtIG5vdCwgdGhlbiBsZXQncyBob2xkIHRoZSBtZXJnaW5nIG9mIHRoaXMgcGF0Y2ggOikKCk1h
cnRpbgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiBDYzogTWFydGluIFBlcmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgfCA3IC0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwo+IGluZGV4IGJmYmMzZTNkYWY5Mi4uYzUy
ZWNmNTI1YzI0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9zdG9sZW4uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9s
ZW4uYwo+IEBAIC0zNjksMTMgKzM2OSw2IEBAIGludCBpOTE1X2dlbV9pbml0X3N0b2xlbihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAkJcmV0dXJuIDA7Cj4gIAl9Cj4gIAo+
IC0JaWYgKGludGVsX3Z0ZF9hY3RpdmUoKSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpIDwgOCkgewo+
IC0JCWRldl9ub3RpY2UoZGV2X3ByaXYtPmRybS5kZXYsCj4gLQkJCSAgICIlcywgZGlzYWJsaW5n
IHVzZSBvZiBzdG9sZW4gbWVtb3J5XG4iLAo+IC0JCQkgICAiRE1BUiBhY3RpdmUiKTsKPiAtCQly
ZXR1cm4gMDsKPiAtCX0KPiAtCj4gIAlpZiAocmVzb3VyY2Vfc2l6ZSgmaW50ZWxfZ3JhcGhpY3Nf
c3RvbGVuX3JlcykgPT0gMCkKPiAgCQlyZXR1cm4gMDsKPiAgCj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
