Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A24E09F32D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 21:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA99989C07;
	Tue, 27 Aug 2019 19:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407B389BFD
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 19:18:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 12:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="209863468"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga002.fm.intel.com with ESMTP; 27 Aug 2019 12:18:24 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2019 00:40:25 +0530
Message-Id: <20190827191026.26175-12-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827191026.26175-1-animesh.manna@intel.com>
References: <20190827191026.26175-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 11/11] drm/i915/dsb: Enable DSB for gen12.
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
ZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMg
fCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IDE5NzRlNGM3OGE0My4uNjEzMjEwMzg1ZmI1IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTc4Nyw3ICs3ODcsOCBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX2Vsa2hhcnRsYWtlX2luZm8gPSB7CiAJCVtU
UkFOU0NPREVSX0RTSV8wXSA9IFRSQU5TQ09ERVJfRFNJMF9PRkZTRVQsIFwKIAkJW1RSQU5TQ09E
RVJfRFNJXzFdID0gVFJBTlNDT0RFUl9EU0kxX09GRlNFVCwgXAogCX0sIFwKLQkuaGFzX2dsb2Jh
bF9tb2NzID0gMQorCS5oYXNfZ2xvYmFsX21vY3MgPSAxLCBcCisJLmRpc3BsYXkuaGFzX2RzYiA9
IDEKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF90aWdlcmxh
a2VfMTJfaW5mbyA9IHsKIAlHRU4xMl9GRUFUVVJFUywKLS0gCjIuMjIuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
