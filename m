Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E0E8E0A7
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 00:26:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85D816E870;
	Wed, 14 Aug 2019 22:26:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A636E86E;
 Wed, 14 Aug 2019 22:25:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18128926-1500050 
 for multiple; Wed, 14 Aug 2019 23:25:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Aug 2019 23:25:49 +0100
Message-Id: <20190814222549.31154-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_userptr_blit: Shoot down a
 shared mmap_gtt(userptr)
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
Cc: igt-dev@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXN0YWJsaXNoIGEgdXNlcnB0ciBhbmQgaW5oZXJpdCBpdCB0byBtYW55IGNoaWxkcmVuIHdpdGgg
ZnJlc2ggbW0uIEludG8KZWFjaCBjaGlsZCBtbSwgbW1hcF9ndHQgdGhlIHVzZXJwdHIgaGFuZGxl
IHNvIHRoYXQgdGhleSBhcmUgbWFueQpkaWZmZXJlbnQgdm1hIGluIHRoZSBpX21hcHBpbmcgdHJl
ZSBwb2ludGluZyBiYWNrIHRvIHRoZSB1c2VycHRyLiBUaGVuCnByb2NlZWQgdG8gbXVubWFwIHRo
YXQgYW5kIGZvcmNlIHVzIHRvIHJldm9rZSBhbGwgdGhlIG1tYXBzLgoKRGFuaWVsIGRpc2NvdmVy
ZWQgdGhhdCBmcm9tIHRoZSB1bm1hcCBpbiB0aGUgcGFyZW50LCB3ZSB3aWxsIGNhbGwKaTkxNV92
bWFfcmV2b2tlX21tYXBzKCkgb24gYWxsIHRoZSBjaGlsZCBtYXBwaW5ncywgd2hpY2ggaW4gdHVy
biBzaG91bGQKY2FsbCBtbXVfbm90aWZpZXJfaW52YWxpZGF0ZV9yYW5nZSAtLSBvc3RlbnNpYmx5
IHJlY3Vyc2luZyBmcm9tIHRoZQpvdXRlciBtbXVfbm90aWZpZXJfaW52YWxpZGF0ZV9yYW5nZSBv
ZiB0aGUgbXVuYW1wLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgot
LS0KIHRlc3RzL2k5MTUvZ2VtX3VzZXJwdHJfYmxpdHMuYyB8IDc5ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3OSBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fdXNlcnB0cl9ibGl0cy5jIGIvdGVzdHMvaTkxNS9nZW1f
dXNlcnB0cl9ibGl0cy5jCmluZGV4IDVmNzc3MGM5My4uZWUyYmRjODkwIDEwMDY0NAotLS0gYS90
ZXN0cy9pOTE1L2dlbV91c2VycHRyX2JsaXRzLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fdXNlcnB0
cl9ibGl0cy5jCkBAIC0xNjEzLDYgKzE2MTMsODIgQEAgc3RhdGljIHZvaWQgdGVzdF91bm1hcChp
bnQgZmQsIGludCBleHBlY3RlZCkKIAkJZ2VtX2Nsb3NlKGZkLCBib1tpXSk7CiB9CiAKK3N0YXRp
YyBpbnQgY291bnRfc2lnYnVzKHZvaWQgKnB0ciwgc2l6ZV90IGxlbikKK3sKKwlzdHJ1Y3Qgc2ln
YWN0aW9uIHNpZ2FjdCwgb3JpZ19zaWdhY3Q7CisKKwltZW1zZXQoJnNpZ2FjdCwgMCwgc2l6ZW9m
KHNpZ2FjdCkpOworCXNpZ2FjdC5zYV9zaWdhY3Rpb24gPSBzaWdidXM7CisJc2lnYWN0LnNhX2Zs
YWdzID0gU0FfU0lHSU5GTzsKKwlpZ3RfYXNzZXJ0KHNpZ2FjdGlvbihTSUdCVVMsICZzaWdhY3Qs
ICZvcmlnX3NpZ2FjdCkgPT0gMCk7CisKKwlzaWdidXNfc3RhcnQgPSAodW5zaWduZWQgbG9uZylw
dHI7CisJc2lnYnVzX2NudCA9IDA7CisJbWVtc2V0KHB0ciwgMCwgbGVuKTsKKworCXNpZ2FjdGlv
bihTSUdCVVMsICZvcmlnX3NpZ2FjdCwgTlVMTCk7CisJcmV0dXJuIHNpZ2J1c19jbnQ7Cit9CisK
K3N0YXRpYyB2b2lkIHRlc3RfdW5tYXBfc2hhcmVkKGludCBpOTE1KQoreworCWNvbnN0IGludCBu
dW1fY2hpbGQgPSA2NDsKKwlzdHJ1Y3QgeworCQl2b2lkICpiYXNlOworCQl1aW50MzJfdCAqZ3R0
OworCQl1aW50MzJfdCBibzsKKwl9IHRbMl07CisKKwlpZ3RfcmVxdWlyZShnZW1faGFzX2xsYyhp
OTE1KSk7CisKKwlmb3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJWkUodCk7IGkrKykgeworCQl0
W2ldLmJhc2UgPSBtbWFwKE5VTEwsIHNpemVvZihsaW5lYXIpLCBQUk9UX1JFQUQgfCBQUk9UX1dS
SVRFLAorCQkJICAgICAgIE1BUF9BTk9OWU1PVVMgfCBNQVBfUFJJVkFURSwgLTEsIDApOworCQlp
Z3RfYXNzZXJ0KHRbaV0uYmFzZSAhPSBNQVBfRkFJTEVEKTsKKwkJaWd0X3JlcXVpcmUoX19nZW1f
dXNlcnB0cihpOTE1LCB0W2ldLmJhc2UsIHNpemVvZihsaW5lYXIpLAorCQkJCQkgIDAsIHVzZXJw
dHJfZmxhZ3MsICZ0W2ldLmJvKSA9PSAwKTsKKworCQl0W2ldLmd0dCA9IGdlbV9tbWFwX19ndHQo
aTkxNSwgdFtpXS5ibywKKwkJCQkJIHNpemVvZihsaW5lYXIpLCBQUk9UX1dSSVRFKTsKKwkJKnRb
aV0uZ3R0ID0gaTsKKwl9CisKKwlpZ3RfZm9yayhjaGlsZCwgbnVtX2NoaWxkKSB7CisJCXVpbnQz
Ml90ICpwdHI7CisKKwkJcHRyID0gZ2VtX21tYXBfX2d0dChpOTE1LCB0WzBdLmJvLCBzaXplb2Yo
bGluZWFyKSwgUFJPVF9XUklURSk7CisJCXB0cltjaGlsZF0gPSAxOworCisJCXB0ciA9IGdlbV9t
bWFwX19ndHQoaTkxNSwgdFsxXS5ibywgc2l6ZW9mKGxpbmVhciksIFBST1RfV1JJVEUpOworCQl3
aGlsZSAoUkVBRF9PTkNFKCpwdHIpID09IDEpCisJCQl1c2xlZXAoMTAgKiAxMDAwKTsKKworCQlw
dHIgPSBnZW1fbW1hcF9fZ3R0KGk5MTUsIHRbMF0uYm8sIHNpemVvZihsaW5lYXIpLCBQUk9UX1dS
SVRFKTsKKwkJaWd0X2Fzc2VydChjb3VudF9zaWdidXMocHRyLCAxKSA+IDApOworCX0KKworCS8q
IGJ1c3kgd2FpdCBmb3IgYWxsIGNoaWxkcmVuIHRvIGluc3RhbnRpYXRlIHRoZWlyIG1tYXAgKi8K
Kwlmb3IgKGludCBjaGlsZCA9IDA7IGNoaWxkIDwgbnVtX2NoaWxkOyBjaGlsZCsrKSB7CisJCXdo
aWxlIChSRUFEX09OQ0UodFswXS5ndHRbY2hpbGRdKSA9PSAwKQorCQkJOworCX0KKworCS8qIHNo
b290IGl0IGRvd24hICovCisJbXVubWFwKHRbMF0uYmFzZSwgc2l6ZW9mKGxpbmVhcikpOworCisJ
LyogY2hlY2sgb3VyIGFpbSB3YXMgdHJ1ZSAqLworCWlndF9hc3NlcnQoY291bnRfc2lnYnVzKHRb
MF0uZ3R0LCAxKSA+IDApOworCisJKnRbMV0uZ3R0ID0gMDsKKwlpZ3Rfd2FpdGNoaWxkcmVuKCk7
CisKKwlmb3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJWkUodCk7IGkrKykgeworCQlnZW1fY2xv
c2UoaTkxNSwgdFtpXS5ibyk7CisJCW11bm1hcCh0W2ldLmd0dCwgc2l6ZW9mKGxpbmVhcikpOwor
CQltdW5tYXAodFtpXS5iYXNlLCBzaXplb2YobGluZWFyKSk7CisJfQorfQorCiBzdGF0aWMgdm9p
ZCB0ZXN0X3VubWFwX2FmdGVyX2Nsb3NlKGludCBmZCkKIHsKIAljaGFyICpwdHIsICpib19wdHI7
CkBAIC0yMDA2LDYgKzIwODIsOSBAQCBpZ3RfbWFpbl9hcmdzKCJjOiIsIE5VTEwsIGhlbHBfc3Ry
LCBvcHRfaGFuZGxlciwgTlVMTCkKIAkJaWd0X3N1YnRlc3QoInN5bmMtdW5tYXAtYWZ0ZXItY2xv
c2UiKQogCQkJdGVzdF91bm1hcF9hZnRlcl9jbG9zZShmZCk7CiAKKwkJaWd0X3N1YnRlc3QoInN5
bmMtdW5tYXAtc2hhcmVkIikKKwkJCXRlc3RfdW5tYXBfc2hhcmVkKGZkKTsKKwogCQlpZ3Rfc3Vi
dGVzdCgic3RyZXNzLW1tIikKIAkJCXRlc3Rfc3RyZXNzX21tKGZkKTsKIAkJaWd0X3N1YnRlc3Qo
InN0cmVzcy1wdXJnZSIpCi0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
