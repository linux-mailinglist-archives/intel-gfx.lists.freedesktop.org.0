Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFED590050
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 12:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E35946E2F0;
	Fri, 16 Aug 2019 10:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1FAB6E2EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 10:53:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 03:53:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="328651332"
Received: from oploder-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.6.232])
 by orsmga004.jf.intel.com with ESMTP; 16 Aug 2019 03:53:58 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 11:53:57 +0100
Message-Id: <20190816105357.14340-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190816105357.14340-1-matthew.auld@intel.com>
References: <20190816105357.14340-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/buddy: use kmemleak_update_trace
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

U2luY2Ugbm9kZXMgYXJlIGNhY2hlZCBpbiBhIGZyZWUtbGlzdCwgYW5kIHBvdGVudGlhbGx5IG1h
cmtlZCBhcyBmcmVlCndpdGhvdXQgYWN0dWFsbHkgYmVpbmcgZGVzdHJveWVkLCB0aHVzIGFsbG93
aW5nIHRoZW0gdG8gYmUKb3Bwb3J0dW5pc3RpY2FsbHkgcmUtYWxsb2NhdGVkLCB3ZSBzaG91bGQg
YXBwbHkga21lbWxlYWtfdXBkYXRlX3RyYWNlCmV2ZXJ5IHRpbWUgYSBub2RlIGlzIGdpdmVuIGEg
bmV3IG93bmVyIGFuZCBtYXJrZWQgYXMgYWxsb2NhdGVkLCB0byBhaWQKaW4gZGVidWdnaW5nLgoK
U3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2ln
bmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9idWRkeS5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuYwppbmRleCA1OTk1MjQ3ZmRmNzYuLmZlMTg3MWQ3
YzEyNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuYwpAQCAtMyw2ICszLDcgQEAKICAqIENv
cHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCiAgKi8KIAorI2luY2x1ZGUgPGxpbnV4
L2ttZW1sZWFrLmg+CiAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgogCiAjaW5jbHVkZSAiaTkxNV9i
dWRkeS5oIgpAQCAtMzA0LDYgKzMwNSw3IEBAIGk5MTVfYnVkZHlfYWxsb2Moc3RydWN0IGk5MTVf
YnVkZHlfbW0gKm1tLCB1bnNpZ25lZCBpbnQgb3JkZXIpCiAJfQogCiAJbWFya19hbGxvY2F0ZWQo
YmxvY2spOworCWttZW1sZWFrX3VwZGF0ZV90cmFjZShibG9jayk7CiAJcmV0dXJuIGJsb2NrOwog
CiBvdXRfZnJlZToKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
