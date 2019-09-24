Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B10BBF39
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 02:02:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA3E6E9CD;
	Tue, 24 Sep 2019 00:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A9A6E9C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 00:01:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 17:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,542,1559545200"; d="scan'208";a="388663906"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by fmsmga005.fm.intel.com with ESMTP; 23 Sep 2019 17:01:52 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 17:03:17 -0700
Message-Id: <20190924000328.29571-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/11] Clear Color Support for TGL Render
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
aGVzCnN1Ym1pdHRlZCBieSBSYWRoYWtyaXNobmEgU3JpcGFkYS4gVGhlIGZpcnN0IDkgcGF0Y2hl
cyBhcmUKY3VycmVudGx5IHVuZGVyZ29pbmcgcmV2aWV3L3JldmlzaW9uIGNoYW5nZXMuIFRoZSBm
aXJzdCA5IHBhdGNoZXMKYXJlIGNoZXJyeS1waWNrZWQgZnJvbSB0aGUgc2VyaWVzCmh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjcwNzgvCgpFeHBlY3RpbmcgZmVlZGJh
Y2sgZm9yIHRoZSBsYXN0IDIgcGF0Y2hlcy4gVGhlIGluZnJhc3RydWN0dXJlIHRvCnRlc3QgdGhl
IHBhdGNoIHNlcmllcyBpcyBXSVAuCgpEaGluYWthcmFuIFBhbmRpeWFuICg5KToKICBkcm0vZnJh
bWVidWZmZXI6IEZvcm1hdCBtb2RpZmllciBmb3IgSW50ZWwgR2VuLTEyIHJlbmRlciBjb21wcmVz
c2lvbgogIGRybS9pOTE1OiBVc2UgaW50ZWxfdGlsZV9oZWlnaHQoKSBpbnN0ZWFkIG9mIHJlLWlt
cGxlbWVudGluZwogIGRybS9pOTE1OiBNb3ZlIENDUyBzdHJpZGUgYWxpZ25tZW50IFcvQSBpbnNp
ZGUKICAgIGludGVsX2ZiX3N0cmlkZV9hbGlnbm1lbnQKICBkcm0vaTkxNS90Z2w6IEdlbi0xMiBy
ZW5kZXIgZGVjb21wcmVzc2lvbgogIGRybS9pOTE1OiBFeHRyYWN0IGZyYW1lYnVmZXIgQ0NTIG9m
ZnNldCBjaGVja3MgaW50byBhIGZ1bmN0aW9uCiAgZHJtL2ZyYW1lYnVmZmVyOiBGb3JtYXQgbW9k
aWZpZXIgZm9yIEludGVsIEdlbi0xMiBtZWRpYSBjb21wcmVzc2lvbgogIGRybS9pOTE1OiBTa2lw
IHJvdGF0ZWQgb2Zmc2V0IGFkanVzdG1lbnQgZm9yIHVuc3VwcG9ydGVkIG1vZGlmaWVycwogIGRy
bS9mYjogRXh0ZW5kIGZvcm1hdF9pbmZvIG1lbWJlciBhcnJheXMgdG8gaGFuZGxlIGZvdXIgcGxh
bmVzCiAgR2VuLTEyIGRpc3BsYXkgY2FuIGRlY29tcHJlc3Mgc3VyZmFjZXMgY29tcHJlc3NlZCBi
eSB0aGUgbWVkaWEgZW5naW5lLgoKUmFkaGFrcmlzaG5hIFNyaXBhZGEgKDIpOgogIGRybS9mcmFt
ZWJ1ZmZlci90Z2w6IEZvcm1hdCBtb2RpZmllciBmb3IgSW50ZWwgR2VuIDEyIHJlbmRlcgogICAg
Y29tcHJlc3Npb24gd2l0aCBDbGVhciBDb2xvcgogIGRybS9pOTE1L3RnbDogQWRkIENsZWFyIENv
bG9yIHN1cG9vcnQgZm9yIFRHTCBSZW5kZXIgRGVjb21wcmVzc2lvbgoKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDQyNCArKysrKysrKysrKysrKy0tLS0K
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgNSArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgIHwgIDcwICsrLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDE0ICsKIGlu
Y2x1ZGUvZHJtL2RybV9mb3VyY2MuaCAgICAgICAgICAgICAgICAgICAgICB8ICAgOCArLQogaW5j
bHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggICAgICAgICAgICAgICAgIHwgIDM1ICsrCiA2IGZp
bGVzIGNoYW5nZWQsIDQ0MSBpbnNlcnRpb25zKCspLCAxMTUgZGVsZXRpb25zKC0pCgotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
