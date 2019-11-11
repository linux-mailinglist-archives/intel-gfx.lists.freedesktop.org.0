Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCDFF7B1A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 19:33:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9736E261;
	Mon, 11 Nov 2019 18:33:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 44180893A3;
 Mon, 11 Nov 2019 18:33:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CADFA0075;
 Mon, 11 Nov 2019 18:33:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 11 Nov 2019 18:33:19 -0000
Message-ID: <157349719922.29959.15178024024218105063@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191111133205.11590-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191111133205.11590-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BFIXES=2C1/3=5D_drm/i915/userptr=3A_Try_to_a?=
 =?utf-8?q?cquire_the_page_lock_around_set=5Fpage=5Fdirty=28=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0ZJWEVT
LDEvM10gZHJtL2k5MTUvdXNlcnB0cjogVHJ5IHRvIGFjcXVpcmUgdGhlIHBhZ2UgbG9jayBhcm91
bmQgc2V0X3BhZ2VfZGlydHkoKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjkyOTYvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlp
bmc6IGRybS9pOTE1L3VzZXJwdHI6IFRyeSB0byBhY3F1aXJlIHRoZSBwYWdlIGxvY2sgYXJvdW5k
IHNldF9wYWdlX2RpcnR5KCkKVXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2Ug
dHJlZS4uLgpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKRmFs
bGluZyBiYWNrIHRvIHBhdGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2lu
ZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCk5vIGNoYW5nZXMg
LS0gUGF0Y2ggYWxyZWFkeSBhcHBsaWVkLgpBcHBseWluZzogZHJtL2k5MTUvdXNlcnB0cjogSGFu
ZGxlIHVubG9ja2VkIGd1cCByZXRyaWVzClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3Qg
YSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0
ci5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJnZS4uLgpObyBj
aGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkgYXBwbGllZC4KQXBwbHlpbmc6IGRybS9pOTE1L2V4ZWNs
aXN0czogTW92ZSByZXNldF9hY3RpdmUoKSBmcm9tIHNjaGVkdWxlLW91dCB0byBzY2hlZHVsZS1p
bgpVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKRmFsbGluZyBiYWNrIHRvIHBhdGNoaW5nIGJh
c2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkgYXBwbGllZC4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
