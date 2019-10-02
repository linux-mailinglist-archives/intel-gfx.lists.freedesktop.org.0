Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 506C8C8745
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 144276E954;
	Wed,  2 Oct 2019 11:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510EB6E94C;
 Wed,  2 Oct 2019 11:26:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18692143-1500050 
 for multiple; Wed, 02 Oct 2019 12:26:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 12:26:48 +0100
Message-Id: <20191002112648.12532-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_isolation: Bump support for
 Tigerlake
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

VGhlcmUncyB2ZXJ5IGxpdHRsZSB2YXJpYXRpb24gaW4gbm9uLXByaXZpbGVnZWQgcmVnaXN0ZXJz
IGZvciBUaWdlcmxha2UsCnNvIHdlIGNhbiBtb3N0bHkgaW5oZXJpdCB0aGUgc2V0IGZyb20gZ2Vu
MTEuIFRoZXJlIGlzIG5vIHdoaXRlbGlzdCBhdApwcmVzZW50LCBzbyB3ZSBkbyBub3QgbmVlZCB0
byBhZGQgYW55IHNwZWNpYWwgcmVnaXN0ZXJzLgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTU5OQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9jdHhf
aXNvbGF0aW9uLmMgfCAxMSArKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfaXNv
bGF0aW9uLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKaW5kZXggZGYxZDY1NWFl
Li44MTlkYWFmYzMgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9pc29sYXRpb24uYwor
KysgYi90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKQEAgLTU1LDEwICs1NSwxMSBAQCBl
bnVtIHsKICNkZWZpbmUgR0VOOSAoQUxMIDw8IDkpCiAjZGVmaW5lIEdFTjEwIChBTEwgPDwgMTAp
CiAjZGVmaW5lIEdFTjExIChBTEwgPDwgMTEpCisjZGVmaW5lIEdFTjEyIChBTEwgPDwgMTIpCiAK
ICNkZWZpbmUgTk9DVFggMAogCi0jZGVmaW5lIExBU1RfS05PV05fR0VOIDExCisjZGVmaW5lIExB
U1RfS05PV05fR0VOIDEyCiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbmFtZWRfcmVnaXN0ZXIgewog
CWNvbnN0IGNoYXIgKm5hbWU7CkBAIC0xMTYsOSArMTE3LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBuYW1lZF9yZWdpc3RlciB7CiAJeyAiQ2FjaGVfTW9kZV8wIiwgR0VONywgUkNTMCwgMHg3MDAw
LCAubWFza2VkID0gdHJ1ZSB9LAogCXsgIkNhY2hlX01vZGVfMSIsIEdFTjcsIFJDUzAsIDB4NzAw
NCwgLm1hc2tlZCA9IHRydWUgfSwKIAl7ICJHVF9NT0RFIiwgR0VOOCwgUkNTMCwgMHg3MDA4LCAu
bWFza2VkID0gdHJ1ZSB9LAotCXsgIkwzX0NvbmZpZyIsIEdFTjgsIFJDUzAsIDB4NzAzNCB9LAot
CXsgIlREX0NUTCIsIEdFTjgsIFJDUzAsIDB4ZTQwMCwgLndyaXRlX21hc2sgPSAweGZmZmYgfSwK
LQl7ICJURF9DVEwyIiwgR0VOOCwgUkNTMCwgMHhlNDA0IH0sCisJeyAiTDNfQ29uZmlnIiwgR0VO
X1JBTkdFKDgsIDExKSwgUkNTMCwgMHg3MDM0IH0sCisJeyAiVERfQ1RMIiwgR0VOX1JBTkdFKDgs
IDExKSwgUkNTMCwgMHhlNDAwLCAud3JpdGVfbWFzayA9IDB4ZmZmZiB9LAorCXsgIlREX0NUTDIi
LCBHRU5fUkFOR0UoOCwgMTEpLCBSQ1MwLCAweGU0MDQgfSwKIAl7ICJTT19OVU1fUFJJTVNfV1JJ
VFRFTjAiLCBHRU42LCBSQ1MwLCAweDUyMDAsIDIgfSwKIAl7ICJTT19OVU1fUFJJTVNfV1JJVFRF
TjEiLCBHRU42LCBSQ1MwLCAweDUyMDgsIDIgfSwKIAl7ICJTT19OVU1fUFJJTVNfV1JJVFRFTjIi
LCBHRU42LCBSQ1MwLCAweDUyMTAsIDIgfSwKQEAgLTg1Miw3ICs4NTMsNyBAQCBpZ3RfbWFpbgog
CQlnZW4gPSBpbnRlbF9nZW4oaW50ZWxfZ2V0X2RybV9kZXZpZChmZCkpOwogCiAJCWlndF93YXJu
X29uX2YoZ2VuID4gTEFTVF9LTk9XTl9HRU4sCi0JCQkJCSAgIkdFTiBub3QgcmVjb2duaXplZCEg
VGVzdCBuZWVkcyB0byBiZSB1cGRhdGVkIHRvIHJ1bi4iKTsKKwkJCSAgICAgICJHRU4gbm90IHJl
Y29nbml6ZWQhIFRlc3QgbmVlZHMgdG8gYmUgdXBkYXRlZCB0byBydW4uIik7CiAJCWlndF9za2lw
X29uKGdlbiA+IExBU1RfS05PV05fR0VOKTsKIAl9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
