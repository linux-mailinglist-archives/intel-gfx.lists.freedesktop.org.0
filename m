Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E29D7102D24
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 21:01:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252DD6E8DB;
	Tue, 19 Nov 2019 20:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFA586E3E3;
 Tue, 19 Nov 2019 20:01:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E576CA0009;
 Tue, 19 Nov 2019 20:01:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 20:01:27 -0000
Message-ID: <157419368793.32168.13414651926290644161@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191119162559.3313003-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191119162559.3313003-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Move_new_timelin?=
 =?utf-8?q?es_to_the_end_of_active=5Flist?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTUvZ3Q6IE1vdmUgbmV3IHRpbWVsaW5lcyB0byB0aGUgZW5kIG9mIGFjdGl2ZV9s
aXN0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTY5
MC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTUvZ3Q6
IE1vdmUgbmV3IHRpbWVsaW5lcyB0byB0aGUgZW5kIG9mIGFjdGl2ZV9saXN0ClVzaW5nIGluZGV4
IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF90aW1lbGluZS5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAz
LXdheSBtZXJnZS4uLgpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkgYXBwbGllZC4KQXBwbHlp
bmc6IGRybS9pOTE1L2d0OiBTY2hlZHVsZSBuZXh0IHJldGlyZW1lbnQgd29ya2VyIGZpcnN0ClVz
aW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGlu
ZyBiYXNlIGFuZCAzLXdheSBtZXJnZS4uLgpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkgYXBw
bGllZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
