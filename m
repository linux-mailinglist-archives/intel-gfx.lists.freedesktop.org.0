Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E4335F835
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 17:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56CA96E96A;
	Wed, 14 Apr 2021 15:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCEA6E958
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 15:52:23 +0000 (UTC)
IronPort-SDR: ovRbwk51XshtkZoBnEY4EECEnq4yglI68PoLkBKDI5OHrBvm6e10X4zQiuPwuexCSooCiVI6+c
 eSvA0wtwBqtQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="181791669"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="181791669"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:23 -0700
IronPort-SDR: wKxk/FCaBZCeLO/k8tKgc75FcxWKo2GIKj2ULi7F4yLExmTFk8KNiYtwUNih/mxRJ+rqlHWYnf
 PQxYWlykT5RA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="399226598"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 18:52:03 +0300
Message-Id: <20210414155208.3161335-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414155208.3161335-1-imre.deak@intel.com>
References: <20210414155208.3161335-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/11] drm/i915/xelpd: Fallback to plane stride
 limitations when using DPT
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpHVFQg
cmVtYXBwaW5nIGFsbG93IHVzIHRvIGhhdmUgcGxhbmVzIHdpdGggc3RyaWRlcyBsYXJnZXIgdGhh
biBIVwpzdXBwb3J0cyBidXQgRFBUICsgR1RUIHJlbWFwcGluZyBpcyBzdGlsbCBub3QgcHJvcGVy
bHkgaGFuZGxlZCBzbwpmYWxsaW5nIGJhY2sgdG8gcGxhbmUgSFcgbGltaXRhdGlvbnMgZm9yIG5v
dy4KClRoaXMgcGF0Y2ggY2FuIGJlIGRyb3BwZWQgd2hlbiBEUFQgKyBHVFQgcmVtYXBwaW5nIGlz
IGNvcnJlY3RseQpoYW5kbGVkIGJ1dCB1bnRpbCB0aGVuIHdlIG5lZWQgdGhpcyBsaW1pdGF0aW9u
IGZvciBhbGwgZGlzcGxheTEzCnBsYXRmb3JtcyB0byBhdm9pZCBwaXBlIGZhdWx0cy4KClJldmll
d2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IENsaW50IFRheWxv
ciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPgpTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jICAgICAgfCAxNSArKysrKysrLS0tLS0tLS0KIC4uLi9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgOCArKysrKystLQogMiBm
aWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDAwNjIxY2NlYTJj
NDAuLmNlNjg1YTdiYTZhMWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCkBAIC0xNTg4LDE0ICsxNTg4LDEzIEBAIHUzMiBpbnRlbF9mYl9tYXhfc3Ry
aWRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkgKgogCSAqIFRoZSBuZXcg
Q0NTIGhhc2ggbW9kZSBtYWtlcyByZW1hcHBpbmcgaW1wb3NzaWJsZQogCSAqLwotCWlmICghaXNf
Y2NzX21vZGlmaWVyKG1vZGlmaWVyKSkgewotCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49
IDcpCi0JCQlyZXR1cm4gMjU2KjEwMjQ7Ci0JCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA+PSA0KQotCQkJcmV0dXJuIDEyOCoxMDI0OwotCX0KLQotCXJldHVybiBpbnRlbF9wbGFuZV9m
Yl9tYXhfc3RyaWRlKGRldl9wcml2LCBwaXhlbF9mb3JtYXQsIG1vZGlmaWVyKTsKKwlpZiAoRElT
UExBWV9WRVIoZGV2X3ByaXYpIDwgNCB8fCBpc19jY3NfbW9kaWZpZXIobW9kaWZpZXIpIHx8CisJ
ICAgIGludGVsX21vZGlmaWVyX3VzZXNfZHB0KGRldl9wcml2LCBtb2RpZmllcikpCisJCXJldHVy
biBpbnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRlKGRldl9wcml2LCBwaXhlbF9mb3JtYXQsIG1vZGlm
aWVyKTsKKwllbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gNykKKwkJcmV0dXJuIDI1
NiAqIDEwMjQ7CisJZWxzZQorCQlyZXR1cm4gMTI4ICogMTAyNDsKIH0KIAogc3RhdGljIHUzMgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aAppbmRleCAzYzczNzM3Zjg4ZGE0Li5jZGM4ZmNiOGMyYWE3IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTk3NiwxMCAr
MTk3NiwxNCBAQCBpbnRlbF93YWl0X2Zvcl92YmxhbmtfaWZfYWN0aXZlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcAogCQlpbnRlbF93YWl0X2Zvcl92Ymxh
bmsoZGV2X3ByaXYsIHBpcGUpOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfbW9kaWZp
ZXJfdXNlc19kcHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHU2NCBtb2RpZmllcikK
K3sKKwlyZXR1cm4gRElTUExBWV9WRVIoaTkxNSkgPj0gMTMgJiYgbW9kaWZpZXIgIT0gRFJNX0ZP
Uk1BVF9NT0RfTElORUFSOworfQorCiBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZmJfdXNlc19k
cHQoY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIpCiB7Ci0JcmV0dXJuIGZiICYmIERJ
U1BMQVlfVkVSKHRvX2k5MTUoZmItPmRldikpID49IDEzICYmCi0JCWZiLT5tb2RpZmllciAhPSBE
Uk1fRk9STUFUX01PRF9MSU5FQVI7CisJcmV0dXJuIGZiICYmIGludGVsX21vZGlmaWVyX3VzZXNf
ZHB0KHRvX2k5MTUoZmItPmRldiksIGZiLT5tb2RpZmllcik7CiB9CiAKIHN0YXRpYyBpbmxpbmUg
dTMyIGludGVsX3BsYW5lX2dndHRfb2Zmc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGUpCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
