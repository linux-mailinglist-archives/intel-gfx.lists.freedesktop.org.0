Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA6128DEEE
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974A16E429;
	Wed, 14 Oct 2020 10:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B07BA6E429
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 10:32:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22711367-1500050 
 for multiple; Wed, 14 Oct 2020 11:31:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 11:31:52 +0100
Message-Id: <20201014103152.21935-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Fixup tgl mocs for PTE tracking
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yY2luZyBtb2NzOjEgW3VzZWQgZm9yIG91ciB3aW5zeXMgZm9sbG93cy1wdGUgbW9kZV0gdG8g
YmUgY2FjaGVkCmNhdXNlZCBkaXNwbGF5IGdsaXRjaGVzLiBUaG91Z2ggaXQgaXMgZG9jdW1lbnRl
ZCBhcyBkZXByZWNhdGVkIChhbmQgc28KbGlrZWx5IGJlaGF2ZXMgYXMgdW5jYWNoZWQpIHVzZSB0
aGUgZm9sbG93LXB0ZSBiaXQgYW5kIGZvcmNlIGl0IG91dCBvZgpMMyBjYWNoZS4KCkZpeGVzOiA0
ZDhhNWNmZTNiMTMgKCJkcm0vaTkxNS9ndDogSW5pdGlhbGl6ZSByZXNlcnZlZCBhbmQgdW5zcGVj
aWZpZWQgTU9DUyBpbmRpY2VzIikKVGVzdGNhc2U6IGlndC9rbXNfZnJvbnRidWZmZXJfdHJhY2tp
bmcKVGVzdGNhc2U6IGlndC9rbXNfYmlnX2ZiClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogQXlheiBBIFNpZGRpcXVpIDxheWF6LnNpZGRp
cXVpQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKb29uYXMgTGFo
dGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9tb2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMKaW5kZXggMzkxNzlhM2VlZTk4Li4wOTNiMzJkYjM0MjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9tb2NzLmMKQEAgLTI0Myw4ICsyNDMsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRy
bV9pOTE1X21vY3NfZW50cnkgdGdsX21vY3NfdGFibGVbXSA9IHsKIAkgKiBvbmx5LCBfX2luaXRf
bW9jc190YWJsZSgpIHRha2UgY2FyZSB0byBwcm9ncmFtIHVudXNlZCBpbmRleCB3aXRoCiAJICog
dGhpcyBlbnRyeS4KIAkgKi8KLQlNT0NTX0VOVFJZKDEsIExFXzNfV0IgfCBMRV9UQ18xX0xMQyB8
IExFX0xSVU0oMyksCi0JCSAgIEwzXzNfV0IpLAorCU1PQ1NfRU5UUlkoSTkxNV9NT0NTX1BURSwK
KwkJICAgTEVfMF9QQUdFVEFCTEUgfCBMRV9UQ18wX1BBR0VUQUJMRSwKKwkJICAgTDNfMV9VQyks
CiAJR0VOMTFfTU9DU19FTlRSSUVTLAogCiAJLyogSW1wbGljaXRseSBlbmFibGUgTDEgLSBIREM6
TDEgKyBMMyArIExMQyAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
