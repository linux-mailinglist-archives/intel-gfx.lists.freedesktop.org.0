Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7273828F1F2
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 14:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F6936ECC5;
	Thu, 15 Oct 2020 12:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688A86ECC5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 12:21:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22724265-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 13:21:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:21:36 +0100
Message-Id: <20201015122138.30161-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201015122138.30161-1-chris@chris-wilson.co.uk>
References: <20201015122138.30161-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915: Fix MOCS PTE setting for gen9+
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZp
eCB1cCB0aGUgTU9DUyBQVEUgc2V0dGluZyB0byByZWFsbHkgZ2V0IHRoZSBMTEMgY2FjaGVhYmls
aXR5CmZyb20gdGhlIFBURSByYXRoZXIgdGhhbiBoYXJkb2NvZGluZyBpdCB0byBMTEMgb3IgTExD
K2VMTEMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNn
aWQvMjAyMDEwMDcxMjAzMjkuMTcwNzYtMi12aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbQot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyB8IDQgKystLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9tb2NzLmMKaW5kZXggMzkxNzlhM2VlZTk4Li45Y2U4MDM3NmFmMGYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKQEAgLTEyNCw3ICsxMjQsNyBAQCBzdHJ1Y3Qg
ZHJtX2k5MTVfbW9jc190YWJsZSB7CiAJCSAgIExFXzFfVUMgfCBMRV9UQ18yX0xMQ19FTExDLCBc
CiAJCSAgIEwzXzFfVUMpLCBcCiAJTU9DU19FTlRSWShJOTE1X01PQ1NfUFRFLCBcCi0JCSAgIExF
XzBfUEFHRVRBQkxFIHwgTEVfVENfMl9MTENfRUxMQyB8IExFX0xSVU0oMyksIFwKKwkJICAgTEVf
MF9QQUdFVEFCTEUgfCBMRV9UQ18wX1BBR0VUQUJMRSB8IExFX0xSVU0oMyksIFwKIAkJICAgTDNf
M19XQikKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9tb2NzX2VudHJ5IHNrbF9tb2Nz
X3RhYmxlW10gPSB7CkBAIC0yODAsNyArMjgwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1f
aTkxNV9tb2NzX2VudHJ5IGljbF9tb2NzX3RhYmxlW10gPSB7CiAJCSAgIEwzXzFfVUMpLAogCS8q
IEJhc2UgLSBMMyArIExlQ0M6UEFUIChEZXByZWNhdGVkKSAqLwogCU1PQ1NfRU5UUlkoSTkxNV9N
T0NTX1BURSwKLQkJICAgTEVfMF9QQUdFVEFCTEUgfCBMRV9UQ18xX0xMQywKKwkJICAgTEVfMF9Q
QUdFVEFCTEUgfCBMRV9UQ18wX1BBR0VUQUJMRSwKIAkJICAgTDNfM19XQiksCiAKIAlHRU4xMV9N
T0NTX0VOVFJJRVMKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
