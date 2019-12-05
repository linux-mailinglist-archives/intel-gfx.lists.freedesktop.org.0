Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6A1114025
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 12:32:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B99E6F64E;
	Thu,  5 Dec 2019 11:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5842B6E060;
 Thu,  5 Dec 2019 11:32:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5047AA0114;
 Thu,  5 Dec 2019 11:32:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Thu, 05 Dec 2019 11:32:21 -0000
Message-ID: <157554554130.19942.5892341835171086095@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191205101417.15054-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191205101417.15054-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Add_lmem_fault_handler?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBsbWVtIGZhdWx0IGhh
bmRsZXIKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcw
NDg1LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3Jp
Z2luL2RybS10aXAKZjhjYjU0MjBhOTQwIGRybS9pOTE1OiBBZGQgbG1lbSBmYXVsdCBoYW5kbGVy
Ci06MTM4OiBXQVJOSU5HOkxFQURJTkdfU1BBQ0U6IHBsZWFzZSwgbm8gc3BhY2VzIGF0IHRoZSBz
dGFydCBvZiBhIGxpbmUKIzEzODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX21tYW4uYzo2OTE6CisgICAgICAgLmZhdWx0ID0gdm1fZmF1bHRfbG1lbSwkCgotOjEzOTog
V0FSTklORzpMRUFESU5HX1NQQUNFOiBwbGVhc2UsIG5vIHNwYWNlcyBhdCB0aGUgc3RhcnQgb2Yg
YSBsaW5lCiMxMzk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFu
LmM6NjkyOgorICAgICAgIC5vcGVuID0gdm1fb3BlbiwkCgotOjE0MDogV0FSTklORzpMRUFESU5H
X1NQQUNFOiBwbGVhc2UsIG5vIHNwYWNlcyBhdCB0aGUgc3RhcnQgb2YgYSBsaW5lCiMxNDA6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmM6NjkzOgorICAgICAg
IC5jbG9zZSA9IHZtX2Nsb3NlLCQKCnRvdGFsOiAwIGVycm9ycywgMyB3YXJuaW5ncywgMCBjaGVj
a3MsIDEyOSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
