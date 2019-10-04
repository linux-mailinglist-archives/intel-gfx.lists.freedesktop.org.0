Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEC5CBCEE
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 16:19:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 105FD6EBAA;
	Fri,  4 Oct 2019 14:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079186EBAA;
 Fri,  4 Oct 2019 14:19:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 07:19:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="192441710"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 04 Oct 2019 07:19:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2019 17:19:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  4 Oct 2019 17:19:13 +0300
Message-Id: <20191004141914.20600-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004141914.20600-1-ville.syrjala@linux.intel.com>
References: <20191004141914.20600-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/edid: Fix HDMI VIC handling
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
Cc: intel-gfx@lists.freedesktop.org, Wayne Lin <waynelin@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dHJhY3QgZHJtX21vZGVfaGRtaV92aWMoKSB0byBjb3JyZWN0bHkgY2FsY3VsYXRlIHRoZSBmaW5h
bCBIRE1JClZJQyBmb3IgdXMuIEN1cnJlbnRseSB0aGlzIGlzIGJlaW5nIGRvbmUgYSBiaXQgZGlm
ZmVyZW50bHkgYmV0d2Vlbgp0aGUgQVZJIGFuZCBIRE1JIGluZm9mcmFtZXMuIExldCdzIGdldCBi
b3RoIHRvIGFncmVlIG9uIHRoaXMuCgpXZSBuZWVkIHRvIGFsbG93IHRoZSBjYXNlIHdoZXJlIGEg
bW9kZSBpcyBib3RoIDNEIGFuZCBoYXMgYSBIRE1JClZJQy4gQ3VycmVudGx5IHdlJ2xsIGp1c3Qg
cmVmdXNlIHRvIGdlbmVyYXRlIHRoZSBIRE1JIGluZm9mcmFtZSB3aGVuCndlIHJlYWxseSBzaG91
bGQgYmUgc2V0dGluZyBIRE1JIFZJQyB0byAwIGFuZCBpbnN0ZWFkIGVuYWJsaW5nIDNECnN0ZXJl
byBzaWduYWxsaW5nLgoKSWYgdGhlIHNpbmsgZG9lc24ndCBldmVuIHN1cHBvcnQgdGhlIEhETUkg
aW5mb2ZyYW1lIHdlIHNob3VsZApub3QgYmUgcGlja2luZyB0aGUgSERNSSBWSUMgaW4gZmF2b3Ig
b2YgdGhlIENFQSBWSUMsIGJlY2F1c2UgdGhlbgp3ZSdsbCBlbmQgdXAgbm90IHNlbmRpbmcgZWl0
aGVyIFZJQyBpbiB0aGUgZW5kLgoKQ2M6IFdheW5lIExpbiA8d2F5bmVsaW5AYW1kLmNvbT4KU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyB8IDM3ICsrKysrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAx
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IDQ5NWI3ZmI0ZDllZi4uYzdmOWY3Y2E3
NWEyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2VkaWQuYwpAQCAtNTE2MCwxMSArNTE2MCwyNSBAQCBkcm1faGRtaV9pbmZv
ZnJhbWVfc2V0X2hkcl9tZXRhZGF0YShzdHJ1Y3QgaGRtaV9kcm1faW5mb2ZyYW1lICpmcmFtZSwK
IH0KIEVYUE9SVF9TWU1CT0woZHJtX2hkbWlfaW5mb2ZyYW1lX3NldF9oZHJfbWV0YWRhdGEpOwog
CitzdGF0aWMgdTggZHJtX21vZGVfaGRtaV92aWMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvciwKKwkJCSAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKK3sKKwli
b29sIGhhc19oZG1pX2luZm9mcmFtZSA9IGNvbm5lY3RvciA/CisJCWNvbm5lY3Rvci0+ZGlzcGxh
eV9pbmZvLmhhc19oZG1pX2luZm9mcmFtZSA6IGZhbHNlOworCisJaWYgKCFoYXNfaGRtaV9pbmZv
ZnJhbWUpCisJCXJldHVybiAwOworCisJLyogTm8gSERNSSBWSUMgd2hlbiBzaWduYWxsaW5nIDNE
IHZpZGVvIGZvcm1hdCAqLworCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfM0RfTUFT
SykKKwkJcmV0dXJuIDA7CisKKwlyZXR1cm4gZHJtX21hdGNoX2hkbWlfbW9kZShtb2RlKTsKK30K
Kwogc3RhdGljIHU4IGRybV9tb2RlX2NlYV92aWMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvciwKIAkJCSAgIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQogewotCXU4
IHZlbmRvcl9pZl92aWMgPSBkcm1fbWF0Y2hfaGRtaV9tb2RlKG1vZGUpOwotCWJvb2wgaXNfczNk
ID0gbW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHXzNEX01BU0s7CiAJdTggdmljOwogCiAJLyoK
QEAgLTUxNzMsNyArNTE4Nyw3IEBAIHN0YXRpYyB1OCBkcm1fbW9kZV9jZWFfdmljKHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJICogVklDIGluIEFWSSBpbmZvZnJhbWVzLiBMZXRz
IGNoZWNrIGlmIHRoaXMgbW9kZSBpcyBwcmVzZW50IGluCiAJICogSERNSSAxLjRiIDRLIG1vZGVz
CiAJICovCi0JaWYgKGRybV92YWxpZF9oZG1pX3ZpYyh2ZW5kb3JfaWZfdmljKSAmJiAhaXNfczNk
KQorCWlmIChkcm1fbW9kZV9oZG1pX3ZpYyhjb25uZWN0b3IsIG1vZGUpKQogCQlyZXR1cm4gMDsK
IAogCXZpYyA9IGRybV9tYXRjaF9jZWFfbW9kZShtb2RlKTsKQEAgLTU0MzMsOCArNTQ0Nyw2IEBA
IGRybV9oZG1pX3ZlbmRvcl9pbmZvZnJhbWVfZnJvbV9kaXNwbGF5X21vZGUoc3RydWN0IGhkbWlf
dmVuZG9yX2luZm9mcmFtZSAqZnJhbWUsCiAJYm9vbCBoYXNfaGRtaV9pbmZvZnJhbWUgPSBjb25u
ZWN0b3IgPwogCQljb25uZWN0b3ItPmRpc3BsYXlfaW5mby5oYXNfaGRtaV9pbmZvZnJhbWUgOiBm
YWxzZTsKIAlpbnQgZXJyOwotCXUzMiBzM2RfZmxhZ3M7Ci0JdTggdmljOwogCiAJaWYgKCFmcmFt
ZSB8fCAhbW9kZSkKIAkJcmV0dXJuIC1FSU5WQUw7CkBAIC01NDQyLDggKzU0NTQsOSBAQCBkcm1f
aGRtaV92ZW5kb3JfaW5mb2ZyYW1lX2Zyb21fZGlzcGxheV9tb2RlKHN0cnVjdCBoZG1pX3ZlbmRv
cl9pbmZvZnJhbWUgKmZyYW1lLAogCWlmICghaGFzX2hkbWlfaW5mb2ZyYW1lKQogCQlyZXR1cm4g
LUVJTlZBTDsKIAotCXZpYyA9IGRybV9tYXRjaF9oZG1pX21vZGUobW9kZSk7Ci0JczNkX2ZsYWdz
ID0gbW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHXzNEX01BU0s7CisJZXJyID0gaGRtaV92ZW5k
b3JfaW5mb2ZyYW1lX2luaXQoZnJhbWUpOworCWlmIChlcnIgPCAwKQorCQlyZXR1cm4gZXJyOwog
CiAJLyoKIAkgKiBFdmVuIGlmIGl0J3Mgbm90IGFic29sdXRlbHkgbmVjZXNzYXJ5IHRvIHNlbmQg
dGhlIGluZm9mcmFtZQpAQCAtNTQ1NCwxNSArNTQ2Nyw3IEBAIGRybV9oZG1pX3ZlbmRvcl9pbmZv
ZnJhbWVfZnJvbV9kaXNwbGF5X21vZGUoc3RydWN0IGhkbWlfdmVuZG9yX2luZm9mcmFtZSAqZnJh
bWUsCiAJICogbW9kZSBpZiB0aGUgc291cmNlIHNpbXBseSBzdG9wcyBzZW5kaW5nIHRoZSBpbmZv
ZnJhbWUgd2hlbgogCSAqIGl0IHdhbnRzIHRvIHN3aXRjaCBmcm9tIDNEIHRvIDJELgogCSAqLwot
Ci0JaWYgKHZpYyAmJiBzM2RfZmxhZ3MpCi0JCXJldHVybiAtRUlOVkFMOwotCi0JZXJyID0gaGRt
aV92ZW5kb3JfaW5mb2ZyYW1lX2luaXQoZnJhbWUpOwotCWlmIChlcnIgPCAwKQotCQlyZXR1cm4g
ZXJyOwotCi0JZnJhbWUtPnZpYyA9IHZpYzsKKwlmcmFtZS0+dmljID0gZHJtX21vZGVfaGRtaV92
aWMoY29ubmVjdG9yLCBtb2RlKTsKIAlmcmFtZS0+czNkX3N0cnVjdCA9IHMzZF9zdHJ1Y3R1cmVf
ZnJvbV9kaXNwbGF5X21vZGUobW9kZSk7CiAKIAlyZXR1cm4gMDsKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
