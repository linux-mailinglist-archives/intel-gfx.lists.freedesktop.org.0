Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0662E554
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 21:31:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134256E095;
	Wed, 29 May 2019 19:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C559A6E095;
 Wed, 29 May 2019 19:31:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 12:31:27 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 12:31:23 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 01:29:00 +0530
Message-Id: <1559159944-21103-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [PATCH 0/4] Document fixes for DRM UAPI and HDR
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, seanpaul@chromium.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgYWRkcyBEUk0gVUFQSSBoZWFkZXIgc3RydWN0dXJlIGRvY3VtZW50YXRpb24g
dG8ga2VybmVsCmRvY3MuIEZpeGVzIGlzc3VlcyB3aXRoIGV4aXN0aW5nIHN0cnVjdHVyZSBkb2N1
bWVudGF0aW9uIGluIGRybQp1YXBpIGhlYWRlci4KClRoaXMgYWxzbyBmaXhlcyB3YXJuaW5ncyBp
biBIRFIgZG9jIGFuZCBhZGRyZXNzZXMgc3VnZ2VzdGlvbnMgZnJvbQpEYW5pZWwgVmV0dGVyLgoK
QWxzbyBkcm9wcGVkIHN0YXRpYyBmdW5jdGlvbiBkb2N1bWVudGF0aW9uIGluIGhkbWkgY29yZS4K
ClVtYSBTaGFua2FyICg0KToKICBkcm06IERyb3AgYSByZWR1bmRhbnQgdW51c2VkIHZhcmlhYmxl
CiAgZHJtOiBGaXggZG9jYm9vayB3YXJuaW5ncyBpbiBoZHIgbWV0YWRhdGEgaGVscGVyIHN0cnVj
dHVyZXMKICBkcm06IEZpeGVkIGRvYyB3YXJuaW5ncyBpbiBkcm0gdWFwaSBoZWFkZXIKICB2aWRl
by9oZG1pOiBEcm9wcGVkIHN0YXRpYyBmdW5jdGlvbnMgZnJvbSBrZXJuZWwgZG9jCgogRG9jdW1l
bnRhdGlvbi9ncHUvZHJtLXVhcGkucnN0ICB8ICA5ICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9k
cm1fY29ubmVjdG9yLmMgfCAzMSArKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL3ZpZGVv
L2hkbWkuYyAgICAgICAgICAgIHwgMzIgKysrKysrKysrKystLS0tLS0tLS0tLQogaW5jbHVkZS9k
cm0vZHJtX2Nvbm5lY3Rvci5oICAgICB8ICAzICstLQogaW5jbHVkZS9kcm0vZHJtX21vZGVfY29u
ZmlnLmggICB8ICA0ICstLQogaW5jbHVkZS9saW51eC9oZG1pLmggICAgICAgICAgICB8ICAxICsK
IGluY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaCAgICAgfCA1OSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLQogNyBmaWxlcyBjaGFuZ2VkLCAxMTggaW5zZXJ0aW9ucygr
KSwgMjEgZGVsZXRpb25zKC0pCgotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
