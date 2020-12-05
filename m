Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F4C2CF876
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61EAE6E22C;
	Sat,  5 Dec 2020 01:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903746E222
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 01:09:00 +0000 (UTC)
IronPort-SDR: qR7/5T9F6b+8lqN7MYu+e01+Ysz/UrCAI6cC8qFzs2pJSH7ROJBWXYkKJDqmfKngina1wLzTfi
 BZe7uKMfDlTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="173570978"
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="173570978"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:08:54 -0800
IronPort-SDR: VWl4n392I8ABICkgSWnd6mtFqsHEtwONNqDTkY4nzh4HbgIMPcSyrZFc7ApxmXAYXzHqUcx0zo
 B3fJVwAGQddw==
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="369062849"
Received: from msdesadl-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.12.22])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:08:54 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 17:08:23 -0800
Message-Id: <20201205010844.361880-2-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201205010844.361880-1-aditya.swarup@intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/22] drm/i915/tgl: Fix REVID macros for TGL to
 fetch correct stepping
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4IFRHTCBSRVZJRCBtYWNyb3MgdG8gZmV0Y2ggY29ycmVjdCBkaXNwbGF5L2d0IHN0ZXBwaW5n
IGJhc2VkCm9uIFNPQyByZXYgaWQgZnJvbSBJTlRFTF9SRVZJRCgpIG1hY3JvLiBQcmV2aW91c2x5
LCB3ZSB3ZXJlIGp1c3QKcmV0dXJuaW5nIHRoZSBmaXJzdCBlbGVtZW50IG9mIHRoZSByZXZpZCBh
cnJheSBpbnN0ZWFkIG9mIHVzaW5nCnRoZSBjb3JyZWN0IGluZGV4IGJhc2VkIG9uIFNPQyByZXYg
aWQuCgpGaXhlczogKCJkcm0vaTkxNS90Z2w6IEZpeCBzdGVwcGluZyBXQSBtYXRjaGluZyIpCkNj
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAxMiArKysrKystLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKaW5kZXggZmMxMDkwYzY4ODljLi4yZTIxNDljOWEyZjQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaApAQCAtMTU4MCw5ICsxNTgwLDkgQEAgc3RhdGljIGlubGluZSBjb25zdCBz
dHJ1Y3QgaTkxNV9yZXZfc3RlcHBpbmdzICoKIHRnbF9yZXZpZHNfZ2V0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlpZiAoSVNfVEdMX1UoZGV2X3ByaXYpIHx8IElTX1RH
TF9ZKGRldl9wcml2KSkKLQkJcmV0dXJuIHRnbF91eV9yZXZpZHM7CisJCXJldHVybiAmdGdsX3V5
X3Jldmlkc1tJTlRFTF9SRVZJRChkZXZfcHJpdildOwogCWVsc2UKLQkJcmV0dXJuIHRnbF9yZXZp
ZHM7CisJCXJldHVybiAmdGdsX3Jldmlkc1tJTlRFTF9SRVZJRChkZXZfcHJpdildOwogfQogCiAj
ZGVmaW5lIElTX1RHTF9ESVNQX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXApAQCAtMTU5MiwxNCAr
MTU5MiwxNCBAQCB0Z2xfcmV2aWRzX2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAKICNkZWZpbmUgSVNfVEdMX1VZX0dUX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXAogCSgo
SVNfVEdMX1UocCkgfHwgSVNfVEdMX1kocCkpICYmIFwKLQkgdGdsX3V5X3Jldmlkcy0+Z3Rfc3Rl
cHBpbmcgPj0gKHNpbmNlKSAmJiBcCi0JIHRnbF91eV9yZXZpZHMtPmd0X3N0ZXBwaW5nIDw9ICh1
bnRpbCkpCisJIHRnbF91eV9yZXZpZHNbSU5URUxfUkVWSUQocCldLmd0X3N0ZXBwaW5nID49IChz
aW5jZSkgJiYgXAorCSB0Z2xfdXlfcmV2aWRzW0lOVEVMX1JFVklEKHApXS5ndF9zdGVwcGluZyA8
PSAodW50aWwpKQogCiAjZGVmaW5lIElTX1RHTF9HVF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwK
IAkoSVNfVElHRVJMQUtFKHApICYmIFwKIAkgIShJU19UR0xfVShwKSB8fCBJU19UR0xfWShwKSkg
JiYgXAotCSB0Z2xfcmV2aWRzLT5ndF9zdGVwcGluZyA+PSAoc2luY2UpICYmIFwKLQkgdGdsX3Jl
dmlkcy0+Z3Rfc3RlcHBpbmcgPD0gKHVudGlsKSkKKwkgdGdsX3Jldmlkc1tJTlRFTF9SRVZJRChw
KV0uZ3Rfc3RlcHBpbmcgPj0gKHNpbmNlKSAmJiBcCisJIHRnbF9yZXZpZHNbSU5URUxfUkVWSUQo
cCldLmd0X3N0ZXBwaW5nIDw9ICh1bnRpbCkpCiAKICNkZWZpbmUgUktMX1JFVklEX0EwCQkweDAK
ICNkZWZpbmUgUktMX1JFVklEX0IwCQkweDEKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
