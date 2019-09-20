Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F323B8F2F
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 13:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01FA6FCAA;
	Fri, 20 Sep 2019 11:43:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8E266FCA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 11:42:43 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 13:42:35 +0200
Message-Id: <20190920114235.22411-23-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/23] HAX to make it work on the icelake test
 system
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

Q2FuJ3QgZmlndXJlIG91dCBob3cgaXQgd29ya3MsIHNvIGp1c3QgcmVtb3ZpbmcgaXQuLgoKU2ln
bmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jIHwgNCArKy0tCiBp
bmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmggICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2RwX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwppbmRl
eCBmMzczNzk4ZDgyZjYuLmE5OTAwNzNjN2FkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9kcF9oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCkBA
IC0xMzc0LDcgKzEzNzQsNyBAQCB1OCBkcm1fZHBfZHNjX3NpbmtfbWF4X3NsaWNlX2NvdW50KGNv
bnN0IHU4IGRzY19kcGNkW0RQX0RTQ19SRUNFSVZFUl9DQVBfU0laRV0sCiAJCWlmIChzbGljZV9j
YXAxICYgRFBfRFNDXzRfUEVSX0RQX0RTQ19TSU5LKQogCQkJcmV0dXJuIDQ7CiAJCWlmIChzbGlj
ZV9jYXAxICYgRFBfRFNDXzJfUEVSX0RQX0RTQ19TSU5LKQotCQkJcmV0dXJuIDI7CisJCQlyZXR1
cm4gNDsKIAkJaWYgKHNsaWNlX2NhcDEgJiBEUF9EU0NfMV9QRVJfRFBfRFNDX1NJTkspCiAJCQly
ZXR1cm4gMTsKIAl9IGVsc2UgewpAQCAtMTM5OCw3ICsxMzk4LDcgQEAgdTggZHJtX2RwX2RzY19z
aW5rX21heF9zbGljZV9jb3VudChjb25zdCB1OCBkc2NfZHBjZFtEUF9EU0NfUkVDRUlWRVJfQ0FQ
X1NJWkVdLAogCQlpZiAoc2xpY2VfY2FwMSAmIERQX0RTQ180X1BFUl9EUF9EU0NfU0lOSykKIAkJ
CXJldHVybiA0OwogCQlpZiAoc2xpY2VfY2FwMSAmIERQX0RTQ18yX1BFUl9EUF9EU0NfU0lOSykK
LQkJCXJldHVybiAyOworCQkJcmV0dXJuIDQ7CiAJCWlmIChzbGljZV9jYXAxICYgRFBfRFNDXzFf
UEVSX0RQX0RTQ19TSU5LKQogCQkJcmV0dXJuIDE7CiAJfQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9k
cm0vZHJtX2RwX2hlbHBlci5oIGIvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCmluZGV4IGVk
MWE5ODU3NDViYS4uMDY1YjY1MzUwZmNlIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fZHBf
aGVscGVyLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCkBAIC0xMjIyLDYgKzEy
MjIsNyBAQCBpbnQgZHJtX2RwX2RzY19zaW5rX3N1cHBvcnRlZF9pbnB1dF9icGNzKGNvbnN0IHU4
IGRzY19kcGNbRFBfRFNDX1JFQ0VJVkVSX0NBUF9TSQogc3RhdGljIGlubGluZSBib29sCiBkcm1f
ZHBfc2lua19zdXBwb3J0c19kc2MoY29uc3QgdTggZHNjX2RwY2RbRFBfRFNDX1JFQ0VJVkVSX0NB
UF9TSVpFXSkKIHsKKwlyZXR1cm4gZHNjX2RwY2RbRFBfRFNDX1JFViAtIERQX0RTQ19TVVBQT1JU
XTsKIAlyZXR1cm4gZHNjX2RwY2RbRFBfRFNDX1NVUFBPUlQgLSBEUF9EU0NfU1VQUE9SVF0gJgog
CQlEUF9EU0NfREVDT01QUkVTU0lPTl9JU19TVVBQT1JURUQ7CiB9Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
