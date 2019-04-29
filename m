Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF72E6EE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 17:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4382A89316;
	Mon, 29 Apr 2019 15:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 211F48919E
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 15:51:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 08:51:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,410,1549958400"; d="scan'208";a="135381560"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by orsmga007.jf.intel.com with ESMTP; 29 Apr 2019 08:51:35 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 08:51:30 -0700
Message-Id: <20190429155135.6468-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] Refactor to expand subslice mask
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

VGhpcyBwYXRjaCBzZXJpZXMgY29udGFpbnMgYSBmZXcgY29kZSBjbGVhbi11cCBwYXRjaGVzLCBm
b2xsb3dlZApieSBhIHBhdGNoIHdoaWNoIGNoYW5nZXMgdGhlIHN0b3JhZ2Ugb2YgdGhlIHN1YnNs
aWNlIG1hc2sgdG8gYmV0dGVyCm1hdGNoIHRoZSB1c2Vyc3BhY2UgYWNjZXNzIHRocm91Z2ggdGhl
IEk5MTVfUVVFUllfVE9QT0xPR1lfSU5GTwppb2N0bC4gVGhlIGluZGV4IGludG8gdGhlIHN1YnNs
aWNlX21hc2sgYXJyYXkgaXMgdGhlbiBjYWxjdWxhdGVkOgogIHNsaWNlICogc3Vic2xpY2Ugc3Ry
aWRlICsgc3Vic2xpY2UgaW5kZXggLyA4Cgp2MjogZml4IGk5MTVfcG1fc3NldSB0ZXN0IGZhaWx1
cmUKdjM6IG5vIGNoYW5nZXMgdG8gcGF0Y2hlcyBpbiB0aGUgc2VyaWVzLCBqdXN0IHJlc2VuZGlu
ZyB0byBwaWNrIHVwCiAgICBpbiBDSSBjb3JyZWN0bHkKdjQ6IHJlYmFzZQp2NTogZml4IGhlYWRl
ciB0ZXN0CgpTdHVhcnQgU3VtbWVycyAoNSk6CiAgZHJtL2k5MTU6IFVzZSBsb2NhbCB2YXJpYWJs
ZSBmb3IgU1NFVSBpbmZvIGluIEdFVFBBUkFNIGlvY3RsCiAgZHJtL2k5MTU6IEFkZCBtYWNybyBm
b3IgU1NFVSBzdHJpZGUgY2FsY3VsYXRpb24KICBkcm0vaTkxNTogTW92ZSBjYWxjdWxhdGlvbiBv
ZiBzdWJzbGljZXMgcGVyIHNsaWNlIHRvIG5ldyBmdW5jdGlvbgogIGRybS9pOTE1OiBNb3ZlIHNz
ZXUgaGVscGVyIGZ1bmN0aW9ucyB0byBpbnRlbF9zc2V1LmgKICBkcm0vaTkxNTogRXhwYW5kIHN1
YnNsaWNlIG1hc2sKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAg
ICB8ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgg
fCAgMzIgKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVjay5jICAg
IHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggICAgICAgICB8
ICA5OCArKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAg
ICAgICAgfCAgNDUgKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAg
ICAgICAgICB8ICAxNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyAg
ICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyAgICAgICAg
ICAgIHwgIDE1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jICAg
ICB8IDE0MyArKysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5oICAgICB8ICA0NyAtLS0tLS0KIDExIGZpbGVzIGNoYW5nZWQsIDI0NyBpbnNl
cnRpb25zKCspLCAxNjQgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
