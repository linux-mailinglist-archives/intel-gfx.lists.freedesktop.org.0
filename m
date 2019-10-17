Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B3DDA47B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 06:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD9E6E442;
	Thu, 17 Oct 2019 04:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3ADB6E0EB;
 Thu, 17 Oct 2019 04:09:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ABDCAA0138;
 Thu, 17 Oct 2019 04:09:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Oct 2019 04:09:59 -0000
Message-ID: <20191017040959.14703.33285@emeril.freedesktop.org>
References: <20191016144744.7073-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191016144744.7073-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Make_for=5Feach=5Fengine=5Fmasked_work_on_intel?=
 =?utf-8?q?=5Fgt_=28rev2=29?=
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
aW5lX21hc2tlZCB3b3JrIG9uIGludGVsX2d0IChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjgxMTEvClN0YXRlIDogd2FybmluZwoKPT0gU3Vt
bWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo2MTdjNzJlMWFiNTEgZHJt
L2k5MTU6IE1ha2UgZm9yX2VhY2hfZW5naW5lX21hc2tlZCB3b3JrIG9uIGludGVsX2d0Ci06MjI2
OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdndF9fJyAtIHBv
c3NpYmxlIHNpZGUtZWZmZWN0cz8KIzIyNjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaDoxNDE4OgorI2RlZmluZSBmb3JfZWFjaF9lbmdpbmVfbWFza2VkKGVuZ2luZV9fLCBn
dF9fLCBtYXNrX18sIHRtcF9fKSBcCisJZm9yICgodG1wX18pID0gKG1hc2tfXykgJiBJTlRFTF9J
TkZPKChndF9fKS0+aTkxNSktPmVuZ2luZV9tYXNrOyBcCiAJICAgICAodG1wX18pID8gXAorCSAg
ICAgKChlbmdpbmVfXykgPSAoZ3RfXyktPmVuZ2luZVtfX21hc2tfbmV4dF9iaXQodG1wX18pXSks
IDEgOiBcCiAJICAgICAwOykKCi06MjI2OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1hY3JvIGFy
Z3VtZW50IHJldXNlICd0bXBfXycgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMyMjY6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmg6MTQxODoKKyNkZWZpbmUgZm9yX2VhY2hf
ZW5naW5lX21hc2tlZChlbmdpbmVfXywgZ3RfXywgbWFza19fLCB0bXBfXykgXAorCWZvciAoKHRt
cF9fKSA9IChtYXNrX18pICYgSU5URUxfSU5GTygoZ3RfXyktPmk5MTUpLT5lbmdpbmVfbWFzazsg
XAogCSAgICAgKHRtcF9fKSA/IFwKKwkgICAgICgoZW5naW5lX18pID0gKGd0X18pLT5lbmdpbmVb
X19tYXNrX25leHRfYml0KHRtcF9fKV0pLCAxIDogXAogCSAgICAgMDspCgp0b3RhbDogMCBlcnJv
cnMsIDAgd2FybmluZ3MsIDIgY2hlY2tzLCAxNTYgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
