Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D860748B5
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 10:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FCC6E67F;
	Thu, 25 Jul 2019 08:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA4D6E67F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 08:03:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17588894-1500050 
 for multiple; Thu, 25 Jul 2019 09:03:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 09:03:48 +0100
Message-Id: <20190725080348.2080-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "ALSA: line6: sizeof (byte) is always 1,
 use that fact."
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
Cc: Takashi Iwai <tiwai@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SnVzdCBhIGhlYWRzIHVwIHRoYXQgaWNsIGlzIGNvbnNpc3RlbnRseSBzaG93aW5nCgo8ND4gWzMx
NS40Nzg4MzBdIHNuZF9oZGFfaW50ZWwgMDAwMDowMDoxZi4zOiBhenhfZ2V0X3Jlc3BvbnNlIHRp
bWVvdXQsIHN3aXRjaGluZyB0byBwb2xsaW5nIG1vZGU6IGxhc3QgY21kPTB4MjAyZjgxMDAKPDQ+
IFszMTYuNDgyNzk5XSBzbmRfaGRhX2ludGVsIDAwMDA6MDA6MWYuMzogTm8gcmVzcG9uc2UgZnJv
bSBjb2RlYywgZGlzYWJsaW5nIE1TSTogbGFzdCBjbWQ9MHgyMDJmODEwMAo8Mz4gWzUwOC40MTI5
MTVdIHNuZF9oZGFfY29kZWNfaGRtaSBoZGF1ZGlvQzBEMjogVW5hYmxlIHRvIHN5bmMgcmVnaXN0
ZXIgMHgyZjgxMDAuIC0xMQoKZm9sbG93aW5nIGNvbW1pdHMgMjc1NmQ5MTQzYWE1ICgiQUxTQTog
aGRhIC0gRml4IGludGVybWl0dGVudCBDT1JCL1JJUkIKc3RhbGwgb24gSW50ZWwgY2hpcHMiKSBh
bmQgYTMwZjE3NDNlNGY1ICgiQUxTQTogbGluZTY6IHNpemVvZiAoYnl0ZSkgaXMKYWx3YXlzIDEs
IHVzZSB0aGF0IGZhY3QuIikKCkNjOiBUYWthc2hpIEl3YWkgPHRpd2FpQHN1c2UuZGU+Ci0tLQog
c291bmQvdXNiL2xpbmU2L2RyaXZlci5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NvdW5kL3VzYi9saW5lNi9k
cml2ZXIuYyBiL3NvdW5kL3VzYi9saW5lNi9kcml2ZXIuYwppbmRleCBiNWEzZjc1NGE0ZjEuLmFi
MmVjODk2ZjQ5YyAxMDA2NDQKLS0tIGEvc291bmQvdXNiL2xpbmU2L2RyaXZlci5jCisrKyBiL3Nv
dW5kL3VzYi9saW5lNi9kcml2ZXIuYwpAQCAtMzQyLDcgKzM0Miw3IEBAIGludCBsaW5lNl9yZWFk
X2RhdGEoc3RydWN0IHVzYl9saW5lNiAqbGluZTYsIHVuc2lnbmVkIGFkZHJlc3MsIHZvaWQgKmRh
dGEsCiAJaWYgKGFkZHJlc3MgPiAweGZmZmYgfHwgZGF0YWxlbiA+IDB4ZmYpCiAJCXJldHVybiAt
RUlOVkFMOwogCi0JbGVuID0ga21hbGxvYygxLCBHRlBfS0VSTkVMKTsKKwlsZW4gPSBrbWFsbG9j
KHNpemVvZigqbGVuKSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFsZW4pCiAJCXJldHVybiAtRU5PTUVN
OwogCkBAIC00MTgsNyArNDE4LDcgQEAgaW50IGxpbmU2X3dyaXRlX2RhdGEoc3RydWN0IHVzYl9s
aW5lNiAqbGluZTYsIHVuc2lnbmVkIGFkZHJlc3MsIHZvaWQgKmRhdGEsCiAJaWYgKGFkZHJlc3Mg
PiAweGZmZmYgfHwgZGF0YWxlbiA+IDB4ZmZmZikKIAkJcmV0dXJuIC1FSU5WQUw7CiAKLQlzdGF0
dXMgPSBrbWFsbG9jKDEsIEdGUF9LRVJORUwpOworCXN0YXR1cyA9IGttYWxsb2Moc2l6ZW9mKCpz
dGF0dXMpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIXN0YXR1cykKIAkJcmV0dXJuIC1FTk9NRU07CiAK
LS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
