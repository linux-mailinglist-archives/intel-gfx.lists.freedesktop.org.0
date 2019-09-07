Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B23F3AC8AA
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 20:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9E489E2A;
	Sat,  7 Sep 2019 18:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A553D89E1B;
 Sat,  7 Sep 2019 18:13:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18410753-1500050 
 for multiple; Sat, 07 Sep 2019 19:12:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 19:12:57 +0100
Message-Id: <20190907181257.23556-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190907181257.23556-1-chris@chris-wilson.co.uk>
References: <20190907181257.23556-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] build: Ignore warnings for address of
 packed members
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

U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogbWVzb24uYnVpbGQgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlm
ZiAtLWdpdCBhL21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKaW5kZXggNDc4ODY5ZWI2Li5hZWVj
ZjBkYzYgMTAwNjQ0Ci0tLSBhL21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxkCkBAIC00NCw2
ICs0NCw3IEBAIGNjX2FyZ3MgPSBbCiAJJy1Xbm8tbWF5YmUtdW5pbml0aWFsaXplZCcsCiAJJy1X
bm8tbWlzc2luZy1maWVsZC1pbml0aWFsaXplcnMnLAogCSctV25vLXBvaW50ZXItYXJpdGgnLAor
CSctV25vLWFkZHJlc3Mtb2YtcGFja2VkLW1lbWJlcicsCiAJJy1Xbm8tc2lnbi1jb21wYXJlJywK
ICMgTWFjcm9zIGFzc2VydGluZyBvbiB0aGUgcmFuZ2Ugb2YgdGhlaXIgYXJndW1lbnRzIHRyaWdn
ZXJzIHRoaXMuCiAJJy1Xbm8tdHlwZS1saW1pdHMnLAotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
