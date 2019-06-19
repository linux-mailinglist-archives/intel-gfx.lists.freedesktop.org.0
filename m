Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6E64C421
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 01:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E176E483;
	Wed, 19 Jun 2019 23:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7106E483
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 23:31:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:31:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="165157896"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by orsmga006.jf.intel.com with ESMTP; 19 Jun 2019 16:31:37 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 16:31:34 -0700
Message-Id: <20190619233134.20009-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190619233134.20009-1-jose.souza@intel.com>
References: <20190619233134.20009-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/ehl/dsi: Enable AFE over PPI
 strap
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG90aGVyIGFkZGl0aW9uYWwgc3RlcCBpbiB0aGUgRFNJIHNlcXVlbmNlIGZvciBFSEwuCgp2
MjoKLSBVc2luZyBSRUdfQklUKCkoTWF0dCkKLSBGaXhlZCBjb21taXQgbWVzc2FnZSB0eXBvKFZh
bmRpdGEpCgpCU3BlYzogMjA1OTcKQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
VmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDggKysrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgIHwgNCArKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4
IDhiNGQ1ODliZTRiNC4uYjg2NzNkZWJmOTMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYwpAQCAtNTQ0LDYgKzU0NCwxNCBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfc2V0
dXBfZHBoeV90aW1pbmdzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogCQkJSTkxNV9X
UklURShEU0lfVEFfVElNSU5HX1BBUkFNKHBvcnQpLCB0bXApOwogCQl9CiAJfQorCisJaWYgKElT
X0VMS0hBUlRMQUtFKGRldl9wcml2KSkgeworCQlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRl
bF9kc2ktPnBvcnRzKSB7CisJCQl0bXAgPSBJOTE1X1JFQUQoSUNMX0RQSFlfQ0hLTihwb3J0KSk7
CisJCQl0bXAgfD0gSUNMX0RQSFlfQ0hLTl9BRkVfT1ZFUl9QUElfU1RSQVA7CisJCQlJOTE1X1dS
SVRFKElDTF9EUEhZX0NIS04ocG9ydCksIHRtcCk7CisJCX0KKwl9CiB9CiAKIHN0YXRpYyB2b2lk
IGdlbjExX2RzaV9nYXRlX2Nsb2NrcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDk1YjQxNjc2YWU5ZC4uN2U2MDA5Y2VmYjE4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTE5OTMsNiArMTk5MywxMCBAQCBlbnVtIGk5MTVfcG93
ZXJfd2VsbF9pZCB7CiAjZGVmaW5lICAgTl9TQ0FMQVIoeCkJCQkoKHgpIDw8IDI0KQogI2RlZmlu
ZSAgIE5fU0NBTEFSX01BU0sJCQkoMHg3RiA8PCAyNCkKIAorI2RlZmluZSBfSUNMX0RQSFlfQ0hL
Tl9SRUcJCQkweDE5NAorI2RlZmluZSBJQ0xfRFBIWV9DSEtOKHBvcnQpCQkJX01NSU8oX0lDTF9D
T01CT1BIWShwb3J0KSArIF9JQ0xfRFBIWV9DSEtOX1JFRykKKyNkZWZpbmUgICBJQ0xfRFBIWV9D
SEtOX0FGRV9PVkVSX1BQSV9TVFJBUAlSRUdfQklUKDcpCisKICNkZWZpbmUgTUdfUEhZX1BPUlRf
TE4obG4sIHBvcnQsIGxuMHAxLCBsbjBwMiwgbG4xcDEpIFwKIAlfTU1JTyhfUE9SVCgocG9ydCkg
LSBQT1JUX0MsIGxuMHAxLCBsbjBwMikgKyAobG4pICogKChsbjFwMSkgLSAobG4wcDEpKSkKIAot
LSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
