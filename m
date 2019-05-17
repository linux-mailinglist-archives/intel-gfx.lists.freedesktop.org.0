Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C5221B7F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1E689915;
	Fri, 17 May 2019 16:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7881989915
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:22:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:22:31 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 17 May 2019 09:22:30 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HGMT7B016212; Fri, 17 May 2019 17:22:29 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 16:22:21 +0000
Message-Id: <20190517162227.6436-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190517162227.6436-1-michal.wajdeczko@intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/uc: Use GuC firmware status helper
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYWxyZWFkeSBoYXZlIGhlbHBlciBmdW5jdGlvbiBmb3IgY2hlY2tpbmcgR3VDIGZpcm13YXJl
CmxvYWQgc3RhdHVzLiBSZXBsYWNlIGV4aXN0aW5nIG9wZW4tY29kZWQgY2hlY2tzLgoKU2lnbmVk
LW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF91Yy5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKaW5kZXggMWVl
NzBkZjUxNjI3Li5mNjdmNjIyNGIxZGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwpAQCAtNDg2
LDcgKzQ4Niw3IEBAIHZvaWQgaW50ZWxfdWNfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQogCXN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9ICZpOTE1LT5ndWM7CiAJ
aW50IGVycjsKIAotCWlmIChndWMtPmZ3LmxvYWRfc3RhdHVzICE9IElOVEVMX1VDX0ZJUk1XQVJF
X1NVQ0NFU1MpCisJaWYgKCFpbnRlbF9ndWNfaXNfYWxpdmUoZ3VjKSkKIAkJcmV0dXJuOwogCiAJ
ZXJyID0gaW50ZWxfZ3VjX3N1c3BlbmQoZ3VjKTsKQEAgLTUwMSw3ICs1MDEsNyBAQCB2b2lkIGlu
dGVsX3VjX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJc3RydWN0IGlu
dGVsX2d1YyAqZ3VjID0gJmk5MTUtPmd1YzsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAot
CWlmIChndWMtPmZ3LmxvYWRfc3RhdHVzICE9IElOVEVMX1VDX0ZJUk1XQVJFX1NVQ0NFU1MpCisJ
aWYgKCFpbnRlbF9ndWNfaXNfYWxpdmUoZ3VjKSkKIAkJcmV0dXJuOwogCiAJd2l0aF9pbnRlbF9y
dW50aW1lX3BtKGk5MTUsIHdha2VyZWYpCkBAIC01MTYsNyArNTE2LDcgQEAgaW50IGludGVsX3Vj
X3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAoIVVTRVNfR1VDKGk5
MTUpKQogCQlyZXR1cm4gMDsKIAotCWlmIChndWMtPmZ3LmxvYWRfc3RhdHVzICE9IElOVEVMX1VD
X0ZJUk1XQVJFX1NVQ0NFU1MpCisJaWYgKCFpbnRlbF9ndWNfaXNfYWxpdmUoZ3VjKSkKIAkJcmV0
dXJuIDA7CiAKIAlndWNfZW5hYmxlX2NvbW11bmljYXRpb24oZ3VjKTsKLS0gCjIuMTkuMgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
