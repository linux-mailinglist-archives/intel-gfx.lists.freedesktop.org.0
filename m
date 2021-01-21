Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A020B2FF7A4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 22:59:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D5206E968;
	Thu, 21 Jan 2021 21:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610916E963
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 21:59:45 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-smGZMwnZNrOn0K6Mx7k3wg-1; Thu, 21 Jan 2021 16:59:41 -0500
X-MC-Unique: smGZMwnZNrOn0K6Mx7k3wg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A874C1009476;
 Thu, 21 Jan 2021 21:59:38 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B0D9839A66;
 Thu, 21 Jan 2021 21:59:37 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 07:59:19 +1000
Message-Id: <20210121215924.18964-7-airlied@gmail.com>
In-Reply-To: <20210121215924.18964-1-airlied@gmail.com>
References: <20210121215924.18964-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: move is_ccs_modifier to an
 inline
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
Cc: Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KClRoZXJlIGlzIG5vIG5lZWQg
Zm9yIHRoaXMgdG8gYmUgb3V0IG9mIGxpbmUuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGF2ZSBBaXJs
aWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyAgICAgICB8IDggLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oICAgICAgIHwgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDggKysrKysrKysKIDMgZmlsZXMgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNmQyOTc4MTc5YWMwLi41NmNhNzAy
Mjg4ODYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CkBAIC0xNzkxLDE0ICsxNzkxLDYgQEAgaW50ZWxfZ2V0X2Zvcm1hdF9pbmZvKGNvbnN0IHN0cnVj
dCBkcm1fbW9kZV9mYl9jbWQyICpjbWQpCiAJfQogfQogCi1ib29sIGlzX2Njc19tb2RpZmllcih1
NjQgbW9kaWZpZXIpCi17Ci0JcmV0dXJuIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZX1RJ
TEVEX0dFTjEyX1JDX0NDUyB8fAotCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0Rf
WV9USUxFRF9HRU4xMl9NQ19DQ1MgfHwKLQkgICAgICAgbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRf
TU9EX1lfVElMRURfQ0NTIHx8Ci0JICAgICAgIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9Z
Zl9USUxFRF9DQ1M7Ci19Ci0KIHN0YXRpYyBpbnQgZ2VuMTJfY2NzX2F1eF9zdHJpZGUoc3RydWN0
IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjY3NfcGxhbmUpCiB7CiAJcmV0dXJuIERJVl9ST1VO
RF9VUChmYi0+cGl0Y2hlc1tza2xfY2NzX3RvX21haW5fcGxhbmUoZmIsIGNjc19wbGFuZSldLApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAppbmRleCAwYjJm
ZWQ1OGJhZGYuLmY0MjE0ZTE2MWE5ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmgKQEAgLTUwOCw3ICs1MDgsNiBAQCB2b2lkIGludGVsX2xpbmtfY29t
cHV0ZV9tX24odTE2IGJwcCwgaW50IG5sYW5lcywKIAkJCSAgICBpbnQgcGl4ZWxfY2xvY2ssIGlu
dCBsaW5rX2Nsb2NrLAogCQkJICAgIHN0cnVjdCBpbnRlbF9saW5rX21fbiAqbV9uLAogCQkJICAg
IGJvb2wgY29uc3RhbnRfbiwgYm9vbCBmZWNfZW5hYmxlKTsKLWJvb2wgaXNfY2NzX21vZGlmaWVy
KHU2NCBtb2RpZmllcik7CiB2b2lkIGxwdF9kaXNhYmxlX2Nsa291dF9kcChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdTMyIGludGVsX3BsYW5lX2ZiX21heF9zdHJpZGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJICAgICAgdTMyIHBpeGVsX2Zvcm1h
dCwgdTY0IG1vZGlmaWVyKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggNThjZWM1OWZkNGY3Li5lZDA2ZTdlNmE2MzQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oCkBAIC0xODc2LDYgKzE4NzYsMTQgQEAgc3RhdGljIGlubGluZSB1MzIgaW50ZWxfZmRpX2xp
bmtfZnJlcShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXJldHVybiBkZXZf
cHJpdi0+ZmRpX3BsbF9mcmVxOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wgaXNfY2NzX21vZGlm
aWVyKHU2NCBtb2RpZmllcikKK3sKKwlyZXR1cm4gbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9E
X1lfVElMRURfR0VOMTJfUkNfQ0NTIHx8CisJICAgICAgIG1vZGlmaWVyID09IEk5MTVfRk9STUFU
X01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUyB8fAorCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZP
Uk1BVF9NT0RfWV9USUxFRF9DQ1MgfHwKKwkgICAgICAgbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRf
TU9EX1lmX1RJTEVEX0NDUzsKK30KKwogc3RhdGljIGlubGluZSBib29sIGlzX2Njc19wbGFuZShj
b25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IHBsYW5lKQogewogCWlmICghaXNf
Y2NzX21vZGlmaWVyKGZiLT5tb2RpZmllcikpCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
