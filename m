Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1C09059A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 18:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A7D6E366;
	Fri, 16 Aug 2019 16:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C92F6E35F;
 Fri, 16 Aug 2019 16:16:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 157F7A47E1;
 Fri, 16 Aug 2019 16:16:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 16 Aug 2019 16:16:23 -0000
Message-ID: <20190816161623.13759.77993@emeril.freedesktop.org>
References: <20190816092424.31386-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190816092424.31386-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_drm/i915/execlists=3A_Lift_process=5Fcs?=
 =?utf-8?q?b=28=29_out_of_the_irq-off_spinlock_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggZHJtL2k5
MTUvZXhlY2xpc3RzOiBMaWZ0IHByb2Nlc3NfY3NiKCkgb3V0IG9mIHRoZSBpcnEtb2ZmIHNwaW5s
b2NrIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjUyOTQvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRj
aCBvcmlnaW4vZHJtLXRpcAo2Mjg3NWEzZjZkZjkgZHJtL2k5MTUvZXhlY2xpc3RzOiBMaWZ0IHBy
b2Nlc3NfY3NiKCkgb3V0IG9mIHRoZSBpcnEtb2ZmIHNwaW5sb2NrCjc4MzI2NWRlOTBjNyBkcm0v
aTkxNS9ndDogTWFyayBjb250ZXh0LT5hY3RpdmVfY291bnQgYXMgcHJvdGVjdGVkIGJ5IHRpbWVs
aW5lLT5tdXRleApmMDc4ZTA4ZDc5NTggZHJtL2k5MTU6IE1hcmt1cCBleHBlY3RlZCB0aW1lbGlu
ZSBsb2NrcyBmb3IgaTkxNV9hY3RpdmUKLToyOTE6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJ
T046IHN0cnVjdCBtdXRleCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVudAojMjkxOiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oOjI4OgorCXN0cnVjdCBtdXRl
eCAqbG9jazsKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDI0MiBsaW5l
cyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
