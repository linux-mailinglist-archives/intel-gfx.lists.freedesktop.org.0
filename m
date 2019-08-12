Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B5B89800
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 09:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E72D189C07;
	Mon, 12 Aug 2019 07:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 531BE89C07
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 07:40:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 00:39:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,376,1559545200"; d="scan'208";a="187342833"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 12 Aug 2019 00:39:57 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.145.202])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7C7ducL019788; Mon, 12 Aug 2019 08:39:56 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 07:39:49 +0000
Message-Id: <20190812073949.24076-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190811195132.9660-3-michal.wajdeczko@intel.com>
References: <20190811195132.9660-3-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/uc: Include HuC firmware
 version in summary
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

QWZ0ZXIgc3VjY2Vzc2Z1bCB1QyBpbml0aWFsaXphdGlvbiB3ZSBhcmUgcmVwb3J0aW5nIEd1Qwpm
aXJtd2FyZSB2ZXJzaW9uIGFuZCBzdGF0dXMgb2YgR3VDIHN1Ym1pc3Npb24gYW5kIEh1Qy4KQWRk
IEh1QyBmdyB2ZXJzaW9uIHRvIHRoaXMgcmVwb3J0IHRvIG1ha2UgaXQgY29tcGxldGUsCmJ1dCBh
bHNvIHNraXAgYWxsIEh1QyBpbmZvIGlmIEh1QyBpcyBub3Qgc3VwcG9ydGVkLgoKdjI6IHNxdWVl
emUgdG8gb25lIGxpbmUgKENocmlzKQoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8
bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWMuYyB8IDE4ICsrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMK
aW5kZXggYWE5NzAxY2ZjNzU0Li5hM2E1OTE4YzY3ODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWMuYwpAQCAtNTAzLDEyICs1MDMsMjAgQEAgaW50IGludGVsX3VjX2luaXRfaHco
c3RydWN0IGludGVsX3VjICp1YykKIAkJCWdvdG8gZXJyX2NvbW11bmljYXRpb247CiAJfQogCi0J
ZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwgIkd1QyBmaXJtd2FyZSB2ZXJzaW9uICV1LiV1XG4iLAot
CQkgZ3VjLT5mdy5tYWpvcl92ZXJfZm91bmQsIGd1Yy0+ZncubWlub3JfdmVyX2ZvdW5kKTsKLQlk
ZXZfaW5mbyhpOTE1LT5kcm0uZGV2LCAiR3VDIHN1Ym1pc3Npb24gJXNcbiIsCisJZGV2X2luZm8o
aTkxNS0+ZHJtLmRldiwgIiVzIGZpcm13YXJlICVzIHZlcnNpb24gJXUuJXUgJXM6JXNcbiIsCisJ
CSBpbnRlbF91Y19md190eXBlX3JlcHIoSU5URUxfVUNfRldfVFlQRV9HVUMpLCBndWMtPmZ3LnBh
dGgsCisJCSBndWMtPmZ3Lm1ham9yX3Zlcl9mb3VuZCwgZ3VjLT5mdy5taW5vcl92ZXJfZm91bmQs
CisJCSAic3VibWlzc2lvbiIsCiAJCSBlbmFibGVkZGlzYWJsZWQoaW50ZWxfdWNfc3VwcG9ydHNf
Z3VjX3N1Ym1pc3Npb24odWMpKSk7Ci0JZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwgIkh1QyAlc1xu
IiwKLQkJIGVuYWJsZWRkaXNhYmxlZChpbnRlbF9odWNfaXNfYXV0aGVudGljYXRlZChodWMpKSk7
CisKKwlpZiAoaW50ZWxfdWNfc3VwcG9ydHNfaHVjKHVjKSkgeworCQlkZXZfaW5mbyhpOTE1LT5k
cm0uZGV2LCAiJXMgZmlybXdhcmUgJXMgdmVyc2lvbiAldS4ldSAlczolc1xuIiwKKwkJCSBpbnRl
bF91Y19md190eXBlX3JlcHIoSU5URUxfVUNfRldfVFlQRV9IVUMpLAorCQkJIGh1Yy0+ZncucGF0
aCwKKwkJCSBodWMtPmZ3Lm1ham9yX3Zlcl9mb3VuZCwgaHVjLT5mdy5taW5vcl92ZXJfZm91bmQs
CisJCQkgImF1dGhlbnRpY2F0ZWQiLAorCQkJIHllc25vKGludGVsX2h1Y19pc19hdXRoZW50aWNh
dGVkKGh1YykpKTsKKwl9CiAKIAlyZXR1cm4gMDsKIAotLSAKMi4xOS4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
