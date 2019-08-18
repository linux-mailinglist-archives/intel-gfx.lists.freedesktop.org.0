Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3021E91604
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 11:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE7796E060;
	Sun, 18 Aug 2019 09:52:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14CB6E05A
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 09:52:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 02:52:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,400,1559545200"; d="scan'208";a="329098767"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 18 Aug 2019 02:52:19 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7I9qBYm001582; Sun, 18 Aug 2019 10:52:18 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 18 Aug 2019 09:52:03 +0000
Message-Id: <20190818095204.31568-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190818095204.31568-1-michal.wajdeczko@intel.com>
References: <20190818095204.31568-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/uc: Don't always fail on
 unavailable GuC firmware
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

SWYgd2UgZmFpbGVkIHRvIGZldGNoIGRlZmF1bHQgR3VDIGZpcm13YXJlIGFuZCB3ZSBkaWRuJ3Qg
cGxhbgp0byB1c2UgaXQgZm9yIHRoZSBzdWJtaXNzaW9uIGFuZCB3ZSBuZXZlciBoYXZlIHVzZWQg
R3VDIGJlZm9yZQp0aGVuIHdlIG1heSBjb250aW51ZSBub3JtYWwgZHJpdmVyIGxvYWQsIG5vIG5l
ZWQgdG8gZGVjbGFyZQpHUFUgd2VkZ2VkICh3ZSBjYW4gdXNlIGV4ZWNsaXN0IGZvciBzdWJtaXNz
aW9uKSBhbmQgaXQgaXMgc2FmZQp0byBydW4gd2l0aG91dCB0aGUgSHVDICh1c2VycyB3aWxsIGNo
ZWNrIEh1QyBzdGF0dXMgYW55d2F5KS4KClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28g
PG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
NSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Yy5jCmluZGV4IDZmMGI5ZTA1YTVmNi4uMTA5NzhlN2ZmMDZkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTQwMCw2ICs0MDAsMTUgQEAgc3RhdGljIGludCB1
Y19pbml0X3dvcGNtKHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJcmV0dXJuIGVycjsKIH0KIAorc3Rh
dGljIGJvb2wgdWNfaXNfd29wY21fbG9ja2VkKHN0cnVjdCBpbnRlbF91YyAqdWMpCit7CisJc3Ry
dWN0IGludGVsX2d0ICpndCA9IHVjX3RvX2d0KHVjKTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1
bmNvcmUgPSBndC0+dW5jb3JlOworCisJcmV0dXJuIChpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUs
IEdVQ19XT1BDTV9TSVpFKSAmIEdVQ19XT1BDTV9TSVpFX0xPQ0tFRCkgfHwKKwkgICAgICAgKGlu
dGVsX3VuY29yZV9yZWFkKHVuY29yZSwgRE1BX0dVQ19XT1BDTV9PRkZTRVQpICYgR1VDX1dPUENN
X09GRlNFVF9WQUxJRCk7Cit9CisKIGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRlbF91
YyAqdWMpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB1Y190b19ndCh1Yykt
Pmk5MTU7CkBAIC00MTAsMTEgKzQxOSwxOSBAQCBpbnQgaW50ZWxfdWNfaW5pdF9odyhzdHJ1Y3Qg
aW50ZWxfdWMgKnVjKQogCWlmICghaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSkKIAkJcmV0dXJu
IDA7CiAKLQlpZiAoIWludGVsX3VjX3VzZXNfZ3VjKHVjKSkKKwkvKgorCSAqIFdlIGNhbiBzaWxl
bnRseSBjb250aW51ZSB3aXRob3V0IEd1QyBvbmx5IGlmIGl0IHdhcyBuZXZlciBlbmFibGVkCisJ
ICogYmVmb3JlIG9uIHRoaXMgc3lzdGVtIGFmdGVyIHJlYm9vdCwgb3RoZXJ3aXNlIHdlIHJpc2sg
R1BVIGhhbmdzLgorCSAqIFRvIGNoZWNrIGlmIEd1QyB3YXMgbG9hZGVkIGJlZm9yZSB3ZSBsb29r
IGF0IFdPUENNIHJlZ2lzdGVycy4KKwkgKi8KKwlpZiAoIWludGVsX3VjX3VzZXNfZ3VjKHVjKSAm
JiAhdWNfaXNfd29wY21fbG9ja2VkKHVjKSkKIAkJcmV0dXJuIDA7CiAKIAlpZiAoIWludGVsX3Vj
X2Z3X2lzX2F2YWlsYWJsZSgmZ3VjLT5mdykpIHsKLQkJcmV0ID0gaW50ZWxfdWNfZndfc3RhdHVz
X3RvX2Vycm9yKGd1Yy0+Zncuc3RhdHVzKTsKKwkJcmV0ID0gdWNfaXNfd29wY21fbG9ja2VkKHVj
KSB8fAorCQkgICAgICBpbnRlbF91Y19md19pc19vdmVycmlkZGVuKCZndWMtPmZ3KSB8fAorCQkg
ICAgICBpbnRlbF91Y19zdXBwb3J0c19ndWNfc3VibWlzc2lvbih1YykgPworCQkgICAgICBpbnRl
bF91Y19md19zdGF0dXNfdG9fZXJyb3IoZ3VjLT5mdy5zdGF0dXMpIDogMDsKIAkJZ290byBlcnJf
b3V0OwogCX0KIApAQCAtNTA3LDYgKzUyNCwxMiBAQCBpbnQgaW50ZWxfdWNfaW5pdF9odyhzdHJ1
Y3QgaW50ZWxfdWMgKnVjKQogZXJyX291dDoKIAlfX3VjX3Nhbml0aXplKHVjKTsKIAorCWlmICgh
cmV0KSB7CisJCWRldl9ub3RpY2UoaTkxNS0+ZHJtLmRldiwgIkd1QyBpcyB1bmluaXRpYWxpemVk
XG4iKTsKKwkJLyogV2Ugd2FudCB0byBydW4gd2l0aG91dCBHdUMgc3VibWlzc2lvbiAqLworCQly
ZXR1cm4gMDsKKwl9CisKIAlpOTE1X3Byb2JlX2Vycm9yKGk5MTUsICJHdUMgaW5pdGlhbGl6YXRp
b24gZmFpbGVkICVkXG4iLCByZXQpOwogCiAJLyogV2Ugd2FudCB0byBrZWVwIEtNUyBhbGl2ZSAq
LwotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
