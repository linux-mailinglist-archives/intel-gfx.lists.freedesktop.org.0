Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5599E29E7E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 20:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4FA76E13F;
	Fri, 24 May 2019 18:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992716E128
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 18:52:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 11:52:58 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.252.46.194])
 by fmsmga001.fm.intel.com with ESMTP; 24 May 2019 11:52:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 May 2019 21:52:53 +0300
Message-Id: <20190524185253.1088-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: make REG_BIT() and REG_GENMASK() work
 with variables
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UkVHX0JJVCgpIGFuZCBSRUdfR0VOTUFTSygpIHdlcmUgaW50ZW5kZWQgdG8gd29yayB3aXRoIGJv
dGggY29uc3RhbnQKZXhwcmVzc2lvbnMgYW5kIG90aGVyd2lzZSwgd2l0aCB0aGUgZm9ybWVyIGhh
dmluZyBleHRyYSBjb21waWxlIHRpbWUKY2hlY2tzIGZvciB0aGUgYml0IHJhbmdlcy4gSW5jcmVk
aWJseSwgdGhlIHJlc3VsdCBvZgpfX2J1aWx0aW5fY29uc3RhbnRfcCgpIGlzIG5vdCBhbiBpbnRl
Z2VyIGNvbnN0YW50IGV4cHJlc3Npb24gd2hlbiBnaXZlbgphIG5vbi1jb25zdGFudCBleHByZXNz
aW9uLCBsZWFkaW5nIHRvIGVycm9ycyBpbiBCVUlMRF9CVUdfT05fWkVSTygpLgoKUmVwbGFjZSBf
X2J1aWx0aW5fY29uc3RhbnRfcCgpIHdpdGggdGhlIF9faXNfY29uc3RleHByKCkgbWFnaWMgc3Bl
bGwuCgpSZXBvcnRlZC1ieTogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDYgKysrLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCmluZGV4IDQ5ZGNlMDRkZDY4OC4uMDE5YzQ4NzQ4ZGM5IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKQEAgLTEyNiw3ICsxMjYsNyBAQAogICovCiAjZGVmaW5lIFJFR19CSVQoX19uKQkJ
CQkJCQlcCiAJKCh1MzIpKEJJVChfX24pICsJCQkJCQlcCi0JICAgICAgIEJVSUxEX0JVR19PTl9a
RVJPKF9fYnVpbHRpbl9jb25zdGFudF9wKF9fbikgJiYJCVwKKwkgICAgICAgQlVJTERfQlVHX09O
X1pFUk8oX19pc19jb25zdGV4cHIoX19uKSAmJgkJXAogCQkJCSAoKF9fbikgPCAwIHx8IChfX24p
ID4gMzEpKSkpCiAKIC8qKgpAQCAtMTQwLDggKzE0MCw4IEBACiAgKi8KICNkZWZpbmUgUkVHX0dF
Tk1BU0soX19oaWdoLCBfX2xvdykJCQkJCVwKIAkoKHUzMikoR0VOTUFTSyhfX2hpZ2gsIF9fbG93
KSArCQkJCQlcCi0JICAgICAgIEJVSUxEX0JVR19PTl9aRVJPKF9fYnVpbHRpbl9jb25zdGFudF9w
KF9faGlnaCkgJiYJXAotCQkJCSBfX2J1aWx0aW5fY29uc3RhbnRfcChfX2xvdykgJiYJCVwKKwkg
ICAgICAgQlVJTERfQlVHX09OX1pFUk8oX19pc19jb25zdGV4cHIoX19oaWdoKSAmJglcCisJCQkJ
IF9faXNfY29uc3RleHByKF9fbG93KSAmJgkJXAogCQkJCSAoKF9fbG93KSA8IDAgfHwgKF9faGln
aCkgPiAzMSB8fCAoX19sb3cpID4gKF9faGlnaCkpKSkpCiAKIC8qCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
