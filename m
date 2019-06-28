Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CF359693
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 10:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD3A6E8A1;
	Fri, 28 Jun 2019 08:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 821246E89A
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 08:55:21 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 10:55:11 +0200
Message-Id: <20190628085517.31886-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/6] drm/i915: Use intel_crtc_state
 everywhere!
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

VG8gcHJlcGFyZSBmb3IgYSBodyBhbmQgdWFwaSBzdGF0ZSBzcGxpdCBpbiBpbnRlbF9jcnRjX3N0
YXRlLCB3ZSBuZWVkCnRvIHN0YXJ0IHJlcGxhY2luZyBhbGwgaW50ZXJuYWwgdXNhZ2Ugb2YgZHJt
X2NydGNfc3RhdGUgd2l0aCBpbnRlbF9jcnRjX3N0YXRlLgpUaGlzIG1ha2VzIGl0IGVhc2llciB0
byBjb252ZXJ0IHRvIHNwbGl0IHN0YXRlIGxhdGVyLCBhbmQgY2xlYW5zIHVwIHRoZSBjb2RlCnNs
aWdodGx5LgoKTWFhcnRlbiBMYW5raG9yc3QgKDYpOgogIGRybS9pOTE1OiBQYXNzIGludGVsX2Ny
dGNfc3RhdGUgdG8gbmVlZHNfbW9kZXNldCgpCiAgZHJtL2k5MTU6IENvbnZlcnQgbW9zdCBvZiBh
dG9taWMgY29tbWl0IHRvIHRha2UgbW9yZSBpbnRlbCBzdGF0ZQogIGRybS9pOTE1OiBDb252ZXJ0
IGh3IHN0YXRlIHZlcmlmaWVyIHRvIHRha2UgbW9yZSBpbnRlbCBzdGF0ZSwgdjIuCiAgZHJtL2k5
MTU6IFVzZSBpbnRlbF9jcnRjX3N0YXRlIGluIHNhbml0aXplX3dhdGVybWFya3MoKSB0b28KICBk
cm0vaTkxNTogUGFzcyBpbnRlbCBzdGF0ZSB0byBwbGFuZSBmdW5jdGlvbnMgYXMgd2VsbAogIGRy
bS9pOTE1OiBVc2UgaW50ZWwgc3RhdGUgYXMgbXVjaCBhcyBwb3NzaWJsZSBpbiB3bSBjb2RlCgog
Li4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIHwgIDU2ICstCiAu
Li4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmggfCAgIDUgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDY4MSArKysrKysr
Ky0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAg
ICB8ICAxOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAg
IHwgNDEzICsrKysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oICAgICAg
ICAgICAgICAgfCAgIDQgKy0KIDYgZmlsZXMgY2hhbmdlZCwgNTY2IGluc2VydGlvbnMoKyksIDYx
MSBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
