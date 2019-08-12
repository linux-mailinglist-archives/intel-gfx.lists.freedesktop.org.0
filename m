Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4978AB2B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 01:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCB16E5FE;
	Mon, 12 Aug 2019 23:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2269A6E030
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 23:32:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 16:32:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,379,1559545200"; d="scan'208";a="166884870"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 12 Aug 2019 16:32:01 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 16:31:51 -0700
Message-Id: <20190812233152.2172-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190812233152.2172-1-daniele.ceraolospurio@intel.com>
References: <20190812233152.2172-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: drop
 engine_pin/unpin_breadcrumbs_irq
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

VGhlIGxhc3QgdXNlciBoYXMgYmVlbiByZW1vdmVkLCBzbyBkcm9wIHRoZSBmdW5jdGlvbnMuCgpT
aWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyB8IDIyIC0t
LS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
LmggICAgICB8ICAzIC0tLQogMiBmaWxlcyBjaGFuZ2VkLCAyNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwppbmRleCBjZWJhMWRhNjE5
NjcuLjE1YmJkZDhjNzU1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfYnJlYWRjcnVtYnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVh
ZGNydW1icy5jCkBAIC0yMTIsMjggKzIxMiw2IEBAIHN0YXRpYyB2b2lkIHNpZ25hbF9pcnFfd29y
ayhzdHJ1Y3QgaXJxX3dvcmsgKndvcmspCiAJaW50ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycShl
bmdpbmUpOwogfQogCi12b2lkIGludGVsX2VuZ2luZV9waW5fYnJlYWRjcnVtYnNfaXJxKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLXsKLQlzdHJ1Y3QgaW50ZWxfYnJlYWRjcnVtYnMg
KmIgPSAmZW5naW5lLT5icmVhZGNydW1iczsKLQotCXNwaW5fbG9ja19pcnEoJmItPmlycV9sb2Nr
KTsKLQlpZiAoIWItPmlycV9lbmFibGVkKyspCi0JCWlycV9lbmFibGUoZW5naW5lKTsKLQlHRU1f
QlVHX09OKCFiLT5pcnFfZW5hYmxlZCk7IC8qIG5vIG92ZXJmbG93ISAqLwotCXNwaW5fdW5sb2Nr
X2lycSgmYi0+aXJxX2xvY2spOwotfQotCi12b2lkIGludGVsX2VuZ2luZV91bnBpbl9icmVhZGNy
dW1ic19pcnEoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQotewotCXN0cnVjdCBpbnRl
bF9icmVhZGNydW1icyAqYiA9ICZlbmdpbmUtPmJyZWFkY3J1bWJzOwotCi0Jc3Bpbl9sb2NrX2ly
cSgmYi0+aXJxX2xvY2spOwotCUdFTV9CVUdfT04oIWItPmlycV9lbmFibGVkKTsgLyogbm8gdW5k
ZXJmbG93ISAqLwotCWlmICghLS1iLT5pcnFfZW5hYmxlZCkKLQkJaXJxX2Rpc2FibGUoZW5naW5l
KTsKLQlzcGluX3VubG9ja19pcnEoJmItPmlycV9sb2NrKTsKLX0KLQogc3RhdGljIHZvaWQgX19p
bnRlbF9icmVhZGNydW1ic19hcm1faXJxKHN0cnVjdCBpbnRlbF9icmVhZGNydW1icyAqYikKIHsK
IAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmUuaAppbmRleCBlMTIyOGIwZTU3N2YuLmJjNjk0YWRjZDllYSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKQEAgLTMzOCw5ICszMzgsNiBAQCB2b2lkIGlu
dGVsX2VuZ2luZV9pbml0X2V4ZWNsaXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
Owogdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF9icmVhZGNydW1icyhzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpOwogdm9pZCBpbnRlbF9lbmdpbmVfZmluaV9icmVhZGNydW1icyhzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwogCi12b2lkIGludGVsX2VuZ2luZV9waW5fYnJlYWRj
cnVtYnNfaXJxKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7Ci12b2lkIGludGVsX2Vu
Z2luZV91bnBpbl9icmVhZGNydW1ic19pcnEoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KTsKLQogdm9pZCBpbnRlbF9lbmdpbmVfc2lnbmFsX2JyZWFkY3J1bWJzKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSk7CiB2b2lkIGludGVsX2VuZ2luZV9kaXNhcm1fYnJlYWRjcnVtYnMo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKIAotLSAKMi4yMi4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
