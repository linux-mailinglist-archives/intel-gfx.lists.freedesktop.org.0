Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E58E7CDC79
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 09:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B0389ECD;
	Mon,  7 Oct 2019 07:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C55A89BA5;
 Mon,  7 Oct 2019 07:37:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18747224-1500050 
 for multiple; Mon, 07 Oct 2019 08:37:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 08:37:29 +0100
Message-Id: <20191007073729.5612-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_userptr: Be defensive when
 testing userptr capabilities
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm90IGV2ZXJ5IGRldmljZSBuYXR1cmFsbHkgc3VwcG9ydHMgc25vb3BpbmcgYW5kIHVzZXJwdHIs
IHNvIGJlIHByZXBhcmVkCmZvciB0aGUgaW5pdGlhbCBwcm9iZSB0byBmYWlsLgoKQnVnemlsbGE6
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTkxMApTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0
ZXN0cy9pOTE1L2dlbV91c2VycHRyX2JsaXRzLmMgfCA3ICsrKysrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkx
NS9nZW1fdXNlcnB0cl9ibGl0cy5jIGIvdGVzdHMvaTkxNS9nZW1fdXNlcnB0cl9ibGl0cy5jCmlu
ZGV4IDIzNTljMTNmNC4uMThlODA2ZmVkIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV91c2Vy
cHRyX2JsaXRzLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fdXNlcnB0cl9ibGl0cy5jCkBAIC03OCwx
MiArNzgsMTQgQEAgc3RhdGljIHVpbnQzMl90IGxpbmVhcltXSURUSCpIRUlHSFRdOwogCiBzdGF0
aWMgYm9vbCBoYXNfZ3R0X21tYXAoaW50IGk5MTUpCiB7Ci0Jdm9pZCAqcHRyLCAqbWFwOworCXZv
aWQgKnB0ciwgKm1hcCA9IE5VTEw7CiAJdWludDMyX3QgaGFuZGxlOwogCiAJaWd0X2Fzc2VydChw
b3NpeF9tZW1hbGlnbigmcHRyLCBQQUdFX1NJWkUsIFBBR0VfU0laRSkgPT0gMCk7CiAKLQlnZW1f
dXNlcnB0cihpOTE1LCBwdHIsIDQwOTYsIDAsIDAsICZoYW5kbGUpOworCWlmIChfX2dlbV91c2Vy
cHRyKGk5MTUsIHB0ciwgNDA5NiwgMCwKKwkJCSAgTE9DQUxfSTkxNV9VU0VSUFRSX1VOU1lOQ0hS
T05JWkVELCAmaGFuZGxlKSkKKwkJZ290byBvdXRfcHRyOwogCWlndF9hc3NlcnQoaGFuZGxlICE9
IDApOwogCiAJbWFwID0gX19nZW1fbW1hcF9fZ3R0KGk5MTUsIGhhbmRsZSwgNDA5NiwgUFJPVF9X
UklURSk7CkBAIC05MSw2ICs5Myw3IEBAIHN0YXRpYyBib29sIGhhc19ndHRfbW1hcChpbnQgaTkx
NSkKIAkJbXVubWFwKG1hcCwgNDA5Nik7CiAKIAlnZW1fY2xvc2UoaTkxNSwgaGFuZGxlKTsKK291
dF9wdHI6CiAJZnJlZShwdHIpOwogCiAJcmV0dXJuIG1hcCAhPSBOVUxMOwotLSAKMi4yMy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
