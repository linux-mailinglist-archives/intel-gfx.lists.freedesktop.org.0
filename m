Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F19F113227
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 19:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B976F507;
	Wed,  4 Dec 2019 18:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9CEE6F507
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 18:06:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 10:05:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,278,1571727600"; d="scan'208";a="201484793"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 04 Dec 2019 10:05:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Dec 2019 20:05:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 20:05:40 +0200
Message-Id: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] drm/i915: Cleanups around
 intel_attached_encoder() & co.
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkEg
YnVuY2ggb2YgY2xlYW51cCBhcm91bmQgaW50ZWxfYXR0YWNoZWRfZW5jb2RlcigpIGFuZCBpdHMg
Y291c2lucy4KVGhlIG1haW4gbW90aXZhdGlvbiBpcyB0byBtYWtlIGl0IGVhc2llciB0byBzcG90
IHRoZSByZW1haW5pbmcKbGVnYWN5IGRybV9jb25uZWN0b3ItPmVuY29kZXIgdXNlcyBmcm9tIHRo
ZSBhdHRhY2hlZCBlbmNvZGVyJ3MKaW50ZWxfY29ubmVjdG9yLT5lbmNvZGVyLiBJJ20gd29ya2lu
ZyB0b3dhcmRzIG5ldXRlcmluZyB0aGUgZm9ybWVyCmluIGZhdm9yIG9mIHVzaW5nIHByb3BlciBh
dG9taWMgc3RhdGUocykuCgpWaWxsZSBTeXJqw6Rsw6QgKDkpOgogIGRybS9pOTE1L2hkY3A6IE51
a2UgaW50ZWxfaGRjcF90cmFuc2NvZGVyX2NvbmZpZygpCiAgZHJtL2k5MTU6IFBhc3MgaW50ZWxf
Y29ubmVjdG9yIHRvIGludGVsX2F0dGFjaGVkXyooKQogIGRybS9pOTE1OiBQYXNzIGludGVsX2Vu
Y29kZXIgdG8gZW5jX3RvXyooKQogIGRybS9pOTE1OiBVc2UgdGhlIHBhc3NlZCBpbiBlbmNvZGVy
CiAgZHJtL2k5MTU6IFVzZSBpbnRlbF9hdHRhY2hlZF9lbmNvZGVyKCkKICBkcm0vaTkxNTogUmVs
b2NhdGUgaW50ZWxfYXR0YWNoZWRfZHAoKQogIGRybS9pOTE1OiBVc2UgaW50ZWxfYXR0YWNoZWRf
ZHAoKSBpbnN0ZWFkIG9mIGhhbmQgcm9sbGluZyBpdAogIGRybS9pOTE1OiBSZW5hbWUgY29ubl90
b19kaWdfcG9ydCgpIHRvIGludGVsX2F0dGFjaGVkX2RpZ19wb3J0KCkKICBkcm0vaTkxNS9oZGNw
OiBDbGVhbiB1cCBsb2NhbCB2YXJpYWJsZXMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYyAgICAgICAgfCAgNTggKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdWRpby5jICAgIHwgICA0ICstCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29ubmVjdG9yLmMgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3J0LmMgICAgICB8ICAxMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDcwICsrKysrKy0tLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDE0ICstLQogLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgICA2ICstCiAuLi4vZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMzAgKysrLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8ICA3NCArKysrKystLS0tLS0KIC4uLi9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8ICAxNSArLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgICB8ICAyOCArKy0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGlvX3BoeS5jIHwgIDE4ICstLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgICA0ICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5oICAgICAgfCAgIDYgKy0KIC4uLi9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNpX2Rjc19iYWNrbGlnaHQuYyAgICB8ICAxMiArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kdm8uYyAgICAgIHwgICA4ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYyAgICAgfCAxMDggKysrKysrKystLS0t
LS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuaCAgICAgfCAg
IDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgICB8ICA3
MCArKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5o
ICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVn
LmMgIHwgIDE0ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24u
YyAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BpcGVfY3Jj
LmMgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jICAg
ICB8ICAyMiArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3R2LmMgICAg
ICAgfCAgIDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jICAg
ICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpLmMgICAgICAg
IHwgIDM4ICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5j
ICAgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAg
ICAgfCAgNDAgKysrLS0tLQogMjkgZmlsZXMgY2hhbmdlZCwgMzM5IGluc2VydGlvbnMoKyksIDM1
MyBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
