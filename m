Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 310AB1143DA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 16:43:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DEAB6E144;
	Thu,  5 Dec 2019 15:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28116E144
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 15:43:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 07:43:47 -0800
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="205807044"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 07:43:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 17:43:39 +0200
Message-Id: <cover.1575560168.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: debugfs device parameters
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

VGhpcyBpcyBiYXNlZCBvbiBwYXRjaGVzIEkgc2VudCBvdmVyIGEgeWVhciBhZ28sIGFkZGluZyBk
ZXZpY2UKcGFyYW1ldGVycyB0byBkZWJ1Z2ZzLgoKVGhpcyB3b3VsZCBiZSB0aGUgZmlyc3Qgc3Rl
cCwgbWFraW5nIHRoZSBkZWJ1Z2ZzIG9ubHkgYW4gYWx0ZXJuYXRpdmUKaW50ZXJmYWNlIHRvIHRo
ZSBtb2R1bGUgcGFyYW1ldGVycy4gVGhlIHBhdGggZm9yd2FyZCB3b3VsZCBiZToKCiogQWRkIGRl
YnVnZnMgaW50ZXJmYWNlIHRvIHBhcmFtZXRlcnMgKHRoaXMgcGF0Y2gpCgoqIE1vZGlmeSBJR1Qg
dG8gdXNlIHRoaXMgZGVidWdmcyBwYXJhbSBpbnRlcmZhY2UgaWYgYXZhaWxhYmxlLCBmYWxsaW5n
CiAgYmFjayB0byBtb2R1bGUgcGFyYW0gc3lzZnMgKGZvciBvbGRlciBrZXJuZWxzKQoKKiBNYWtl
IG1vZHVsZSBwYXJhbXMgcmVhZC1vbmx5CgoqIE1ha2UgbW9kdWxlIHBhcmFtcyB0aGUgaW5pdGlh
bCB2YWx1ZXMgZm9yIHJlYWxseSBkZXZpY2Ugc3BlY2lmaWMKICBwYXJhbWV0ZXJzLCBpLmUuIGR1
cGxpY2F0ZSB0aGUgcGFyYW1zIHN0cnVjdCBpbiBkZXZfcHJpdiBhbmQgaGF2ZSB0aGUKICBkZWJ1
Z2ZzIGludGVyZmFjZSBtb2RpZnkgb25seSB0aGF0CgoqIFN0YXJ0IGF4aW5nIG91dCB1bm5lY2Vz
c2FyeSBtb2R1bGUgcGFyYW1ldGVycyB0aGF0IGNhbiBsaXZlIGluIGRlYnVnZnMKICBvbmx5CgpJ
IHRlc3RlZCB0aGlzIHN0dWZmIHdheSBiYWNrIHdoZW4sIHRoaXMgaXMgYW4gdW50ZXN0ZWQgcmVi
YXNlIGZvcgpjb21tZW50cy4KCkJSLApKYW5pLgoKCgpKYW5pIE5pa3VsYSAoMik6CiAgZHJtL2k5
MTUvcGFyYW1zOiBhZGQgaTkxNSBwYXJhbWV0ZXJzIHRvIGRlYnVnZnMKICBkcm0vaTkxNS9wYXJh
bXM6IHN1cHBvcnQgYm9vbCB2YWx1ZXMgZm9yIGludCBhbmQgdWludCBwYXJhbXMKCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzX3BhcmFtcy5jIHwgMjQ3ICsrKysrKysrKysrKysrKysrKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzX3BhcmFtcy5oIHwgIDE0ICsrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggICAgICAgICB8ICA3NiArKysrLS0tCiA2IGZpbGVz
IGNoYW5nZWQsIDMwOCBpbnNlcnRpb25zKCspLCA0MCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnNfcGFyYW1zLmMKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnNfcGFyYW1zLmgK
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
