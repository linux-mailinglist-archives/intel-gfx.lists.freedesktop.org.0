Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D82AB4D82
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 14:10:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E476EC0F;
	Tue, 17 Sep 2019 12:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CAD66EC0E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 12:10:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 05:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="193733704"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Sep 2019 05:10:17 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 05:11:49 -0700
Message-Id: <20190917121155.13197-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Clear Color Support for TGL Render
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
aGVzCnN1Ym1pdHRlZCBieSBSYWRoYWtyaXNobmEgU3JpcGFkYS4gVGhlIGZpcnN0IDQgcGF0Y2hl
cyBhcmUKY3VycmVudGx5IHVuZGVyZ29pbmcgcmV2aWV3L3JldmlzaW9uIGNoYW5nZXMuIFRoZSBm
aXJzdCA0IHBhdGNoZXMKYXJlIGNoZXJyeS1waWNrZWQgZnJvbSB0aGUgc2VyaWVzCmh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjUyOTAvCgpFeHBlY3RpbmcgZmVlZGJh
Y2sgZm9yIHRoZSBsYXN0IDIgcGF0Y2hlcy4gVGhlIGluZnJhc3RydWN0dXJlIHRvCnRlc3QgdGhl
IHBhdGNoIHNlcmllcyBpcyBXSVAuCgpEaGluYWthcmFuIFBhbmRpeWFuICg0KToKICBkcm0vZnJh
bWVidWZmZXIvdGdsOiBGb3JtYXQgbW9kaWZpZXIgZm9yIEludGVsIEdlbi0xMiByZW5kZXIKICAg
IGNvbXByZXNzaW9uCiAgZHJtL2k5MTUvdGdsOiBHZW4tMTIgcmVuZGVyIGRlY29tcHJlc3Npb24K
ICBkcm0vZnJhbWVidWZmZXIvdGdsOiBGb3JtYXQgbW9kaWZpZXIgZm9yIEludGVsIEdlbi0xMiBt
ZWRpYQogICAgY29tcHJlc3Npb24KICBkcm0vaTkxNS90Z2w6IEdlbi0xMiBtZWRpYSBjb21wcmVz
c2lvbgoKUmFkaGFrcmlzaG5hIFNyaXBhZGEgKDIpOgogIGRybS9mcmFtZWJ1ZmZlci90Z2w6IEZv
cm1hdCBtb2RpZmllciBmb3IgSW50ZWwgR2VuIDEyIHJlbmRlcgogICAgY29tcHJlc3Npb24gd2l0
aCBDbGVhciBDb2xvcgogIGRybS9pOTE1L3RnbDogQWRkIENsZWFyIENvbG9yIHN1cG9vcnQgZm9y
IFRHTCBSZW5kZXIgRGVjb21wcmVzc2lvbgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jICB8IDEyMSArKysrKysrKysrKysrKysrKy0KIC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICAgfCAgNDkgKysrKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDE0ICsrCiBpbmNsdWRlL3VhcGkv
ZHJtL2RybV9mb3VyY2MuaCAgICAgICAgICAgICAgICAgfCAgMzEgKysrKysKIDUgZmlsZXMgY2hh
bmdlZCwgMjAwIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
