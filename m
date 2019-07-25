Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BB5748AF
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 10:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F9A6E68A;
	Thu, 25 Jul 2019 08:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA116E67F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 08:03:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17588865-1500050 
 for multiple; Thu, 25 Jul 2019 09:03:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 09:03:00 +0100
Message-Id: <20190725080300.1913-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "ALSA: hda - Fix intermittent CORB/RIRB
 stall on Intel chips"
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
c291bmQvcGNpL2hkYS9oZGFfaW50ZWwuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc291bmQvcGNpL2hkYS9o
ZGFfaW50ZWwuYyBiL3NvdW5kL3BjaS9oZGEvaGRhX2ludGVsLmMKaW5kZXggMzI0YTRiMjBmYmE5
Li5mZGRlODBkOTU5NjYgMTAwNjQ0Ci0tLSBhL3NvdW5kL3BjaS9oZGEvaGRhX2ludGVsLmMKKysr
IGIvc291bmQvcGNpL2hkYS9oZGFfaW50ZWwuYwpAQCAtMzEzLDEwICszMTMsMTEgQEAgZW51bSB7
CiAKICNkZWZpbmUgQVpYX0RDQVBTX0lOVEVMX1NLWUxBS0UgXAogCShBWlhfRENBUFNfSU5URUxf
UENIX0JBU0UgfCBBWlhfRENBUFNfUE1fUlVOVElNRSB8XAotCSBBWlhfRENBUFNfU1lOQ19XUklU
RSB8XAogCSBBWlhfRENBUFNfU0VQQVJBVEVfU1RSRUFNX1RBRyB8IEFaWF9EQ0FQU19JOTE1X0NP
TVBPTkVOVCkKIAotI2RlZmluZSBBWlhfRENBUFNfSU5URUxfQlJPWFRPTgkJQVpYX0RDQVBTX0lO
VEVMX1NLWUxBS0UKKyNkZWZpbmUgQVpYX0RDQVBTX0lOVEVMX0JST1hUT04gXAorCShBWlhfRENB
UFNfSU5URUxfUENIX0JBU0UgfCBBWlhfRENBUFNfUE1fUlVOVElNRSB8XAorCSBBWlhfRENBUFNf
U0VQQVJBVEVfU1RSRUFNX1RBRyB8IEFaWF9EQ0FQU19JOTE1X0NPTVBPTkVOVCkKIAogLyogcXVp
cmtzIGZvciBBVEkgU0IgLyBBTUQgSHVkc29uICovCiAjZGVmaW5lIEFaWF9EQ0FQU19QUkVTRVRf
QVRJX1NCIFwKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
