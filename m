Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687A26464C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 14:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B216E0C3;
	Wed, 10 Jul 2019 12:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ABDB6E0C2;
 Wed, 10 Jul 2019 12:36:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 05:36:54 -0700
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="170906941"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 05:36:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 10 Jul 2019 14:36:29 +0200
Message-Id: <20190710123631.26575-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190710123631.26575-1-janusz.krzysztofik@linux.intel.com>
References: <20190710123631.26575-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 4/6] drm/i915: Propagate "_remove" function
 name suffix down
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2ltaWxhciB0byB0aGUgIl9yZWxlYXNlIiBjYXNlLCBjb25zaXN0ZW50bHkgcmVwbGFjZSBtaXhl
ZAoiX2NsZWFudXAiLyJfZmluaSIvIl9maW5pX2h3IiBjb21wb25lbnRzIGZvdW5kIGluIG5hbWVz
IG9mIGZ1bmN0aW9ucwpjYWxsZWQgZnJvbSBpOTE1X2RyaXZlcl9yZW1vdmUoKSB3aXRoICJfcmVt
b3ZlIiBvciAiX2RyaXZlcl9yZW1vdmUiCnN1ZmZpeGVzIGZvciBiZXR0ZXIgY29kZSByZWFkYWJp
bGl0eS4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRv
ZmlrQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYyAgICAgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuaCAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgIHwgIDIgKy0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYyAgICB8ICA2ICsrLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmggICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAg
ICAgICAgICAgIHwgMjQgKysrKysrKysrLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDQgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d2dC5jICAgICAgICAgICAgICB8ICA1ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d2dC5oICAgICAgICAgICAgICB8ICA0ICsrLS0KIDEwIGZpbGVzIGNoYW5nZWQsIDI4IGlu
c2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMKaW5kZXggMGM5ODA4MTMyZDY3Li4zYzcyNWVkYzc5ZWYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCkBAIC0xODkxLDEwICsxODkxLDEw
IEBAIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIH0KIAogLyoqCi0gKiBpbnRlbF9iaW9zX2NsZWFudXAgLSBGcmVlIGFueSByZXNvdXJjZXMg
YWxsb2NhdGVkIGJ5IGludGVsX2Jpb3NfaW5pdCgpCisgKiBpbnRlbF9iaW9zX2RyaXZlcl9yZW1v
dmUgLSBGcmVlIGFueSByZXNvdXJjZXMgYWxsb2NhdGVkIGJ5IGludGVsX2Jpb3NfaW5pdCgpCiAg
KiBAZGV2X3ByaXY6IGk5MTUgZGV2aWNlIGluc3RhbmNlCiAgKi8KLXZvaWQgaW50ZWxfYmlvc19j
bGVhbnVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3ZvaWQgaW50ZWxfYmlv
c19kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlr
ZnJlZShkZXZfcHJpdi0+dmJ0LmNoaWxkX2Rldik7CiAJZGV2X3ByaXYtPnZidC5jaGlsZF9kZXYg
PSBOVUxMOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaAppbmRleCAw
YjdiZTYzODlhMDcuLjQ5NjkxODllNjIwZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmgKQEAgLTIyOCw3ICsyMjgsNyBAQCBzdHJ1Y3QgbWlwaV9wcHNfZGF0YSB7
CiB9IF9fcGFja2VkOwogCiB2b2lkIGludGVsX2Jpb3NfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpbnRlbF9iaW9zX2NsZWFudXAoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKK3ZvaWQgaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiBib29sIGludGVsX2Jpb3NfaXNfdmFsaWRf
dmJ0KGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IHNpemUpOwogYm9vbCBpbnRlbF9iaW9zX2lzX3R2
X3ByZXNlbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIGJvb2wgaW50ZWxf
Ymlvc19pc19sdmRzX3ByZXNlbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1
OCAqaTJjX3Bpbik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCmluZGV4IGYwOWVkYTc1NzExYS4uNDdkZDY4MmM5YTYyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTcwNjIsNyArMTcwNjIsNyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9ocGRfcG9sbF9maW5pKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJ
ZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5kKCZjb25uX2l0ZXIpOwogfQogCi12b2lkIGludGVs
X21vZGVzZXRfY2xlYW51cChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQordm9pZCBpbnRlbF9tb2Rl
c2V0X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIHsKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggNzQzN2Zj
NzFkMjg5Li41ZjQ5MzlhOWNhOTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC00NDI3LDcgKzQ0MjcsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9wb3dlcl9kb21haW5zX3ZlcmlmeV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwogICoKICAqIEl0IHdpbGwgcmV0dXJuIHdpdGggcG93ZXIgZG9tYWlu
cyBkaXNhYmxlZCAodG8gYmUgZW5hYmxlZCBsYXRlciBieQogICogaW50ZWxfcG93ZXJfZG9tYWlu
c19lbmFibGUoKSkgYW5kIG11c3QgYmUgcGFpcmVkIHdpdGgKLSAqIGludGVsX3Bvd2VyX2RvbWFp
bnNfZmluaV9odygpLgorICogaW50ZWxfcG93ZXJfZG9tYWluc19kcml2ZXJfcmVtb3ZlKCkuCiAg
Ki8KIHZvaWQgaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBib29sIHJlc3VtZSkKIHsKQEAgLTQ0NzksNyArNDQ3OSw3IEBAIHZvaWQgaW50
ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBi
b29sIHJlc3VtZSkKIH0KIAogLyoqCi0gKiBpbnRlbF9wb3dlcl9kb21haW5zX2ZpbmlfaHcgLSBk
ZWluaXRpYWxpemUgaHcgcG93ZXIgZG9tYWluIHN0YXRlCisgKiBpbnRlbF9wb3dlcl9kb21haW5z
X2RyaXZlcl9yZW1vdmUgLSBkZWluaXRpYWxpemUgaHcgcG93ZXIgZG9tYWluIHN0YXRlCiAgKiBA
aTkxNTogaTkxNSBkZXZpY2UgaW5zdGFuY2UKICAqCiAgKiBEZS1pbml0aWFsaXplcyB0aGUgZGlz
cGxheSBwb3dlciBkb21haW4gSFcgc3RhdGUuIEl0IGFsc28gZW5zdXJlcyB0aGF0IHRoZQpAQCAt
NDQ4OSw3ICs0NDg5LDcgQEAgdm9pZCBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGJvb2wgcmVzdW1lKQogICogaW50ZWxfcG93ZXJfZG9t
YWluc19kaXNhYmxlKCkpIGFuZCBtdXN0IGJlIHBhaXJlZCB3aXRoCiAgKiBpbnRlbF9wb3dlcl9k
b21haW5zX2luaXRfaHcoKS4KICAqLwotdm9pZCBpbnRlbF9wb3dlcl9kb21haW5zX2ZpbmlfaHco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit2b2lkIGludGVsX3Bvd2VyX2RvbWFpbnNf
ZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlpbnRlbF93
YWtlcmVmX3Qgd2FrZXJlZiBfX21heWJlX3VudXNlZCA9CiAJCWZldGNoX2FuZF96ZXJvKCZpOTE1
LT5wb3dlcl9kb21haW5zLndha2VyZWYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAppbmRleCA4ZjQzZjcwNTFhMTYuLmRiZDFmNWVm
MDFkMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmgKQEAgLTIxNCw3ICsyMTQsNyBAQCB2b2lkIGdlbjlfZW5hYmxlX2RjNShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogaW50IGludGVsX3Bvd2VyX2RvbWFpbnNf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpbnRlbF9wb3dl
cl9kb21haW5zX2NsZWFudXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZv
aWQgaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwgYm9vbCByZXN1bWUpOwotdm9pZCBpbnRlbF9wb3dlcl9kb21haW5zX2ZpbmlfaHco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKK3ZvaWQgaW50ZWxfcG93ZXJfZG9t
YWluc19kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiB2
b2lkIGljbF9kaXNwbGF5X2NvcmVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGJvb2wgcmVzdW1lKTsKIHZvaWQgaWNsX2Rpc3BsYXlfY29yZV91bmluaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgaW50ZWxfcG93ZXJfZG9tYWluc19lbmFi
bGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jCmluZGV4IDM2Yzg3MjIyMGY2OC4uNmU4M2ZlOTZkOTMwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMKQEAgLTc1MSwxNiArNzUxLDE2IEBAIHN0YXRpYyBpbnQgaTkxNV9sb2FkX21vZGVzZXRf
aW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCiBjbGVhbnVwX2dlbToKIAlpOTE1X2dlbV9z
dXNwZW5kKGRldl9wcml2KTsKLQlpOTE1X2dlbV9maW5pX2h3KGRldl9wcml2KTsKKwlpOTE1X2dl
bV9kcml2ZXJfcmVtb3ZlKGRldl9wcml2KTsKIAlpOTE1X2dlbV9kcml2ZXJfcmVsZWFzZShkZXZf
cHJpdik7CiBjbGVhbnVwX21vZGVzZXQ6Ci0JaW50ZWxfbW9kZXNldF9jbGVhbnVwKGRldik7CisJ
aW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKGRldik7CiBjbGVhbnVwX2lycToKIAlpbnRlbF9p
cnFfdW5pbnN0YWxsKGRldl9wcml2KTsKIAlpbnRlbF9nbWJ1c190ZWFyZG93bihkZXZfcHJpdik7
CiBjbGVhbnVwX2NzcjoKIAlpbnRlbF9jc3JfdWNvZGVfZmluaShkZXZfcHJpdik7Ci0JaW50ZWxf
cG93ZXJfZG9tYWluc19maW5pX2h3KGRldl9wcml2KTsKKwlpbnRlbF9wb3dlcl9kb21haW5zX2Ry
aXZlcl9yZW1vdmUoZGV2X3ByaXYpOwogCXZnYV9zd2l0Y2hlcm9vX3VucmVnaXN0ZXJfY2xpZW50
KHBkZXYpOwogY2xlYW51cF92Z2FfY2xpZW50OgogCXZnYV9jbGllbnRfcmVnaXN0ZXIocGRldiwg
TlVMTCwgTlVMTCwgTlVMTCk7CkBAIC0xNjkyLDEwICsxNjkyLDEwIEBAIHN0YXRpYyBpbnQgaTkx
NV9kcml2ZXJfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB9CiAK
IC8qKgotICogaTkxNV9kcml2ZXJfY2xlYW51cF9odyAtIGNsZWFudXAgdGhlIHNldHVwIGRvbmUg
aW4gaTkxNV9kcml2ZXJfaW5pdF9odygpCisgKiBpOTE1X2RyaXZlcl9od19yZW1vdmUgLSBjbGVh
bnVwIHRoZSBzZXR1cCBkb25lIGluIGk5MTVfZHJpdmVyX2h3X3Byb2JlKCkKICAqIEBkZXZfcHJp
djogZGV2aWNlIHByaXZhdGUKICAqLwotc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfY2xlYW51cF9o
dyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgdm9pZCBpOTE1X2Ry
aXZlcl9od19yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0
cnVjdCBwY2lfZGV2ICpwZGV2ID0gZGV2X3ByaXYtPmRybS5wZGV2OwogCkBAIC0xOTI5LDcgKzE5
MjksNyBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0
IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCiAJcmV0dXJuIDA7CiAKIG91dF9jbGVhbnVwX2h3
OgotCWk5MTVfZHJpdmVyX2NsZWFudXBfaHcoZGV2X3ByaXYpOworCWk5MTVfZHJpdmVyX2h3X3Jl
bW92ZShkZXZfcHJpdik7CiAJaTkxNV9nZ3R0X2RyaXZlcl9yZWxlYXNlKGRldl9wcml2KTsKIAog
CS8qIFBhcmFub2lhOiBtYWtlIHN1cmUgd2UgaGF2ZSBkaXNhYmxlZCBldmVyeXRoaW5nIGJlZm9y
ZSB3ZSBleGl0LiAqLwpAQCAtMTk3MCwxMSArMTk3MCwxMSBAQCB2b2lkIGk5MTVfZHJpdmVyX3Jl
bW92ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCiAJZHJtX2F0b21pY19oZWxwZXJfc2h1dGRv
d24oZGV2KTsKIAotCWludGVsX2d2dF9jbGVhbnVwKGRldl9wcml2KTsKKwlpbnRlbF9ndnRfZHJp
dmVyX3JlbW92ZShkZXZfcHJpdik7CiAKLQlpbnRlbF9tb2Rlc2V0X2NsZWFudXAoZGV2KTsKKwlp
bnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoZGV2KTsKIAotCWludGVsX2Jpb3NfY2xlYW51cChk
ZXZfcHJpdik7CisJaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKGRldl9wcml2KTsKIAogCXZnYV9z
d2l0Y2hlcm9vX3VucmVnaXN0ZXJfY2xpZW50KHBkZXYpOwogCXZnYV9jbGllbnRfcmVnaXN0ZXIo
cGRldiwgTlVMTCwgTlVMTCwgTlVMTCk7CkBAIC0xOTg1LDExICsxOTg1LDExIEBAIHZvaWQgaTkx
NV9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJY2FuY2VsX2RlbGF5ZWRf
d29ya19zeW5jKCZkZXZfcHJpdi0+Z3B1X2Vycm9yLmhhbmdjaGVja193b3JrKTsKIAlpOTE1X3Jl
c2V0X2Vycm9yX3N0YXRlKGRldl9wcml2KTsKIAotCWk5MTVfZ2VtX2ZpbmlfaHcoZGV2X3ByaXYp
OworCWk5MTVfZ2VtX2RyaXZlcl9yZW1vdmUoZGV2X3ByaXYpOwogCi0JaW50ZWxfcG93ZXJfZG9t
YWluc19maW5pX2h3KGRldl9wcml2KTsKKwlpbnRlbF9wb3dlcl9kb21haW5zX2RyaXZlcl9yZW1v
dmUoZGV2X3ByaXYpOwogCi0JaTkxNV9kcml2ZXJfY2xlYW51cF9odyhkZXZfcHJpdik7CisJaTkx
NV9kcml2ZXJfaHdfcmVtb3ZlKGRldl9wcml2KTsKIAogCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3Nl
cnRzKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRl
eCBiZTlhMmFkYWI1ZGMuLjIzZDk4NTNjNTkzMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBA
IC0yNTM3LDcgKzI1MzcsNyBAQCBib29sIGk5MTVfZ2VtX3Vuc2V0X3dlZGdlZChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpOTE1X2dlbV9pbml0X21taW8oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogaW50IF9fbXVzdF9jaGVjayBpOTE1X2dlbV9pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiBpbnQgX19tdXN0X2NoZWNrIGk5
MTVfZ2VtX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLXZvaWQg
aTkxNV9nZW1fZmluaV9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwordm9p
ZCBpOTE1X2dlbV9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dik7CiB2b2lkIGk5MTVfZ2VtX2RyaXZlcl9yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdik7CiBpbnQgaTkxNV9nZW1fd2FpdF9mb3JfaWRsZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkgICB1bnNpZ25lZCBpbnQgZmxhZ3MsIGxvbmcgdGltZW91
dCk7CkBAIC0yNjkzLDcgKzI2OTMsNyBAQCBta3dyaXRlX2RldmljZV9pbmZvKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIC8qIG1vZGVzZXR0aW5nICovCiBleHRlcm4gdm9pZCBp
bnRlbF9tb2Rlc2V0X2luaXRfaHcoc3RydWN0IGRybV9kZXZpY2UgKmRldik7CiBleHRlcm4gaW50
IGludGVsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKLWV4dGVybiB2b2lk
IGludGVsX21vZGVzZXRfY2xlYW51cChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKK2V4dGVybiB2
b2lkIGludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsK
IGV4dGVybiBpbnQgaW50ZWxfbW9kZXNldF92Z2Ffc2V0X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAkJCQkgICAgICAgYm9vbCBzdGF0ZSk7CiBleHRlcm4gdm9pZCBp
bnRlbF9kaXNwbGF5X3Jlc3VtZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jCmluZGV4IDUxYTBmYmFhNzgxYi4uMzdmZTJlZDJmNTgyIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKQEAgLTE2MDAsNyArMTYwMCw3IEBAIGludCBpOTE1X2dlbV9pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlyZXR1cm4gcmV0OwogfQogCi12b2lkIGk5
MTVfZ2VtX2ZpbmlfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQordm9pZCBp
OTE1X2dlbV9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IHsKIAlHRU1fQlVHX09OKGRldl9wcml2LT5ndC5hd2FrZSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2d2dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Z3Z0LmMKaW5kZXggODQyZWUyNmVmZmQ0Li5jNjZiMmQ4YTYyMTkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2d2dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d2dC5jCkBAIC0xMjIsMTMgKzEyMiwxNCBAQCBpbnQgaW50ZWxfZ3Z0X2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogfQogCiAvKioKLSAqIGludGVsX2d2dF9jbGVh
bnVwIC0gY2xlYW51cCBHVlQgY29tcG9uZW50cyB3aGVuIGk5MTUgZHJpdmVyIGlzIHVubG9hZGlu
ZworICogaW50ZWxfZ3Z0X2RyaXZlcl9yZW1vdmUgLSBjbGVhbnVwIEdWVCBjb21wb25lbnRzIHdo
ZW4gaTkxNSBkcml2ZXIgaXMKKyAqCQkJICAgICB1bmJpbmRpbmcKICAqIEBkZXZfcHJpdjogZHJt
IGk5MTUgcHJpdmF0ZSAqCiAgKgogICogVGhpcyBmdW5jdGlvbiBpcyBjYWxsZWQgYXQgdGhlIGk5
MTUgZHJpdmVyIHVubG9hZGluZyBzdGFnZSwgdG8gc2h1dGRvd24KICAqIEdWVCBjb21wb25lbnRz
IGFuZCByZWxlYXNlIHRoZSByZWxhdGVkIHJlc291cmNlcy4KICAqLwotdm9pZCBpbnRlbF9ndnRf
Y2xlYW51cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCit2b2lkIGludGVsX2d2
dF9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlp
ZiAoIWludGVsX2d2dF9hY3RpdmUoZGV2X3ByaXYpKQogCQlyZXR1cm47CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndnQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d2dC5oCmluZGV4IDg1Y2UzN2ViN2NkNi4uMjFkNThmNmI5ZTg5IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndnQuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndnQuaApAQCAtMjgsNyArMjgsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsK
IAogI2lmZGVmIENPTkZJR19EUk1fSTkxNV9HVlQKIGludCBpbnRlbF9ndnRfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotdm9pZCBpbnRlbF9ndnRfY2xlYW51cChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwordm9pZCBpbnRlbF9ndnRfZHJpdmVyX3Jl
bW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogaW50IGludGVsX2d2dF9p
bml0X2RldmljZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpbnRl
bF9ndnRfY2xlYW5fZGV2aWNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiBp
bnQgaW50ZWxfZ3Z0X2luaXRfaG9zdCh2b2lkKTsKQEAgLTM4LDcgKzM4LDcgQEAgc3RhdGljIGlu
bGluZSBpbnQgaW50ZWxfZ3Z0X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogewogCXJldHVybiAwOwogfQotc3RhdGljIGlubGluZSB2b2lkIGludGVsX2d2dF9jbGVhbnVw
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyBpbmxpbmUgdm9pZCBp
bnRlbF9ndnRfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiB7CiB9CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
