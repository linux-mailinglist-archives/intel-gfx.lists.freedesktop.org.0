Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 420F3217B4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 13:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E5EE8995F;
	Fri, 17 May 2019 11:26:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FE6589973;
 Fri, 17 May 2019 11:26:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 04:26:01 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.11.159])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2019 04:26:00 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 17 May 2019 12:25:26 +0100
Message-Id: <20190517112526.6738-26-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 25/25] gem_wsim: Support Icelake parts
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
c2NvdmVyeSB0byBzdXBwb3J0IGl0LgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBiZW5jaG1hcmtzL2dlbV93c2ltLmMgfCAzMCAr
KysrKysrKysrKysrKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0u
YyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwppbmRleCA1MzlkZTI0M2Y2ZTguLmFhNDBjOWYwZGRl
NSAxMDA2NDQKLS0tIGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jCisrKyBiL2JlbmNobWFya3MvZ2Vt
X3dzaW0uYwpAQCAtNTU5LDYgKzU1OSwyNiBAQCBmaWxsX2VuZ2luZXNfaWRfY2xhc3MoZW51bSBp
bnRlbF9lbmdpbmVfaWQgKmxpc3QsCiAJfQogfQogCitzdGF0aWMgdW5zaWduZWQgaW50CitmaW5k
X3BoeXNpY2FsX2luc3RhbmNlKGVudW0gaW50ZWxfZW5naW5lX2lkIGNsYXNzLCB1bnNpZ25lZCBp
bnQgbG9naWNhbCkKK3sKKwl1bnNpZ25lZCBpbnQgaSwgaiA9IDA7CisKKwlpZ3RfYXNzZXJ0KGNs
YXNzID09IFZDUyk7CisKKwlmb3IgKGkgPSAwOyBpIDwgX19udW1fZW5naW5lczsgaSsrKSB7CisJ
CWlmIChfX2VuZ2luZXNbaV0uZW5naW5lX2NsYXNzICE9IEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVP
KQorCQkJY29udGludWU7CisKKwkJLyogTWFwIGxvZ2ljYWwgdG8gcGh5c2ljYWwgaW5zdGFuY2Vz
LiAqLworCQlpZiAobG9naWNhbCA9PSBqKyspCisJCQlyZXR1cm4gX19lbmdpbmVzW2ldLmVuZ2lu
ZV9pbnN0YW5jZTsKKwl9CisKKwlpZ3RfYXNzZXJ0KDApOworCXJldHVybiAwOworfQorCiBzdGF0
aWMgc3RydWN0IGk5MTVfZW5naW5lX2NsYXNzX2luc3RhbmNlCiBnZXRfZW5naW5lKGVudW0gaW50
ZWxfZW5naW5lX2lkIGVuZ2luZSkKIHsKQEAgLTU3MiwxMiArNTkyLDkgQEAgZ2V0X2VuZ2luZShl
bnVtIGludGVsX2VuZ2luZV9pZCBlbmdpbmUpCiAJCWNpLmVuZ2luZV9pbnN0YW5jZSA9IDA7CiAJ
CWJyZWFrOwogCWNhc2UgVkNTMToKLQkJY2kuZW5naW5lX2NsYXNzID0gSTkxNV9FTkdJTkVfQ0xB
U1NfVklERU87Ci0JCWNpLmVuZ2luZV9pbnN0YW5jZSA9IDA7Ci0JCWJyZWFrOwogCWNhc2UgVkNT
MjoKIAkJY2kuZW5naW5lX2NsYXNzID0gSTkxNV9FTkdJTkVfQ0xBU1NfVklERU87Ci0JCWNpLmVu
Z2luZV9pbnN0YW5jZSA9IDE7CisJCWNpLmVuZ2luZV9pbnN0YW5jZSA9IGZpbmRfcGh5c2ljYWxf
aW5zdGFuY2UoVkNTLCBlbmdpbmUgLSBWQ1MxKTsKIAkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJaWd0
X2Fzc2VydCgwKTsKQEAgLTEzNjcsMTEgKzEzODQsMTIgQEAgc3RhdGljIHVuc2lnbmVkIGludAog
ZmluZF9lbmdpbmUoc3RydWN0IGk5MTVfZW5naW5lX2NsYXNzX2luc3RhbmNlICpjaSwgdW5zaWdu
ZWQgaW50IGNvdW50LAogCSAgICBlbnVtIGludGVsX2VuZ2luZV9pZCBlbmdpbmUpCiB7Ci0Jc3Rh
dGljIHN0cnVjdCBpOTE1X2VuZ2luZV9jbGFzc19pbnN0YW5jZSBtYXBbXSA9IHsKKwl1bnNpZ25l
ZCBpbnQgdmNzMSA9IGZpbmRfcGh5c2ljYWxfaW5zdGFuY2UoVkNTLCAxKTsKKwlzdHJ1Y3QgaTkx
NV9lbmdpbmVfY2xhc3NfaW5zdGFuY2UgbWFwW10gPSB7CiAJCVtSQ1NdID0geyBJOTE1X0VOR0lO
RV9DTEFTU19SRU5ERVIsIDAgfSwKIAkJW0JDU10gPSB7IEk5MTVfRU5HSU5FX0NMQVNTX0NPUFks
IDAgfSwKIAkJW1ZDUzFdID0geyBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMCB9LAotCQlbVkNT
Ml0gPSB7IEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAxIH0sCisJCVtWQ1MyXSA9IHsgSTkxNV9F
TkdJTkVfQ0xBU1NfVklERU8sIHZjczEgfSwKIAkJW1ZFQ1NdID0geyBJOTE1X0VOR0lORV9DTEFT
U19WSURFT19FTkhBTkNFLCAwIH0sCiAJfTsKIAl1bnNpZ25lZCBpbnQgaTsKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
