Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72778109F6E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65326E3D8;
	Tue, 26 Nov 2019 13:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8506E3D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:43:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:57 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="233750178"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:42:47 +0200
Message-Id: <60989a3cf3d5c449356f5d827caf0ab5bfe3b528.1574775655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574775655.git.jani.nikula@intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v3 12/13] drm/i915/dsi: account for DSC in
 horizontal timings
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBEU0MgaXMgZW5hYmxlZCwgd2UgbmVlZCB0byBhZGp1c3QgdGhlIGhvcml6b250YWwgdGlt
aW5ncyB0byBhY2NvdW50CmZvciB0aGUgY29tcHJlc3NlZCAoYW5kIHRoZXJlZm9yZSByZWR1Y2Vk
KSBsaW5rIHNwZWVkLgoKVGhlIGNvbXByZXNzZWQgZnJlcXVlbmN5IHJhdGlvIHNpbXBsaWZpZXMg
ZG93biB0byB0aGUgcmF0aW8gYmV0d2Vlbgpjb21wcmVzc2VkIGFuZCBub24tY29tcHJlc3NlZCBi
cHAuCgpCc3BlYzogNDkyNjMKU3VnZ2VzdGVkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRh
Lmt1bGthcm5pQGludGVsLmNvbT4KQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2Fy
bmlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDI0ICsrKysr
KysrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
Y2xfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwppbmRleCA0
NjA3NTk5MTM3MDguLmNhYTQ3N2M0YjFhZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
Y2xfZHNpLmMKQEAgLTc4NSwxMiArNzg1LDEyIEBAIGdlbjExX2RzaV9jb25maWd1cmVfdHJhbnNj
b2RlcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAogc3RhdGljIHZvaWQKIGdlbjEx
X2RzaV9zZXRfdHJhbnNjb2Rlcl90aW1pbmdzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAotCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCisJCQkJ
IGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwog
CXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koJmVuY29kZXIt
PmJhc2UpOwogCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0K
LQkJCQkJJnBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlOworCQkmY3J0Y19zdGF0ZS0+aHcu
YWRqdXN0ZWRfbW9kZTsKIAllbnVtIHBvcnQgcG9ydDsKIAllbnVtIHRyYW5zY29kZXIgZHNpX3Ry
YW5zOwogCS8qIGhvcml6b250YWwgdGltaW5ncyAqLwpAQCAtNzk4LDExICs3OTgsMjUgQEAgZ2Vu
MTFfZHNpX3NldF90cmFuc2NvZGVyX3RpbWluZ3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCiAJdTE2IGhiYWNrX3BvcmNoOwogCS8qIHZlcnRpY2FsIHRpbWluZ3MgKi8KIAl1MTYgdnRv
dGFsLCB2YWN0aXZlLCB2c3luY19zdGFydCwgdnN5bmNfZW5kLCB2c3luY19zaGlmdDsKKwlpbnQg
bXVsID0gMSwgZGl2ID0gMTsKKworCS8qCisJICogQWRqdXN0IGhvcml6b250YWwgdGltaW5ncyAo
aHRvdGFsLCBoc3luY19zdGFydCwgaHN5bmNfZW5kKSB0byBhY2NvdW50CisJICogZm9yIHNsb3dl
ciBsaW5rIHNwZWVkIGlmIERTQyBpcyBlbmFibGVkLgorCSAqCisJICogVGhlIGNvbXByZXNzaW9u
IGZyZXF1ZW5jeSByYXRpbyBpcyB0aGUgcmF0aW8gYmV0d2VlbiBjb21wcmVzc2VkIGFuZAorCSAq
IG5vbi1jb21wcmVzc2VkIGxpbmsgc3BlZWRzLCBhbmQgc2ltcGxpZmllcyBkb3duIHRvIHRoZSBy
YXRpbyBiZXR3ZWVuCisJICogY29tcHJlc3NlZCBhbmQgbm9uLWNvbXByZXNzZWQgYnBwLgorCSAq
LworCWlmIChjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlKSB7CisJCW11bCA9IGNy
dGNfc3RhdGUtPmRzYy5jb21wcmVzc2VkX2JwcDsKKwkJZGl2ID0gbWlwaV9kc2lfcGl4ZWxfZm9y
bWF0X3RvX2JwcChpbnRlbF9kc2ktPnBpeGVsX2Zvcm1hdCk7CisJfQogCiAJaGFjdGl2ZSA9IGFk
anVzdGVkX21vZGUtPmNydGNfaGRpc3BsYXk7Ci0JaHRvdGFsID0gYWRqdXN0ZWRfbW9kZS0+Y3J0
Y19odG90YWw7Ci0JaHN5bmNfc3RhcnQgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX2hzeW5jX3N0YXJ0
OwotCWhzeW5jX2VuZCA9IGFkanVzdGVkX21vZGUtPmNydGNfaHN5bmNfZW5kOworCWh0b3RhbCA9
IERJVl9ST1VORF9VUChhZGp1c3RlZF9tb2RlLT5jcnRjX2h0b3RhbCAqIG11bCwgZGl2KTsKKwlo
c3luY19zdGFydCA9IERJVl9ST1VORF9VUChhZGp1c3RlZF9tb2RlLT5jcnRjX2hzeW5jX3N0YXJ0
ICogbXVsLCBkaXYpOworCWhzeW5jX2VuZCA9IERJVl9ST1VORF9VUChhZGp1c3RlZF9tb2RlLT5j
cnRjX2hzeW5jX2VuZCAqIG11bCwgZGl2KTsKIAloc3luY19zaXplICA9IGhzeW5jX2VuZCAtIGhz
eW5jX3N0YXJ0OwogCWhiYWNrX3BvcmNoID0gKGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFsIC0K
IAkJICAgICAgIGFkanVzdGVkX21vZGUtPmNydGNfaHN5bmNfZW5kKTsKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
