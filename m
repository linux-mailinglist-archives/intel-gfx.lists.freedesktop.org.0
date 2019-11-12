Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA8BF9D71
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 23:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC41D6EC21;
	Tue, 12 Nov 2019 22:46:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31EEC6EC20
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 22:46:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 14:46:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,298,1569308400"; d="scan'208";a="256964340"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Nov 2019 14:46:52 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 14:47:57 -0800
Message-Id: <20191112224757.25116-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191112224757.25116-1-matthew.d.roper@intel.com>
References: <20191112224757.25116-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/tgl: MOCS table update
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Francisco Jerez <francisco.jerez.plata@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGJzcGVjIHdhcyBqdXN0IHVwZGF0ZWQgd2l0aCBhIG1pbm9yIGNvcnJlY3Rpb24gdG8gZW50
cnkgNjEgKGl0CnNob3VsZG4ndCBoYXZlIGhhZCB0aGUgU0NGIGJpdCBzZXQpLgoKdjI6CiAtIEFk
ZCBhIE1PQ1NfRU5UUllfVU5VU0VEKCkgYW5kIHVzZSBpdCB0byBkZWNsYXJlIHRoZQogICBleHBs
aWNpdGx5LXJlc2VydmVkIE1PQ1MgZW50cmllcy4gKEx1Y2FzKQogLSBNb3ZlIHRoZSB3YXJuaW5n
IHN1cHByZXNzaW9uIGZyb20gdGhlIE1ha2VmaWxlIHRvIGEgI3ByYWdtYSB0aGF0IG9ubHkKICAg
YWZmZWN0cyB0aGUgVEdMIHRhYmxlLiAoTHVjYXMpCgp2MzoKIC0gRW50cmllcyAxNiBhbmQgMTcg
YXJlIGlkZW50aWNhbCB0byBJQ0wgbm93LCBzbyBubyBuZWVkIHRvIGV4cGxpY2l0bHkKICAgYWRq
dXN0IHRoZW0gKG9yIG1lc3Mgd2l0aCBjb21waWxlciB3YXJuaW5nIG92ZXJyaWRlcykuCgpCc3Bl
YzogNDUxMDEKRml4ZXM6IDJkZGY5OTIxNzljNCAoImRybS9pOTE1L3RnbDogRGVmaW5lIE1PQ1Mg
ZW50cmllcyBmb3IgVGlnZXJsYWtlIikKQ2M6IFRvbWFzeiBMaXMgPHRvbWFzei5saXNAaW50ZWwu
Y29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBG
cmFuY2lzY28gSmVyZXogPGZyYW5jaXNjby5qZXJlei5wbGF0YUBpbnRlbC5jb20+CkNjOiBKb24g
Qmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX21vY3MuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwppbmRleCAw
NmUyYWRiZjI3YmUuLjJiOTc3OTkxYjc4NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbW9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21v
Y3MuYwpAQCAtMjYzLDcgKzI2Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfbW9j
c19lbnRyeSB0aWdlcmxha2VfbW9jc190YWJsZVtdID0gewogCQkgICBMM18xX1VDKSwKIAkvKiBI
VyBTcGVjaWFsIENhc2UgKERpc3BsYXlhYmxlKSAqLwogCU1PQ1NfRU5UUlkoNjEsCi0JCSAgIExF
XzFfVUMgfCBMRV9UQ18xX0xMQyB8IExFX1NDRigxKSwKKwkJICAgTEVfMV9VQyB8IExFX1RDXzFf
TExDLAogCQkgICBMM18zX1dCKSwKIH07CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
