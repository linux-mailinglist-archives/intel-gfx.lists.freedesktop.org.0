Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1013918C82
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 16:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDFD89D3E;
	Thu,  9 May 2019 14:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2525E89CF5;
 Thu,  9 May 2019 14:58:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D650A0087;
 Thu,  9 May 2019 14:58:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 09 May 2019 14:58:06 -0000
Message-ID: <20190509145806.12519.41708@emeril.freedesktop.org>
References: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_GTT_remapping_for_display?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEdUVCByZW1hcHBpbmcgZm9y
IGRpc3BsYXkKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzYwNDY5LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmln
aW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTU6IEFkZCBh
IG5ldyAicmVtYXBwZWQiIGd0dF92aWV3Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYzozNjMzOjM0OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6MzYzMzozNDogd2FybmluZzogZXhwcmVz
c2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5MTUvc2VsZnRlc3RzOiBBZGQg
bW9jayBzZWxmdGVzdCBmb3IgcmVtYXBwZWQgdm1hcwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9z
ZWxmdGVzdHM6IEFkZCBsaXZlIHZtYSBzZWxmdGVzdApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTog
U2h1ZmZsZSBzdHJpZGUgY2hlY2tpbmcgY29kZSBhcm91bmQKT2theSEKCkNvbW1pdDogZHJtL2k5
MTU6IE92ZXJjb21lIGRpc3BsYXkgZW5naW5lIHN0cmlkZSBsaW1pdHMgdmlhIEdUVCByZW1hcHBp
bmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEFsaWduIGR1bWIgYnVmZmVyIHN0cmlkZSB0byA0
ayB0byBhbGxvdyBmb3IgZ3R0IHJlbWFwcGluZwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQnVt
cCBmYiBzdHJpZGUgbGltaXQgdG8gMTI4S2lCIGZvciBnZW40KyBhbmQgMjU2S2lCIGZvciBnZW43
KwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQnVtcCBnZW43KyBmYiBzaXplIGxpbWl0cyB0byAx
Nmt4MTZrCk9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
