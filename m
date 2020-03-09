Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AE217E46D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 17:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C39898ED;
	Mon,  9 Mar 2020 16:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB1C898D9
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 16:16:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 09:16:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; d="scan'208";a="234049267"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga007.fm.intel.com with ESMTP; 09 Mar 2020 09:16:01 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 18:11:57 +0200
Message-Id: <20200309161204.17792-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v19 1/8] drm/i915: Start passing latency as
 parameter
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbmVlZCB0byBzdGFydCBwYXNzaW5nIG1lbW9yeSBsYXRlbmN5IGFzIGEKcGFyYW1ldGVyIHdo
ZW4gY2FsY3VsYXRpbmcgcGxhbmUgd20gbGV2ZWxzLAphcyBsYXRlbmN5IGNhbiBnZXQgY2hhbmdl
ZCBpbiBkaWZmZXJlbnQKY2lyY3Vtc3RhbmNlcyhmb3IgZXhhbXBsZSB3aXRoIG9yIHdpdGhvdXQg
U0FHVikuClNvIHdlIG5lZWQgdG8gYmUgbW9yZSBmbGV4aWJsZSBvbiB0aGF0IG1hdHRlci4KClJl
dmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMTIgKysr
KysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDgzNzUwNTRiYTI3ZC4uYzc5MjhjODcwYjBh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTQwMTYsNiArNDAxNiw3IEBAIHN0YXRpYyBp
bnQgc2tsX2NvbXB1dGVfd21fcGFyYW1zKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAogCQkJCSBpbnQgY29sb3JfcGxhbmUpOwogc3RhdGljIHZvaWQgc2tsX2NvbXB1
dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJ
CQkJIGludCBsZXZlbCwKKwkJCQkgdTMyIGxhdGVuY3ksCiAJCQkJIGNvbnN0IHN0cnVjdCBza2xf
d21fcGFyYW1zICp3cCwKIAkJCQkgY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0X3By
ZXYsCiAJCQkJIHN0cnVjdCBza2xfd21fbGV2ZWwgKnJlc3VsdCAvKiBvdXQgKi8pOwpAQCAtNDAz
OCw3ICs0MDM5LDkgQEAgc2tsX2N1cnNvcl9hbGxvY2F0aW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCByZXQp
OwogCiAJZm9yIChsZXZlbCA9IDA7IGxldmVsIDw9IG1heF9sZXZlbDsgbGV2ZWwrKykgewotCQlz
a2xfY29tcHV0ZV9wbGFuZV93bShjcnRjX3N0YXRlLCBsZXZlbCwgJndwLCAmd20sICZ3bSk7CisJ
CXUzMiBsYXRlbmN5ID0gZGV2X3ByaXYtPndtLnNrbF9sYXRlbmN5W2xldmVsXTsKKworCQlza2xf
Y29tcHV0ZV9wbGFuZV93bShjcnRjX3N0YXRlLCBsZXZlbCwgbGF0ZW5jeSwgJndwLCAmd20sICZ3
bSk7CiAJCWlmICh3bS5taW5fZGRiX2FsbG9jID09IFUxNl9NQVgpCiAJCQlicmVhazsKIApAQCAt
NDk3MiwxMiArNDk3NSwxMiBAQCBzdGF0aWMgYm9vbCBza2xfd21faGFzX2xpbmVzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IGxldmVsKQogCiBzdGF0aWMgdm9pZCBza2xf
Y29tcHV0ZV9wbGFuZV93bShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwKIAkJCQkgaW50IGxldmVsLAorCQkJCSB1MzIgbGF0ZW5jeSwKIAkJCQkgY29uc3Qgc3RydWN0
IHNrbF93bV9wYXJhbXMgKndwLAogCQkJCSBjb25zdCBzdHJ1Y3Qgc2tsX3dtX2xldmVsICpyZXN1
bHRfcHJldiwKIAkJCQkgc3RydWN0IHNrbF93bV9sZXZlbCAqcmVzdWx0IC8qIG91dCAqLykKIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUt
PnVhcGkuY3J0Yy0+ZGV2KTsKLQl1MzIgbGF0ZW5jeSA9IGRldl9wcml2LT53bS5za2xfbGF0ZW5j
eVtsZXZlbF07CiAJdWludF9maXhlZF8xNl8xNl90IG1ldGhvZDEsIG1ldGhvZDI7CiAJdWludF9m
aXhlZF8xNl8xNl90IHNlbGVjdGVkX3Jlc3VsdDsKIAl1MzIgcmVzX2Jsb2NrcywgcmVzX2xpbmVz
LCBtaW5fZGRiX2FsbG9jID0gMDsKQEAgLTUxMDYsOSArNTEwOSwxMCBAQCBza2xfY29tcHV0ZV93
bV9sZXZlbHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAKIAlm
b3IgKGxldmVsID0gMDsgbGV2ZWwgPD0gbWF4X2xldmVsOyBsZXZlbCsrKSB7CiAJCXN0cnVjdCBz
a2xfd21fbGV2ZWwgKnJlc3VsdCA9ICZsZXZlbHNbbGV2ZWxdOworCQl1MzIgbGF0ZW5jeSA9IGRl
dl9wcml2LT53bS5za2xfbGF0ZW5jeVtsZXZlbF07CiAKLQkJc2tsX2NvbXB1dGVfcGxhbmVfd20o
Y3J0Y19zdGF0ZSwgbGV2ZWwsIHdtX3BhcmFtcywKLQkJCQkgICAgIHJlc3VsdF9wcmV2LCByZXN1
bHQpOworCQlza2xfY29tcHV0ZV9wbGFuZV93bShjcnRjX3N0YXRlLCBsZXZlbCwgbGF0ZW5jeSwK
KwkJCQkgICAgIHdtX3BhcmFtcywgcmVzdWx0X3ByZXYsIHJlc3VsdCk7CiAKIAkJcmVzdWx0X3By
ZXYgPSByZXN1bHQ7CiAJfQotLSAKMi4yNC4xLjQ4NS5nYWQwNWEzZDhlNQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
