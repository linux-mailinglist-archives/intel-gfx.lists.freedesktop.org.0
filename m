Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE5670D3C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 01:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E35089F43;
	Mon, 22 Jul 2019 23:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBCBE89F43
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 23:21:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 16:21:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; d="scan'208";a="188709296"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jul 2019 16:21:18 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2019 16:20:40 -0700
Message-Id: <20190722232048.9970-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/uc: Gt-fy uc reset
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

VGhpcyB3YXMgdGhlIGxhc3QgcGxhY2UgaW4gZ3QvdWMgdGhhdCB3YXMgc3RpbGwgdXNpbmcgSTkx
NV9SRUFECndpdGggdGhlIGdsb2JhbCBkZXZfcHJpdi4KClNpZ25lZC1vZmYtYnk6IERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Yy5jCmluZGV4IDVlYmIwYTUzNDcxOC4uNDQ4MGEzZGMyNDQ5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTM3LDE3ICszNywxNyBAQCBzdGF0aWMg
dm9pZCBndWNfZnJlZV9sb2FkX2Vycl9sb2coc3RydWN0IGludGVsX2d1YyAqZ3VjKTsKICAqLwog
c3RhdGljIGludCBfX2ludGVsX3VjX3Jlc2V0X2h3KHN0cnVjdCBpbnRlbF91YyAqdWMpCiB7Ci0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdWNfdG9fZ3QodWMpLT5pOTE1Owor
CXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSB1Y190b19ndCh1Yyk7CiAJaW50IHJldDsKIAl1MzIgZ3Vj
X3N0YXR1czsKIAotCXJldCA9IGludGVsX3Jlc2V0X2d1YygmZGV2X3ByaXYtPmd0KTsKKwlyZXQg
PSBpbnRlbF9yZXNldF9ndWMoZ3QpOwogCWlmIChyZXQpIHsKIAkJRFJNX0VSUk9SKCJGYWlsZWQg
dG8gcmVzZXQgR3VDLCByZXQgPSAlZFxuIiwgcmV0KTsKIAkJcmV0dXJuIHJldDsKIAl9CiAKLQln
dWNfc3RhdHVzID0gSTkxNV9SRUFEKEdVQ19TVEFUVVMpOworCWd1Y19zdGF0dXMgPSBpbnRlbF91
bmNvcmVfcmVhZChndC0+dW5jb3JlLCBHVUNfU1RBVFVTKTsKIAlXQVJOKCEoZ3VjX3N0YXR1cyAm
IEdTX01JQV9JTl9SRVNFVCksCiAJICAgICAiR3VDIHN0YXR1czogMHgleCwgTUlBIGNvcmUgZXhw
ZWN0ZWQgdG8gYmUgaW4gcmVzZXRcbiIsCiAJICAgICBndWNfc3RhdHVzKTsKLS0gCjIuMjIuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
