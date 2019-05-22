Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6DF26787
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 17:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529E889C60;
	Wed, 22 May 2019 15:57:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19EB89C56;
 Wed, 22 May 2019 15:57:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 08:57:45 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga005.fm.intel.com with ESMTP; 22 May 2019 08:57:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 16:57:18 +0100
Message-Id: <20190522155720.28723-14-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
References: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 13/15] gem_wsim: Support Icelake parts
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk9uIEljZWxh
a2Ugc2Vjb25kIHZjcyBlbmdpbmUgaXMgdmNzMiBpbnN0ZWFkIG9mIHZjczEgc28gYWRkIHNvbWUg
bG9naWNhbAp0byBwaHlzaWNhbCBpbnN0YW5jZSByZW1hcHBpbmcgYmFzZWQgb24gZW5naW5lIGRp
c2NvdmVyeSB0byBzdXBwb3J0IGl0LgoKdjI6CiAqIFJlYmFzZS4KClNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBiZW5jaG1hcmtzL2dlbV93
c2ltLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3dz
aW0uYyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwppbmRleCA2NGQxOWVkNDY5YjAuLjBjY2IyNzE1
NzVmNyAxMDA2NDQKLS0tIGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jCisrKyBiL2JlbmNobWFya3Mv
Z2VtX3dzaW0uYwpAQCAtNTUyLDYgKzU1MiwyNiBAQCBmaWxsX2VuZ2luZXNfaWRfY2xhc3MoZW51
bSBpbnRlbF9lbmdpbmVfaWQgKmxpc3QsCiAJfQogfQogCitzdGF0aWMgdW5zaWduZWQgaW50Citm
aW5kX3BoeXNpY2FsX2luc3RhbmNlKGVudW0gaW50ZWxfZW5naW5lX2lkIGNsYXNzLCB1bnNpZ25l
ZCBpbnQgbG9naWNhbCkKK3sKKwl1bnNpZ25lZCBpbnQgaSwgaiA9IDA7CisKKwlpZ3RfYXNzZXJ0
KGNsYXNzID09IFZDUyk7CisKKwlmb3IgKGkgPSAwOyBpIDwgX19udW1fZW5naW5lczsgaSsrKSB7
CisJCWlmIChfX2VuZ2luZXNbaV0uZW5naW5lX2NsYXNzICE9IEk5MTVfRU5HSU5FX0NMQVNTX1ZJ
REVPKQorCQkJY29udGludWU7CisKKwkJLyogTWFwIGxvZ2ljYWwgdG8gcGh5c2ljYWwgaW5zdGFu
Y2VzLiAqLworCQlpZiAobG9naWNhbCA9PSBqKyspCisJCQlyZXR1cm4gX19lbmdpbmVzW2ldLmVu
Z2luZV9pbnN0YW5jZTsKKwl9CisKKwlpZ3RfYXNzZXJ0KDApOworCXJldHVybiAwOworfQorCiBz
dGF0aWMgc3RydWN0IGk5MTVfZW5naW5lX2NsYXNzX2luc3RhbmNlCiBnZXRfZW5naW5lKGVudW0g
aW50ZWxfZW5naW5lX2lkIGVuZ2luZSkKIHsKQEAgLTU3MSw3ICs1OTEsNyBAQCBnZXRfZW5naW5l
KGVudW0gaW50ZWxfZW5naW5lX2lkIGVuZ2luZSkKIAljYXNlIFZDUzE6CiAJY2FzZSBWQ1MyOgog
CQljaS5lbmdpbmVfY2xhc3MgPSBJOTE1X0VOR0lORV9DTEFTU19WSURFTzsKLQkJY2kuZW5naW5l
X2luc3RhbmNlID0gZW5naW5lIC0gVkNTMTsKKwkJY2kuZW5naW5lX2luc3RhbmNlID0gZmluZF9w
aHlzaWNhbF9pbnN0YW5jZShWQ1MsIGVuZ2luZSAtIFZDUzEpOwogCQlicmVhazsKIAljYXNlIFZF
Q1M6CiAJCWNpLmVuZ2luZV9jbGFzcyA9IEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPX0VOSEFOQ0U7
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
