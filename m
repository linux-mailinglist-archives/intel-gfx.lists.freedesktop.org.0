Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1651D2EAF17
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E4836E17D;
	Tue,  5 Jan 2021 15:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 383CB6E15C
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:41 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:06 +0100
Message-Id: <20210105153558.134272-13-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 12/64] drm/i915: No longer allow exporting
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
bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgotLSBTdGlsbCBuZWVkcyBhbiBh
Y2sgZnJvbSByZWxldmFudCB1c2Vyc3BhY2UgdGhhdCBpdCB3b24ndCBicmVhaywgYnV0IHNob3Vs
ZCBiZSBnb29kLgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRy
LmMgfCA1ICsrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2Vy
cHRyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCmluZGV4
IDhjM2QxZWIyZjk2YS4uNDRhZjYyNjU5NDhkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV91c2VycHRyLmMKQEAgLTY5NCwxMCArNjk0LDkgQEAgaTkxNV9nZW1fdXNlcnB0
cl9yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiBzdGF0aWMgaW50CiBp
OTE1X2dlbV91c2VycHRyX2RtYWJ1Zl9leHBvcnQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaikKIHsKLQlpZiAob2JqLT51c2VycHRyLm1tdV9vYmplY3QpCi0JCXJldHVybiAwOworCWRy
bV9kYmcob2JqLT5iYXNlLmRldiwgIkV4cG9ydGluZyB1c2VycHRyIG5vIGxvbmdlciBhbGxvd2Vk
XG4iKTsKIAotCXJldHVybiBpOTE1X2dlbV91c2VycHRyX2luaXRfX21tdV9ub3RpZmllcihvYmos
IDApOworCXJldHVybiAtRUlOVkFMOwogfQogCiBzdGF0aWMgaW50Ci0tIAoyLjMwLjAucmMxCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
