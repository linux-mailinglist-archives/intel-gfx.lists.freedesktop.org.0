Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 234F426A5F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8F38996E;
	Wed, 22 May 2019 19:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484AD89994
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:01:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:01:12 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 22 May 2019 12:01:11 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJ18WF012878; Wed, 22 May 2019 20:01:10 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:00:56 +0000
Message-Id: <20190522190057.848-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190522190057.848-1-michal.wajdeczko@intel.com>
References: <20190522190057.848-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/huc: Check HuC firmware status
 only once
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHVyaW5nIGRyaXZlciBsb2FkIHdlIGNoZWNrZWQgdGhhdCBIdUMgZmlybXdhcmUgd2FzIHZlcmlm
aWVkLCBhbmQgb25jZQp2ZXJpZmllZCBpdCBzdGF5cyB2ZXJpZmllZCwgc28gdGhlcmUgaXMgbm8g
bmVlZCB0byBjaGVjayB0aGF0IGFnYWluLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3pr
byA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jIHwgMTcgKysrKysrLS0tLS0tLS0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5oIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9odWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5j
CmluZGV4IDFmZjFmYjAxNWU1OC4uYWFjMTc5MTZlMTMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9odWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9o
dWMuYwpAQCAtMTEzLDYgKzExMyw4IEBAIGludCBpbnRlbF9odWNfYXV0aChzdHJ1Y3QgaW50ZWxf
aHVjICpodWMpCiAJdTMyIHN0YXR1czsKIAlpbnQgcmV0OwogCisJR0VNX0JVR19PTihodWMtPnZl
cmlmaWVkKTsKKwogCWlmIChodWMtPmZ3LmxvYWRfc3RhdHVzICE9IElOVEVMX1VDX0ZJUk1XQVJF
X1NVQ0NFU1MpCiAJCXJldHVybiAtRU5PRVhFQzsKIApAQCAtMTM0LDYgKzEzNiw3IEBAIGludCBp
bnRlbF9odWNfYXV0aChzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCiAJCWdvdG8gZmFpbDsKIAl9CiAK
KwlodWMtPnZlcmlmaWVkID0gdHJ1ZTsKIAlyZXR1cm4gMDsKIAogZmFpbDoKQEAgLTE0NywyNCAr
MTUwLDE2IEBAIGludCBpbnRlbF9odWNfYXV0aChzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCiAgKiBp
bnRlbF9odWNfY2hlY2tfc3RhdHVzKCkgLSBjaGVjayBIdUMgc3RhdHVzCiAgKiBAaHVjOiBpbnRl
bF9odWMgc3RydWN0dXJlCiAgKgotICogVGhpcyBmdW5jdGlvbiByZWFkcyBzdGF0dXMgcmVnaXN0
ZXIgdG8gdmVyaWZ5IGlmIEh1QwotICogZmlybXdhcmUgd2FzIHN1Y2Nlc3NmdWxseSBsb2FkZWQu
Ci0gKgogICogUmV0dXJuczogMSBpZiBIdUMgZmlybXdhcmUgaXMgbG9hZGVkIGFuZCB2ZXJpZmll
ZCwKICAqIDAgaWYgSHVDIGZpcm13YXJlIGlzIG5vdCBsb2FkZWQgYW5kIC1FTk9ERVYgaWYgSHVD
CiAgKiBpcyBub3QgcHJlc2VudCBvbiB0aGlzIHBsYXRmb3JtLgogICovCiBpbnQgaW50ZWxfaHVj
X2NoZWNrX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCiB7Ci0Jc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gaHVjX3RvX2k5MTUoaHVjKTsKLQlpbnRlbF93YWtlcmVmX3Qg
d2FrZXJlZjsKLQlib29sIHN0YXR1cyA9IGZhbHNlOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gaHVjX3RvX2k5MTUoaHVjKTsKIAotCWlmICghSEFTX0hVQyhkZXZfcHJpdikpCisJ
aWYgKCFIQVNfSFVDKGk5MTUpKQogCQlyZXR1cm4gLUVOT0RFVjsKIAotCXdpdGhfaW50ZWxfcnVu
dGltZV9wbShkZXZfcHJpdiwgd2FrZXJlZikKLQkJc3RhdHVzID0gSTkxNV9SRUFEKEhVQ19TVEFU
VVMyKSAmIEhVQ19GV19WRVJJRklFRDsKLQotCXJldHVybiBzdGF0dXM7CisJcmV0dXJuIGh1Yy0+
dmVyaWZpZWQ7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5oCmluZGV4IGEwYzIxYWUwMmE5OS4u
OGMyYjZjOGYxNzljIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMuaApAQCAtMzEsNiArMzEsNyBA
QAogc3RydWN0IGludGVsX2h1YyB7CiAJLyogR2VuZXJpYyB1QyBmaXJtd2FyZSBtYW5hZ2VtZW50
ICovCiAJc3RydWN0IGludGVsX3VjX2Z3IGZ3OworCWJvb2wgdmVyaWZpZWQ7CiAKIAkvKiBIdUMt
c3BlY2lmaWMgYWRkaXRpb25zICovCiAJc3RydWN0IGk5MTVfdm1hICpyc2FfZGF0YTsKQEAgLTUy
LDYgKzUzLDcgQEAgc3RhdGljIGlubGluZSB2b2lkIGludGVsX2h1Y19maW5pX21pc2Moc3RydWN0
IGludGVsX2h1YyAqaHVjKQogc3RhdGljIGlubGluZSBpbnQgaW50ZWxfaHVjX3Nhbml0aXplKHN0
cnVjdCBpbnRlbF9odWMgKmh1YykKIHsKIAlpbnRlbF91Y19md19zYW5pdGl6ZSgmaHVjLT5mdyk7
CisJaHVjLT52ZXJpZmllZCA9IGZhbHNlOwogCXJldHVybiAwOwogfQogCi0tIAoyLjE5LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
