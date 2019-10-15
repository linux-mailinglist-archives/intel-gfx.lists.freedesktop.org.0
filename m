Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8836AD6C4E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 02:03:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B906E1D8;
	Tue, 15 Oct 2019 00:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9ADE6E1D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 00:03:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 17:03:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="185644147"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 17:03:44 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 17:05:23 -0700
Message-Id: <20191015000533.11425-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 00/10] Clear Color Support for TGL Render
 Decompression
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
Cc: nanley.g.chery@intel.com, dhinakaran.pandiyan@intel.com,
 ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3VwcG9ydCBmb3IgQ2xlYXIgQ29sb3IgaXMgY29udGFpbmVkIGluIHRoZSBsYXN0IHR3byBwYXRj
aGVzCnN1Ym1pdHRlZCBieSBSYWRoYWtyaXNobmEgU3JpcGFkYS4gVGhlIGZpcnN0IDggcGF0Y2hl
cyBhcmUKY3VycmVudGx5IHVuZGVyZ29pbmcgcmV2aWV3L3JldmlzaW9uIGNoYW5nZXMuIFRoZSBm
aXJzdCA4IHBhdGNoZXMKYXJlIGNoZXJyeS1waWNrZWQgZnJvbSB0aGUgc2VyaWVzCmh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjcwNzgvCgpFeHBlY3RpbmcgZmVlZGJh
Y2sgZm9yIHRoZSBsYXN0IDIgcGF0Y2hlcy4gVGhlIHNlcmllcyBpcyB0ZXN0ZWQgd2l0aCBrbXNf
Y3ViZQphbmQgY3VzdG9tIE1lc2EgYnJhbmNoIGJ5IE5hbmxleS4KCgpEaGluYWthcmFuIFBhbmRp
eWFuICg4KToKICBkcm0vZnJhbWVidWZmZXI6IEZvcm1hdCBtb2RpZmllciBmb3IgSW50ZWwgR2Vu
LTEyIHJlbmRlciBjb21wcmVzc2lvbgogIGRybS9pOTE1OiBVc2UgaW50ZWxfdGlsZV9oZWlnaHQo
KSBpbnN0ZWFkIG9mIHJlLWltcGxlbWVudGluZwogIGRybS9pOTE1OiBNb3ZlIENDUyBzdHJpZGUg
YWxpZ25tZW50IFcvQSBpbnNpZGUKICAgIGludGVsX2ZiX3N0cmlkZV9hbGlnbm1lbnQKICBkcm0v
aTkxNS90Z2w6IEdlbi0xMiByZW5kZXIgZGVjb21wcmVzc2lvbgogIGRybS9pOTE1OiBFeHRyYWN0
IGZyYW1lYnVmZXIgQ0NTIG9mZnNldCBjaGVja3MgaW50byBhIGZ1bmN0aW9uCiAgZHJtL2ZyYW1l
YnVmZmVyOiBGb3JtYXQgbW9kaWZpZXIgZm9yIEludGVsIEdlbi0xMiBtZWRpYSBjb21wcmVzc2lv
bgogIGRybS9mYjogRXh0ZW5kIGZvcm1hdF9pbmZvIG1lbWJlciBhcnJheXMgdG8gaGFuZGxlIGZv
dXIgcGxhbmVzCiAgR2VuLTEyIGRpc3BsYXkgY2FuIGRlY29tcHJlc3Mgc3VyZmFjZXMgY29tcHJl
c3NlZCBieSB0aGUgbWVkaWEgZW5naW5lLgoKUmFkaGFrcmlzaG5hIFNyaXBhZGEgKDIpOgogIGRy
bS9mcmFtZWJ1ZmZlci90Z2w6IEZvcm1hdCBtb2RpZmllciBmb3IgSW50ZWwgR2VuIDEyIHJlbmRl
cgogICAgY29tcHJlc3Npb24gd2l0aCBDbGVhciBDb2xvcgogIGRybS9pOTE1L3RnbDogQWRkIENs
ZWFyIENvbG9yIHN1cG9vcnQgZm9yIFRHTCBSZW5kZXIgRGVjb21wcmVzc2lvbgoKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDQzNCArKysrKysrKysrKysr
Ky0tLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAg
NSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgIHwgIDcw
ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDE0
ICsKIGluY2x1ZGUvZHJtL2RybV9mb3VyY2MuaCAgICAgICAgICAgICAgICAgICAgICB8ICAgOCAr
LQogaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggICAgICAgICAgICAgICAgIHwgIDM1ICsr
CiA2IGZpbGVzIGNoYW5nZWQsIDQ1MiBpbnNlcnRpb25zKCspLCAxMTQgZGVsZXRpb25zKC0pCgot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
