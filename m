Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD38C277E6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 10:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13C2089CF6;
	Thu, 23 May 2019 08:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 612E889CE1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 08:24:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 01:24:30 -0700
X-ExtLoop1: 1
Received: from igivoni-mobl.amr.corp.intel.com (HELO
 ldmartin-desk.amr.corp.intel.com) ([10.255.88.102])
 by orsmga001.jf.intel.com with ESMTP; 23 May 2019 01:24:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 01:24:18 -0700
Message-Id: <20190523082420.10352-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523082420.10352-1-lucas.demarchi@intel.com>
References: <20190523082420.10352-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/dmc: remove redundant return in
 parse_csr_fw()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

cGFyc2VfY3NyX2Z3KCkgaXMgcmVzcG9uc2libGUgdG8gc2V0IHVwIHNldmVyYWwgZmllbGRzIGlu
IHN0cnVjdCBpbnRlbF9jc3IsCmluY2x1ZGluZyB0aGUgcGF5bG9hZC4gV2UgZG9uJ3QgbmVlZCB0
byBhc3NpZ24gaXQgYWdhaW4uCgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3Iu
YyB8IDE3ICsrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCmluZGV4IGFkNGVlNTVh
OGM1ZS4uN2ZmMDhkZTgzY2M2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwpAQCAtNTIwLDcg
KzUyMCw3IEBAIHN0YXRpYyB1MzIgcGFyc2VfY3NyX2Z3X2NzcyhzdHJ1Y3QgaW50ZWxfY3NyICpj
c3IsCiAJcmV0dXJuIHNpemVvZihzdHJ1Y3QgaW50ZWxfY3NzX2hlYWRlcik7CiB9CiAKLXN0YXRp
YyB1MzIgKnBhcnNlX2Nzcl9mdyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCitz
dGF0aWMgdm9pZCBwYXJzZV9jc3JfZncoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCQkJIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZncpCiB7CiAJc3RydWN0IGludGVsX2Nzc19o
ZWFkZXIgKmNzc19oZWFkZXI7CkBAIC01MzIsMTMgKzUzMiwxMyBAQCBzdGF0aWMgdTMyICpwYXJz
ZV9jc3JfZncoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXUzMiByOwogCiAJ
aWYgKCFmdykKLQkJcmV0dXJuIE5VTEw7CisJCXJldHVybjsKIAogCS8qIEV4dHJhY3QgQ1NTIEhl
YWRlciBpbmZvcm1hdGlvbiovCiAJY3NzX2hlYWRlciA9IChzdHJ1Y3QgaW50ZWxfY3NzX2hlYWRl
ciAqKWZ3LT5kYXRhOwogCXIgPSBwYXJzZV9jc3JfZndfY3NzKGNzciwgY3NzX2hlYWRlcik7CiAJ
aWYgKCFyKQotCQlyZXR1cm4gTlVMTDsKKwkJcmV0dXJuOwogCiAJcmVhZGNvdW50ICs9IHI7CiAK
QEAgLTU0NiwxNyArNTQ2LDEzIEBAIHN0YXRpYyB1MzIgKnBhcnNlX2Nzcl9mdyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcGFja2FnZV9oZWFkZXIgPSAoc3RydWN0IGludGVs
X3BhY2thZ2VfaGVhZGVyICopJmZ3LT5kYXRhW3JlYWRjb3VudF07CiAJciA9IHBhcnNlX2Nzcl9m
d19wYWNrYWdlKGNzciwgcGFja2FnZV9oZWFkZXIsIHNpKTsKIAlpZiAoIXIpCi0JCXJldHVybiBO
VUxMOworCQlyZXR1cm47CiAKIAlyZWFkY291bnQgKz0gcjsKIAogCS8qIEV4dHJhY3QgZG1jX2hl
YWRlciBpbmZvcm1hdGlvbi4gKi8KIAlkbWNfaGVhZGVyID0gKHN0cnVjdCBpbnRlbF9kbWNfaGVh
ZGVyX2Jhc2UgKikmZnctPmRhdGFbcmVhZGNvdW50XTsKLQlyID0gcGFyc2VfY3NyX2Z3X2RtYyhj
c3IsIGRtY19oZWFkZXIpOwotCWlmICghcikKLQkJcmV0dXJuIE5VTEw7Ci0KLQlyZXR1cm4gY3Ny
LT5kbWNfcGF5bG9hZDsKKwlwYXJzZV9jc3JfZndfZG1jKGNzciwgZG1jX2hlYWRlcik7CiB9CiAK
IHN0YXRpYyB2b2lkIGludGVsX2Nzcl9ydW50aW1lX3BtX2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCkBAIC01ODQsOCArNTgwLDcgQEAgc3RhdGljIHZvaWQgY3NyX2xvYWRf
d29ya19mbihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAJY3NyID0gJmRldl9wcml2LT5jc3I7
CiAKIAlyZXF1ZXN0X2Zpcm13YXJlKCZmdywgZGV2X3ByaXYtPmNzci5md19wYXRoLCAmZGV2X3By
aXYtPmRybS5wZGV2LT5kZXYpOwotCWlmIChmdykKLQkJZGV2X3ByaXYtPmNzci5kbWNfcGF5bG9h
ZCA9IHBhcnNlX2Nzcl9mdyhkZXZfcHJpdiwgZncpOworCXBhcnNlX2Nzcl9mdyhkZXZfcHJpdiwg
ZncpOwogCiAJaWYgKGRldl9wcml2LT5jc3IuZG1jX3BheWxvYWQpIHsKIAkJaW50ZWxfY3NyX2xv
YWRfcHJvZ3JhbShkZXZfcHJpdik7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
