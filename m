Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3771A4C075
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8841D6E44F;
	Wed, 19 Jun 2019 18:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA336E44E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:03:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 11:03:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="160436205"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 19 Jun 2019 11:03:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2019 21:03:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 21:03:12 +0300
Message-Id: <20190619180312.31817-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/sdvo: Add helpers to get the
 cmd/status string
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCBzZHZvX2NtZF9uYW1lKCkgYW5kIHNkdm9fY21kX3N0YXR1cygpIGhlbHBlcnMgdG8gYXZvaWQg
Ym90aGVyaW5nCnRoZSBjYWxsZXJzIHdpdGggdGhlIGltcGxlbWVudGF0aW9uIGRldGFpbHMgb2Yg
dGhlIHN0b3JhZ2UgZm9yIHRoZXNlCnN0cmluZ3MuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIHwgNDAgKysrKysrKysrKysrKysrKystLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCmluZGV4IGRmMzU4MmJhYjA3Ni4u
MTg0Y2Q2NGE3Zjk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nkdm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8u
YwpAQCAtMzk1LDExICszOTUsMjQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB7CiAKICN1bmRlZiBT
RFZPX0NNRF9OQU1FX0VOVFJZCiAKK3N0YXRpYyBjb25zdCBjaGFyICpzZHZvX2NtZF9uYW1lKHU4
IGNtZCkKK3sKKwlpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHNkdm9fY21k
X25hbWVzKTsgaSsrKSB7CisJCWlmIChjbWQgPT0gc2R2b19jbWRfbmFtZXNbaV0uY21kKQorCQkJ
cmV0dXJuIHNkdm9fY21kX25hbWVzW2ldLm5hbWU7CisJfQorCisJcmV0dXJuIE5VTEw7Cit9CisK
ICNkZWZpbmUgU0RWT19OQU1FKHN2ZG8pICgoc3ZkbyktPnBvcnQgPT0gUE9SVF9CID8gIlNEVk9C
IiA6ICJTRFZPQyIpCiAKIHN0YXRpYyB2b2lkIGludGVsX3Nkdm9fZGVidWdfd3JpdGUoc3RydWN0
IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sIHU4IGNtZCwKIAkJCQkgICBjb25zdCB2b2lkICphcmdz
LCBpbnQgYXJnc19sZW4pCiB7CisJY29uc3QgY2hhciAqY21kX25hbWU7CiAJaW50IGksIHBvcyA9
IDA7CiAJY2hhciBidWZmZXJbNjRdOwogCkBAIC00MTIsMTUgKzQyNSwxMiBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9zZHZvX2RlYnVnX3dyaXRlKHN0cnVjdCBpbnRlbF9zZHZvICppbnRlbF9zZHZvLCB1
OCBjbWQsCiAJZm9yICg7IGkgPCA4OyBpKyspIHsKIAkJQlVGX1BSSU5UKCIgICAiKTsKIAl9Ci0J
Zm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoc2R2b19jbWRfbmFtZXMpOyBpKyspIHsKLQkJaWYg
KGNtZCA9PSBzZHZvX2NtZF9uYW1lc1tpXS5jbWQpIHsKLQkJCUJVRl9QUklOVCgiKCVzKSIsIHNk
dm9fY21kX25hbWVzW2ldLm5hbWUpOwotCQkJYnJlYWs7Ci0JCX0KLQl9Ci0JaWYgKGkgPT0gQVJS
QVlfU0laRShzZHZvX2NtZF9uYW1lcykpIHsKKworCWNtZF9uYW1lID0gc2R2b19jbWRfbmFtZShj
bWQpOworCWlmIChjbWRfbmFtZSkKKwkJQlVGX1BSSU5UKCIoJXMpIiwgY21kX25hbWUpOworCWVs
c2UKIAkJQlVGX1BSSU5UKCIoJTAyWCkiLCBjbWQpOwotCX0KIAogCVdBUk5fT04ocG9zID49IHNp
emVvZihidWZmZXIpIC0gMSk7CiAjdW5kZWYgQlVGX1BSSU5UCkBAIC00MzgsNiArNDQ4LDE0IEBA
IHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgY21kX3N0YXR1c19uYW1lc1tdID0gewogCVtTRFZP
X0NNRF9TVEFUVVNfU0NBTElOR19OT1RfU1VQUF0gPSAiU2NhbGluZyBub3Qgc3VwcG9ydGVkIiwK
IH07CiAKK3N0YXRpYyBjb25zdCBjaGFyICpzZHZvX2NtZF9zdGF0dXModTggc3RhdHVzKQorewor
CWlmIChzdGF0dXMgPCBBUlJBWV9TSVpFKGNtZF9zdGF0dXNfbmFtZXMpKQorCQlyZXR1cm4gY21k
X3N0YXR1c19uYW1lc1tzdGF0dXNdOworCWVsc2UKKwkJcmV0dXJuIE5VTEw7Cit9CisKIHN0YXRp
YyBib29sIF9faW50ZWxfc2R2b193cml0ZV9jbWQoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nk
dm8sIHU4IGNtZCwKIAkJCQkgICBjb25zdCB2b2lkICphcmdzLCBpbnQgYXJnc19sZW4sCiAJCQkJ
ICAgYm9vbCB1bmxvY2tlZCkKQEAgLTUxNiw2ICs1MzQsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9z
ZHZvX3dyaXRlX2NtZChzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2bywgdTggY21kLAogc3Rh
dGljIGJvb2wgaW50ZWxfc2R2b19yZWFkX3Jlc3BvbnNlKHN0cnVjdCBpbnRlbF9zZHZvICppbnRl
bF9zZHZvLAogCQkJCSAgICAgdm9pZCAqcmVzcG9uc2UsIGludCByZXNwb25zZV9sZW4pCiB7CisJ
Y29uc3QgY2hhciAqY21kX3N0YXR1czsKIAl1OCByZXRyeSA9IDE1OyAvKiA1IHF1aWNrIGNoZWNr
cywgZm9sbG93ZWQgYnkgMTAgbG9uZyBjaGVja3MgKi8KIAl1OCBzdGF0dXM7CiAJaW50IGksIHBv
cyA9IDA7CkBAIC01NjEsOCArNTgwLDkgQEAgc3RhdGljIGJvb2wgaW50ZWxfc2R2b19yZWFkX3Jl
c3BvbnNlKHN0cnVjdCBpbnRlbF9zZHZvICppbnRlbF9zZHZvLAogI2RlZmluZSBCVUZfUFJJTlQo
YXJncy4uLikgXAogCXBvcyArPSBzbnByaW50ZihidWZmZXIgKyBwb3MsIG1heF90KGludCwgc2l6
ZW9mKGJ1ZmZlcikgLSBwb3MsIDApLCBhcmdzKQogCi0JaWYgKHN0YXR1cyA8IEFSUkFZX1NJWkUo
Y21kX3N0YXR1c19uYW1lcykpCi0JCUJVRl9QUklOVCgiKCVzKSIsIGNtZF9zdGF0dXNfbmFtZXNb
c3RhdHVzXSk7CisJY21kX3N0YXR1cyA9IHNkdm9fY21kX3N0YXR1cyhzdGF0dXMpOworCWlmIChj
bWRfc3RhdHVzKQorCQlCVUZfUFJJTlQoIiglcykiLCBjbWRfc3RhdHVzKTsKIAllbHNlCiAJCUJV
Rl9QUklOVCgiKD8/PyAlZCkiLCBzdGF0dXMpOwogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
