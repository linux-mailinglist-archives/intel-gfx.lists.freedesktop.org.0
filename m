Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 955D54DD96
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 01:00:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA6636E580;
	Thu, 20 Jun 2019 23:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F6E36E7EA;
 Thu, 20 Jun 2019 23:00:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94A76A0019;
 Thu, 20 Jun 2019 23:00:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 20 Jun 2019 23:00:53 -0000
Message-ID: <20190620230053.12829.14598@emeril.freedesktop.org>
References: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2C01/33=5D_drm/i915=3A_Convert_intel=5Fv?=
 =?utf-8?q?gt=5F=28de=29balloon_to_uncore?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDAx
LzMzXSBkcm0vaTkxNTogQ29udmVydCBpbnRlbF92Z3RfKGRlKWJhbGxvb24gdG8gdW5jb3JlClVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjQ4Mi8KU3Rh
dGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTU6IENvbnZlcnQg
aW50ZWxfdmd0XyhkZSliYWxsb29uIHRvIHVuY29yZQpBcHBseWluZzogZHJtL2k5MTU6IEludHJv
ZHVjZSBzdHJ1Y3QgaW50ZWxfZ3QgYXMgcmVwbGFjZW1lbnQgZm9yIGFub255bW91cyBpOTE1LT5n
dApBcHBseWluZzogZHJtL2k5MTU6IE1vdmUgaW50ZWxfZ3QgaW5pdGlhbGl6YXRpb24gdG8gYSBz
ZXBhcmF0ZSBmaWxlCkFwcGx5aW5nOiBkcm0vaTkxNTogU3RvcmUgc29tZSBiYWNrcG9pbnRlcnMg
aW4gc3RydWN0IGludGVsX2d0CkFwcGx5aW5nOiBkcm0vaTkxNTogTW92ZSBpbnRlbF9ndF9wbV9p
bml0IHVuZGVyIGludGVsX2d0X2luaXRfZWFybHkKQXBwbHlpbmc6IGRybS9pOTE1OiBNYWtlIGk5
MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyB0YWtlIGludGVsX2d0CkFwcGx5aW5nOiBkcm0vaTkx
NTogQ29udmVydCBpOTE1X2dlbV9pbml0X3N3aXp6bGluZyB0byBpbnRlbF9ndApBcHBseWluZzog
ZHJtL2k5MTU6IFVzZSBpbnRlbF91bmNvcmVfcm13IGluIGludGVsX2d0X2luaXRfc3dpenpsaW5n
CkFwcGx5aW5nOiBkcm0vaTkxNTogQ29udmVydCBpbml0X3VudXNlZF9yaW5ncyB0byBpbnRlbF9n
dApBcHBseWluZzogZHJtL2k5MTU6IENvbnZlcnQgZ3Qgd29ya2Fyb3VuZHMgdG8gaW50ZWxfZ3QK
QXBwbHlpbmc6IGRybS9pOTE1OiBTdG9yZSBiYWNrcG9pbnRlciB0byBpbnRlbF9ndCBpbiB0aGUg
ZW5naW5lCkFwcGx5aW5nOiBkcm0vaTkxNTogQ29udmVydCBpbnRlbF9tb2NzX2luaXRfbDNjY190
YWJsZSB0byBpbnRlbF9ndApBcHBseWluZzogZHJtL2k5MTU6IENvbnZlcnQgaTkxNV9wcGd0dF9p
bml0X2h3IHRvIGludGVsX2d0CkFwcGx5aW5nOiBkcm0vaTkxNTogQ29uc29saWRhdGUgc29tZSBv
cGVuIGNvZGVkIG1taW8gcm13CkFwcGx5aW5nOiBkcm0vaTkxNTogQ29udmVydCBpOTE1X2dlbV9p
bml0X2h3IHRvIGludGVsX2d0CkFwcGx5aW5nOiBkcm0vaTkxNTogTW92ZSBpbnRlbF9lbmdpbmVz
X3Jlc3VtZSBpbnRvIGNvbW1vbiBpbml0CkFwcGx5aW5nOiBkcm0vaTkxNTogU3RvcCB1c2luZyBJ
OTE1X1JFQUQvV1JJVEUgaW4gaW50ZWxfd29wY21faW5pdF9odwpBcHBseWluZzogZHJtL2k5MTU6
IENvbXBhcnRtZW50YWxpemUgaTkxNV9nZ3R0X3Byb2JlX2h3CkFwcGx5aW5nOiBkcm0vaTkxNTog
Q29tcGFydG1lbnRhbGl6ZSBpOTE1X2dndHRfaW5pdF9odwpBcHBseWluZzogZHJtL2k5MTU6IE1h
a2UgZ2d0dCBpbnZhbGlkYXRpb24gd29yayBvbiBnZ3R0CkFwcGx5aW5nOiBkcm0vaTkxNTogU3Rv
cmUgaW50ZWxfZ3QgYmFja3BvaW50ZXIgaW4gdm0KZXJyb3I6IHNoYTEgaW5mb3JtYXRpb24gaXMg
bGFja2luZyBvciB1c2VsZXNzIChkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyku
CmVycm9yOiBjb3VsZCBub3QgYnVpbGQgZmFrZSBhbmNlc3RvcgpoaW50OiBVc2UgJ2dpdCBhbSAt
LXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVk
IGF0IDAwMjEgZHJtL2k5MTU6IFN0b3JlIGludGVsX2d0IGJhY2twb2ludGVyIGluIHZtCldoZW4g
eW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4K
SWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5z
dGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBy
dW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
