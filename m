Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A359010788
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 13:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7C3892B9;
	Wed,  1 May 2019 11:43:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF1B5892B9;
 Wed,  1 May 2019 11:43:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 04:43:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,417,1549958400"; d="scan'208";a="342419596"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.88.64])
 by fmsmga006.fm.intel.com with ESMTP; 01 May 2019 04:43:04 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  1 May 2019 12:42:57 +0100
Message-Id: <20190501114259.16158-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 0/2] Engine discovery tests
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkFzIHVzdWFs
LCBzZWNvbmQgcGF0Y2ggaXMgdGhlIG9ubHkgb25lIHRvIGJlIGxvb2tlZCBhdC4KClR2cnRrbyBV
cnN1bGluICgyKToKICBoZWFkZXJzOiBidW1wCiAgdGVzdHMvaTkxNV9xdWVyeTogRW5naW5lIGRp
c2NvdmVyeSB0ZXN0cwoKIGluY2x1ZGUvZHJtLXVhcGkvYW1kZ3B1X2RybS5oICAgfCAgNTIgKysr
KysrLQogaW5jbHVkZS9kcm0tdWFwaS9kcm0uaCAgICAgICAgICB8ICAzNiArKysrKwogaW5jbHVk
ZS9kcm0tdWFwaS9kcm1fbW9kZS5oICAgICB8ICAgNCArLQogaW5jbHVkZS9kcm0tdWFwaS9pOTE1
X2RybS5oICAgICB8ICA0MiArKysrKysKIGluY2x1ZGUvZHJtLXVhcGkvbGltYV9kcm0uaCAgICAg
fCAxNjkgKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9kcm0tdWFwaS9tc21fZHJtLmgg
ICAgICB8ICAxNCArKwogaW5jbHVkZS9kcm0tdWFwaS9ub3V2ZWF1X2RybS5oICB8ICA1MSArKysr
KysrCiBpbmNsdWRlL2RybS11YXBpL3BhbmZyb3N0X2RybS5oIHwgMTQyICsrKysrKysrKysrKysr
KysrKwogaW5jbHVkZS9kcm0tdWFwaS92M2RfZHJtLmggICAgICB8ICAyOCArKysrCiB0ZXN0cy9p
OTE1L2k5MTVfcXVlcnkuYyAgICAgICAgIHwgMjQ3ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCiAxMCBmaWxlcyBjaGFuZ2VkLCA3ODIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2RybS11YXBpL2xpbWFfZHJtLmgKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2RybS11YXBpL3BhbmZyb3N0X2RybS5oCgotLSAKMi4xOS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
