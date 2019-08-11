Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E042C89368
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 21:51:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF63D6E2F8;
	Sun, 11 Aug 2019 19:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87AAC6E359
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 19:51:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Aug 2019 12:51:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,374,1559545200"; d="scan'208";a="183381812"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Aug 2019 12:51:40 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.145.120])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7BJpbx0019994; Sun, 11 Aug 2019 20:51:39 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 11 Aug 2019 19:51:30 +0000
Message-Id: <20190811195132.9660-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190811195132.9660-1-michal.wajdeczko@intel.com>
References: <20190811195132.9660-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/uc: Include HuC firmware version
 in summary
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
bHNvIHNraXAgYWxsIEh1QyBpbmZvIGlmIEh1QyBpcyBub3Qgc3VwcG9ydGVkLgoKU2lnbmVkLW9m
Zi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpD
YzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDE2ICsrKysrKysrKysrKy0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4IGFhOTcwMWNmYzc1NC4uMmFjZjc5MDcyODdjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTUwMywxMiArNTAzLDIwIEBA
IGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJCQlnb3RvIGVycl9j
b21tdW5pY2F0aW9uOwogCX0KIAotCWRldl9pbmZvKGk5MTUtPmRybS5kZXYsICJHdUMgZmlybXdh
cmUgdmVyc2lvbiAldS4ldVxuIiwKKwlkZXZfaW5mbyhpOTE1LT5kcm0uZGV2LCAiJXMgZmlybXdh
cmUgdmVyc2lvbiAldS4ldVxuIiwKKwkJIGludGVsX3VjX2Z3X3R5cGVfcmVwcihJTlRFTF9VQ19G
V19UWVBFX0dVQyksCiAJCSBndWMtPmZ3Lm1ham9yX3Zlcl9mb3VuZCwgZ3VjLT5mdy5taW5vcl92
ZXJfZm91bmQpOwotCWRldl9pbmZvKGk5MTUtPmRybS5kZXYsICJHdUMgc3VibWlzc2lvbiAlc1xu
IiwKKwlkZXZfaW5mbyhpOTE1LT5kcm0uZGV2LCAiJXMgJXNcbiIsICJHdUMgc3VibWlzc2lvbiIs
CiAJCSBlbmFibGVkZGlzYWJsZWQoaW50ZWxfdWNfc3VwcG9ydHNfZ3VjX3N1Ym1pc3Npb24odWMp
KSk7Ci0JZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwgIkh1QyAlc1xuIiwKLQkJIGVuYWJsZWRkaXNh
YmxlZChpbnRlbF9odWNfaXNfYXV0aGVudGljYXRlZChodWMpKSk7CisKKwlpZiAoaW50ZWxfdWNf
c3VwcG9ydHNfaHVjKHVjKSkgeworCQlkZXZfaW5mbyhpOTE1LT5kcm0uZGV2LCAiJXMgZmlybXdh
cmUgdmVyc2lvbiAldS4ldVxuIiwKKwkJCSBpbnRlbF91Y19md190eXBlX3JlcHIoSU5URUxfVUNf
RldfVFlQRV9IVUMpLAorCQkJIGh1Yy0+ZncubWFqb3JfdmVyX2ZvdW5kLCBodWMtPmZ3Lm1pbm9y
X3Zlcl9mb3VuZCk7CisJCWRldl9pbmZvKGk5MTUtPmRybS5kZXYsICIlcyAlc1xuIiwKKwkJCSBp
bnRlbF91Y19md190eXBlX3JlcHIoSU5URUxfVUNfRldfVFlQRV9IVUMpLAorCQkJIGVuYWJsZWRk
aXNhYmxlZChpbnRlbF9odWNfaXNfYXV0aGVudGljYXRlZChodWMpKSk7CisJfQogCiAJcmV0dXJu
IDA7CiAKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
