Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5E0109744
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 01:25:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 646F489E47;
	Tue, 26 Nov 2019 00:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D76489DB8
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 00:25:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 16:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,243,1571727600"; d="scan'208";a="291549104"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga001.jf.intel.com with ESMTP; 25 Nov 2019 16:25:06 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 16:26:28 -0800
Message-Id: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 0/7] Clear Color Support for TGL Render
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
aGVzCnN1Ym1pdHRlZCBieSBSYWRoYWtyaXNobmEgU3JpcGFkYS4gVGhlIGZpcnN0IDUgcGF0Y2hl
cyBhcmUKY3VycmVudGx5IHVuZGVyZ29pbmcgcmV2aWV3L3JldmlzaW9uIGNoYW5nZXMuIFRoZSBm
aXJzdCA1IHBhdGNoZXMKYXJlIGNoZXJyeS1waWNrZWQgZnJvbSB0aGUgc2VyaWVzCmh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjcwNzgvCgpFeHBlY3RpbmcgZmVlZGJh
Y2sgZm9yIHRoZSBsYXN0IHBhdGNoLiBUaGUgc2VyaWVzIGlzIHRlc3RlZCB3aXRoIGttc19jdWJl
CmFuZCBjdXN0b20gTWVzYSBicmFuY2ggYnkgTmFubGV5LiBUaGlzIHNlcmllcyBpcyByZWJhc2Vk
IG9uIGxhdGVzdCBkcm0tdGlwCmFuZCBvbWl0dGVkIE1lZGlhIGNvbXByZXNzaW9uIHBhdGNoZXMg
ZnJvbSBwcmV2aW91cyByZXYuCgpEaGluYWthcmFuIFBhbmRpeWFuICg1KToKICBkcm0vZnJhbWVi
dWZmZXI6IEZvcm1hdCBtb2RpZmllciBmb3IgSW50ZWwgR2VuLTEyIHJlbmRlciBjb21wcmVzc2lv
bgogIGRybS9pOTE1OiBVc2UgaW50ZWxfdGlsZV9oZWlnaHQoKSBpbnN0ZWFkIG9mIHJlLWltcGxl
bWVudGluZwogIGRybS9pOTE1OiBNb3ZlIENDUyBzdHJpZGUgYWxpZ25tZW50IFcvQSBpbnNpZGUK
ICAgIGludGVsX2ZiX3N0cmlkZV9hbGlnbm1lbnQKICBkcm0vaTkxNS90Z2w6IEdlbi0xMiByZW5k
ZXIgZGVjb21wcmVzc2lvbgogIGRybS9pOTE1OiBFeHRyYWN0IGZyYW1lYnVmZXIgQ0NTIG9mZnNl
dCBjaGVja3MgaW50byBhIGZ1bmN0aW9uCgpSYWRoYWtyaXNobmEgU3JpcGFkYSAoMik6CiAgZHJt
L2ZyYW1lYnVmZmVyL3RnbDogRm9ybWF0IG1vZGlmaWVyIGZvciBJbnRlbCBHZW4gMTIgcmVuZGVy
CiAgICBjb21wcmVzc2lvbiB3aXRoIENsZWFyIENvbG9yCiAgZHJtL2k5MTUvdGdsOiBBZGQgQ2xl
YXIgQ29sb3Igc3VwcG9ydCBmb3IgVEdMIFJlbmRlciBEZWNvbXByZXNzaW9uCgogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMjMxICsrKysrKysrKysrKyst
LS0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAz
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgICB8ICAzMSAr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAxMyAr
CiBpbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaCAgICAgICAgICAgICAgICAgfCAgMzAgKysr
CiA1IGZpbGVzIGNoYW5nZWQsIDI0NCBpbnNlcnRpb25zKCspLCA2NCBkZWxldGlvbnMoLSkKCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
