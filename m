Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2623711BC1F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 19:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5CA6EBC1;
	Wed, 11 Dec 2019 18:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163886EBB4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 18:45:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 10:45:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,302,1571727600"; d="scan'208";a="216016754"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.163])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 10:45:29 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 10:45:26 -0800
Message-Id: <20191211184526.142413-11-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211184526.142413-1-jose.souza@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 rebased 11/11] drm/i915/display: Add comment
 to a function that probably can be removed
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

VGhpcyBmdW5jdGlvbiBpcyBvbmx5IGNhbGxlZCBmcm9tIHBvcnQgc3luYyBhbmQgaXQgaXMgaWRl
bnRpY2FsIHRvCndoYXQgd2lsbCBiZSBleGVjdXRlZCBhZ2FpbiBpbiBpbnRlbF91cGRhdGVfY3J0
YygpIG92ZXIgcG9ydCBzeW5jCnBpcGVzLgpJZiBpdCBpcyByZWFsbHkgbmVjZXNzYXJ5IGl0IGF0
IGxlYXN0IGRlc2VydmVzIGEgYmV0dGVyIG5hbWUgYW5kIGEKY29tbWVudCwgbGVhdmluZyBpdCB0
byBwZW9wbGUgd29ya2luZyBvbiBwb3J0IHN5bmMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5u
YXZhcmVAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMGMy
NGQ3ZGZhMTUyLi5jZWU4MGY1MGNlMzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDUwNSw2ICsxNDUwNSwxMCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9zZXRfZHBfdHBfY3RsX25vcm1hbChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlpbnRl
bF9kcF9zdG9wX2xpbmtfdHJhaW4oaW50ZWxfZHApOwogfQogCisvKgorICogVE9ETzogVGhpcyBp
cyBvbmx5IGNhbGxlZCBmcm9tIHBvcnQgc3luYyBhbmQgaXQgaXMgaWRlbnRpY2FsIHRvIHdoYXQg
d2lsbCBiZQorICogZXhlY3V0ZWQgYWdhaW4gaW4gaW50ZWxfdXBkYXRlX2NydGMoKSBvdmVyIHBv
cnQgc3luYyBwaXBlcworICovCiBzdGF0aWMgdm9pZCBpbnRlbF9wb3N0X2NydGNfZW5hYmxlX3Vw
ZGF0ZXMoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkJCSAgIHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlKQogewotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
