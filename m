Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FE715CAAB
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 19:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 794B86E3C1;
	Thu, 13 Feb 2020 18:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC946E3C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 18:48:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 10:48:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,437,1574150400"; d="scan'208";a="252369258"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 13 Feb 2020 10:48:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2020 20:48:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2020 20:47:54 +0200
Message-Id: <20200213184800.14147-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Proper dbuf global state
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklu
dHJvZHVjZSBhIGdsb2JhbCBzdGF0ZSBvYmplY3QgZm9yIGRidWYgYW5kIHBvbGlzaCB1cApzb21l
IHN1cnJvdW5kaW5nIHN0dWZmLgoKT25seSBsaWdodGx5IHNtb2tlIHRlc3RlZCBvbiBrYmwsIGJ1
dCBob3BlZnVsbHkgdGhlIGljbCsKd2lsbCBqdXN0IHdvcmsgKHRtKSBhcyB3ZWxsLgoKSW1tZWRp
YXRlIFRPRE86Ci0gUmViYXNlIG9uIHRvcCBvZiBjdXJyZW50IGRidWYgZml4ZXMgb25jZSB0aGV5
IGxhbmQKCkZ1dHVyZSBUT0RPOgotIFJlbG9jYXRlIHRoZSB3aG9sZSB0aGluZyB0byBzb21lIG5l
dyBmaWxlCi0gVHJ5IHRvIGZpbmFsbHkgZWxpbW5pbmF0ZSBkaXN0cnVjc3RfYmlvc193bQotIE1h
eWJlIG90aGVyIHN0dWZmIEknbSBtaXNzaW5nPwoKQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0
YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgoKVmlsbGUgU3lyasOkbMOkICg2KToKICBkcm0v
aTkxNTogSW50cm9kdWNlIHByb3BlciBkYnVmIHN0YXRlCiAgZHJtL2k5MTU6IFBvbGlzaCBzb21l
IGRidWYgZGVidWdzCiAgZHJtL2k5MTU6IFVuaWZ5IHRoZSBsb3cgbGV2ZWwgZGJ1ZiBjb2RlCiAg
ZHJtL2k5MTU6IE51a2Ugc2tsX2RkYl9nZXRfaHdfc3RhdGUoKQogIGRybS9pOTE1OiBNb3ZlIHRo
ZSBkYnVmIHByZS9wb3N0IHBsYW5lIHVwZGF0ZQogIGRybS9pOTE1OiBDbGVhbiB1cCBkYnVmIGRl
YnVncyBkdXJpbmcgLmF0b21pY19jaGVjaygpCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgIHwgIDU2ICsrLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYyAgICB8ICA4MiArKystLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuaCAgICB8ICAgNiArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgICAgfCAgMTEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMgICAgICAgICAgICAgICB8IDI0NyArKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmggICAgICAgICAgICAgICB8ICAyNSArLQogNyBmaWxlcyBjaGFu
Z2VkLCAyNzMgaW5zZXJ0aW9ucygrKSwgMTY2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjQuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
