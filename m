Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B98603CBED
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 14:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5D1891C7;
	Tue, 11 Jun 2019 12:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3F40891C7;
 Tue, 11 Jun 2019 12:39:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D0C9A010C;
 Tue, 11 Jun 2019 12:39:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 11 Jun 2019 12:39:38 -0000
Message-ID: <20190611123938.31860.42273@emeril.freedesktop.org>
References: <20190611110044.7742-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190611110044.7742-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/guc=3A_Move_intel=5Fguc?=
 =?utf-8?q?=5Freserved=5Fgtt=5Fsize_to_intel=5Fwopcm=5Fguc=5Fsize_=28rev2?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvZ3VjOiBNb3ZlIGludGVsX2d1Y19yZXNlcnZlZF9ndHRfc2l6ZSB0byBpbnRlbF93
b3BjbV9ndWNfc2l6ZSAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzYxODg3LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGlt
IHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJt
L2k5MTUvZ3VjOiBNb3ZlIGludGVsX2d1Y19yZXNlcnZlZF9ndHRfc2l6ZSB0byBpbnRlbF93b3Bj
bV9ndWNfc2l6ZQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzoyODMyOjI2
OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmM6MjgzMjoyNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBz
aXplb2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5MTU6IE1ha2UgR3VDIEdHVFQgcmVzZXJ2YXRpb24g
d29yayBvbiBnZ3R0Ck9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
