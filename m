Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4C0B078E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC4C6EC07;
	Thu, 12 Sep 2019 04:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2106E02C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 19:19:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 12:19:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,494,1559545200"; d="scan'208";a="209767778"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga004.fm.intel.com with ESMTP; 11 Sep 2019 12:19:51 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 00:41:32 +0530
Message-Id: <20190911191133.23383-10-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190911191133.23383-1-animesh.manna@intel.com>
References: <20190911191133.23383-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 09/10] drm/i915/dsb: Enable DSB for gen12.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5hYmxpbmcgRFNCIGJ5IHNldHRpbmcgMSB0byBoYXNfZHNiIGZsYWcgZm9yIGdlbjEyLgoKQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJt
YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAzICsrLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BjaS5jCmluZGV4IGIzY2M4NTYwNjk2Yi4uMWZkMmEzNjQ4OTFhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGNpLmMKQEAgLTc4Nyw3ICs3ODcsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
dGVsX2RldmljZV9pbmZvIGludGVsX2Vsa2hhcnRsYWtlX2luZm8gPSB7CiAJCVtUUkFOU0NPREVS
X0RTSV8wXSA9IFRSQU5TQ09ERVJfRFNJMF9PRkZTRVQsIFwKIAkJW1RSQU5TQ09ERVJfRFNJXzFd
ID0gVFJBTlNDT0RFUl9EU0kxX09GRlNFVCwgXAogCX0sIFwKLQkuaGFzX2dsb2JhbF9tb2NzID0g
MQorCS5oYXNfZ2xvYmFsX21vY3MgPSAxLCBcCisJLmRpc3BsYXkuaGFzX2RzYiA9IDEKIAogc3Rh
dGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF90aWdlcmxha2VfMTJfaW5m
byA9IHsKIAlHRU4xMl9GRUFUVVJFUywKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
