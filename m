Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F1910A21F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 17:31:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3D56E316;
	Tue, 26 Nov 2019 16:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 830226E316
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 16:31:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 08:31:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="211464490"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 26 Nov 2019 08:30:59 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 18:28:35 +0200
Message-Id: <20191126162839.28094-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v5 0/4] Enable second DBuf slice for ICL and TGL
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhvc2UgcGF0Y2ggc2VyaWVzLCBkbyBzb21lIGluaXRpYWwgcHJlcGFyYXRpb24gREJ1ZiBtYW5p
cHVsYXRpbmcgY29kZQpjbGVhbnVwcywgaS5lIHJlbW92ZSByZWR1bmRhbnQgc3RydWN0dXJlcy9j
b2RlLCBzd2l0Y2ggdG8gbWFzawpiYXNlZCBEQnVmIG1hbnVwdWxhdGlvbiwgZ2V0IGludG8gdXNl
IERCdWYgYXNzaWdubWVudCBhY2NvcmRpbmcgdG8KQlNwZWMgcnVsZXMuCgpTdGFuaXNsYXYgTGlz
b3Zza2l5ICg0KToKICBkcm0vaTkxNTogUmVtb3ZlIHNrbF9kZGxfYWxsb2NhdGlvbiBzdHJ1Y3QK
ICBkcm0vaTkxNTogTW92ZSBkYnVmIHNsaWNlIHVwZGF0ZSB0byBwcm9wZXIgcGxhY2UKICBkcm0v
aTkxNTogTWFuaXB1bGF0ZSBEQnVmIHNsaWNlcyBwcm9wZXJseQogIGRybS9pOTE1OiBDb3JyZWN0
bHkgbWFwIERCVUYgc2xpY2VzIHRvIHBpcGVzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgIHwgIDQ3ICsrLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jICAgIHwgMTAwICsrKy0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggICAgICAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYyAgICAgICAgICAgICAgIHwgICA2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5oICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YyAgICAgICAgICAgICAgIHwgMjk2ICsrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uaCAgICAgICAgICAgICAgIHwgICA0ICstCiA4IGZpbGVzIGNoYW5nZWQs
IDM0MiBpbnNlcnRpb25zKCspLCAxMjMgZGVsZXRpb25zKC0pCgotLSAKMi4xNy4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
