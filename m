Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5712EAF35
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8001C6E17A;
	Tue,  5 Jan 2021 15:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0363A6E155
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:41 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:32 +0100
Message-Id: <20210105153558.134272-39-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 38/64] drm/i915: Add missing ww lock in
 intel_dsb_prepare.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmVjYXVzZSBvZiB0aGUgbG9uZyBsaWZldGltZSBvZiB0aGUgbWFwcGluZywgd2UgY2Fubm90IHdy
YXAgdGhpcyBpbiBhCnNpbXBsZSBsaW1pdGVkIHd3IGxvY2suIEp1c3QgdXNlIHRoZSB1bmxvY2tl
ZCB2ZXJzaW9uIG9mIHBpbl9tYXAsCmJlY2F1c2Ugd2UnbGwgbGlrZWx5IHJlbGVhc2UgdGhlIG1h
cHBpbmcgYSBsb3QgbGF0ZXIsIGluIGEgZGlmZmVyZW50CnRocmVhZC4KClNpZ25lZC1vZmYtYnk6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCmluZGV4IDU2NmZhNzI0MjdiMy4uODU3
MTI2ODIyYTg4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKQEAg
LTI5Myw3ICsyOTMsNyBAQCB2b2lkIGludGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQogCQlnb3RvIG91dDsKIAl9CiAKLQlidWYgPSBpOTE1X2dlbV9v
YmplY3RfcGluX21hcCh2bWEtPm9iaiwgSTkxNV9NQVBfV0MpOworCWJ1ZiA9IGk5MTVfZ2VtX29i
amVjdF9waW5fbWFwX3VubG9ja2VkKHZtYS0+b2JqLCBJOTE1X01BUF9XQyk7CiAJaWYgKElTX0VS
UihidWYpKSB7CiAJCWRybV9lcnIoJmk5MTUtPmRybSwgIkNvbW1hbmQgYnVmZmVyIGNyZWF0aW9u
IGZhaWxlZFxuIik7CiAJCWk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZ2bWEsIEk5MTVfVk1B
X1JFTEVBU0VfTUFQKTsKLS0gCjIuMzAuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
