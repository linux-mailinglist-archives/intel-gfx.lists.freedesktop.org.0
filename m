Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3390638C57
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 16:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B9689CF9;
	Fri,  7 Jun 2019 14:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14E8389CDF;
 Fri,  7 Jun 2019 14:12:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E546A0005;
 Fri,  7 Jun 2019 14:12:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 07 Jun 2019 14:12:55 -0000
Message-ID: <20190607141255.32137.22659@emeril.freedesktop.org>
References: <20190607115932.20271-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190607115932.20271-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Move_i915=5Fcheck=5Fand=5Fclear=5Ffaults_to_intel=5F?=
 =?utf-8?q?reset=2Ec?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE1vdmUgaTkxNV9jaGVja19h
bmRfY2xlYXJfZmF1bHRzIHRvIGludGVsX3Jlc2V0LmMKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYxNzcxLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1h
cnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4y
CkNvbW1pdDogZHJtL2k5MTU6IE1vdmUgaTkxNV9jaGVja19hbmRfY2xlYXJfZmF1bHRzIHRvIGlu
dGVsX3Jlc2V0LmMKLWRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjM1MjoxNDog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jOjM1MjoxNDogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjM1MjoxNDogd2Fy
bmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jOjM1MjoxNDogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yo
dm9pZCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
