Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB95465D8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 19:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0838189B29;
	Fri, 14 Jun 2019 17:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA77D89AAD;
 Fri, 14 Jun 2019 17:38:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1886A0096;
 Fri, 14 Jun 2019 17:38:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 14 Jun 2019 17:38:52 -0000
Message-ID: <20190614173852.19702.56074@emeril.freedesktop.org>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Impl?=
 =?utf-8?q?icit_dev=5Fpriv_removal_and_GT_compartmentalization_=28rev8=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogSW1wbGljaXQgZGV2X3ByaXYgcmVtb3ZhbCBh
bmQgR1QgY29tcGFydG1lbnRhbGl6YXRpb24gKHJldjgpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjA0Ni8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1t
YXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTU6IENvbnZlcnQgaW50ZWxfdmd0XyhkZSliYWxsb29u
IHRvIHVuY29yZQpBcHBseWluZzogZHJtL2k5MTU6IEludHJvZHVjZSBzdHJ1Y3QgaW50ZWxfZ3Qg
YXMgcmVwbGFjZW1lbnQgZm9yIGFub255bW91cyBpOTE1LT5ndApBcHBseWluZzogZHJtL2k5MTU6
IE1vdmUgaW50ZWxfZ3QgaW5pdGlhbGl6YXRpb24gdG8gYSBzZXBhcmF0ZSBmaWxlCkFwcGx5aW5n
OiBkcm0vaTkxNTogU3RvcmUgc29tZSBiYWNrcG9pbnRlcnMgaW4gc3RydWN0IGludGVsX2d0CkFw
cGx5aW5nOiBkcm0vaTkxNTogTWFrZSBpOTE1X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMgdGFrZSBp
bnRlbF9ndApBcHBseWluZzogZHJtL2k5MTU6IENvbnZlcnQgaTkxNV9nZW1faW5pdF9zd2l6emxp
bmcgdG8gaW50ZWxfZ3QKQXBwbHlpbmc6IGRybS9pOTE1OiBDb252ZXJ0IGluaXRfdW51c2VkX3Jp
bmdzIHRvIGludGVsX2d0CkFwcGx5aW5nOiBkcm0vaTkxNTogQ29udmVydCBndCB3b3JrYXJvdW5k
cyB0byBpbnRlbF9ndApBcHBseWluZzogZHJtL2k5MTU6IFN0b3JlIGJhY2twb2ludGVyIHRvIGlu
dGVsX2d0IGluIHRoZSBlbmdpbmUKQXBwbHlpbmc6IGRybS9pOTE1OiBDb252ZXJ0IGludGVsX21v
Y3NfaW5pdF9sM2NjX3RhYmxlIHRvIGludGVsX2d0CkFwcGx5aW5nOiBkcm0vaTkxNTogQ29udmVy
dCBpOTE1X3BwZ3R0X2luaXRfaHcgdG8gaW50ZWxfZ3QKQXBwbHlpbmc6IGRybS9pOTE1OiBDb25z
b2xpZGF0ZSBzb21lIG9wZW4gY29kZWQgbW1pbyBybXcKQXBwbHlpbmc6IGRybS9pOTE1OiBDb252
ZXJ0IGk5MTVfZ2VtX2luaXRfaHcgdG8gaW50ZWxfZ3QKQXBwbHlpbmc6IGRybS9pOTE1OiBNb3Zl
IGludGVsX2VuZ2luZXNfcmVzdW1lIGludG8gY29tbW9uIGluaXQKQXBwbHlpbmc6IGRybS9pOTE1
OiBTdG9wIHVzaW5nIEk5MTVfUkVBRC9XUklURSBpbiBpbnRlbF93b3BjbV9pbml0X2h3CkFwcGx5
aW5nOiBkcm0vaTkxNTogQ29tcGFydG1lbnRhbGl6ZSBpOTE1X2dndHRfcHJvYmVfaHcKQXBwbHlp
bmc6IGRybS9pOTE1OiBDb21wYXJ0bWVudGFsaXplIGk5MTVfZ2d0dF9pbml0X2h3CkFwcGx5aW5n
OiBkcm0vaTkxNTogTWFrZSBnZ3R0IGludmFsaWRhdGlvbiB3b3JrIG9uIGdndHQKZXJyb3I6IHNo
YTEgaW5mb3JtYXRpb24gaXMgbGFja2luZyBvciB1c2VsZXNzIChkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYykuCmVycm9yOiBjb3VsZCBub3QgYnVpbGQgZmFrZSBhbmNlc3Rvcgpo
aW50OiBVc2UgJ2dpdCBhbSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQg
cGF0Y2gKUGF0Y2ggZmFpbGVkIGF0IDAwMTggZHJtL2k5MTU6IE1ha2UgZ2d0dCBpbnZhbGlkYXRp
b24gd29yayBvbiBnZ3R0CldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4g
ImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1
biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNo
IGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
