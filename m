Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2ECD70FFD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 05:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9012A89954;
	Tue, 23 Jul 2019 03:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F08689954;
 Tue, 23 Jul 2019 03:17:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94F48A0020;
 Tue, 23 Jul 2019 03:17:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiaolin Zhang" <xiaolin.zhang@intel.com>
Date: Tue, 23 Jul 2019 03:17:56 -0000
Message-ID: <20190723031756.5095.63764@emeril.freedesktop.org>
References: <1563881524-147440-1-git-send-email-xiaolin.zhang@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1563881524-147440-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_i?=
 =?utf-8?q?915_vgpu_PV_to_improve_vgpu_performance?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogaTkxNSB2Z3B1IFBWIHRvIGltcHJvdmUgdmdw
dSBwZXJmb3JtYW5jZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjQwNDEvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNl
IG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNTog
aW50cm9kdWNlZCB2Z3B1IHB2IGNhcGFiaWxpdHkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IHZn
cHUgc2hhcmVkIG1lbW9yeSBzZXR1cCBmb3IgcHYgb3B0aW1pemF0aW9uCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiB2Z3B1IHB2IGNvbW1hbmQgYnVmZmVyIHN1cHBvcnQKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTU6IHZncHUgcHBndHQgdXBkYXRlIHB2IG9wdGltaXphdGlvbgpPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNTogdmdwdSBjb250ZXh0IHN1Ym1pc3Npb24gcHYgb3B0aW1pemF0aW9uCisuL2lu
Y2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5j
YXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21lcyAw
KQoKQ29tbWl0OiBkcm0vaTkxNS9ndnQ6IEdWVGcgaGFuZGxlIHB2X2NhcHMgUFZJTkZPIHJlZ2lz
dGVyCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d2dDogR1ZUZyBoYW5kbGUgc2hhcmVkX3BhZ2Ug
c2V0dXAKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Z0OiBHVlRnIHN1cHBvcnQgcHBndHQgcHYg
b3B0aW1pemF0aW9uCisuL2luY2x1ZGUvbGludXgvc2xhYi5oOjY3MjoxMzogZXJyb3I6IHVuZGVm
aW5lZCBpZGVudGlmaWVyICdfX2J1aWx0aW5fbXVsX292ZXJmbG93JworLi9pbmNsdWRlL2xpbnV4
L3NsYWIuaDo2NzI6MTM6IHdhcm5pbmc6IGNhbGwgd2l0aCBubyB0eXBlIQoKQ29tbWl0OiBkcm0v
aTkxNS9ndnQ6IEdWVGcgc3VwcG9ydCBjb250ZXh0IHN1Ym1pc3Npb24gcHYgb3B0aW1pemF0aW9u
Ck9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
