Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3FBB7940
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 14:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F52D6F4C7;
	Thu, 19 Sep 2019 12:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 72D826F4AE;
 Thu, 19 Sep 2019 12:23:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E330A3DED;
 Thu, 19 Sep 2019 12:23:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Sep 2019 12:23:44 -0000
Message-ID: <20190919122344.23915.66559@emeril.freedesktop.org>
References: <20190919111912.21631-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190919111912.21631-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_Mark_i915=5Frequ?=
 =?utf-8?q?est=2Etimeline_as_a_volatile=2C_rcu_pointer?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
M10gZHJtL2k5MTU6IE1hcmsgaTkxNV9yZXF1ZXN0LnRpbWVsaW5lIGFzIGEgdm9sYXRpbGUsIHJj
dSBwb2ludGVyClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82NjkyMy8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3Jp
Z2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjYuMApDb21taXQ6IGRybS9pOTE1OiBNYXJr
IGk5MTVfcmVxdWVzdC50aW1lbGluZSBhcyBhIHZvbGF0aWxlLCByY3UgcG9pbnRlcgorZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYzo1MDQ6NDE6ICAgIGV4cGVjdGVkIHN0
cnVjdCBpbnRlbF90aW1lbGluZSAqdGwKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Rp
bWVsaW5lLmM6NTA0OjQxOiAgICBnb3Qgc3RydWN0IGludGVsX3RpbWVsaW5lIFtub2RlcmVmXSA8
YXNuOjQ+ICp0aW1lbGluZQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUu
Yzo1MDQ6NDE6IHdhcm5pbmc6IGluY29ycmVjdCB0eXBlIGluIGluaXRpYWxpemVyIChkaWZmZXJl
bnQgYWRkcmVzcyBzcGFjZXMpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYzo3
NzE6NDk6ICAgIGV4cGVjdGVkIHN0cnVjdCBsaXN0X2hlYWQgY29uc3QgKmhlYWQKK2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jOjc3MTo0OTogICAgZ290IHN0cnVjdCBsaXN0X2hl
YWQgW25vZGVyZWZdIDxhc246ND4gKgorZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0
LmM6NzcxOjQ5OiB3YXJuaW5nOiBpbmNvcnJlY3QgdHlwZSBpbiBhcmd1bWVudCAyIChkaWZmZXJl
bnQgYWRkcmVzcyBzcGFjZXMpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYzo4
MTM6OTogd2FybmluZzogZGVyZWZlcmVuY2Ugb2Ygbm9kZXJlZiBleHByZXNzaW9uCgpDb21taXQ6
IGRybS9pOTE1OiBMb2NrIHNpZ25hbGVyIHRpbWVsaW5lIHdoaWxlIG5hdmlnYXRpbmcKLU86ZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmM6NzcxOjQ5OiAgICBleHBlY3RlZCBzdHJ1
Y3QgbGlzdF9oZWFkIGNvbnN0ICpoZWFkCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVx
dWVzdC5jOjc3MTo0OTogICAgZ290IHN0cnVjdCBsaXN0X2hlYWQgW25vZGVyZWZdIDxhc246ND4g
KgotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYzo3NzE6NDk6IHdhcm5pbmc6
IGluY29ycmVjdCB0eXBlIGluIGFyZ3VtZW50IDIgKGRpZmZlcmVudCBhZGRyZXNzIHNwYWNlcykK
LU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmM6ODEzOjk6IHdhcm5pbmc6IGRl
cmVmZXJlbmNlIG9mIG5vZGVyZWYgZXhwcmVzc2lvbgorCgpDb21taXQ6IGRybS9pOTE1OiBQcm90
ZWN0IHRpbWVsaW5lLT5od3NwIGRlcmVmZXJlbmNpbmcKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfdGltZWxpbmUuYzo1MDQ6NDE6ICAgIGV4cGVjdGVkIHN0cnVjdCBpbnRlbF90aW1l
bGluZSAqdGwKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYzo1MDQ6
NDE6ICAgIGdvdCBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgW25vZGVyZWZdIDxhc246ND4gKnRpbWVs
aW5lCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmM6NTA0OjQxOiB3
YXJuaW5nOiBpbmNvcnJlY3QgdHlwZSBpbiBpbml0aWFsaXplciAoZGlmZmVyZW50IGFkZHJlc3Mg
c3BhY2VzKQorCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
