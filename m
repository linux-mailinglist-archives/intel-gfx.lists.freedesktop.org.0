Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF7CCC956
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Oct 2019 12:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A9E06E219;
	Sat,  5 Oct 2019 10:21:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF2F46E1EC;
 Sat,  5 Oct 2019 10:21:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18732975-1500050 
 for multiple; Sat, 05 Oct 2019 11:21:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  5 Oct 2019 11:21:48 +0100
Message-Id: <20191005102148.20922-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Retighten timeouts for
 forced reset
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

VGhlIGZvcmNlZC1yZXNldCBpdHNlbGYgc2hvdWxkIGJlIGltbWVkaWF0ZTsgaXQncyBqdXN0IHRo
ZSB3YWl0IGFmdGVyCnRoZSBoZWFsdGggY2hlY2sgd2hlcmUgd2UgYXBwZWFyIHRvIGhhdmUgaXNz
dWVzIQoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIHRl
c3RzL2k5MTUvZ2VtX2Vpby5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jIGIv
dGVzdHMvaTkxNS9nZW1fZWlvLmMKaW5kZXggMDA3YjlmYjcwLi43YzhmZjEwZGYgMTAwNjQ0Ci0t
LSBhL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCkBAIC03
NiwxMiArNzYsMTUgQEAgc3RhdGljIHZvaWQgdHJpZ2dlcl9yZXNldChpbnQgZmQpCiAJaWd0X2tt
c2coS01TR19ERUJVRyAiRm9yY2luZyBHUFUgcmVzZXRcbiIpOwogCWlndF9mb3JjZV9ncHVfcmVz
ZXQoZmQpOwogCisJLyogVGhlIGZvcmNlZCByZXNldCBzaG91bGQgYmUgaW1tZWRpYXRlICovCisJ
aWd0X2Fzc2VydF9sdGUoaWd0X3NlY29uZHNfZWxhcHNlZCgmdHMpLCAyKTsKKwogCS8qIEFuZCBq
dXN0IGNoZWNrIHRoZSBncHUgaXMgaW5kZWVkIHJ1bm5pbmcgYWdhaW4gKi8KIAlpZ3Rfa21zZyhL
TVNHX0RFQlVHICJDaGVja2luZyB0aGF0IHRoZSBHUFUgcmVjb3ZlcmVkXG4iKTsKIAlnZW1fdGVz
dF9lbmdpbmUoZmQsIEFMTF9FTkdJTkVTKTsKIAlpZ3RfZHJvcF9jYWNoZXNfc2V0KGZkLCBEUk9Q
X0FDVElWRSk7CiAKLQkvKiBXZSBleHBlY3QgZm9yY2VkIHJlc2V0IGFuZCBoZWFsdGggY2hlY2sg
dG8gYmUgcXVpY2suICovCisJLyogV2UgZXhwZWN0IGhlYWx0aCBjaGVjayB0byBiZSBxdWljay4g
Ki8KIAlpZ3RfYXNzZXJ0X2x0ZShpZ3Rfc2Vjb25kc19lbGFwc2VkKCZ0cyksIDEwKTsKIH0KIAot
LSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
