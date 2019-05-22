Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBAE26C08
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2BF89BFB;
	Wed, 22 May 2019 19:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57CF989BF8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:32:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:32:09 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2019 12:32:07 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJW5Gl020993; Wed, 22 May 2019 20:32:07 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:31:58 +0000
Message-Id: <20190522193203.23932-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190522193203.23932-1-michal.wajdeczko@intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915/guc: Rename intel_guc_is_alive
 to intel_guc_is_loaded
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

VGhpcyBmdW5jdGlvbiBqdXN0IGNoZWNrIG91ciBzb2Z0d2FyZSBmbGFnLCB3aGlsZSAnaXNfYWxp
dmUnCm1heSBzdWdnZXN0IHRoYXQgd2UgYXJlIGNoZWNraW5nIHJ1bnRpbWUgZmlybXdhcmUgc3Rh
dHVzLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0Bp
bnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjLmggICAgICAgICAgICB8IDEwICsr
KysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgfCAg
MiArLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ndWMuaAppbmRleCAyNDk0ZTg0ODMxYTIuLmQ0YjAxNWFiOGEzNiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjLmgKQEAgLTk2LDExICs5Niw2IEBAIHN0cnVjdCBpbnRl
bF9ndWMgewogCXZvaWQgKCpub3RpZnkpKHN0cnVjdCBpbnRlbF9ndWMgKmd1Yyk7CiB9OwogCi1z
dGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3VjX2lzX2FsaXZlKHN0cnVjdCBpbnRlbF9ndWMgKmd1
YykKLXsKLQlyZXR1cm4gaW50ZWxfdWNfZndfaXNfbG9hZGVkKCZndWMtPmZ3KTsKLX0KLQogc3Rh
dGljCiBpbmxpbmUgaW50IGludGVsX2d1Y19zZW5kKHN0cnVjdCBpbnRlbF9ndWMgKmd1YywgY29u
c3QgdTMyICphY3Rpb24sIHUzMiBsZW4pCiB7CkBAIC0xNzYsNiArMTcxLDExIEBAIHUzMiBpbnRl
bF9ndWNfcmVzZXJ2ZWRfZ3R0X3NpemUoc3RydWN0IGludGVsX2d1YyAqZ3VjKTsKIGludCBpbnRl
bF9ndWNfcmVzZXJ2ZV9nZ3R0X3RvcChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpOwogdm9pZCBpbnRl
bF9ndWNfcmVsZWFzZV9nZ3R0X3RvcChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpOwogCitzdGF0aWMg
aW5saW5lIGJvb2wgaW50ZWxfZ3VjX2lzX2xvYWRlZChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCit7
CisJcmV0dXJuIGludGVsX3VjX2Z3X2lzX2xvYWRlZCgmZ3VjLT5mdyk7Cit9CisKIHN0YXRpYyBp
bmxpbmUgaW50IGludGVsX2d1Y19zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiB7CiAJ
aW50ZWxfdWNfZndfc2FuaXRpemUoJmd1Yy0+ZncpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d1Y19zdWJtaXNzaW9uLmMKaW5kZXggZWEwZTM3MzRkMzdjLi45ODdmZjU4NmQ3ZjkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwpAQCAtMTE5OSw3
ICsxMTk5LDcgQEAgc3RhdGljIHZvaWQgX19ndWNfY2xpZW50X2Rpc2FibGUoc3RydWN0IGludGVs
X2d1Y19jbGllbnQgKmNsaWVudCkKIAkgKiB0aGUgY2FzZSwgaW5zdGVhZCBvZiB0cnlpbmcgKGlu
IHZhaW4pIHRvIGNvbW11bmljYXRlIHdpdGggaXQsIGxldCdzCiAJICoganVzdCBjbGVhbnVwIHRo
ZSBkb29yYmVsbCBIVyBhbmQgb3VyIGludGVybmFsIHN0YXRlLgogCSAqLwotCWlmIChpbnRlbF9n
dWNfaXNfYWxpdmUoY2xpZW50LT5ndWMpKQorCWlmIChpbnRlbF9ndWNfaXNfbG9hZGVkKGNsaWVu
dC0+Z3VjKSkKIAkJZGVzdHJveV9kb29yYmVsbChjbGllbnQpOwogCWVsc2UKIAkJX19maW5pX2Rv
b3JiZWxsKGNsaWVudCk7Ci0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
