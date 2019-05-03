Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A44113153
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 17:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C26906E7FE;
	Fri,  3 May 2019 15:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B23466E7F8;
 Fri,  3 May 2019 15:38:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB7BFA008C;
 Fri,  3 May 2019 15:38:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 May 2019 15:38:22 -0000
Message-ID: <20190503153822.10780.53022@emeril.freedesktop.org>
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190503115225.30831-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5Bv2=5D_drm/i915=3A_Assert_breadcrumbs_are?=
 =?utf-8?q?_correctly_ordered_in_the_signal_handler_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyXSBk
cm0vaTkxNTogQXNzZXJ0IGJyZWFkY3J1bWJzIGFyZSBjb3JyZWN0bHkgb3JkZXJlZCBpbiB0aGUg
c2lnbmFsIGhhbmRsZXIgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82MDI1Ny8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRp
bSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRy
bS9pOTE1OiBBc3NlcnQgYnJlYWRjcnVtYnMgYXJlIGNvcnJlY3RseSBvcmRlcmVkIGluIHRoZSBz
aWduYWwgaGFuZGxlcgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUHJlZmVyIGNoZWNraW5nIHRo
ZSB3YWtlcmVmIGl0c2VsZiByYXRoZXIgdGhhbiB0aGUgY291bnRlcgpPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNTogQXNzZXJ0IHRoZSBsb2NhbCBlbmdpbmUtPndha2VyZWYgaXMgYWN0aXZlCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1L2hhbmdjaGVjazogUmVwbGFjZSBoYW5nY2hlY2suc2Vxbm8gd2l0
aCBSSU5HX0hFQUQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFJlbW92ZSBkZWxheSBmb3IgaWRs
ZV93b3JrCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBDYW5jZWwgcmV0aXJlX3dvcmtlciBvbiBw
YXJraW5nCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBTdG9wIHNwaW5uaW5nIGZvciBEUk9QX0lE
TEUgKGRlYnVnZnMvaTkxNV9kcm9wX2NhY2hlcykKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE9u
bHkgcmVzY2hlZHVsZSB0aGUgc3VibWlzc2lvbiB0YXNrbGV0IGlmIHByZWVtcHRpb24gaXMgcG9z
c2libGUKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmg6MTI0OjIzOiB3
YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmUuaDoxMjQ6MjM6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcg
c2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5oOjcwOjIz
OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9zY2hlZHVsZXIuaDo3MDoyMzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBz
aXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmg6NzA6MjM6
IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9pOTE1
L2V4ZWNsaXN0czogRG9uJ3QgYXBwbHkgcHJpb3JpdHkgYm9vc3QgZm9yIHJlc2V0cwpPa2F5IQoK
Q29tbWl0OiBkcm0vaTkxNTogUmVhcnJhbmdlIGk5MTVfc2NoZWR1bGVyLmMKT2theSEKCkNvbW1p
dDogZHJtL2k5MTU6IFBhc3MgaTkxNV9zY2hlZF9ub2RlIGFyb3VuZCBpbnRlcm5hbGx5Ck9rYXkh
CgpDb21taXQ6IGRybS9pOTE1OiBCdW1wIHNpZ25hbGVyIHByaW9yaXR5IG9uIGFkZGluZyBhIHdh
aXRlcgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRGlzYWJsZSBzZW1hcGhvcmUgYnVzeXdhaXRz
IG9uIHNhdHVyYXRlZCBzeXN0ZW1zCisuL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6
MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUg
KDgwMDAwMDAwMDAwMDAwMDAgYmVjb21lcyAwKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
