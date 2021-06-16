Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8FB3A8CF2
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 01:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE9E6E442;
	Tue, 15 Jun 2021 23:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96AA589BBD;
 Tue, 15 Jun 2021 23:55:13 +0000 (UTC)
IronPort-SDR: qqOqCUyeC1s4B5fq0azYDfGEdTfHwb+XWK2gGfippIkiBmAAnAZAJy0HM8dA6UZ/3ZgMHIJmik
 Q+OG1eDQ4GVQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="267236627"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="267236627"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 16:55:12 -0700
IronPort-SDR: FwllVYg6L4YdbeSzcZ+2mthkUAiDoTFB7XPNS8getH++g+7fhY0jWFjUVAKwl0Ist8MxWLuQQ9
 h1bJQ6Q2vNBw==
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="452138650"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 16:55:12 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 15 Jun 2021 17:13:02 -0700
Message-Id: <20210616001302.84233-4-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210616001302.84233-1-matthew.brost@intel.com>
References: <20210616001302.84233-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/doc: Include GuC ABI documentation
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

RnJvbTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpHdUMg
QUJJIGRvY3VtZW50YXRpb24gaXMgbm93IHJlYWR5IHRvIGJlIGluY2x1ZGVkIGluIGk5MTUucnN0
CgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5j
b20+CkNjOiBQaW90ciBQacOzcmtvd3NraSA8cGlvdHIucGlvcmtvd3NraUBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KLS0tCiBE
b2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCBi
L0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0CmluZGV4IDQyY2UwMTk2OTMwYS4uYzc4NDZiMWQ5
MjkzIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAorKysgYi9Eb2N1bWVu
dGF0aW9uL2dwdS9pOTE1LnJzdApAQCAtNTE4LDYgKzUxOCwxNCBAQCBHdUMtYmFzZWQgY29tbWFu
ZCBzdWJtaXNzaW9uCiAuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwogICAgOmRvYzogR3VDLWJhc2VkIGNvbW1hbmQgc3VibWlz
c2lvbgogCitHdUMgQUJJCit+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CisKKy4uIGtlcm5l
bC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9hYmkvZ3VjX21lc3NhZ2VzX2FiaS5o
CisuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19jb21t
dW5pY2F0aW9uX21taW9fYWJpLmgKKy4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9hYmkvZ3VjX2NvbW11bmljYXRpb25fY3RiX2FiaS5oCisuLiBrZXJuZWwtZG9jOjog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19hY3Rpb25zX2FiaS5oCisKIEh1Qwog
LS0tCiAuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVj
LmMKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
