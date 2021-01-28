Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA52307ADC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:27:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013C76E9BF;
	Thu, 28 Jan 2021 16:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8A136E99B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:22 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:25:21 +0100
Message-Id: <20210128162612.927917-13-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 12/63] drm/i915: No longer allow exporting
 userptr through dma-buf
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

SXQgZG9lc24ndCBtYWtlIHNlbnNlIHRvIGV4cG9ydCBhIG1lbW9yeSBhZGRyZXNzLCB3ZSB3aWxs
IHByZXZlbnQKYWxsb3dpbmcgYWNjZXNzIHRoaXMgd2F5IHRvIGRpZmZlcmVudCBhZGRyZXNzIHNw
YWNlcyB3aGVuIHdlCnJld29yayB1c2VycHRyIGhhbmRsaW5nLCBzbyBiZXN0IHRvIGV4cGxpY2l0
bHkgZGlzYWJsZSBpdC4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2
bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYXNvbiBFa3N0cmFuZCA8
amFzb25Aamxla3N0cmFuZC5uZXQ+CgotLSBTdGlsbCBuZWVkcyBhbiBhY2sgZnJvbSByZWxldmFu
dCB1c2Vyc3BhY2UgdGhhdCBpdCB3b24ndCBicmVhaywgYnV0IHNob3VsZCBiZSBnb29kLgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgfCA1ICsrLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCmluZGV4IDVhMTk2OTljMmQ3ZS4u
MGMzMGNhNTJkZWUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fdXNlcnB0ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2Vy
cHRyLmMKQEAgLTY5NCwxMCArNjk0LDkgQEAgaTkxNV9nZW1fdXNlcnB0cl9yZWxlYXNlKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiBzdGF0aWMgaW50CiBpOTE1X2dlbV91c2VycHRy
X2RtYWJ1Zl9leHBvcnQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKLQlpZiAo
b2JqLT51c2VycHRyLm1tdV9vYmplY3QpCi0JCXJldHVybiAwOworCWRybV9kYmcob2JqLT5iYXNl
LmRldiwgIkV4cG9ydGluZyB1c2VycHRyIG5vIGxvbmdlciBhbGxvd2VkXG4iKTsKIAotCXJldHVy
biBpOTE1X2dlbV91c2VycHRyX2luaXRfX21tdV9ub3RpZmllcihvYmosIDApOworCXJldHVybiAt
RUlOVkFMOwogfQogCiBzdGF0aWMgaW50Ci0tIAoyLjMwLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
