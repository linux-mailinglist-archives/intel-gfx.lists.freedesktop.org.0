Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A966129B7F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 23:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19FD96E46F;
	Mon, 23 Dec 2019 22:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9D3089FF9
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 22:42:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 14:42:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="417394151"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 14:42:48 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 14:44:28 -0800
Message-Id: <20191223224429.5151-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191223224429.5151-1-manasi.d.navare@intel.com>
References: <20191223224429.5151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 2/3] drm/i915/dp: Make port sync mode
 assignments only if all tiles present
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

QWRkIGFuIGV4dHJhIGNoZWNrIGJlZm9yZSBtYWtpbmcgbWFzdGVyIHNsYXZlIGFzc2lnbm1lbnRz
IGZvciB0aWxlZApkaXNwbGF5cyB0byBtYWtlIHN1cmUgd2UgbWFrZSB0aGVzZSBhc3NpZ25tZW50
cyBvbmx5IGlmIGFsbCB0aWxlZApjb25uZWN0b3JzIGFyZSBwcmVzZW50LiBJZiBub3QgdGhlbiBp
bml0aWFsaXplIHRoZSBzdGF0ZSB0byBkZWZhdWx0cwpzbyBpdCBkb2VzIGEgbm9ybWFsIG5vbiB0
aWxlZCBtb2Rlc2V0IHdpdGhvdXQgdHJhbnNjb2RlciBwb3J0IHN5bmMuCgp2NDoKZGVhZnVsYXQg
cG9ydCBzeW5jIHZhbHVlcyBpbiBwcmVwYXJlX2NsZWFyZWRfc3RhdGUgKFZpbGxlKQp2MzoKKiBE
ZWZhdWx0IG1hc3RlciB0cmFucyB0byBJTlZBTElEIHRvIGF2b2lkIHBpcGUgbWlzbWF0Y2gKdjI6
CiogUmVuYW1lIGljbF9hZGRfc3luY19tb2RlX2NydGNzCiogTW92ZSB0aGlzIGZ1bmN0aW9uIGp1
c3QgYmVmb3JlIC5jb21wdXRlX2NvbmZpZyBob29rCiogQ2hlY2sgaWYgRFAgYmVmb3JlIG1hc3Rl
ciBzbGF2ZSBhc3NpZ25tZW50cyAoVmlsbGUpCgpCdWd6aWxsYTogaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNQpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KQWNrZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxODIgKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDExNyBpbnNlcnRpb25zKCspLCA2NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDQ1YTY5OWJhYzM0YS4uMWVh
ZThlMDhjNzQwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtMTIyNjMsODggKzEyMjYzLDEyMSBAQCBzdGF0aWMgYm9vbCBjOF9wbGFuZXNfY2hh
bmdlZChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiAJcmV0
dXJuICFvbGRfY3J0Y19zdGF0ZS0+YzhfcGxhbmVzICE9ICFuZXdfY3J0Y19zdGF0ZS0+YzhfcGxh
bmVzOwogfQogCi1zdGF0aWMgaW50IGljbF9hZGRfc3luY19tb2RlX2NydGNzKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorc3RhdGljIGJvb2wKK2ludGVsX2F0b21pY19pc19t
YXN0ZXJfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorewor
CXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9IGNydGNfc3RhdGUtPnVhcGkuY3J0YzsKKwlzdHJ1Y3Qg
ZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT51YXBpLnN0YXRlOworCXN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3I7CisJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUg
KmNvbm5lY3Rvcl9zdGF0ZTsKKwlpbnQgaTsKKworCWZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5f
c3RhdGUoc3RhdGUsIGNvbm5lY3RvciwgY29ubmVjdG9yX3N0YXRlLCBpKSB7CisJCWlmIChjb25u
ZWN0b3Jfc3RhdGUtPmNydGMgIT0gY3J0YykKKwkJCWNvbnRpbnVlOworCQlpZiAoY29ubmVjdG9y
LT5oYXNfdGlsZSAmJgorCQkgICAgY29ubmVjdG9yLT50aWxlX2hfbG9jID09IGNvbm5lY3Rvci0+
bnVtX2hfdGlsZSAtIDEgJiYKKwkJICAgIGNvbm5lY3Rvci0+dGlsZV92X2xvYyA9PSBjb25uZWN0
b3ItPm51bV92X3RpbGUgLSAxKQorCQkJcmV0dXJuIHRydWU7CisJfQorCisJcmV0dXJuIGZhbHNl
OworfQorCitzdGF0aWMgdm9pZCByZXNldF9wb3J0X3N5bmNfbW9kZV9zdGF0ZShzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwljcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNj
b2RlciA9IElOVkFMSURfVFJBTlNDT0RFUjsKKwljcnRjX3N0YXRlLT5zeW5jX21vZGVfc2xhdmVz
X21hc2sgPSAwOworfQorCitzdGF0aWMgaW50IGljbF9jb21wdXRlX3BvcnRfc3luY19jcnRjX3N0
YXRlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCisJCQkJCSAgICBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkJICAgIGludCBudW1fdGlsZWRfY29ubnMp
CiB7CiAJc3RydWN0IGRybV9jcnRjICpjcnRjID0gY3J0Y19zdGF0ZS0+dWFwaS5jcnRjOwogCXN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlID0gdG9faW50ZWxfYXRvbWljX3N0YXRlKGNy
dGNfc3RhdGUtPnVhcGkuc3RhdGUpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOwotCXN0cnVjdCBkcm1fY29u
bmVjdG9yICptYXN0ZXJfY29ubmVjdG9yLCAqY29ubmVjdG9yOwotCXN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlICpjb25uZWN0b3Jfc3RhdGU7CisJc3RydWN0IGRybV9jb25uZWN0b3IgKm1hc3Rl
cl9jb25uZWN0b3I7CiAJc3RydWN0IGRybV9jb25uZWN0b3JfbGlzdF9pdGVyIGNvbm5faXRlcjsK
IAlzdHJ1Y3QgZHJtX2NydGMgKm1hc3Rlcl9jcnRjID0gTlVMTDsKIAlzdHJ1Y3QgZHJtX2NydGNf
c3RhdGUgKm1hc3Rlcl9jcnRjX3N0YXRlOwogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICptYXN0
ZXJfcGlwZV9jb25maWc7Ci0JaW50IGksIHRpbGVfZ3JvdXBfaWQ7CiAKIAlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA8IDExKQogCQlyZXR1cm4gMDsKIAorCWlmICghaW50ZWxfY3J0Y19oYXNfdHlw
ZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFApKQorCQlyZXR1cm4gMDsKKwogCS8qCiAJICog
SW4gY2FzZSBvZiB0aWxlZCBkaXNwbGF5cyB0aGVyZSBjb3VsZCBiZSBvbmUgb3IgbW9yZSBzbGF2
ZXMgYnV0IHRoZXJlIGlzCiAJICogb25seSBvbmUgbWFzdGVyLiBMZXRzIG1ha2UgdGhlIENSVEMg
dXNlZCBieSB0aGUgY29ubmVjdG9yIGNvcnJlc3BvbmRpbmcKIAkgKiB0byB0aGUgbGFzdCBob3Jp
em9uYWwgYW5kIGxhc3QgdmVydGljYWwgdGlsZSBhIG1hc3Rlci9nZW5sb2NrIENSVEMuCiAJICog
QWxsIHRoZSBvdGhlciBDUlRDcyBjb3JyZXNwb25kaW5nIHRvIG90aGVyIHRpbGVzIG9mIHRoZSBz
YW1lIFRpbGUgZ3JvdXAKIAkgKiBhcmUgdGhlIHNsYXZlIENSVENzIGFuZCBob2xkIGEgcG9pbnRl
ciB0byB0aGVpciBnZW5sb2NrIENSVEMuCisJICogSWYgYWxsIHRpbGVzIG5vdCBwcmVzZW50IGRv
IG5vdCBtYWtlIG1hc3RlciBzbGF2ZSBhc3NpZ25tZW50cy4KIAkgKi8KLQlmb3JfZWFjaF9uZXdf
Y29ubmVjdG9yX2luX3N0YXRlKCZzdGF0ZS0+YmFzZSwgY29ubmVjdG9yLCBjb25uZWN0b3Jfc3Rh
dGUsIGkpIHsKLQkJaWYgKGNvbm5lY3Rvcl9zdGF0ZS0+Y3J0YyAhPSBjcnRjKQotCQkJY29udGlu
dWU7Ci0JCWlmICghY29ubmVjdG9yLT5oYXNfdGlsZSkKKwlpZiAoIWNvbm5lY3Rvci0+aGFzX3Rp
bGUgfHwKKwkgICAgY3J0Y19zdGF0ZS0+aHcubW9kZS5oZGlzcGxheSAhPSBjb25uZWN0b3ItPnRp
bGVfaF9zaXplIHx8CisJICAgIGNydGNfc3RhdGUtPmh3Lm1vZGUudmRpc3BsYXkgIT0gY29ubmVj
dG9yLT50aWxlX3Zfc2l6ZSB8fAorCSAgICBudW1fdGlsZWRfY29ubnMgPCBjb25uZWN0b3ItPm51
bV9oX3RpbGUgKiBjb25uZWN0b3ItPm51bV92X3RpbGUpIHsKKwkJcmVzZXRfcG9ydF9zeW5jX21v
ZGVfc3RhdGUoY3J0Y19zdGF0ZSk7CisJCXJldHVybiAwOworCX0KKwkvKiBMYXN0IEhvcml6b250
YWwgYW5kIGxhc3QgdmVydGljYWwgdGlsZSBjb25uZWN0b3IgaXMgYSBtYXN0ZXIKKwkgKiBNYXN0
ZXIncyBjcnRjIHN0YXRlIGlzIGFscmVhZHkgcG9wdWxhdGVkIGluIHNsYXZlIGZvciBwb3J0IHN5
bmMKKwkgKi8KKwlpZiAoY29ubmVjdG9yLT50aWxlX2hfbG9jID09IGNvbm5lY3Rvci0+bnVtX2hf
dGlsZSAtIDEgJiYKKwkgICAgY29ubmVjdG9yLT50aWxlX3ZfbG9jID09IGNvbm5lY3Rvci0+bnVt
X3ZfdGlsZSAtIDEpCisJCXJldHVybiAwOworCisJLyogTG9vcCB0aHJvdWdoIGFsbCBjb25uZWN0
b3JzIGFuZCBjb25maWd1cmUgdGhlIFNsYXZlIGNydGNfc3RhdGUKKwkgKiB0byBwb2ludCB0byB0
aGUgY29ycmVjdCBtYXN0ZXIuCisJICovCisJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfYmVnaW4o
JmRldl9wcml2LT5kcm0sICZjb25uX2l0ZXIpOworCWRybV9mb3JfZWFjaF9jb25uZWN0b3JfaXRl
cihtYXN0ZXJfY29ubmVjdG9yLCAmY29ubl9pdGVyKSB7CisJCXN0cnVjdCBkcm1fY29ubmVjdG9y
X3N0YXRlICptYXN0ZXJfY29ubl9zdGF0ZSA9IE5VTEw7CisKKwkJaWYgKCEobWFzdGVyX2Nvbm5l
Y3Rvci0+aGFzX3RpbGUgJiYKKwkJICAgICAgbWFzdGVyX2Nvbm5lY3Rvci0+dGlsZV9ncm91cC0+
aWQgPT0gY29ubmVjdG9yLT50aWxlX2dyb3VwLT5pZCkpCiAJCQljb250aW51ZTsKLQkJaWYgKGNy
dGNfc3RhdGUtPmh3Lm1vZGUuaGRpc3BsYXkgIT0gY29ubmVjdG9yLT50aWxlX2hfc2l6ZSB8fAot
CQkgICAgY3J0Y19zdGF0ZS0+aHcubW9kZS52ZGlzcGxheSAhPSBjb25uZWN0b3ItPnRpbGVfdl9z
aXplKQotCQkJcmV0dXJuIDA7Ci0JCWlmIChjb25uZWN0b3ItPnRpbGVfaF9sb2MgPT0gY29ubmVj
dG9yLT5udW1faF90aWxlIC0gMSAmJgotCQkgICAgY29ubmVjdG9yLT50aWxlX3ZfbG9jID09IGNv
bm5lY3Rvci0+bnVtX3ZfdGlsZSAtIDEpCisJCWlmIChtYXN0ZXJfY29ubmVjdG9yLT50aWxlX2hf
bG9jICE9IG1hc3Rlcl9jb25uZWN0b3ItPm51bV9oX3RpbGUgLSAxIHx8CisJCSAgICBtYXN0ZXJf
Y29ubmVjdG9yLT50aWxlX3ZfbG9jICE9IG1hc3Rlcl9jb25uZWN0b3ItPm51bV92X3RpbGUgLSAx
KQogCQkJY29udGludWU7Ci0JCWNydGNfc3RhdGUtPnN5bmNfbW9kZV9zbGF2ZXNfbWFzayA9IDA7
Ci0JCXRpbGVfZ3JvdXBfaWQgPSBjb25uZWN0b3ItPnRpbGVfZ3JvdXAtPmlkOwotCQlkcm1fY29u
bmVjdG9yX2xpc3RfaXRlcl9iZWdpbigmZGV2X3ByaXYtPmRybSwgJmNvbm5faXRlcik7Ci0JCWRy
bV9mb3JfZWFjaF9jb25uZWN0b3JfaXRlcihtYXN0ZXJfY29ubmVjdG9yLCAmY29ubl9pdGVyKSB7
Ci0JCQlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqbWFzdGVyX2Nvbm5fc3RhdGUgPSBOVUxM
OwogCi0JCQlpZiAoIW1hc3Rlcl9jb25uZWN0b3ItPmhhc190aWxlKQotCQkJCWNvbnRpbnVlOwot
CQkJaWYgKG1hc3Rlcl9jb25uZWN0b3ItPnRpbGVfaF9sb2MgIT0gbWFzdGVyX2Nvbm5lY3Rvci0+
bnVtX2hfdGlsZSAtIDEgfHwKLQkJCSAgICBtYXN0ZXJfY29ubmVjdG9yLT50aWxlX3ZfbG9jICE9
IG1hc3Rlcl9jb25uZWN0b3ItPm51bV92X3RpbGUgLSAxKQotCQkJCWNvbnRpbnVlOwotCQkJaWYg
KG1hc3Rlcl9jb25uZWN0b3ItPnRpbGVfZ3JvdXAtPmlkICE9IHRpbGVfZ3JvdXBfaWQpCi0JCQkJ
Y29udGludWU7Ci0KLQkJCW1hc3Rlcl9jb25uX3N0YXRlID0gZHJtX2F0b21pY19nZXRfY29ubmVj
dG9yX3N0YXRlKCZzdGF0ZS0+YmFzZSwKLQkJCQkJCQkJCSAgIG1hc3Rlcl9jb25uZWN0b3IpOwot
CQkJaWYgKElTX0VSUihtYXN0ZXJfY29ubl9zdGF0ZSkpIHsKLQkJCQlkcm1fY29ubmVjdG9yX2xp
c3RfaXRlcl9lbmQoJmNvbm5faXRlcik7Ci0JCQkJcmV0dXJuIFBUUl9FUlIobWFzdGVyX2Nvbm5f
c3RhdGUpOwotCQkJfQotCQkJaWYgKG1hc3Rlcl9jb25uX3N0YXRlLT5jcnRjKSB7Ci0JCQkJbWFz
dGVyX2NydGMgPSBtYXN0ZXJfY29ubl9zdGF0ZS0+Y3J0YzsKLQkJCQlicmVhazsKLQkJCX0KKwkJ
bWFzdGVyX2Nvbm5fc3RhdGUgPSBkcm1fYXRvbWljX2dldF9jb25uZWN0b3Jfc3RhdGUoJnN0YXRl
LT5iYXNlLAorCQkJCQkJCQkgICBtYXN0ZXJfY29ubmVjdG9yKTsKKwkJaWYgKElTX0VSUihtYXN0
ZXJfY29ubl9zdGF0ZSkpIHsKKwkJCWRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2VuZCgmY29ubl9p
dGVyKTsKKwkJCXJldHVybiBQVFJfRVJSKG1hc3Rlcl9jb25uX3N0YXRlKTsKIAkJfQotCQlkcm1f
Y29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5faXRlcik7Ci0KLQkJaWYgKCFtYXN0ZXJfY3J0
YykgewotCQkJRFJNX0RFQlVHX0tNUygiQ291bGQgbm90IGZpbmQgTWFzdGVyIENSVEMgZm9yIFNs
YXZlIENSVEMgJWRcbiIsCi0JCQkJICAgICAgY29ubmVjdG9yX3N0YXRlLT5jcnRjLT5iYXNlLmlk
KTsKLQkJCXJldHVybiAtRUlOVkFMOworCQlpZiAobWFzdGVyX2Nvbm5fc3RhdGUtPmNydGMpIHsK
KwkJCW1hc3Rlcl9jcnRjID0gbWFzdGVyX2Nvbm5fc3RhdGUtPmNydGM7CisJCQlicmVhazsKIAkJ
fQorCX0KKwlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5faXRlcik7CiAKLQkJbWFz
dGVyX2NydGNfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9jcnRjX3N0YXRlKCZzdGF0ZS0+YmFzZSwK
LQkJCQkJCQkgICAgICBtYXN0ZXJfY3J0Yyk7Ci0JCWlmIChJU19FUlIobWFzdGVyX2NydGNfc3Rh
dGUpKQotCQkJcmV0dXJuIFBUUl9FUlIobWFzdGVyX2NydGNfc3RhdGUpOwotCi0JCW1hc3Rlcl9w
aXBlX2NvbmZpZyA9IHRvX2ludGVsX2NydGNfc3RhdGUobWFzdGVyX2NydGNfc3RhdGUpOwotCQlj
cnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2RlciA9IG1hc3Rlcl9waXBlX2NvbmZpZy0+Y3B1X3Ry
YW5zY29kZXI7Ci0JCW1hc3Rlcl9waXBlX2NvbmZpZy0+c3luY19tb2RlX3NsYXZlc19tYXNrIHw9
Ci0JCQlCSVQoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOwotCQlEUk1fREVCVUdfS01TKCJN
YXN0ZXIgVHJhbnNjb2RlciA9ICVzIGFkZGVkIGZvciBTbGF2ZSBDUlRDID0gJWQsIHNsYXZlIHRy
YW5zY29kZXIgYml0bWFzayA9ICVkXG4iLAotCQkJICAgICAgdHJhbnNjb2Rlcl9uYW1lKGNydGNf
c3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyKSwKLQkJCSAgICAgIGNydGNfc3RhdGUtPnVhcGkuY3J0
Yy0+YmFzZS5pZCwKLQkJCSAgICAgIG1hc3Rlcl9waXBlX2NvbmZpZy0+c3luY19tb2RlX3NsYXZl
c19tYXNrKTsKKwlpZiAoIW1hc3Rlcl9jcnRjKSB7CisJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5v
dCBmaW5kIE1hc3RlciBDUlRDIGZvciBTbGF2ZSBDUlRDICVkXG4iLAorCQkJICAgICAgY3J0Yy0+
YmFzZS5pZCk7CisJCXJldHVybiAtRUlOVkFMOwogCX0KIAorCW1hc3Rlcl9jcnRjX3N0YXRlID0g
ZHJtX2F0b21pY19nZXRfY3J0Y19zdGF0ZSgmc3RhdGUtPmJhc2UsCisJCQkJCQkgICAgICBtYXN0
ZXJfY3J0Yyk7CisJaWYgKElTX0VSUihtYXN0ZXJfY3J0Y19zdGF0ZSkpCisJCXJldHVybiBQVFJf
RVJSKG1hc3Rlcl9jcnRjX3N0YXRlKTsKKworCW1hc3Rlcl9waXBlX2NvbmZpZyA9IHRvX2ludGVs
X2NydGNfc3RhdGUobWFzdGVyX2NydGNfc3RhdGUpOworCWNydGNfc3RhdGUtPm1hc3Rlcl90cmFu
c2NvZGVyID0gbWFzdGVyX3BpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlcjsKKwltYXN0ZXJfcGlw
ZV9jb25maWctPnN5bmNfbW9kZV9zbGF2ZXNfbWFzayB8PQorCQlCSVQoY3J0Y19zdGF0ZS0+Y3B1
X3RyYW5zY29kZXIpOworCURSTV9ERUJVR19LTVMoIk1hc3RlciBUcmFuc2NvZGVyID0gJXMgYWRk
ZWQgZm9yIFNsYXZlIENSVEMgPSAlZCwgc2xhdmUgdHJhbnNjb2RlciBiaXRtYXNrID0gJWRcbiIs
CisJCSAgICAgIHRyYW5zY29kZXJfbmFtZShjcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2Rlciks
CisJCSAgICAgIGNydGMtPmJhc2UuaWQsCisJCSAgICAgIG1hc3Rlcl9waXBlX2NvbmZpZy0+c3lu
Y19tb2RlX3NsYXZlc19tYXNrKTsKKwogCXJldHVybiAwOwogfQogCkBAIC0xMjg4OSw5ICsxMjky
MiwxMSBAQCBpbnRlbF9jcnRjX3ByZXBhcmVfY2xlYXJlZF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJc2F2ZWRfc3RhdGUtPndtID0gY3J0Y19zdGF0ZS0+d207
CiAJLyoKIAkgKiBTYXZlIHRoZSBzbGF2ZSBiaXRtYXNrIHdoaWNoIGdldHMgZmlsbGVkIGZvciBt
YXN0ZXIgY3J0YyBzdGF0ZSBkdXJpbmcKLQkgKiBzbGF2ZSBhdG9taWMgY2hlY2sgY2FsbC4KKwkg
KiBzbGF2ZSBhdG9taWMgY2hlY2sgY2FsbC4gRm9yIGFsbCBvdGhlciBDUlRDcyByZXNldCB0aGUg
cG9ydCBzeW5jIHZhcmlhYmxlcworCSAqIGNydGNfc3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyIG5l
ZWRzIHRvIGJlIHNldCB0byBJTlZBTElECiAJICovCi0JaWYgKGlzX3RyYW5zX3BvcnRfc3luY19t
YXN0ZXIoY3J0Y19zdGF0ZSkpCisJcmVzZXRfcG9ydF9zeW5jX21vZGVfc3RhdGUoc2F2ZWRfc3Rh
dGUpOworCWlmIChpbnRlbF9hdG9taWNfaXNfbWFzdGVyX2Nvbm5lY3RvcihjcnRjX3N0YXRlKSkK
IAkJc2F2ZWRfc3RhdGUtPnN5bmNfbW9kZV9zbGF2ZXNfbWFzayA9CiAJCQljcnRjX3N0YXRlLT5z
eW5jX21vZGVfc2xhdmVzX21hc2s7CiAKQEAgLTEyOTEyLDcgKzEyOTQ3LDcgQEAgaW50ZWxfbW9k
ZXNldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiAJ
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubmVjdG9yX3N0YXRlOwogCWludCBiYXNlX2JwcCwgcmV0OwotCWludCBpOworCWlu
dCBpLCB0aWxlX2dyb3VwX2lkID0gLTEsIG51bV90aWxlZF9jb25ucyA9IDA7CiAJYm9vbCByZXRy
eSA9IHRydWU7CiAKIAlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIgPQpAQCAtMTI5ODIsMTMg
KzEzMDE3LDIyIEBAIGludGVsX21vZGVzZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKnBpcGVfY29uZmlnKQogCWRybV9tb2RlX3NldF9jcnRjaW5mbygmcGlwZV9jb25maWct
Pmh3LmFkanVzdGVkX21vZGUsCiAJCQkgICAgICBDUlRDX1NURVJFT19ET1VCTEUpOwogCi0JLyog
U2V0IHRoZSBjcnRjX3N0YXRlIGRlZmF1bHRzIGZvciB0cmFuc19wb3J0X3N5bmMgKi8KLQlwaXBl
X2NvbmZpZy0+bWFzdGVyX3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7Ci0JcmV0ID0g
aWNsX2FkZF9zeW5jX21vZGVfY3J0Y3MocGlwZV9jb25maWcpOwotCWlmIChyZXQpIHsKLQkJRFJN
X0RFQlVHX0tNUygiQ2Fubm90IGFzc2lnbiBTeW5jIE1vZGUgQ1JUQ3M6ICVkXG4iLAotCQkJICAg
ICAgcmV0KTsKLQkJcmV0dXJuIHJldDsKKwkvKiBHZXQgdGlsZV9ncm91cF9pZCBvZiB0aWxlZCBj
b25uZWN0b3IgKi8KKwlmb3JfZWFjaF9uZXdfY29ubmVjdG9yX2luX3N0YXRlKHN0YXRlLCBjb25u
ZWN0b3IsIGNvbm5lY3Rvcl9zdGF0ZSwgaSkgeworCQlpZiAoY29ubmVjdG9yX3N0YXRlLT5jcnRj
ID09IGNydGMgJiYKKwkJICAgIGNvbm5lY3Rvci0+aGFzX3RpbGUpIHsKKwkJCXRpbGVfZ3JvdXBf
aWQgPSBjb25uZWN0b3ItPnRpbGVfZ3JvdXAtPmlkOworCQkJYnJlYWs7CisJCX0KKwl9CisKKwkv
KiBHZXQgdG90YWwgbnVtYmVyIG9mIHRpbGVkIGNvbm5lY3RvcnMgaW4gc3RhdGUgdGhhdCBiZWxv
bmcgdG8KKwkgKiB0aGlzIHRpbGUgZ3JvdXAuCisJICovCisJZm9yX2VhY2hfbmV3X2Nvbm5lY3Rv
cl9pbl9zdGF0ZShzdGF0ZSwgY29ubmVjdG9yLCBjb25uZWN0b3Jfc3RhdGUsIGkpIHsKKwkJaWYg
KGNvbm5lY3Rvci0+aGFzX3RpbGUgJiYKKwkJICAgIGNvbm5lY3Rvci0+dGlsZV9ncm91cC0+aWQg
PT0gdGlsZV9ncm91cF9pZCkKKwkJCW51bV90aWxlZF9jb25ucysrOwogCX0KIAogCS8qIFBhc3Mg
b3VyIG1vZGUgdG8gdGhlIGNvbm5lY3RvcnMgYW5kIHRoZSBDUlRDIHRvIGdpdmUgdGhlbSBhIGNo
YW5jZSB0bwpAQCAtMTI5OTksNiArMTMwNDMsMTQgQEAgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZp
ZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiAJCWlmIChjb25uZWN0b3Jf
c3RhdGUtPmNydGMgIT0gY3J0YykKIAkJCWNvbnRpbnVlOwogCisJCXJldCA9IGljbF9jb21wdXRl
X3BvcnRfc3luY19jcnRjX3N0YXRlKGNvbm5lY3RvciwgcGlwZV9jb25maWcsCisJCQkJCQkgICAg
ICAgbnVtX3RpbGVkX2Nvbm5zKTsKKwkJaWYgKHJldCkgeworCQkJRFJNX0RFQlVHX0tNUygiQ2Fu
bm90IGFzc2lnbiBTeW5jIE1vZGUgQ1JUQ3M6ICVkXG4iLAorCQkJCSAgICAgIHJldCk7CisJCQly
ZXR1cm4gcmV0OworCQl9CisKIAkJZW5jb2RlciA9IHRvX2ludGVsX2VuY29kZXIoY29ubmVjdG9y
X3N0YXRlLT5iZXN0X2VuY29kZXIpOwogCQlyZXQgPSBlbmNvZGVyLT5jb21wdXRlX2NvbmZpZyhl
bmNvZGVyLCBwaXBlX2NvbmZpZywKIAkJCQkJICAgICAgY29ubmVjdG9yX3N0YXRlKTsKLS0gCjIu
MTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
