Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8897855660
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9703F6E1BB;
	Tue, 25 Jun 2019 17:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B63A6E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:54:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469223"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:54:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:11 -0700
Message-Id: <20190625175437.14840-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/28] drm/i915: rework reading pipe disable
 fuses
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwcmVwYXJlcyB0byBoYXZlIHBvc3NpYmx5IG1vcmUgdGhhbiAzIHBpcGVzLiBJIGRpZG4n
dCB3YW50IHRvCmNvbnRpbnVlIHRoZSBwcmV2aW91cyBhcHByb2FjaCBzaW5jZSB0aGUgY2hlY2sg
Zm9yICJhcmUgdGhlIGRpc2FibGVkCnBpcGVzIHRoZSBsYXN0IG9uZXMiIHBvc2VzIGEgY29tYmlu
YXRvcnkgZXhwbG9zaW9uLiBXZSBuZWVkIHRoYXQgY2hlY2sKYmVjYXVzZSBpbiBzZXZlcmFsIHBs
YWNlcyBvZiB0aGUgY29kZSB3ZSBoYXZlIHRoYXQgYXNzdW1wdGlvbi4gSWYgdGhhdApldmVyIGJl
Y29tZXMgZmFsc2UgaW4gYSBuZXcgSFcsIG90aGVyIHBhcnRzIG9mIHRoZSBjb2RlIHdvdWxkIGhh
dmUgdG8KY2hhbmdlLgoKTm93IHdlIHN0YXJ0IGJ5IGNvbnNpZGVyaW5nIHdlIGhhdmUgaW5mby0+
bnVtX3BpcGVzIGVuYWJsZWQgYW5kIGRpc2FibGUKZWFjaCBwaXBlIHRoYXQgaXMgbWFya2VkIGFz
IGRpc2FibGVkLiBUaGVuIGl0J3MgYSBzaW1wbGUgbWF0dGVyIG9mCmNoZWNraW5nIGlmIHdlIGhh
dmUgYXQgbGVhc3Qgb25lIHBpcGUgYW5kIHRoYXQgYWxsIHRoZSBlbmFibGVkIG9uZXMgYXJlCnRo
ZSBmaXJzdCBwaXBlcywgaS5lLiB0aGVyZSBhcmUgbm8gaG9sZXMgaW4gdGhlIGJpdG1hc2suCgpD
YzogSm9zZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMzYgKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggNzEzNWQ4ZGMzMmE3Li5lNjQ1MzZl
MWZkMWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtOTI5
LDM1ICs5MjksMjUgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQl9CiAJfSBlbHNlIGlmIChIQVNfRElTUExB
WShkZXZfcHJpdikgJiYgSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KSB7CiAJCXUzMiBkZnNtID0g
STkxNV9SRUFEKFNLTF9ERlNNKTsKLQkJdTggZGlzYWJsZWRfbWFzayA9IDA7Ci0JCWJvb2wgaW52
YWxpZDsKLQkJaW50IG51bV9iaXRzOworCQl1OCBlbmFibGVkX21hc2sgPSBCSVQoaW5mby0+bnVt
X3BpcGVzKSAtIDE7CiAKIAkJaWYgKGRmc20gJiBTS0xfREZTTV9QSVBFX0FfRElTQUJMRSkKLQkJ
CWRpc2FibGVkX21hc2sgfD0gQklUKFBJUEVfQSk7CisJCQllbmFibGVkX21hc2sgJj0gfkJJVChQ
SVBFX0EpOwogCQlpZiAoZGZzbSAmIFNLTF9ERlNNX1BJUEVfQl9ESVNBQkxFKQotCQkJZGlzYWJs
ZWRfbWFzayB8PSBCSVQoUElQRV9CKTsKKwkJCWVuYWJsZWRfbWFzayAmPSB+QklUKFBJUEVfQik7
CiAJCWlmIChkZnNtICYgU0tMX0RGU01fUElQRV9DX0RJU0FCTEUpCi0JCQlkaXNhYmxlZF9tYXNr
IHw9IEJJVChQSVBFX0MpOwotCi0JCW51bV9iaXRzID0gaHdlaWdodDgoZGlzYWJsZWRfbWFzayk7
Ci0KLQkJc3dpdGNoIChkaXNhYmxlZF9tYXNrKSB7Ci0JCWNhc2UgQklUKFBJUEVfQSk6Ci0JCWNh
c2UgQklUKFBJUEVfQik6Ci0JCWNhc2UgQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKToKLQkJY2Fz
ZSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0MpOgotCQkJaW52YWxpZCA9IHRydWU7Ci0JCQlicmVh
azsKLQkJZGVmYXVsdDoKLQkJCWludmFsaWQgPSBmYWxzZTsKLQkJfQorCQkJZW5hYmxlZF9tYXNr
ICY9IH5CSVQoUElQRV9DKTsKIAotCQlpZiAobnVtX2JpdHMgPiBpbmZvLT5udW1fcGlwZXMgfHwg
aW52YWxpZCkKLQkJCURSTV9FUlJPUigiaW52YWxpZCBwaXBlIGZ1c2UgY29uZmlndXJhdGlvbjog
MHgleFxuIiwKLQkJCQkgIGRpc2FibGVkX21hc2spOworCQkvKgorCQkgKiBBdCBsZWFzdCBvbmUg
cGlwZSBzaG91bGQgYmUgZW5hYmxlZCBhbmQgaWYgdGhlcmUgYXJlCisJCSAqIGRpc2FibGVkIHBp
cGVzLCB0aGV5IHNob3VsZCBiZSB0aGUgbGFzdCBvbmVzLCB3aXRoIG5vIGhvbGVzCisJCSAqIGlu
IHRoZSBtYXNrLgorCQkgKi8KKwkJaWYgKGVuYWJsZWRfbWFzayA9PSAwIHx8ICFpc19wb3dlcl9v
Zl8yKGVuYWJsZWRfbWFzayArIDEpKQorCQkJRFJNX0VSUk9SKCJpbnZhbGlkIHBpcGUgZnVzZSBj
b25maWd1cmF0aW9uOiBlbmFibGVkX21hc2s9MHgleFxuIiwKKwkJCQkgIGVuYWJsZWRfbWFzayk7
CiAJCWVsc2UKLQkJCWluZm8tPm51bV9waXBlcyAtPSBudW1fYml0czsKKwkJCWluZm8tPm51bV9w
aXBlcyA9IGh3ZWlnaHQ4KGVuYWJsZWRfbWFzayk7CiAJfQogCiAJLyogSW5pdGlhbGl6ZSBzbGlj
ZS9zdWJzbGljZS9FVSBpbmZvICovCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
