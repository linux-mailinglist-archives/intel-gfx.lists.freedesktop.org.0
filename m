Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 099FB66B74
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 13:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6DE06E34D;
	Fri, 12 Jul 2019 11:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 685736E34D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 11:15:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 04:15:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="157111077"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga007.jf.intel.com with ESMTP; 12 Jul 2019 04:15:31 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.180.213])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6CBFTLS006127; Fri, 12 Jul 2019 12:15:30 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 11:14:44 +0000
Message-Id: <20190712111445.21040-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190712111445.21040-1-michal.wajdeczko@intel.com>
References: <20190712111445.21040-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Don't enable GuC/HuC in auto
 mode on pre-Gen11
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

V2UgYXJlIGFib3V0IHRvIGNoYW5nZSBkZWZhdWx0IHNldHRpbmcgb2YgImVuYWJsZV9ndWMiIG1v
ZHBhcmFtCmZyb20gMChkaXNhYmxlZCkgdG8gLTEoYXV0bykuIEFzIHdlIG9ubHkgd2FudCB0byB0
dXJuIG9uCkd1Qy9IdUMgb24gR2VuMTErLCBrZWVwIGl0IG9mZiBmb3Igb2xkZXIgZ2Vucy4KCk5v
dGUgdGhhdCBpdCB3b3VsZCBiZSBzdGlsbCBwb3NzaWJsZSB0byBlbmFibGUgR3VDL0h1QyBvbiB0
aGVzZQpvbGQgcGxhdGZvcm1zIHVzaW5nIGV4cGxpY2l0ICJlbmFibGVfZ3VjPTIiIG1vZHBhcmFt
LgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogSm9vbmFz
IExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFv
bG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMg
fCAxMCArKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCmluZGV4IGZkZjAwZjFlYmI1Ny4uNzJiYmNi
MjU5N2ZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKQEAgLTU4LDEyICs1OCwxNiBAQCBzdGF0
aWMgaW50IF9fZ2V0X3BsYXRmb3JtX2VuYWJsZV9ndWMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJc3RydWN0IGludGVsX3VjX2Z3ICpodWNfZncgPSAmaTkxNS0+aHVjLmZ3OwogCWlu
dCBlbmFibGVfZ3VjID0gMDsKIAotCS8qIERlZmF1bHQgaXMgdG8gdXNlIEh1QyBpZiB3ZSBrbm93
IEd1QyBhbmQgSHVDIGZpcm13YXJlcyAqLworCWlmICghSEFTX0dVQyhpOTE1KSkKKwkJcmV0dXJu
IDA7CisKKwkvKiBXZSBkb24ndCB3YW50IHRvIGVuYWJsZSBHdUMvSHVDIG9uIHByZS1HZW4xMSBi
eSBkZWZhdWx0ICovCisJaWYgKElOVEVMX0dFTihpOTE1KSA8IDExKQorCQlyZXR1cm4gMDsKKwog
CWlmIChpbnRlbF91Y19md19pc19zZWxlY3RlZChndWNfZncpICYmIGludGVsX3VjX2Z3X2lzX3Nl
bGVjdGVkKGh1Y19mdykpCiAJCWVuYWJsZV9ndWMgfD0gRU5BQkxFX0dVQ19MT0FEX0hVQzsKIAot
CS8qIEFueSBwbGF0Zm9ybSBzcGVjaWZpYyBmaW5lLXR1bmluZyBjYW4gYmUgZG9uZSBoZXJlICov
Ci0KIAlyZXR1cm4gZW5hYmxlX2d1YzsKIH0KIAotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
