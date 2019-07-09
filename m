Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CAD635F4
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56B68969E;
	Tue,  9 Jul 2019 12:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3FEE8935B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:34:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:34:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="249135583"
Received: from mderosix-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.49.241])
 by orsmga001.jf.intel.com with ESMTP; 09 Jul 2019 05:34:10 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 15:33:38 +0300
Message-Id: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 00/13] drm/i915: Vulkan performance query
 support
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

SGkgYWdhaW4sCgpUaGlzIGJyZWFrIG9uZSBvZiB0aGUgY29tbWl0IGluIDIgc28gdGhhdCBob2xk
IHByZWVtcHRpb24KaW5mcmFzdHJ1Y3R1cmUgaXMgc2VwYXJhdGUgZnJvbSBwZXJmIHVzaW5nIHRo
ZSBmZWF0dXJlLgoKSG9wZWZ1bGx5IGl0IGFkZHJlc3NlcyB0aGUgbGFzdCBiaXRzIG9mIGxvY2tp
bmcgaXNzdWVzIGFyb3VuZCBPQQpjb25maWd1cmF0aW9ucy4KCkZpbmFsbHkgYWRkZWQgdGhlIFJi
cyBmcm9tIENocmlzLgoKVGhhbmtzIGEgbG90LAoKTGlvbmVsIExhbmR3ZXJsaW4gKDEzKToKICBk
cm0vaTkxNS9wZXJmOiBlbnN1cmUgd2Uga2VlcCBhIHJlZmVyZW5jZSBvbiB0aGUgZHJpdmVyCiAg
ZHJtL2k5MTUvcGVyZjogYWRkIG1pc3NpbmcgZGVsYXkgZm9yIE9BIG11eGVzIGNvbmZpZ3VyYXRp
b24KICBkcm0vaTkxNS9wZXJmOiBpbnRyb2R1Y2UgYSB2ZXJzaW9uaW5nIG9mIHRoZSBpOTE1LXBl
cmYgdWFwaQogIGRybS9pOTE1L3BlcmY6IGFsbG93IGZvciBDUyBPQSBjb25maWdzIHRvIGJlIGNy
ZWF0ZWQgbGF6aWx5CiAgZHJtL2k5MTU6IGVudW1lcmF0ZSBzY3JhdGNoIGZpZWxkcwogIGRybS9p
OTE1L3BlcmY6IGltcGxlbWVudCBhY3RpdmUgd2FpdCBmb3Igbm9hIGNvbmZpZ3VyYXRpb25zCiAg
ZHJtL2k5MTU6IGludHJvZHVjZSBhIG1lY2hhbmlzbSB0byBleHRlbmQgZXhlY2J1ZjIKICBkcm0v
aTkxNTogYWRkIHN5bmNvYmogdGltZWxpbmUgc3VwcG9ydAogIGRybS9pOTE1OiBhZGQgYSBuZXcg
cGVyZiBjb25maWd1cmF0aW9uIGV4ZWNidWYgcGFyYW1ldGVyCiAgZHJtL2k5MTU6IGFkZCBpbmZy
YXN0cnVjdHVyZSB0byBob2xkIG9mZiBwcmVlbXB0aW9uIG9uIGEgcmVxdWVzdAogIGRybS9pOTE1
L3BlcmY6IGFsbG93IGhvbGRpbmcgcHJlZW1wdGlvbiBvbiBmaWx0ZXJlZCBjdHgKICBkcm0vaTkx
NS9wZXJmOiBleGVjdXRlIE9BIGNvbmZpZ3VyYXRpb24gZnJvbSBjb21tYW5kIHN0cmVhbQogIGRy
bS9pOTE1OiBhZGQgc3VwcG9ydCBmb3IgcGVyZiBjb25maWd1cmF0aW9uIHF1ZXJpZXMKCiAuLi4v
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCA0NjggKysrKysrKysr
KystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgICAgIHwgICAy
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oICB8ICAgOSAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAgfCAgMjUgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCAgICAgICAgICAgIHwgICA2ICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oICAgICAgfCAgMjAgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICAgIHwgIDMyICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgICAgfCAgMzUgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8ICAzMSArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgMTEgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICA2MiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgICAgICAgICAgICAgIHwgNjYxICsrKysrKysrKysrKysr
Ky0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wcmlvbGlzdF90eXBlcy5oICAgIHwgICA3
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyAgICAgICAgICAgICB8IDI3NyAr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwg
ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAgICAgfCAg
IDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oICAgICAgICAgICB8ICAx
NCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyAgIHwgIDEw
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCAgIDUg
Ky0KIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgICB8IDE5MyAr
KysrLQogMjAgZmlsZXMgY2hhbmdlZCwgMTY3OCBpbnNlcnRpb25zKCspLCAxOTggZGVsZXRpb25z
KC0pCgotLQoyLjIyLjAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
