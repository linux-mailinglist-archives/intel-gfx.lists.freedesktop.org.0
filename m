Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CA5F03E0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 18:14:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF256E0D1;
	Tue,  5 Nov 2019 17:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A78F96E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 17:14:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 09:14:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="232543053"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 05 Nov 2019 09:14:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Nov 2019 19:14:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Nov 2019 19:14:46 +0200
Message-Id: <20191105171447.22111-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Frob the correct crtc state in
 intel_crtc_disable_noatomic()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSB1YXBpIHZzLiBodyBzdGF0ZSBzcGxpdCBpbnRyb2R1Y2VkIGEgYnVnIGluCmludGVsX2NydGNf
ZGlzYWJsZV9ub2F0b21pYygpIHdoZXJlIGl0J3Mgbm90IGZyb2JiaW5nIGFuIGFscmVhZHkKZnJl
ZWQgdGVtcCBjcnRjIHN0YXRlIGluc3RlYWQgb2YgYWRqdXN0aW5nIHRoZSBjcnRjIHN0YXRlIHdl
CmFyZSByZWFsbHkgbGVmdCB3aXRoLiBGaXggdGhhdCBieSBtYWtpbmcgYSBjbGVhbmVyIHNlcGFy
YXRpb24KYmV0ZWVuIHRoZSB0d28uCgpUaGlzIGNhdXNlcyBleHBsb3Npb25zIG9uIGFueSBtYWNo
aW5lIHRoYXQgYm9vdHMgdXAgd2l0aCBwaXBlcwphbHJlYWR5IHJ1bm5pbmcgYnV0IG5vdCBob29r
ZWQgdXAgdG8gYW55IGVuY29kZXIgKHR5cGljYWwKYmVoYXZpb3VyIGZvciBnZW4yLTQgVkJJT1Mp
LgoKQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5j
b20+CkZpeGVzOiA1OGQxMjRlYTI3MzkgKCJkcm0vaTkxNTogQ29tcGxldGUgY3J0YyBody91YXBp
IHNwbGl0LCB2Ni4iKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCmluZGV4IDg3NmZjMjU5NjhiZi4uMWY5Mzg2MGZiODk3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNzE5MSwxMSArNzE5
MSwxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGRy
bV9jcnRjICpjcnRjLAogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoY3J0Yy0+ZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlID0KIAkJdG9f
aW50ZWxfYndfc3RhdGUoZGV2X3ByaXYtPmJ3X29iai5zdGF0ZSk7CisJc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUgPQorCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPnN0YXRl
KTsKIAllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGRvbWFpbjsKIAlzdHJ1Y3QgaW50
ZWxfcGxhbmUgKnBsYW5lOwogCXU2NCBkb21haW5zOwogCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRl
ICpzdGF0ZTsKLQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKKwlzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqdGVtcF9jcnRjX3N0YXRlOwogCWludCByZXQ7CiAKIAlpZiAoIWlu
dGVsX2NydGMtPmFjdGl2ZSkKQEAgLTcyMTksMTIgKzcyMjEsMTIgQEAgc3RhdGljIHZvaWQgaW50
ZWxfY3J0Y19kaXNhYmxlX25vYXRvbWljKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAlzdGF0ZS0+
YWNxdWlyZV9jdHggPSBjdHg7CiAKIAkvKiBFdmVyeXRoaW5nJ3MgYWxyZWFkeSBsb2NrZWQsIC1F
REVBRExLIGNhbid0IGhhcHBlbi4gKi8KLQljcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9j
cnRjX3N0YXRlKHN0YXRlLCBpbnRlbF9jcnRjKTsKKwl0ZW1wX2NydGNfc3RhdGUgPSBpbnRlbF9h
dG9taWNfZ2V0X2NydGNfc3RhdGUoc3RhdGUsIGludGVsX2NydGMpOwogCXJldCA9IGRybV9hdG9t
aWNfYWRkX2FmZmVjdGVkX2Nvbm5lY3RvcnMoc3RhdGUsIGNydGMpOwogCi0JV0FSTl9PTihJU19F
UlIoY3J0Y19zdGF0ZSkgfHwgcmV0KTsKKwlXQVJOX09OKElTX0VSUih0ZW1wX2NydGNfc3RhdGUp
IHx8IHJldCk7CiAKLQlkZXZfcHJpdi0+ZGlzcGxheS5jcnRjX2Rpc2FibGUoY3J0Y19zdGF0ZSwg
dG9faW50ZWxfYXRvbWljX3N0YXRlKHN0YXRlKSk7CisJZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19k
aXNhYmxlKHRlbXBfY3J0Y19zdGF0ZSwgdG9faW50ZWxfYXRvbWljX3N0YXRlKHN0YXRlKSk7CiAK
IAlkcm1fYXRvbWljX3N0YXRlX3B1dChzdGF0ZSk7CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
