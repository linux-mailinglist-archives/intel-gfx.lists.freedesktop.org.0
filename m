Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 539132BA34
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 20:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9DA689A57;
	Mon, 27 May 2019 18:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A7B489A32
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 18:36:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 11:36:34 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 27 May 2019 11:36:32 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RIaJDE007368; Mon, 27 May 2019 19:36:31 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 18:36:03 +0000
Message-Id: <20190527183613.17076-8-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190527183613.17076-1-michal.wajdeczko@intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 07/17] drm/i915/huc: Define HuC firmware
 version for Geminilake
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

RGVmaW5lIEh1QyBmaXJtd2FyZSB2ZXJzaW9uIGZvciBHZW1pbmlsYWtlLgoKU2lnbmVkLW9mZi1i
eTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzog
Sm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogQW51
c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpDYzogVG9ueSBZZSA8dG9u
eS55ZUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2
YXRzYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3LmMg
fCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9odWNfZncuYwppbmRleCA0NGM1NTk1MjYwNzIuLjhiYWM2YTA1MWMx
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3LmMKQEAgLTM0LDYgKzM0LDEwIEBACiAj
ZGVmaW5lIEtCTF9IVUNfRldfTUlOT1IgMDAKICNkZWZpbmUgS0JMX0JMRF9OVU0gMTgxMAogCisj
ZGVmaW5lIEdMS19IVUNfRldfTUFKT1IgMDMKKyNkZWZpbmUgR0xLX0hVQ19GV19NSU5PUiAwMQor
I2RlZmluZSBHTEtfQkxEX05VTSAyODkzCisKICNkZWZpbmUgSFVDX0ZXX1BBVEgocGxhdGZvcm0s
IG1ham9yLCBtaW5vciwgYmxkX251bSkgXAogCSJpOTE1LyIgX19zdHJpbmdpZnkocGxhdGZvcm0p
ICJfaHVjX3ZlciIgX19zdHJpbmdpZnkobWFqb3IpICJfIiBcCiAJX19zdHJpbmdpZnkobWlub3Ip
ICJfIiBfX3N0cmluZ2lmeShibGRfbnVtKSAiLmJpbiIKQEAgLTUwLDYgKzU0LDEwIEBAIE1PRFVM
RV9GSVJNV0FSRShJOTE1X0JYVF9IVUNfVUNPREUpOwogCUtCTF9IVUNfRldfTUlOT1IsIEtCTF9C
TERfTlVNKQogTU9EVUxFX0ZJUk1XQVJFKEk5MTVfS0JMX0hVQ19VQ09ERSk7CiAKKyNkZWZpbmUg
STkxNV9HTEtfSFVDX1VDT0RFIEhVQ19GV19QQVRIKGdsaywgR0xLX0hVQ19GV19NQUpPUiwgXAor
CUdMS19IVUNfRldfTUlOT1IsIEdMS19CTERfTlVNKQorTU9EVUxFX0ZJUk1XQVJFKEk5MTVfR0xL
X0hVQ19VQ09ERSk7CisKIHN0YXRpYyB2b2lkIGh1Y19md19zZWxlY3Qoc3RydWN0IGludGVsX3Vj
X2Z3ICpodWNfZncpCiB7CiAJc3RydWN0IGludGVsX2h1YyAqaHVjID0gY29udGFpbmVyX29mKGh1
Y19mdywgc3RydWN0IGludGVsX2h1YywgZncpOwpAQCAtNzYsNiArODQsMTAgQEAgc3RhdGljIHZv
aWQgaHVjX2Z3X3NlbGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKmh1Y19mdykKIAkJaHVjX2Z3LT5w
YXRoID0gSTkxNV9LQkxfSFVDX1VDT0RFOwogCQlodWNfZnctPm1ham9yX3Zlcl93YW50ZWQgPSBL
QkxfSFVDX0ZXX01BSk9SOwogCQlodWNfZnctPm1pbm9yX3Zlcl93YW50ZWQgPSBLQkxfSFVDX0ZX
X01JTk9SOworCX0gZWxzZSBpZiAoSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKKwkJaHVjX2Z3
LT5wYXRoID0gSTkxNV9HTEtfSFVDX1VDT0RFOworCQlodWNfZnctPm1ham9yX3Zlcl93YW50ZWQg
PSBHTEtfSFVDX0ZXX01BSk9SOworCQlodWNfZnctPm1pbm9yX3Zlcl93YW50ZWQgPSBHTEtfSFVD
X0ZXX01JTk9SOwogCX0KIH0KIAotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
