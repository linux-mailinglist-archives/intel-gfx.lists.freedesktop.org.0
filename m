Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 434FEBBF3C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 02:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727C56E9C7;
	Tue, 24 Sep 2019 00:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD6E6E9C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 00:01:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 17:01:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,542,1559545200"; d="scan'208";a="388663960"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by fmsmga005.fm.intel.com with ESMTP; 23 Sep 2019 17:01:53 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 17:03:25 -0700
Message-Id: <20190924000328.29571-9-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924000328.29571-1-radhakrishna.sripada@intel.com>
References: <20190924000328.29571-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/11] drm/fb: Extend format_info member
 arrays to handle four planes
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
Cc: nanley.g.chery@intel.com, dhinakaran.pandiyan@intel.com,
 ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgphZGRmYigpIHVBUEkgaGFzIHN1cHBvcnRlZCBmb3VyIHBsYW5lcyBmb3IgYSB3aGlsZSBub3cs
IG1ha2UgZm9ybWF0X2luZm8KY29tcGF0aWJsZSB3aXRoIHRoYXQuCgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IERoaW5ha2FyYW4gUGFuZGl5YW4g
PGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2RybV9mb3Vy
Y2MuaCB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2ZvdXJjYy5oIGIvaW5jbHVk
ZS9kcm0vZHJtX2ZvdXJjYy5oCmluZGV4IDMwNmQxZWZlYjVlMC4uMTU2YjEyMmMwYWQ1IDEwMDY0
NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fZm91cmNjLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Zv
dXJjYy5oCkBAIC03OCw3ICs3OCw3IEBAIHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gewogCQkgKiB0
cmlwbGV0IEBjaGFyX3Blcl9ibG9jaywgQGJsb2NrX3csIEBibG9ja19oIGZvciBiZXR0ZXIKIAkJ
ICogZGVzY3JpYmluZyB0aGUgcGl4ZWwgZm9ybWF0LgogCQkgKi8KLQkJdTggY3BwWzNdOworCQl1
OCBjcHBbNF07CiAKIAkJLyoqCiAJCSAqIEBjaGFyX3Blcl9ibG9jazoKQEAgLTEwNCw3ICsxMDQs
NyBAQCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvIHsKIAkJICogaW5mb3JtYXRpb24gZnJvbSB0aGVp
ciBkcm1fbW9kZV9jb25maWcuZ2V0X2Zvcm1hdF9pbmZvIGhvb2sKIAkJICogaWYgdGhleSB3YW50
IHRoZSBjb3JlIHRvIGJlIHZhbGlkYXRpbmcgdGhlIHBpdGNoLgogCQkgKi8KLQkJdTggY2hhcl9w
ZXJfYmxvY2tbM107CisJCXU4IGNoYXJfcGVyX2Jsb2NrWzRdOwogCX07CiAKIAkvKioKQEAgLTEx
Myw3ICsxMTMsNyBAQCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvIHsKIAkgKiBCbG9jayB3aWR0aCBp
biBwaXhlbHMsIHRoaXMgaXMgaW50ZW5kZWQgdG8gYmUgYWNjZXNzZWQgdGhyb3VnaAogCSAqIGRy
bV9mb3JtYXRfaW5mb19ibG9ja193aWR0aCgpCiAJICovCi0JdTggYmxvY2tfd1szXTsKKwl1OCBi
bG9ja193WzRdOwogCiAJLyoqCiAJICogQGJsb2NrX2g6CkBAIC0xMjEsNyArMTIxLDcgQEAgc3Ry
dWN0IGRybV9mb3JtYXRfaW5mbyB7CiAJICogQmxvY2sgaGVpZ2h0IGluIHBpeGVscywgdGhpcyBp
cyBpbnRlbmRlZCB0byBiZSBhY2Nlc3NlZCB0aHJvdWdoCiAJICogZHJtX2Zvcm1hdF9pbmZvX2Js
b2NrX2hlaWdodCgpCiAJICovCi0JdTggYmxvY2tfaFszXTsKKwl1OCBibG9ja19oWzRdOwogCiAJ
LyoqIEBoc3ViOiBIb3Jpem9udGFsIGNocm9tYSBzdWJzYW1wbGluZyBmYWN0b3IgKi8KIAl1OCBo
c3ViOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
