Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B71AC644
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 13:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107F089DFC;
	Sat,  7 Sep 2019 11:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF6689DFC
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 11:15:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 04:15:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,477,1559545200"; d="scan'208";a="177883278"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2019 04:15:49 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 16:37:34 +0530
Message-Id: <20190907110735.10302-11-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190907110735.10302-1-animesh.manna@intel.com>
References: <20190907110735.10302-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 10/11] drm/i915/dsb: Enable DSB for gen12.
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
NS9pOTE1X3BjaS5jCmluZGV4IGZiZTk4YTJkYjg4ZS4uNTEyYjI2ZTE2MWY4IDEwMDY0NAotLS0g
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
