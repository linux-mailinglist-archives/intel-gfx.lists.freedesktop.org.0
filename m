Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D29349BE9
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916976EE67;
	Thu, 25 Mar 2021 21:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1666EE61
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:40 +0000 (UTC)
IronPort-SDR: uEvDkM0jGdtz0eS4IsDnNL4z+o29dqpgE/OReuEsoQVSkX472LUf0iJ41cXKSiJpKsAgawORkc
 9eruZ8qQvgRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171005106"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171005106"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:40 -0700
IronPort-SDR: y+K4lhIJdgXBWc5fayr7N6tfCV1JiM0CCIeWZCzq+ZgzZ+dCFzhqdiOTiQLhGOlEPpz9QLo7yA
 8iWU6h00OO3g==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235739"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:48:05 +0200
Message-Id: <20210325214808.2071517-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 22/25] drm/i915: s/stride/src_stride/ in the
 intel_remapped_plane_info struct
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

QW4gdXBjb21pbmcgcGF0Y2ggYWRkcyBhIG5ldyBkc3Rfc3RyaWRlIGZpZWxkIHRvIHRoZQppbnRl
bF9yZW1hcHBlZF9wbGFuZV9pbmZvIHN0cnVjdCwgc28gZm9yIGNsYXJpdHkgcmVuYW1lIHRoZSBj
dXJyZW50CnN0cmlkZSBmaWVsZCB0byBzcmNfc3RyaWRlLgoKU2lnbmVkLW9mZi1ieTogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiLmMgICB8ICA4ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ2d0dC5jICAgICAgfCAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMgICAgICAgfCAgOCArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hX3R5cGVzLmgg
ICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jIHwg
NjAgKysrKysrKysrKystLS0tLS0tLS0tLS0KIDUgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9u
cygrKSwgNDEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
Yi5jCmluZGV4IGUxNTNmNmFlMTI5OGMuLmRjZjdlODExZDE0MjUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiLmMKQEAgLTU5MCw4ICs1OTAsOCBAQCBzdGF0aWMgdm9pZCBp
bml0X3BsYW5lX3ZpZXdfZGltcyhjb25zdCBzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmZiLCBp
bnQgY29sb3JfcAogfQogCiBzdGF0aWMgdW5zaWduZWQgaW50Ci1wbGFuZV92aWV3X3N0cmlkZV90
aWxlcyhjb25zdCBzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUs
Ci0JCQljb25zdCBzdHJ1Y3QgZmJfcGxhbmVfdmlld19kaW1zICpkaW1zKQorcGxhbmVfdmlld19z
cmNfc3RyaWRlX3RpbGVzKGNvbnN0IHN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciAqZmIsIGludCBj
b2xvcl9wbGFuZSwKKwkJCSAgICBjb25zdCBzdHJ1Y3QgZmJfcGxhbmVfdmlld19kaW1zICpkaW1z
KQogewogCXJldHVybiBESVZfUk9VTkRfVVAoZmItPmJhc2UucGl0Y2hlc1tjb2xvcl9wbGFuZV0s
CiAJCQkgICAgZGltcy0+dGlsZV93aWR0aCAqIGZiLT5iYXNlLmZvcm1hdC0+Y3BwW2NvbG9yX3Bs
YW5lXSk7CkBAIC02MzMsNyArNjMzLDcgQEAgc3RhdGljIHUzMiBjYWxjX3BsYW5lX3JlbWFwX2lu
Zm8oY29uc3Qgc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICpmYiwgaW50IGNvbG9yX3AKIAlzdHJ1
Y3QgZHJtX3JlY3QgcjsKIAogCWFzc2lnbl9jaGtfb3ZmKGk5MTUsIHJlbWFwX2luZm8tPm9mZnNl
dCwgb2JqX29mZnNldCk7Ci0JYXNzaWduX2Noa19vdmYoaTkxNSwgcmVtYXBfaW5mby0+c3RyaWRl
LCBwbGFuZV92aWV3X3N0cmlkZV90aWxlcyhmYiwgY29sb3JfcGxhbmUsIGRpbXMpKTsKKwlhc3Np
Z25fY2hrX292ZihpOTE1LCByZW1hcF9pbmZvLT5zcmNfc3RyaWRlLCBwbGFuZV92aWV3X3NyY19z
dHJpZGVfdGlsZXMoZmIsIGNvbG9yX3BsYW5lLCBkaW1zKSk7CiAJYXNzaWduX2Noa19vdmYoaTkx
NSwgcmVtYXBfaW5mby0+d2lkdGgsIHBsYW5lX3ZpZXdfd2lkdGhfdGlsZXMoZmIsIGNvbG9yX3Bs
YW5lLCBkaW1zLCB4KSk7CiAJYXNzaWduX2Noa19vdmYoaTkxNSwgcmVtYXBfaW5mby0+aGVpZ2h0
LCBwbGFuZV92aWV3X2hlaWdodF90aWxlcyhmYiwgY29sb3JfcGxhbmUsIGRpbXMsIHkpKTsKIApA
QCAtNjk5LDcgKzY5OSw3IEBAIGNhbGNfcGxhbmVfbm9ybWFsX3NpemUoY29uc3Qgc3RydWN0IGlu
dGVsX2ZyYW1lYnVmZmVyICpmYiwgaW50IGNvbG9yX3BsYW5lLAogCQkgICAgICAgeCAqIGZiLT5i
YXNlLmZvcm1hdC0+Y3BwW2NvbG9yX3BsYW5lXTsKIAkJdGlsZXMgPSBESVZfUk9VTkRfVVAoc2l6
ZSwgaW50ZWxfdGlsZV9zaXplKGk5MTUpKTsKIAl9IGVsc2UgewotCQl0aWxlcyA9IHBsYW5lX3Zp
ZXdfc3RyaWRlX3RpbGVzKGZiLCBjb2xvcl9wbGFuZSwgZGltcykgKgorCQl0aWxlcyA9IHBsYW5l
X3ZpZXdfc3JjX3N0cmlkZV90aWxlcyhmYiwgY29sb3JfcGxhbmUsIGRpbXMpICoKIAkJCXBsYW5l
X3ZpZXdfaGVpZ2h0X3RpbGVzKGZiLCBjb2xvcl9wbGFuZSwgZGltcywgeSk7CiAJCS8qCiAJCSAq
IElmIHRoZSBwbGFuZSBpc24ndCBob3Jpem9udGFsbHkgdGlsZSBhbGlnbmVkLApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ2d0dC5jCmluZGV4IGMyZmM0OTQ5NTAyOWIuLmNiMDQ4ZDBlMzY5Y2Ug
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMKQEAgLTEzMjAsNyArMTMyMCw3IEBA
IGludGVsX3JvdGF0ZV9wYWdlcyhzdHJ1Y3QgaW50ZWxfcm90YXRpb25faW5mbyAqcm90X2luZm8s
CiAJZm9yIChpID0gMCA7IGkgPCBBUlJBWV9TSVpFKHJvdF9pbmZvLT5wbGFuZSk7IGkrKykgewog
CQlzZyA9IHJvdGF0ZV9wYWdlcyhvYmosIHJvdF9pbmZvLT5wbGFuZVtpXS5vZmZzZXQsCiAJCQkJ
ICByb3RfaW5mby0+cGxhbmVbaV0ud2lkdGgsIHJvdF9pbmZvLT5wbGFuZVtpXS5oZWlnaHQsCi0J
CQkJICByb3RfaW5mby0+cGxhbmVbaV0uc3RyaWRlLCBzdCwgc2cpOworCQkJCSAgcm90X2luZm8t
PnBsYW5lW2ldLnNyY19zdHJpZGUsIHN0LCBzZyk7CiAJfQogCiAJcmV0dXJuIHN0OwpAQCAtMTQw
NCw3ICsxNDA0LDcgQEAgaW50ZWxfcmVtYXBfcGFnZXMoc3RydWN0IGludGVsX3JlbWFwcGVkX2lu
Zm8gKnJlbV9pbmZvLAogCWZvciAoaSA9IDAgOyBpIDwgQVJSQVlfU0laRShyZW1faW5mby0+cGxh
bmUpOyBpKyspIHsKIAkJc2cgPSByZW1hcF9wYWdlcyhvYmosIHJlbV9pbmZvLT5wbGFuZVtpXS5v
ZmZzZXQsCiAJCQkJIHJlbV9pbmZvLT5wbGFuZVtpXS53aWR0aCwgcmVtX2luZm8tPnBsYW5lW2ld
LmhlaWdodCwKLQkJCQkgcmVtX2luZm8tPnBsYW5lW2ldLnN0cmlkZSwgc3QsIHNnKTsKKwkJCQkg
cmVtX2luZm8tPnBsYW5lW2ldLnNyY19zdHJpZGUsIHN0LCBzZyk7CiAJfQogCiAJaTkxNV9zZ190
cmltKHN0KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggYjAwYzgyOGY5MGE3
Zi4uOWM0YjlkNDc1NzkzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTE3
NiwxMSArMTc2LDExIEBAIGk5MTVfZGVidWdmc19kZXNjcmliZV9vYmooc3RydWN0IHNlcV9maWxl
ICptLCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCQkJCXNlcV9wcmludGYobSwg
Iiwgcm90YXRlZCBbKCV1eCV1LCBzdHJpZGU9JXUsIG9mZnNldD0ldSksICgldXgldSwgc3RyaWRl
PSV1LCBvZmZzZXQ9JXUpXSIsCiAJCQkJCSAgIHZtYS0+Z2d0dF92aWV3LnJvdGF0ZWQucGxhbmVb
MF0ud2lkdGgsCiAJCQkJCSAgIHZtYS0+Z2d0dF92aWV3LnJvdGF0ZWQucGxhbmVbMF0uaGVpZ2h0
LAotCQkJCQkgICB2bWEtPmdndHRfdmlldy5yb3RhdGVkLnBsYW5lWzBdLnN0cmlkZSwKKwkJCQkJ
ICAgdm1hLT5nZ3R0X3ZpZXcucm90YXRlZC5wbGFuZVswXS5zcmNfc3RyaWRlLAogCQkJCQkgICB2
bWEtPmdndHRfdmlldy5yb3RhdGVkLnBsYW5lWzBdLm9mZnNldCwKIAkJCQkJICAgdm1hLT5nZ3R0
X3ZpZXcucm90YXRlZC5wbGFuZVsxXS53aWR0aCwKIAkJCQkJICAgdm1hLT5nZ3R0X3ZpZXcucm90
YXRlZC5wbGFuZVsxXS5oZWlnaHQsCi0JCQkJCSAgIHZtYS0+Z2d0dF92aWV3LnJvdGF0ZWQucGxh
bmVbMV0uc3RyaWRlLAorCQkJCQkgICB2bWEtPmdndHRfdmlldy5yb3RhdGVkLnBsYW5lWzFdLnNy
Y19zdHJpZGUsCiAJCQkJCSAgIHZtYS0+Z2d0dF92aWV3LnJvdGF0ZWQucGxhbmVbMV0ub2Zmc2V0
KTsKIAkJCQlicmVhazsKIApAQCAtMTg4LDExICsxODgsMTEgQEAgaTkxNV9kZWJ1Z2ZzX2Rlc2Ny
aWJlX29iaihzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmopCiAJCQkJc2VxX3ByaW50ZihtLCAiLCByZW1hcHBlZCBbKCV1eCV1LCBzdHJpZGU9JXUsIG9m
ZnNldD0ldSksICgldXgldSwgc3RyaWRlPSV1LCBvZmZzZXQ9JXUpXSIsCiAJCQkJCSAgIHZtYS0+
Z2d0dF92aWV3LnJlbWFwcGVkLnBsYW5lWzBdLndpZHRoLAogCQkJCQkgICB2bWEtPmdndHRfdmll
dy5yZW1hcHBlZC5wbGFuZVswXS5oZWlnaHQsCi0JCQkJCSAgIHZtYS0+Z2d0dF92aWV3LnJlbWFw
cGVkLnBsYW5lWzBdLnN0cmlkZSwKKwkJCQkJICAgdm1hLT5nZ3R0X3ZpZXcucmVtYXBwZWQucGxh
bmVbMF0uc3JjX3N0cmlkZSwKIAkJCQkJICAgdm1hLT5nZ3R0X3ZpZXcucmVtYXBwZWQucGxhbmVb
MF0ub2Zmc2V0LAogCQkJCQkgICB2bWEtPmdndHRfdmlldy5yZW1hcHBlZC5wbGFuZVsxXS53aWR0
aCwKIAkJCQkJICAgdm1hLT5nZ3R0X3ZpZXcucmVtYXBwZWQucGxhbmVbMV0uaGVpZ2h0LAotCQkJ
CQkgICB2bWEtPmdndHRfdmlldy5yZW1hcHBlZC5wbGFuZVsxXS5zdHJpZGUsCisJCQkJCSAgIHZt
YS0+Z2d0dF92aWV3LnJlbWFwcGVkLnBsYW5lWzFdLnNyY19zdHJpZGUsCiAJCQkJCSAgIHZtYS0+
Z2d0dF92aWV3LnJlbWFwcGVkLnBsYW5lWzFdLm9mZnNldCk7CiAJCQkJYnJlYWs7CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hX3R5cGVzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYV90eXBlcy5oCmluZGV4IDM1OGI0MzA2ZmMwMDIuLmY3ZjJhYTE2
OGM5ZWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hX3R5cGVzLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWFfdHlwZXMuaApAQCAtMTAwLDcgKzEw
MCw3IEBAIHN0cnVjdCBpbnRlbF9yZW1hcHBlZF9wbGFuZV9pbmZvIHsKIAl1MzIgb2Zmc2V0Owog
CXUxNiB3aWR0aDsKIAl1MTYgaGVpZ2h0OwotCXUxNiBzdHJpZGU7CisJdTE2IHNyY19zdHJpZGU7
CiAJdTE2IHVudXNlZF9tYno7CiB9IF9fcGFja2VkOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pOTE1X3ZtYS5jCmluZGV4IDk1ZGQ2NzEyYWM5MDUuLjlhYWY3MjAxZTI0MjEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jCkBAIC0zNjEsNyArMzYx
LDcgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgcm90YXRlZF9pbmRleChjb25zdCBzdHJ1Y3QgaW50
ZWxfcm90YXRpb25faW5mbyAqciwKIAkJCQkgICB1bnNpZ25lZCBpbnQgeCwKIAkJCQkgICB1bnNp
Z25lZCBpbnQgeSkKIHsKLQlyZXR1cm4gKHItPnBsYW5lW25dLnN0cmlkZSAqIChyLT5wbGFuZVtu
XS5oZWlnaHQgLSB5IC0gMSkgKworCXJldHVybiAoci0+cGxhbmVbbl0uc3JjX3N0cmlkZSAqIChy
LT5wbGFuZVtuXS5oZWlnaHQgLSB5IC0gMSkgKwogCQlyLT5wbGFuZVtuXS5vZmZzZXQgKyB4KTsK
IH0KIApAQCAtNDExLDcgKzQxMSw3IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIHJlbWFwcGVkX2lu
ZGV4KGNvbnN0IHN0cnVjdCBpbnRlbF9yZW1hcHBlZF9pbmZvICpyLAogCQkJCSAgICB1bnNpZ25l
ZCBpbnQgeCwKIAkJCQkgICAgdW5zaWduZWQgaW50IHkpCiB7Ci0JcmV0dXJuIChyLT5wbGFuZVtu
XS5zdHJpZGUgKiB5ICsKKwlyZXR1cm4gKHItPnBsYW5lW25dLnNyY19zdHJpZGUgKiB5ICsKIAkJ
ci0+cGxhbmVbbl0ub2Zmc2V0ICsgeCk7CiB9CiAKQEAgLTQ3OSwyMSArNDc5LDIxIEBAIHN0YXRp
YyBpbnQgaWd0X3ZtYV9yb3RhdGVfcmVtYXAodm9pZCAqYXJnKQogCXN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtID0gJmdndHQtPnZtOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
Ymo7CiAJY29uc3Qgc3RydWN0IGludGVsX3JlbWFwcGVkX3BsYW5lX2luZm8gcGxhbmVzW10gPSB7
Ci0JCXsgLndpZHRoID0gMSwgLmhlaWdodCA9IDEsIC5zdHJpZGUgPSAxIH0sCi0JCXsgLndpZHRo
ID0gMiwgLmhlaWdodCA9IDIsIC5zdHJpZGUgPSAyIH0sCi0JCXsgLndpZHRoID0gNCwgLmhlaWdo
dCA9IDQsIC5zdHJpZGUgPSA0IH0sCi0JCXsgLndpZHRoID0gOCwgLmhlaWdodCA9IDgsIC5zdHJp
ZGUgPSA4IH0sCisJCXsgLndpZHRoID0gMSwgLmhlaWdodCA9IDEsIC5zcmNfc3RyaWRlID0gMSB9
LAorCQl7IC53aWR0aCA9IDIsIC5oZWlnaHQgPSAyLCAuc3JjX3N0cmlkZSA9IDIgfSwKKwkJeyAu
d2lkdGggPSA0LCAuaGVpZ2h0ID0gNCwgLnNyY19zdHJpZGUgPSA0IH0sCisJCXsgLndpZHRoID0g
OCwgLmhlaWdodCA9IDgsIC5zcmNfc3RyaWRlID0gOCB9LAogCi0JCXsgLndpZHRoID0gMywgLmhl
aWdodCA9IDUsIC5zdHJpZGUgPSAzIH0sCi0JCXsgLndpZHRoID0gMywgLmhlaWdodCA9IDUsIC5z
dHJpZGUgPSA0IH0sCi0JCXsgLndpZHRoID0gMywgLmhlaWdodCA9IDUsIC5zdHJpZGUgPSA1IH0s
CisJCXsgLndpZHRoID0gMywgLmhlaWdodCA9IDUsIC5zcmNfc3RyaWRlID0gMyB9LAorCQl7IC53
aWR0aCA9IDMsIC5oZWlnaHQgPSA1LCAuc3JjX3N0cmlkZSA9IDQgfSwKKwkJeyAud2lkdGggPSAz
LCAuaGVpZ2h0ID0gNSwgLnNyY19zdHJpZGUgPSA1IH0sCiAKLQkJeyAud2lkdGggPSA1LCAuaGVp
Z2h0ID0gMywgLnN0cmlkZSA9IDUgfSwKLQkJeyAud2lkdGggPSA1LCAuaGVpZ2h0ID0gMywgLnN0
cmlkZSA9IDcgfSwKLQkJeyAud2lkdGggPSA1LCAuaGVpZ2h0ID0gMywgLnN0cmlkZSA9IDkgfSwK
KwkJeyAud2lkdGggPSA1LCAuaGVpZ2h0ID0gMywgLnNyY19zdHJpZGUgPSA1IH0sCisJCXsgLndp
ZHRoID0gNSwgLmhlaWdodCA9IDMsIC5zcmNfc3RyaWRlID0gNyB9LAorCQl7IC53aWR0aCA9IDUs
IC5oZWlnaHQgPSAzLCAuc3JjX3N0cmlkZSA9IDkgfSwKIAotCQl7IC53aWR0aCA9IDQsIC5oZWln
aHQgPSA2LCAuc3RyaWRlID0gNiB9LAotCQl7IC53aWR0aCA9IDYsIC5oZWlnaHQgPSA0LCAuc3Ry
aWRlID0gNiB9LAorCQl7IC53aWR0aCA9IDQsIC5oZWlnaHQgPSA2LCAuc3JjX3N0cmlkZSA9IDYg
fSwKKwkJeyAud2lkdGggPSA2LCAuaGVpZ2h0ID0gNCwgLnNyY19zdHJpZGUgPSA2IH0sCiAJCXsg
fQogCX0sICphLCAqYjsKIAllbnVtIGk5MTVfZ2d0dF92aWV3X3R5cGUgdHlwZXNbXSA9IHsKQEAg
LTUyMyw4ICs1MjMsOCBAQCBzdGF0aWMgaW50IGlndF92bWFfcm90YXRlX3JlbWFwKHZvaWQgKmFy
ZykKIAkJCXN0cnVjdCBpbnRlbF9yZW1hcHBlZF9wbGFuZV9pbmZvICpwbGFuZV9pbmZvID0gdmll
dy5yZW1hcHBlZC5wbGFuZTsKIAkJCXVuc2lnbmVkIGludCBuLCBtYXhfb2Zmc2V0OwogCi0JCQlt
YXhfb2Zmc2V0ID0gbWF4KHBsYW5lX2luZm9bMF0uc3RyaWRlICogcGxhbmVfaW5mb1swXS5oZWln
aHQsCi0JCQkJCSBwbGFuZV9pbmZvWzFdLnN0cmlkZSAqIHBsYW5lX2luZm9bMV0uaGVpZ2h0KTsK
KwkJCW1heF9vZmZzZXQgPSBtYXgocGxhbmVfaW5mb1swXS5zcmNfc3RyaWRlICogcGxhbmVfaW5m
b1swXS5oZWlnaHQsCisJCQkJCSBwbGFuZV9pbmZvWzFdLnNyY19zdHJpZGUgKiBwbGFuZV9pbmZv
WzFdLmhlaWdodCk7CiAJCQlHRU1fQlVHX09OKG1heF9vZmZzZXQgPiBtYXhfcGFnZXMpOwogCQkJ
bWF4X29mZnNldCA9IG1heF9wYWdlcyAtIG1heF9vZmZzZXQ7CiAKQEAgLTU5NiwxMSArNTk2LDEx
IEBAIHN0YXRpYyBpbnQgaWd0X3ZtYV9yb3RhdGVfcmVtYXAodm9pZCAqYXJnKQogCQkJCQkJCSAg
ICAgICAicm90YXRlZCIgOiAicmVtYXBwZWQiLCBuLAogCQkJCQkJCSAgICAgICBwbGFuZV9pbmZv
WzBdLndpZHRoLAogCQkJCQkJCSAgICAgICBwbGFuZV9pbmZvWzBdLmhlaWdodCwKLQkJCQkJCQkg
ICAgICAgcGxhbmVfaW5mb1swXS5zdHJpZGUsCisJCQkJCQkJICAgICAgIHBsYW5lX2luZm9bMF0u
c3JjX3N0cmlkZSwKIAkJCQkJCQkgICAgICAgcGxhbmVfaW5mb1swXS5vZmZzZXQsCiAJCQkJCQkJ
ICAgICAgIHBsYW5lX2luZm9bMV0ud2lkdGgsCiAJCQkJCQkJICAgICAgIHBsYW5lX2luZm9bMV0u
aGVpZ2h0LAotCQkJCQkJCSAgICAgICBwbGFuZV9pbmZvWzFdLnN0cmlkZSwKKwkJCQkJCQkgICAg
ICAgcGxhbmVfaW5mb1sxXS5zcmNfc3RyaWRlLAogCQkJCQkJCSAgICAgICBwbGFuZV9pbmZvWzFd
Lm9mZnNldCk7CiAJCQkJCQkJZXJyID0gLUVJTlZBTDsKIAkJCQkJCQlnb3RvIG91dF9vYmplY3Q7
CkBAIC04NTMsMjEgKzg1MywyMSBAQCBzdGF0aWMgaW50IGlndF92bWFfcmVtYXBwZWRfZ3R0KHZv
aWQgKmFyZykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsKIAljb25z
dCBzdHJ1Y3QgaW50ZWxfcmVtYXBwZWRfcGxhbmVfaW5mbyBwbGFuZXNbXSA9IHsKLQkJeyAud2lk
dGggPSAxLCAuaGVpZ2h0ID0gMSwgLnN0cmlkZSA9IDEgfSwKLQkJeyAud2lkdGggPSAyLCAuaGVp
Z2h0ID0gMiwgLnN0cmlkZSA9IDIgfSwKLQkJeyAud2lkdGggPSA0LCAuaGVpZ2h0ID0gNCwgLnN0
cmlkZSA9IDQgfSwKLQkJeyAud2lkdGggPSA4LCAuaGVpZ2h0ID0gOCwgLnN0cmlkZSA9IDggfSwK
KwkJeyAud2lkdGggPSAxLCAuaGVpZ2h0ID0gMSwgLnNyY19zdHJpZGUgPSAxIH0sCisJCXsgLndp
ZHRoID0gMiwgLmhlaWdodCA9IDIsIC5zcmNfc3RyaWRlID0gMiB9LAorCQl7IC53aWR0aCA9IDQs
IC5oZWlnaHQgPSA0LCAuc3JjX3N0cmlkZSA9IDQgfSwKKwkJeyAud2lkdGggPSA4LCAuaGVpZ2h0
ID0gOCwgLnNyY19zdHJpZGUgPSA4IH0sCiAKLQkJeyAud2lkdGggPSAzLCAuaGVpZ2h0ID0gNSwg
LnN0cmlkZSA9IDMgfSwKLQkJeyAud2lkdGggPSAzLCAuaGVpZ2h0ID0gNSwgLnN0cmlkZSA9IDQg
fSwKLQkJeyAud2lkdGggPSAzLCAuaGVpZ2h0ID0gNSwgLnN0cmlkZSA9IDUgfSwKKwkJeyAud2lk
dGggPSAzLCAuaGVpZ2h0ID0gNSwgLnNyY19zdHJpZGUgPSAzIH0sCisJCXsgLndpZHRoID0gMywg
LmhlaWdodCA9IDUsIC5zcmNfc3RyaWRlID0gNCB9LAorCQl7IC53aWR0aCA9IDMsIC5oZWlnaHQg
PSA1LCAuc3JjX3N0cmlkZSA9IDUgfSwKIAotCQl7IC53aWR0aCA9IDUsIC5oZWlnaHQgPSAzLCAu
c3RyaWRlID0gNSB9LAotCQl7IC53aWR0aCA9IDUsIC5oZWlnaHQgPSAzLCAuc3RyaWRlID0gNyB9
LAotCQl7IC53aWR0aCA9IDUsIC5oZWlnaHQgPSAzLCAuc3RyaWRlID0gOSB9LAorCQl7IC53aWR0
aCA9IDUsIC5oZWlnaHQgPSAzLCAuc3JjX3N0cmlkZSA9IDUgfSwKKwkJeyAud2lkdGggPSA1LCAu
aGVpZ2h0ID0gMywgLnNyY19zdHJpZGUgPSA3IH0sCisJCXsgLndpZHRoID0gNSwgLmhlaWdodCA9
IDMsIC5zcmNfc3RyaWRlID0gOSB9LAogCi0JCXsgLndpZHRoID0gNCwgLmhlaWdodCA9IDYsIC5z
dHJpZGUgPSA2IH0sCi0JCXsgLndpZHRoID0gNiwgLmhlaWdodCA9IDQsIC5zdHJpZGUgPSA2IH0s
CisJCXsgLndpZHRoID0gNCwgLmhlaWdodCA9IDYsIC5zcmNfc3RyaWRlID0gNiB9LAorCQl7IC53
aWR0aCA9IDYsIC5oZWlnaHQgPSA0LCAuc3JjX3N0cmlkZSA9IDYgfSwKIAkJeyB9CiAJfSwgKnA7
CiAJZW51bSBpOTE1X2dndHRfdmlld190eXBlIHR5cGVzW10gPSB7Ci0tIAoyLjI1LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
