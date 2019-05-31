Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC8E30E99
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 15:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FEAC8940E;
	Fri, 31 May 2019 13:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AD1E8940E
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 13:11:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 06:11:55 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 May 2019 06:11:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 16:14:50 +0300
Message-Id: <cover.1559308269.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 00/13] drm/i915/bios: vbt cleanup
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29tZSBWQlQgY2xlYW51cCB0byBtYWtlIGl0IG5pY2VyIHRvIGFkZCBtb3JlIHN0dWZmIGFuZC9v
ciBoYXMgYmVlbgpidWdnaW5nIG1lIGZvciBhIHdoaWxlLgoKQlIsCkphbmkuCgpKYW5pIE5pa3Vs
YSAoMTMpOgogIGRybS9pOTE1L2Jpb3M6IG1ha2UgY2hpbGQgZGV2aWNlIG9yZGVyIHRoZSBwcmlv
cml0eSBvcmRlcgogIGRybS9pOTE1L2Jpb3M6IHN0b3JlIGNoaWxkIGRldmljZSBwb2ludGVyIGlu
IERESSBwb3J0IGluZm8KICBkcm0vaTkxNS9iaW9zOiByZWZhY3RvciBEREMgcGluIGFuZCBBVVgg
Q0ggc2FuaXRpemUgZnVuY3Rpb25zCiAgZHJtL2k5MTUvYmlvczogdXNlIHBvcnQgaW5mbyBjaGls
ZCBwb2ludGVyIHRvIGRldGVybWluZSBIUEQgaW52ZXJ0CiAgZHJtL2k5MTUvYmlvczogdXNlIHBv
cnQgaW5mbyBjaGlsZCBwb2ludGVyIHRvIGRldGVybWluZSBMU1BDT04KICAgIHByZXNlbmNlCiAg
ZHJtL2k5MTUvYmlvczogY2xlYW4gdXAgVkJUIHBvcnQgaW5mbyBkZWJ1ZyBsb2dnaW5nCiAgZHJt
L2k5MTUvYmlvczogcmVtb3ZlIHVudXNlZCwgb2Jzb2xldGUgVkJUIGRlZmluaXRpb25zCiAgZHJt
L2k5MTUvYmlvczogcmVzZXJ2ZSBzdHJ1Y3QgYmRiXyBwcmVmaXggZm9yIEJEQiBibG9ja3MKICBk
cm0vaTkxNS9iaW9zOiBhZGQgQkRCIGJsb2NrIGNvbW1lbnRzIGJlZm9yZSBkZWZpbml0aW9ucwog
IGRybS9pOTE1L2Jpb3M6IHNvcnQgQkRCIGJsb2NrIGRlZmluaXRpb25zIHVzaW5nIGJsb2NrIElE
CiAgZHJtL2k5MTUvYmlvczogYWRkIFZCVCBzd2luZyBiaXQgdG8gY2hpbGQgZGV2aWNlIGRlZmlu
aXRpb24KICBkcm0vaTkxNS9iaW9zOiBhZGQgbW9yZSBMRlAgb3B0aW9ucwogIGRybS9pOTE1L2Jp
b3M6IGFkZCBhbiBlbnVtIGZvciBCREIgYmxvY2sgSURzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYmlv
cy5jICAgICB8IDE5OCArKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYmlvcy5o
ICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdmJ0X2RlZnMuaCB8IDYz
MCArKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAzMzEgaW5zZXJ0
aW9ucygrKSwgNTA1IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
