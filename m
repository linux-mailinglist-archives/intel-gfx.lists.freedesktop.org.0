Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4360314F20D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 19:19:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10206E9DE;
	Fri, 31 Jan 2020 18:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B595D6E9DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 18:19:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 10:19:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="310075736"
Received: from unknown (HELO msatwood-mobl.intel.com) ([10.24.14.195])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2020 10:19:38 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 22:19:51 -0500
Message-Id: <20200201031951.3209-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [v2] drm/i915/tgl: Add Wa_1606054188:tgl
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGlnZXIgTGFrZSB3ZSBkbyBub3Qgc3VwcG9ydCBzb3VyY2Uga2V5aW5nIGluIHRoZSBwaXhl
bCBmb3JtYXRzIFAwMTAsClAwMTIsIFAwMTYuCgp2MjogTW92ZSBXQSB0byBlbmQgb2YgZnVuY3Rp
b24uIENyZWF0ZSBoZWxwZXIgZnVuY3Rpb24gZm9yIGZvcm1hdApjaGVjay4gTGVzcyB2ZXJib3Nl
IGRlYnVnZ2luZyBtZXNzYWdpbmcuCgpCc3BlYzogNTI4OTAKQ2M6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVA
aW50ZWwuY29tPgpDQzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCAyMiArKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKaW5kZXggMmYyNzdkMWZj
NmYxLi42ZTRkNzM1ODhiNDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zcHJpdGUuYwpAQCAtMjA3MCw2ICsyMDcwLDE4IEBAIHZsdl9zcHJpdGVfY2hlY2soc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBi
b29sIGludGVsX2Zvcm1hdF9pc19wMDF4KGludCBmb3JtYXQpCit7CisJc3dpdGNoKGZvcm1hdCl7
CisJCWNhc2UgRFJNX0ZPUk1BVF9QMDEwOgorCQljYXNlIERSTV9GT1JNQVRfUDAxMjoKKwkJY2Fz
ZSBEUk1fRk9STUFUX1AwMTY6CisJCQlyZXR1cm4gdHJ1ZTsKKwkJZGVmYXVsdDoKKwkJCXJldHVy
biBmYWxzZTsKKwl9Cit9CisKIHN0YXRpYyBpbnQgc2tsX3BsYW5lX2NoZWNrX2ZiKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJICAgICAgY29uc3Qgc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIHsKQEAgLTIxNDMsNiArMjE1NSwxNiBA
QCBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCisJLyogV2FfMTYwNjA1
NDE4ODp0Z2wKKwkgKgorCSAqIFRPRE86IEFkZCBmb3JtYXQgUkdCNjRpIHdoZW4gaW1wbGVtZW50
ZWQuCisJICoKKwkgKi8KKwlpZihJU19HRU4oZGV2X3ByaXYsIDEyKSAmJgorCSAgIHBsYW5lX3N0
YXRlLT5ja2V5LmZsYWdzICYgSTkxNV9TRVRfQ09MT1JLRVlfU09VUkNFICYmCisJICAgaW50ZWxf
Zm9ybWF0X2lzX3AwMXgoZmItPmZvcm1hdC0+Zm9ybWF0KSkKKwkJRFJNX0RFQlVHX0tNUygiU291
cmNlIGNvbG9yIGtleWluZyBub3Qgc3VwcG9ydGVkIHdpdGggUDAxeCBmb3JtYXRzXG4iKTsKKwog
CXJldHVybiAwOwogfQogCi0tIAoyLjIxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
