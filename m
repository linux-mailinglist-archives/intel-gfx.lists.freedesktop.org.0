Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F23C516C25F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 14:31:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555AD6E218;
	Tue, 25 Feb 2020 13:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437F06E218
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 13:31:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 05:31:39 -0800
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="231021041"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 05:31:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 15:31:31 +0200
Message-Id: <20200225133131.3301-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225130728.20198-1-jani.nikula@intel.com>
References: <20200225130728.20198-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2] drm/i915: significantly reduce the use of
 <drm/i915_drm.h>
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

VGhlICNpbmNsdWRlIGhhcyBiZWVuIHNwbGF0dGVyZWQgYWxsIG92ZXIgdGhlIHBsYWNlLCBidXQg
dGhlcmUgYXJlCnByZWNpb3VzIGZldyBwbGFjZXMsIGFsbCAuYyBmaWxlcywgdGhhdCBhY3R1YWxs
eSBuZWVkIGl0LgoKdjI6IHJlbW92ZSBsZWZ0b3ZlciBkb3VibGUgbmV3bGluZXMKClNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgICAgICAgfCAxIC0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oICAgICAgICAgIHwgMiAtLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyAgICAgICAgICAgfCAxIC0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmggICAgICAgICAgIHwgMiAtLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgICAgICAgfCAxIC0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oICAgICAgIHwgNCArKy0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDEg
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgICAgICAgfCAx
IC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCAgICAgICAgICAgIHwg
MiAtLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2lfdmJ0LmMgICAgICAg
fCAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZvLmMgICAgICAgICAg
IHwgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgICAgICAg
ICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jICAgICAg
ICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5oICAgICAg
ICAgIHwgMiAtLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgICAg
ICAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5oICAg
ICAgICAgIHwgMiAtLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVn
LmMgICAgICAgfCAyIC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBs
dWcuaCAgICAgICB8IDIgLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZk
cy5jICAgICAgICAgIHwgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29w
cmVnaW9uLmMgICAgICB8IDIgLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
b3ZlcmxheS5jICAgICAgIHwgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nkdm8uYyAgICAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zZHZvLmggICAgICAgICAgfCAyIC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nwcml0ZS5jICAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90di5jICAgICAgICAgICAgfCAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmRzYy5jICAgICAgICAgIHwgMiAtLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYyAgICAgICAgfCAyIC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2ludGVybmFsLmMgICAgICAgfCAyIC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgICAgICB8IDIgLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jICAgICAgIHwgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMgICAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyAgICAgICAgfCAyIC0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9nZ3R0LmMgICAgICAgICAgICAgICB8IDIgKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jICAgIHwgMiAtLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgICAgICAgICAgICAgICAgfCAyICsrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgICAgICB8IDEgLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgICAgICAgfCAxIC0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2V2aWN0LmMgICAgICAgICAgICAgIHwgMiAtLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMgICAgICAgICAgfCAyIC0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyAgICAgICAgICAgICAgICB8IDIgLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaW9jMzIuYyAgICAgICAgICAgICAgICAgIHwgMSAtCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICAgICAgICB8IDEgLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgICAgICAgfCAxICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmggICAgICAgICAgICAgICAgICAgIHwgMiAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMgICAgICAgICAgICAgICAgfCAy
IC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jICAgICAgICAgICB8
IDEgKwogaW5jbHVkZS9kcm0vaTkxNV9tZWlfaGRjcF9pbnRlcmZhY2UuaCAgICAgICAgICAgICAg
fCAxIC0KIDQ4IGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNjQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCAyMDQ5Y2Y1
YjU0ZjMuLjgzOTEyNDY0NzIwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMKQEAgLTI2LDcgKzI2LDYgQEAKICAqLwogCiAjaW5jbHVkZSA8ZHJtL2RybV9kcF9o
ZWxwZXIuaD4KLSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAogI2luY2x1ZGUgImRpc3BsYXkv
aW50ZWxfZGlzcGxheS5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
IgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaAppbmRleCBjMTcxOTlj
YWVmZjguLmUyOWU3OWZhYTAxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmgKQEAgLTMyLDggKzMyLDYgQEAKIAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAK
LSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KLQogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsKIHN0cnVjdCBpbnRlbF9lbmNvZGVyOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMKaW5kZXggZjQ5Yzk4ZjZjYjdlLi43OGY5YjZj
ZGU4MTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYwpAQCAtMzIs
NyArMzIsNiBAQAogI2luY2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgogI2luY2x1ZGUgPGRybS9kcm1f
ZWRpZC5oPgogI2luY2x1ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVyLmg+Ci0jaW5jbHVkZSA8ZHJt
L2k5MTVfZHJtLmg+CiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImludGVsX2Nv
bm5lY3Rvci5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmgKaW5kZXgg
MTY3YzY1NzlkOTcyLi45NzRkM2RmZWYyOWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuaApAQCAtNiw4ICs2LDYgQEAKICNpZm5kZWYgX19JTlRFTF9ERElfSF9fCiAj
ZGVmaW5lIF9fSU5URUxfRERJX0hfXwogCi0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+Ci0KICNp
bmNsdWRlICJpbnRlbF9kaXNwbGF5LmgiCiAKIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAzMDMx
ZTY0ZWU1MTguLmYxNTQ3ZTVhMWZlNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKQEAgLTQxLDcgKzQxLDYgQEAKICNpbmNsdWRlIDxkcm0vZHJtX3Bs
YW5lX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVyLmg+CiAjaW5jbHVk
ZSA8ZHJtL2RybV9yZWN0Lmg+Ci0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+CiAKICNpbmNsdWRl
ICJkaXNwbGF5L2ludGVsX2NydC5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZGRpLmgiCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4IGY5MmVm
YmJlYzgzOC4uZmM2NjUyM2RmYTNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaApAQCAtMjYsNyArMjYsNiBAQAogI2RlZmluZSBfSU5URUxfRElTUExB
WV9IXwogCiAjaW5jbHVkZSA8ZHJtL2RybV91dGlsLmg+Ci0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJt
Lmg+CiAKIGVudW0gbGlua19tX25fc2V0Owogc3RydWN0IGRwbGw7CkBAIC00MCw2ICszOSw3IEBA
IHN0cnVjdCBkcm1fZnJhbWVidWZmZXI7CiBzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVfYnVm
Owogc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Q7CiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsK
K3N0cnVjdCBkcm1fbW9kZV9mYl9jbWQyOwogc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4
Owogc3RydWN0IGRybV9wbGFuZTsKIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGU7CkBAIC00Nyw2ICs0
Nyw3IEBAIHN0cnVjdCBpOTE1X2dndHRfdmlldzsKIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGU7
CiBzdHJ1Y3QgaW50ZWxfY3J0YzsKIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOworc3RydWN0IGlu
dGVsX2NydGNfc3RhdGU7CiBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Owogc3RydWN0IGludGVs
X2RwOwogc3RydWN0IGludGVsX2VuY29kZXI7CkBAIC01NSw3ICs1Niw2IEBAIHN0cnVjdCBpbnRl
bF9wbGFuZTsKIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZTsKIHN0cnVjdCBpbnRlbF9yZW1hcHBl
ZF9pbmZvOwogc3RydWN0IGludGVsX3JvdGF0aW9uX2luZm87Ci1zdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZTsKIAogZW51bSBpOTE1X2dwaW8gewogCUdQSU9BLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCAwZDhhNjQzMDU0NjQu
LjIxMzZlMjY5OGZkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTM5LDcgKzM5LDYgQEAKICNpbmNsdWRlIDxkcm0vZHJt
X3Byb2JlX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fcmVjdC5oPgogI2luY2x1ZGUgPGRy
bS9kcm1fdmJsYW5rLmg+Ci0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+CiAjaW5jbHVkZSA8ZHJt
L2k5MTVfbWVpX2hkY3BfaW50ZXJmYWNlLmg+CiAjaW5jbHVkZSA8bWVkaWEvY2VjLW5vdGlmaWVy
Lmg+CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCAwYTVhOTE5
N2Y4ZjUuLjJkYjhkNDZmNjFhMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwpAQCAtNDAsNyArNDAsNiBAQAogI2luY2x1ZGUgPGRybS9kcm1fZWRpZC5oPgogI2luY2x1
ZGUgPGRybS9kcm1faGRjcC5oPgogI2luY2x1ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVyLmg+Ci0j
aW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+CiAKICNpbmNsdWRlICJpOTE1X2RlYnVnZnMuaCIKICNp
bmNsdWRlICJpOTE1X2Rydi5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5o
CmluZGV4IDNkYTE2NjA1NDc4OC4uMGM3YmU4ZWQxNDIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5oCkBAIC04LDggKzgsNiBAQAogCiAjaW5jbHVkZSA8bGludXgvdHlw
ZXMuaD4KIAotI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPgotCiAjaW5jbHVkZSAiaTkxNV9yZWcu
aCIKIAogZW51bSBwaXBlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2lfdmJ0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
aV92YnQuYwppbmRleCA2OTQ0OThmNGI3MTkuLjU3NGRjZmVjOTU3NyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2lfdmJ0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2lfdmJ0LmMKQEAgLTM2LDcgKzM2LDYgQEAKIAog
I2luY2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgogI2luY2x1ZGUgPGRybS9kcm1fZWRpZC5oPgotI2lu
Y2x1ZGUgPGRybS9pOTE1X2RybS5oPgogCiAjaW5jbHVkZSA8dmlkZW8vbWlwaV9kaXNwbGF5Lmg+
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZvLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2R2by5jCmluZGV4IDc3ZjNkMDgz
YjdhMS4uMzQxZDVjZThiMDYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2R2by5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHZvLmMKQEAgLTMwLDcgKzMwLDYgQEAKIAogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBl
ci5oPgogI2luY2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgotI2luY2x1ZGUgPGRybS9pOTE1X2RybS5o
PgogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9jb25uZWN0b3IuaCIK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYwppbmRleCBiNGZmNzcy
MjUyMzYuLmI2ZWUwZDkwMjAwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmRldi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJkZXYuYwpAQCAtNDAsNyArNDAsNiBAQAogI2luY2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgog
I2luY2x1ZGUgPGRybS9kcm1fZmJfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9mb3VyY2Mu
aD4KLSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAj
aW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9nbWJ1cy5jCmluZGV4IDRlZjhhODFhZTBhZC4uMGFhYWFhYzQ0OTczIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jCkBAIC0zMiw3ICszMiw2
IEBACiAjaW5jbHVkZSA8bGludXgvaTJjLmg+CiAKICNpbmNsdWRlIDxkcm0vZHJtX2hkY3AuaD4K
LSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3AuaAppbmRleCAxYjJlYWNhZjg5NDkuLjdjMTJhZDYwOWIxZiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmgKQEAgLTgsOCArOCw2IEBACiAKICNp
bmNsdWRlIDxsaW51eC90eXBlcy5oPgogCi0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+Ci0KIHN0
cnVjdCBkcm1fY29ubmVjdG9yOwogc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGU7CiBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMKaW5kZXggYmRiYjVjZTNmYTgxLi4wYWM5YmRmYmMwOTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkBAIC0zNiw3ICszNiw2IEBACiAjaW5jbHVkZSA8ZHJt
L2RybV9lZGlkLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9oZGNwLmg+CiAjaW5jbHVkZSA8ZHJtL2Ry
bV9zY2RjX2hlbHBlci5oPgotI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPgogI2luY2x1ZGUgPGRy
bS9pbnRlbF9scGVfYXVkaW8uaD4KIAogI2luY2x1ZGUgImk5MTVfZGVidWdmcy5oIgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuaAppbmRleCBkMzY1OWQwYjQwOGIuLjhm
ZjFmNzZhNjNkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZG1pLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmgK
QEAgLTksOCArOSw2IEBACiAjaW5jbHVkZSA8bGludXgvaGRtaS5oPgogI2luY2x1ZGUgPGxpbnV4
L3R5cGVzLmg+CiAKLSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KLQogI2luY2x1ZGUgImk5MTVf
cmVnLmgiCiAKIHN0cnVjdCBkcm1fY29ubmVjdG9yOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hvdHBsdWcuYwppbmRleCA4YWYwYWU2MWUxYmIuLjRhNjIwODg1NzQ4OCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKQEAgLTIz
LDggKzIzLDYgQEAKIAogI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgogCi0jaW5jbHVkZSA8ZHJt
L2k5MTVfZHJtLmg+Ci0KICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImludGVsX2Rp
c3BsYXlfdHlwZXMuaCIKICNpbmNsdWRlICJpbnRlbF9ob3RwbHVnLmgiCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5oCmluZGV4IDA4N2I1ZjU3YjMyMS4uMWU2
YjRmZGEyOTAwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hvdHBsdWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBs
dWcuaApAQCAtOCw4ICs4LDYgQEAKIAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAKLSNpbmNs
dWRlIDxkcm0vaTkxNV9kcm0uaD4KLQogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiBzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yOwogc3RydWN0IGludGVsX2VuY29kZXI7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jCmluZGV4IGI3YWQwYjUzNDc5MC4uMzc3NTVlMWM1ZGQx
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2ZHMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x2ZHMuYwpAQCAtMzcsNyAr
MzcsNiBAQAogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgogI2luY2x1ZGUgPGRy
bS9kcm1fY3J0Yy5oPgogI2luY2x1ZGUgPGRybS9kcm1fZWRpZC5oPgotI2luY2x1ZGUgPGRybS9p
OTE1X2RybS5oPgogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9hdG9t
aWMuaCIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3By
ZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYwpp
bmRleCBkZmQ3OGZjY2Q0NTYuLmNjNmIwMDk1OTU4NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYwpAQCAtMzAsOCArMzAsNiBAQAogI2luY2x1ZGUg
PGxpbnV4L2Zpcm13YXJlLmg+CiAjaW5jbHVkZSA8YWNwaS92aWRlby5oPgogCi0jaW5jbHVkZSA8
ZHJtL2k5MTVfZHJtLmg+Ci0KICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX3BhbmVsLmgiCiAKICNp
bmNsdWRlICJpOTE1X2Rydi5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9vdmVybGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X292ZXJsYXkuYwppbmRleCA1ZjEyMDdkZWMxMGUuLjNiMGNiMzUzNGUyYSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMKQEAgLTI3LDcgKzI3LDYgQEAK
ICAqLwogCiAjaW5jbHVkZSA8ZHJtL2RybV9mb3VyY2MuaD4KLSNpbmNsdWRlIDxkcm0vaTkxNV9k
cm0uaD4KIAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9wbS5oIgogI2luY2x1ZGUgImd0L2ludGVs
X3JpbmcuaCIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c2R2by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMKaW5kZXgg
YjA1ODgxNTA3NTJjLi42MzdkOGZlMmY4YzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfc2R2by5jCkBAIC0zNCw3ICszNCw2IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9t
aWNfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9jcnRjLmg+CiAjaW5jbHVkZSA8ZHJtL2Ry
bV9lZGlkLmg+Ci0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+CiAKICNpbmNsdWRlICJpOTE1X2Ry
di5oIgogI2luY2x1ZGUgImludGVsX2F0b21pYy5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nkdm8uaAppbmRleCBhNjZmMjI0YWExN2QuLjcyMDY1ZTQzNjBkNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmgKQEAgLTgsOCArOCw2IEBACiAK
ICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgogCi0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+Ci0K
ICNpbmNsdWRlICJpOTE1X3JlZy5oIgogCiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IDdhYmVlZmU4ZGNl
NS4uM2Y0MjIyNzJjM2NiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMKQEAgLTM3LDcgKzM3LDYgQEAKICNpbmNsdWRlIDxkcm0vZHJtX2ZvdXJjYy5oPgog
I2luY2x1ZGUgPGRybS9kcm1fcGxhbmVfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9yZWN0
Lmg+Ci0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+CiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgog
I2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdHYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dHYuYwppbmRleCA0ZjgxZWUyNmI3YWIuLmQyZTNhM2EzMjNlOSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdHYuYwpAQCAtMzMsNyArMzMsNiBAQAogI2luY2x1ZGUgPGRybS9k
cm1fYXRvbWljX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgogI2luY2x1ZGUg
PGRybS9kcm1fZWRpZC5oPgotI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPgogCiAjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9jb25uZWN0b3IuaCIKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKaW5kZXggN2NiYTU3YWU3MmZlLi45NWFkODdkNGNj
YjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCkBAIC02LDgg
KzYsNiBAQAogICogICAgICAgICBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwu
Y29tPgogICovCiAKLSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KLQogI2luY2x1ZGUgImk5MTVf
ZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgogI2luY2x1ZGUgImludGVs
X2RzaS5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKaW5k
ZXggYWRjZWJmMjJhM2QzLi5lNGE4OTNlY2Q1ZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtNjcsOCArNjcsNiBAQAogI2luY2x1ZGUgPGxpbnV4
L2xvZzIuaD4KICNpbmNsdWRlIDxsaW51eC9ub3NwZWMuaD4KIAotI2luY2x1ZGUgPGRybS9pOTE1
X2RybS5oPgotCiAjaW5jbHVkZSAiZ3QvZ2VuNl9wcGd0dC5oIgogI2luY2x1ZGUgImd0L2ludGVs
X2NvbnRleHQuaCIKICNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmgiCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCA4N2Zh
NWY0MmMzOWEuLjhlZGM0YjcyMzUyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0xMCw3ICsxMCw2IEBACiAjaW5jbHVkZSA8bGludXgv
dWFjY2Vzcy5oPgogCiAjaW5jbHVkZSA8ZHJtL2RybV9zeW5jb2JqLmg+Ci0jaW5jbHVkZSA8ZHJt
L2k5MTVfZHJtLmg+CiAKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmgiCiAK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2ludGVybmFsLmMKaW5kZXggOWNm
YjBlNDFmZjA2Li5jYmJmZjgxYWEwYWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9pbnRlcm5hbC5jCkBAIC04LDggKzgsNiBAQAogI2luY2x1ZGUgPGxpbnV4L3NsYWIu
aD4KICNpbmNsdWRlIDxsaW51eC9zd2lvdGxiLmg+CiAKLSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0u
aD4KLQogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW0uaCIKICNpbmNs
dWRlICJpOTE1X2dlbV9vYmplY3QuaCIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuaAppbmRleCBlNDRhMmY0MGI1MjAuLjJmYWE0ODFjYzE4ZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtMTEsOCArMTEsNiBAQAogI2lu
Y2x1ZGUgPGRybS9kcm1fZmlsZS5oPgogI2luY2x1ZGUgPGRybS9kcm1fZGV2aWNlLmg+CiAKLSNp
bmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KLQogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZnJvbnRi
dWZmZXIuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3RfdHlwZXMuaCIKICNpbmNsdWRlICJp
OTE1X2dlbV9ndHQuaCIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9zaHJpbmtlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlu
a2VyLmMKaW5kZXggODMwZDNmOTZlMWY2Li4wM2U1ZWI0Yzk5ZDEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jCkBAIC0xMiw3ICsxMiw2IEBACiAjaW5j
bHVkZSA8bGludXgvcGNpLmg+CiAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5oPgogI2luY2x1ZGUg
PGxpbnV4L3ZtYWxsb2MuaD4KLSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAogI2luY2x1ZGUg
Imk5MTVfdHJhY2UuaCIKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3RpbGluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGlu
Zy5jCmluZGV4IDZjNzgyNWEyZGMyYS4uMzdmNzdhZWUxMjEyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCkBAIC02LDcgKzYsNiBAQAogCiAjaW5jbHVkZSA8
bGludXgvc3RyaW5nLmg+CiAjaW5jbHVkZSA8bGludXgvYml0b3BzLmg+Ci0jaW5jbHVkZSA8ZHJt
L2k5MTVfZHJtLmg+CiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImk5MTVfZ2Vt
LmgiCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwppbmRleCA2
M2VhZDdhMmI2NGEuLjdmZmQ3YWZlYjdhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdXNlcnB0ci5jCkBAIC0xMCw4ICsxMCw2IEBACiAjaW5jbHVkZSA8bGludXgvc3dh
cC5oPgogI2luY2x1ZGUgPGxpbnV4L3NjaGVkL21tLmg+CiAKLSNpbmNsdWRlIDxkcm0vaTkxNV9k
cm0uaD4KLQogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1faW9jdGxz
LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0LmgiCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9nZ3R0LmMKaW5kZXggNDFhMDAyODFmMzY0Li4zMjJkZTE1NzdkOWMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9nZ3R0LmMKQEAgLTgsNiArOCw4IEBACiAjaW5jbHVkZSA8YXNtL3NldF9t
ZW1vcnkuaD4KICNpbmNsdWRlIDxhc20vc21wLmg+CiAKKyNpbmNsdWRlIDxkcm0vaTkxNV9kcm0u
aD4KKwogI2luY2x1ZGUgImludGVsX2d0LmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNs
dWRlICJpOTE1X3NjYXR0ZXJsaXN0LmgiCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jpbmdfc3VibWlzc2lvbi5jCmluZGV4IGY3MGI5MDNhOThiYy4uZmVlNzQzNjI2MDYwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwpA
QCAtMjksOCArMjksNiBAQAogCiAjaW5jbHVkZSA8bGludXgvbG9nMi5oPgogCi0jaW5jbHVkZSA8
ZHJtL2k5MTVfZHJtLmg+Ci0KICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgogCiAj
aW5jbHVkZSAiZ2VuNl9wcGd0dC5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcnBzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYwppbmRl
eCAzMGFlMjliMzBmMTEuLjg3OTRkMzk5ZjVjZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcnBzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cnBzLmMKQEAgLTQsNiArNCw4IEBACiAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3Jh
dGlvbgogICovCiAKKyNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KKwogI2luY2x1ZGUgImk5MTVf
ZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJpbnRlbF9ndF9pcnEuaCIK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IGRiYTVmZTEzOTFlOC4uYTc4NTYwNTc3NzdmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTQ0LDcgKzQ0LDYgQEAKICNpbmNsdWRlIDxkcm0v
ZHJtX2lvY3RsLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9pcnEuaD4KICNpbmNsdWRlIDxkcm0vZHJt
X3Byb2JlX2hlbHBlci5oPgotI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPgogCiAjaW5jbHVkZSAi
ZGlzcGxheS9pbnRlbF9hY3BpLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9hdWRpby5oIgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggZDkyY2Y5NjZmYTNmLi5jYTU0MjAwMTJhMjIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMjYsNyArMjYsNiBAQAogICovCiAKICNpbmNsdWRl
IDxkcm0vZHJtX3ZtYV9tYW5hZ2VyLmg+Ci0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+CiAjaW5j
bHVkZSA8bGludXgvZG1hLWZlbmNlLWFycmF5Lmg+CiAjaW5jbHVkZSA8bGludXgva3RocmVhZC5o
PgogI2luY2x1ZGUgPGxpbnV4L2RtYS1yZXN2Lmg+CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
ZXZpY3QuYwppbmRleCAwNjk3YmVkZWJlZWYuLjFmNTNjYWM3MjcxYiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZXZpY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ldmljdC5jCkBAIC0yNiw4ICsyNiw2IEBACiAgKgogICovCiAKLSNpbmNs
dWRlIDxkcm0vaTkxNV9kcm0uaD4KLQogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jb250ZXh0Lmgi
CiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuaCIKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9mZW5jZV9yZWcuYwppbmRleCAwNDljZDM3ODUzNDcuLjM3MDRlMzJlY2Q5YyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKQEAgLTIxLDggKzIx
LDYgQEAKICAqIElOIFRIRSBTT0ZUV0FSRS4KICAqLwogCi0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJt
Lmg+Ci0KICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImk5MTVfc2NhdHRlcmxpc3Qu
aCIKICNpbmNsdWRlICJpOTE1X3ZncHUuaCIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
aW5kZXggZTc4MzRmYTFlMGFjLi5jYjQzMzgxYjBkMzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCkBAIC0xNSw4ICsxNSw2IEBACiAjaW5jbHVkZSA8YXNtL3NldF9tZW1vcnkuaD4K
ICNpbmNsdWRlIDxhc20vc21wLmg+CiAKLSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KLQogI2lu
Y2x1ZGUgImRpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuaCIKICNpbmNsdWRlICJndC9pbnRlbF9n
dC5oIgogI2luY2x1ZGUgImd0L2ludGVsX2d0X3JlcXVlc3RzLmgiCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lvYzMyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lvYzMyLmMKaW5kZXggYzEwMDcyNDVmNDZkLi5kZjdkMTliZDliM2EgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaW9jMzIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lvYzMyLmMKQEAgLTI4LDcgKzI4LDYgQEAKICAqLwogI2luY2x1ZGUgPGxpbnV4L2Nv
bXBhdC5oPgogCi0jaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9p
b2N0bC5oPgogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmlu
ZGV4IDVkMWIxMTM0NjE0NS4uODY0YTAwNzNlNWRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
QEAgLTM0LDcgKzM0LDYgQEAKIAogI2luY2x1ZGUgPGRybS9kcm1fZHJ2Lmg+CiAjaW5jbHVkZSA8
ZHJtL2RybV9pcnEuaD4KLSNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KIAogI2luY2x1ZGUgImRp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZmlm
b191bmRlcnJ1bi5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggMWQ2NzhhYTdkNDIwLi5m
MmIyMmM1NjNhMmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtMjYsNiArMjYsNyBAQAog
I2luY2x1ZGUgPGxpbnV4L3ZnYV9zd2l0Y2hlcm9vLmg+CiAKICNpbmNsdWRlIDxkcm0vZHJtX2Ry
di5oPgorI2luY2x1ZGUgPGRybS9pOTE1X3BjaWlkcy5oPgogCiAjaW5jbHVkZSAiZGlzcGxheS9p
bnRlbF9mYmRldi5oIgogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bt
dS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuaAppbmRleCBmMWQ2Y2FkMGQ3ZDUu
Ljk0MWYwYzE0MDM3YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5oCkBAIC0xMCw3ICsxMCw3IEBA
CiAjaW5jbHVkZSA8bGludXgvaHJ0aW1lci5oPgogI2luY2x1ZGUgPGxpbnV4L3BlcmZfZXZlbnQu
aD4KICNpbmNsdWRlIDxsaW51eC9zcGlubG9ja190eXBlcy5oPgotI2luY2x1ZGUgPGRybS9pOTE1
X2RybS5oPgorI2luY2x1ZGUgPHVhcGkvZHJtL2k5MTVfZHJtLmg+CiAKIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3Bl
bmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jCmluZGV4IDg4MTJjZGQ5
MDA3Zi4uZWQyYmUzNDg5ZjhlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3N1c3BlbmQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYwpAQCAt
MjQsOCArMjQsNiBAQAogICogU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhFUiBERUFMSU5HUyBJ
TiBUSEUgU09GVFdBUkUuCiAgKi8KIAotI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPgotCiAjaW5j
bHVkZSAiZGlzcGxheS9pbnRlbF9mYmMuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2dtYnVz
LmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF92Z2EuaCIKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5jCmluZGV4IDhlOTlhZDA5NzgzMC4uZDdmZTEyNzM0ZGI4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTIzLDYgKzIzLDcgQEAK
ICAqLwogCiAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgorI2luY2x1ZGUgPGRybS9pOTE1X3Bj
aWlkcy5oPgogCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9jZGNsay5oIgogI2luY2x1ZGUgImlu
dGVsX2RldmljZV9pbmZvLmgiCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X21laV9oZGNw
X2ludGVyZmFjZS5oIGIvaW5jbHVkZS9kcm0vaTkxNV9tZWlfaGRjcF9pbnRlcmZhY2UuaAppbmRl
eCA0ZDQ4ZGU4ODkwY2EuLjcwMmY2MTMyNDNiYiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vaTkx
NV9tZWlfaGRjcF9pbnRlcmZhY2UuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X21laV9oZGNwX2lu
dGVyZmFjZS5oCkBAIC0xMiw3ICsxMiw2IEBACiAjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KICNp
bmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2hkY3AuaD4KLSNpbmNs
dWRlIDxkcm0vaTkxNV9kcm0uaD4KIAogLyoqCiAgKiBlbnVtIGhkY3BfcG9ydF90eXBlIC0gSERD
UCBwb3J0IGltcGxlbWVudGF0aW9uIHR5cGUgZGVmaW5lZCBieSBNRSBGVwotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
