Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D128124CDA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:11:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A30B96E8EE;
	Wed, 18 Dec 2019 16:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056136E85B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:11:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:11:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="218189723"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2019 08:11:47 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 18:11:02 +0200
Message-Id: <20191218161105.30638-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/15] drm/fb: Extend format_info member arrays
 to handle four planes
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgphZGRmYigpIHVBUEkgaGFzIHN1cHBvcnRlZCBmb3VyIHBsYW5lcyBmb3IgYSB3aGlsZSBub3cs
IG1ha2UgZm9ybWF0X2luZm8KY29tcGF0aWJsZSB3aXRoIHRoYXQuCgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IERoaW5ha2FyYW4gUGFuZGl5YW4g
PGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vZHJtX2ZvdXJjYy5oIHwgOCAr
KysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZm91cmNjLmggYi9pbmNsdWRlL2RybS9kcm1f
Zm91cmNjLmgKaW5kZXggMzA2ZDFlZmViNWUwLi4xNTZiMTIyYzBhZDUgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvZHJtL2RybV9mb3VyY2MuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fZm91cmNjLmgKQEAg
LTc4LDcgKzc4LDcgQEAgc3RydWN0IGRybV9mb3JtYXRfaW5mbyB7CiAJCSAqIHRyaXBsZXQgQGNo
YXJfcGVyX2Jsb2NrLCBAYmxvY2tfdywgQGJsb2NrX2ggZm9yIGJldHRlcgogCQkgKiBkZXNjcmli
aW5nIHRoZSBwaXhlbCBmb3JtYXQuCiAJCSAqLwotCQl1OCBjcHBbM107CisJCXU4IGNwcFs0XTsK
IAogCQkvKioKIAkJICogQGNoYXJfcGVyX2Jsb2NrOgpAQCAtMTA0LDcgKzEwNCw3IEBAIHN0cnVj
dCBkcm1fZm9ybWF0X2luZm8gewogCQkgKiBpbmZvcm1hdGlvbiBmcm9tIHRoZWlyIGRybV9tb2Rl
X2NvbmZpZy5nZXRfZm9ybWF0X2luZm8gaG9vawogCQkgKiBpZiB0aGV5IHdhbnQgdGhlIGNvcmUg
dG8gYmUgdmFsaWRhdGluZyB0aGUgcGl0Y2guCiAJCSAqLwotCQl1OCBjaGFyX3Blcl9ibG9ja1sz
XTsKKwkJdTggY2hhcl9wZXJfYmxvY2tbNF07CiAJfTsKIAogCS8qKgpAQCAtMTEzLDcgKzExMyw3
IEBAIHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gewogCSAqIEJsb2NrIHdpZHRoIGluIHBpeGVscywg
dGhpcyBpcyBpbnRlbmRlZCB0byBiZSBhY2Nlc3NlZCB0aHJvdWdoCiAJICogZHJtX2Zvcm1hdF9p
bmZvX2Jsb2NrX3dpZHRoKCkKIAkgKi8KLQl1OCBibG9ja193WzNdOworCXU4IGJsb2NrX3dbNF07
CiAKIAkvKioKIAkgKiBAYmxvY2tfaDoKQEAgLTEyMSw3ICsxMjEsNyBAQCBzdHJ1Y3QgZHJtX2Zv
cm1hdF9pbmZvIHsKIAkgKiBCbG9jayBoZWlnaHQgaW4gcGl4ZWxzLCB0aGlzIGlzIGludGVuZGVk
IHRvIGJlIGFjY2Vzc2VkIHRocm91Z2gKIAkgKiBkcm1fZm9ybWF0X2luZm9fYmxvY2tfaGVpZ2h0
KCkKIAkgKi8KLQl1OCBibG9ja19oWzNdOworCXU4IGJsb2NrX2hbNF07CiAKIAkvKiogQGhzdWI6
IEhvcml6b250YWwgY2hyb21hIHN1YnNhbXBsaW5nIGZhY3RvciAqLwogCXU4IGhzdWI7Ci0tIAoy
LjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
