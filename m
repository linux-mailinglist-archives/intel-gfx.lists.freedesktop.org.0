Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ADADA20D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 01:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B266E9D9;
	Wed, 16 Oct 2019 23:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8951C6E2C4;
 Wed, 16 Oct 2019 23:21:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81984A0094;
 Wed, 16 Oct 2019 23:21:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 16 Oct 2019 23:21:32 -0000
Message-ID: <20191016232132.14699.24072@emeril.freedesktop.org>
References: <20191016144744.7073-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191016144744.7073-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Make_for=5Feach=5Fengine=5Fmasked_work_on_intel?=
 =?utf-8?b?X2d0?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IE1ha2UgZm9yX2VhY2hfZW5n
aW5lX21hc2tlZCB3b3JrIG9uIGludGVsX2d0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82ODExMS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09
CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmRmNTY3OTI1MDMzNSBkcm0vaTkxNTog
TWFrZSBmb3JfZWFjaF9lbmdpbmVfbWFza2VkIHdvcmsgb24gaW50ZWxfZ3QKLToyMDI6IENIRUNL
Ok1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ2d0X18nIC0gcG9zc2libGUg
c2lkZS1lZmZlY3RzPwojMjAyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
OjE0MjM6CisjZGVmaW5lIGZvcl9lYWNoX2VuZ2luZV9tYXNrZWQoZW5naW5lX18sIGd0X18sIG1h
c2tfXywgdG1wX18pIFwKKwlmb3IgKCh0bXBfXykgPSAobWFza19fKSAmIElOVEVMX0lORk8oKGd0
X18pLT5pOTE1KS0+ZW5naW5lX21hc2s7IFwKIAkgICAgICh0bXBfXykgPyBcCisJICAgICAoKGVu
Z2luZV9fKSA9IChndF9fKS0+ZW5naW5lW19fbWFza19uZXh0X2JpdCh0bXBfXyldKSwgMSA6IFwK
IAkgICAgIDA7KQoKLToyMDI6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQg
cmV1c2UgJ3RtcF9fJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzIwMjogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaDoxNDIzOgorI2RlZmluZSBmb3JfZWFjaF9lbmdpbmVf
bWFza2VkKGVuZ2luZV9fLCBndF9fLCBtYXNrX18sIHRtcF9fKSBcCisJZm9yICgodG1wX18pID0g
KG1hc2tfXykgJiBJTlRFTF9JTkZPKChndF9fKS0+aTkxNSktPmVuZ2luZV9tYXNrOyBcCiAJICAg
ICAodG1wX18pID8gXAorCSAgICAgKChlbmdpbmVfXykgPSAoZ3RfXyktPmVuZ2luZVtfX21hc2tf
bmV4dF9iaXQodG1wX18pXSksIDEgOiBcCiAJICAgICAwOykKCnRvdGFsOiAwIGVycm9ycywgMCB3
YXJuaW5ncywgMiBjaGVja3MsIDEzOCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
