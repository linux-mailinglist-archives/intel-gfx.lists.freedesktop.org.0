Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9724B9D241
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 17:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8280A89FD4;
	Mon, 26 Aug 2019 15:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2463789F8E;
 Mon, 26 Aug 2019 15:03:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A717A0134;
 Mon, 26 Aug 2019 15:03:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 26 Aug 2019 15:03:38 -0000
Message-ID: <20190826150338.13707.13693@emeril.freedesktop.org>
References: <20190826130750.17272-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190826130750.17272-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Use_NOEVICT_for_first_pass_on_attemping_to_pin_a?=
 =?utf-8?q?_GGTT_mmap?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFVzZSBOT0VWSUNUIGZvciBm
aXJzdCBwYXNzIG9uIGF0dGVtcGluZyB0byBwaW4gYSBHR1RUIG1tYXAKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1Nzk2LwpTdGF0ZSA6IHdhcm5pbmcK
Cj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMDI4ZWM2MWYz
MGIxIGRybS9pOTE1OiBVc2UgTk9FVklDVCBmb3IgZmlyc3QgcGFzcyBvbiBhdHRlbXBpbmcgdG8g
cGluIGEgR0dUVCBtbWFwCi06NDogV0FSTklORzpUWVBPX1NQRUxMSU5HOiAnYXR0ZW1waW5nJyBt
YXkgYmUgbWlzc3BlbGxlZCAtIHBlcmhhcHMgJ2F0dGVtcHRpbmcnPwojNDogClN1YmplY3Q6IFtQ
QVRDSF0gZHJtL2k5MTU6IFVzZSBOT0VWSUNUIGZvciBmaXJzdCBwYXNzIG9uIGF0dGVtcGluZyB0
byBwaW4gYQoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgOCBsaW5lcyBj
aGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
