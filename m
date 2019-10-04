Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 281B1CB939
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 13:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0997F6EB46;
	Fri,  4 Oct 2019 11:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B83F46EB3C
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 11:35:24 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:35:14 +0200
Message-Id: <20191004113514.17064-25-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/24] semi-hax: drm/i915: Always verify ddb
 allocation
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

QW5kIG9ubHkgdmVyaWZ5IGN1cnNvciBhbGxvY2F0aW9uIHdoZW4gY3Vyc29yIHBsYW5lIGlzIGFj
dGl2ZS4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKaW5kZXggNDZlM2U4Mjk2MjUxLi4zNGM0YTU1OGE1NmIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzM2OSw3ICsxMzM2OSw3IEBA
IHN0YXRpYyB2b2lkIHZlcmlmeV93bV9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkg
KiBhbGxvY2F0aW9uLiBJbiB0aGF0IGNhc2Ugc2luY2UgdGhlIGRkYiBhbGxvY2F0aW9uIHdpbGwg
YmUgdXBkYXRlZAogCSAqIG9uY2UgdGhlIHBsYW5lIGJlY29tZXMgdmlzaWJsZSwgd2UgY2FuIHNr
aXAgdGhpcyBjaGVjawogCSAqLwotCWlmICgxKSB7CisJaWYgKENVUkNOVFIocGlwZSkgJiBNQ1VS
U09SX01PREUpIHsKIAkJc3RydWN0IHNrbF9wbGFuZV93bSAqaHdfcGxhbmVfd20sICpzd19wbGFu
ZV93bTsKIAogCQlod19wbGFuZV93bSA9ICZody0+d20ucGxhbmVzW1BMQU5FX0NVUlNPUl07CkBA
IC0xMzY2NSwxMCArMTM2NjUsMTEgQEAgaW50ZWxfbW9kZXNldF92ZXJpZnlfY3J0YyhzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywKIAkJCSAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRj
X3N0YXRlLAogCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiB7
CisJdmVyaWZ5X3dtX3N0YXRlKGNydGMsIG5ld19jcnRjX3N0YXRlKTsKKwogCWlmICghbmVlZHNf
bW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgJiYgIW5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGlwZSkK
IAkJcmV0dXJuOwogCi0JdmVyaWZ5X3dtX3N0YXRlKGNydGMsIG5ld19jcnRjX3N0YXRlKTsKIAl2
ZXJpZnlfY29ubmVjdG9yX3N0YXRlKHN0YXRlLCBjcnRjKTsKIAl2ZXJpZnlfY3J0Y19zdGF0ZShj
cnRjLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpOwogCXZlcmlmeV9zaGFyZWRfZHBs
bF9zdGF0ZShjcnRjLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpOwotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
