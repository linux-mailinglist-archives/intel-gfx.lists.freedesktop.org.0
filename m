Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0A02BA3C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 20:37:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290D989A8B;
	Mon, 27 May 2019 18:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A2F189A4A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 18:36:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 11:36:53 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga006.fm.intel.com with ESMTP; 27 May 2019 11:36:52 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RIaJDK007368; Mon, 27 May 2019 19:36:51 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 18:36:09 +0000
Message-Id: <20190527183613.17076-14-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190527183613.17076-1-michal.wajdeczko@intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 13/17] drm/i915/guc: Update GuC CTB response
 definition
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

Q3VycmVudCBHdUMgZmlybXdhcmVzIGlkZW50aWZ5IHJlc3BvbnNlIG1lc3NhZ2UgaW4gYSBkaWZm
ZXJlbnQgd2F5LgoKdjI6IHVwZGF0ZSBjb21tZW50cyBmb3Igb3RoZXIgSDJHIGJpdHMgKERhbmll
bGUpCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGlu
dGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+CkNjOiBLZWx2aW4gR2FyZGluZXIgPGtlbHZpbi5nYXJkaW5lckBpbnRlbC5j
b20+CkNjOiBKb2huIFNwb3Rzd29vZCA8am9obi5hLnNwb3Rzd29vZEBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19jdC5jICAgfCAyICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZndpZi5oIHwgOCArKysrKy0tLQogMiBm
aWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2N0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9ndWNfY3QuYwppbmRleCBkZGUxZGMwZDZlNjkuLjJkNWRjMmFhMjJhNyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2N0LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2N0LmMKQEAgLTU2NSw3ICs1NjUsNyBAQCBzdGF0aWMg
aW5saW5lIHVuc2lnbmVkIGludCBjdF9oZWFkZXJfZ2V0X2FjdGlvbih1MzIgaGVhZGVyKQogCiBz
dGF0aWMgaW5saW5lIGJvb2wgY3RfaGVhZGVyX2lzX3Jlc3BvbnNlKHUzMiBoZWFkZXIpCiB7Ci0J
cmV0dXJuIGN0X2hlYWRlcl9nZXRfYWN0aW9uKGhlYWRlcikgPT0gSU5URUxfR1VDX0FDVElPTl9E
RUZBVUxUOworCXJldHVybiAhIShoZWFkZXIgJiBHVUNfQ1RfTVNHX0lTX1JFU1BPTlNFKTsKIH0K
IAogc3RhdGljIGludCBjdGJfcmVhZChzdHJ1Y3QgaW50ZWxfZ3VjX2N0X2J1ZmZlciAqY3RiLCB1
MzIgKmRhdGEpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZndp
Zi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3aWYuaAppbmRleCBmYTc0NWE1
OGQzOGQuLjNkMWRlMjg4ZDk2YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZ3VjX2Z3aWYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZndpZi5o
CkBAIC0zNTUsMTQgKzM1NSwxNiBAQCBzdHJ1Y3QgZ3VjX2N0X2J1ZmZlcl9kZXNjIHsKICAqCiAg
KiBiaXRbNC4uMF0JbWVzc2FnZSBsZW4gKGluIGR3b3JkcykKICAqIGJpdFs3Li41XQlyZXNlcnZl
ZAotICogYml0WzhdCXdyaXRlIGZlbmNlIHRvIGRlc2MKLSAqIGJpdFs5XQl3cml0ZSBzdGF0dXMg
dG8gSDJHIGJ1ZmYKLSAqIGJpdFsxMF0Jc2VuZCBzdGF0dXMgKHZpYSBHMkgpCisgKiBiaXRbOF0J
cmVzcG9uc2UgKEcySCBvbmx5KQorICogYml0WzhdCXdyaXRlIGZlbmNlIHRvIGRlc2MgKEgyRyBv
bmx5KQorICogYml0WzldCXdyaXRlIHN0YXR1cyB0byBIMkcgYnVmZiAoSDJHIG9ubHkpCisgKiBi
aXRbMTBdCXNlbmQgc3RhdHVzIGJhY2sgdmlhIEcySCAoSDJHIG9ubHkpCiAgKiBiaXRbMTUuLjEx
XQlyZXNlcnZlZAogICogYml0WzMxLi4xNl0JYWN0aW9uIGNvZGUKICAqLwogI2RlZmluZSBHVUNf
Q1RfTVNHX0xFTl9TSElGVAkJCTAKICNkZWZpbmUgR1VDX0NUX01TR19MRU5fTUFTSwkJCTB4MUYK
KyNkZWZpbmUgR1VDX0NUX01TR19JU19SRVNQT05TRQkJCSgxIDw8IDgpCiAjZGVmaW5lIEdVQ19D
VF9NU0dfV1JJVEVfRkVOQ0VfVE9fREVTQwkJKDEgPDwgOCkKICNkZWZpbmUgR1VDX0NUX01TR19X
UklURV9TVEFUVVNfVE9fQlVGRgkJKDEgPDwgOSkKICNkZWZpbmUgR1VDX0NUX01TR19TRU5EX1NU
QVRVUwkJCSgxIDw8IDEwKQotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
