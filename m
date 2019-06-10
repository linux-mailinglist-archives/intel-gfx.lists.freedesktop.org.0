Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C12C83B36E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 12:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2907989124;
	Mon, 10 Jun 2019 10:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 01FE689122;
 Mon, 10 Jun 2019 10:47:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EED0AA0081;
 Mon, 10 Jun 2019 10:47:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 10 Jun 2019 10:47:18 -0000
Message-ID: <20190610104718.9308.89788@emeril.freedesktop.org>
References: <20190610030416.4471-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190610030416.4471-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/4=5D_drm/i915=3A_Move_fence_register_t?=
 =?utf-8?q?racking_from_i915-=3Emm_to_ggtt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTU6IE1vdmUgZmVuY2UgcmVnaXN0ZXIgdHJhY2tpbmcgZnJvbSBpOTE1LT5tbSB0byBn
Z3R0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MTgy
MS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2Ry
bS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1OiBNb3ZlIGZlbmNl
IHJlZ2lzdGVyIHRyYWNraW5nIGZyb20gaTkxNS0+bW0gdG8gZ2d0dApPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNTogVHJhY2sgZ2d0dCBmZW5jZSByZXNlcnZhdGlvbnMgdW5kZXIgaXRzIG93biBtdXRl
eApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQ29tYmluZSB1bmJvdW5kL2JvdW5kIGxpc3QgdHJh
Y2tpbmcgZm9yIG9iamVjdHMKLS4vaW5jbHVkZS9saW51eC9tbS5oOjY2MzoxMzogZXJyb3I6IHVu
ZGVmaW5lZCBpZGVudGlmaWVyICdfX2J1aWx0aW5fbXVsX292ZXJmbG93JwotLi9pbmNsdWRlL2xp
bnV4L21tLmg6NjYzOjEzOiB3YXJuaW5nOiBjYWxsIHdpdGggbm8gdHlwZSEKCkNvbW1pdDogZHJt
L2k5MTU6IFByb21vdGUgaTkxNS0+bW0ub2JqX2xvY2sgdG8gYmUgaXJxc2FmZQpPa2F5IQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
