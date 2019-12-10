Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE7311858D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:51:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851716E8AE;
	Tue, 10 Dec 2019 10:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09A516E8AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:51:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:51:41 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="203148823"
Received: from rmoran-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.46])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:51:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 12:50:50 +0200
Message-Id: <461db10b1f4d76625625a9f2b1e3d932fff42799.1575974743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
References: <cover.1575974743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [v4.1 06/16] drm/i915/dsc: add support for computing
 and writing PPS for DSI encoders
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIERTSSBzcGVjaWZpYyBjb21wdXRhdGlvbiBhbmQgdHJhbnNtaXNzaW9uIHRvIGRpc3BsYXkg
b2YgUFBTLgoKV2l0aCBob3BlcyB0aGF0IHRoaXMgYXBwcm9hY2ggd2lsbCB3b3JrIGZvciBib3Ro
IERQIGFuZCBEU0kgZW5jb2RlcnMuCgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwu
Y29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIHwgMjUgKysrKysrKysr
KysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwppbmRleCBj
NTMwMjRkZmIxZWMuLjdiZDcyNzEyOWE4ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92ZHNjLmMKQEAgLTEwLDYgKzEwLDcgQEAKIAogI2luY2x1ZGUgImk5MTVfZHJ2Lmgi
CiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgorI2luY2x1ZGUgImludGVsX2RzaS5o
IgogI2luY2x1ZGUgImludGVsX3Zkc2MuaCIKIAogZW51bSBST1dfSU5ERVhfQlBQIHsKQEAgLTg0
NCw2ICs4NDUsMjUgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHNjX3Bwc19jb25maWd1cmUoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJfQogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9kc2Nf
ZHNpX3Bwc193cml0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCQkgICAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJY29uc3Qgc3RydWN0
IGRybV9kc2NfY29uZmlnICp2ZHNjX2NmZyA9ICZjcnRjX3N0YXRlLT5kc2MuY29uZmlnOworCXN0
cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koJmVuY29kZXItPmJh
c2UpOworCXN0cnVjdCBtaXBpX2RzaV9kZXZpY2UgKmRzaTsKKwlzdHJ1Y3QgZHJtX2RzY19waWN0
dXJlX3BhcmFtZXRlcl9zZXQgcHBzOworCWVudW0gcG9ydCBwb3J0OworCisJZHJtX2RzY19wcHNf
cGF5bG9hZF9wYWNrKCZwcHMsIHZkc2NfY2ZnKTsKKworCWZvcl9lYWNoX2RzaV9wb3J0KHBvcnQs
IGludGVsX2RzaS0+cG9ydHMpIHsKKwkJZHNpID0gaW50ZWxfZHNpLT5kc2lfaG9zdHNbcG9ydF0t
PmRldmljZTsKKworCQltaXBpX2RzaV9waWN0dXJlX3BhcmFtZXRlcl9zZXQoZHNpLCAmcHBzKTsK
KwkJbWlwaV9kc2lfY29tcHJlc3Npb25fbW9kZShkc2ksIHRydWUpOworCX0KK30KKwogc3RhdGlj
IHZvaWQgaW50ZWxfZHNjX2RwX3Bwc193cml0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKIAkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsK
QEAgLTg4Miw3ICs5MDIsMTAgQEAgdm9pZCBpbnRlbF9kc2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAogCiAJaW50ZWxfZHNjX3Bwc19jb25maWd1cmUoZW5jb2RlciwgY3J0
Y19zdGF0ZSk7CiAKLQlpbnRlbF9kc2NfZHBfcHBzX3dyaXRlKGVuY29kZXIsIGNydGNfc3RhdGUp
OworCWlmIChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9EU0kpCisJCWludGVsX2RzY19k
c2lfcHBzX3dyaXRlKGVuY29kZXIsIGNydGNfc3RhdGUpOworCWVsc2UKKwkJaW50ZWxfZHNjX2Rw
X3Bwc193cml0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsKIAogCWlmIChjcnRjX3N0YXRlLT5jcHVf
dHJhbnNjb2RlciA9PSBUUkFOU0NPREVSX0VEUCkgewogCQlkc3NfY3RsMV9yZWcgPSBEU1NfQ1RM
MTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
