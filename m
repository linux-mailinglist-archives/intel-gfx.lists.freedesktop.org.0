Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AE32C96B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 17:01:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B56489E9B;
	Tue, 28 May 2019 15:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E3B389C84;
 Tue, 28 May 2019 15:01:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77CC5A0073;
 Tue, 28 May 2019 15:01:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 May 2019 15:01:24 -0000
Message-ID: <20190528150124.27711.91619@emeril.freedesktop.org>
References: <20190528133750.12775-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190528133750.12775-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/9=5D_drm/i915=3A_Move_object_close_und?=
 =?utf-8?q?er_its_own_lock?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvOV0g
ZHJtL2k5MTU6IE1vdmUgb2JqZWN0IGNsb3NlIHVuZGVyIGl0cyBvd24gbG9jawpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjEyNDMvClN0YXRlIDogd2Fy
bmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2
ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNTogTW92ZSBvYmplY3QgY2xvc2UgdW5kZXIg
aXRzIG93biBsb2NrCisuL2luY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24uaDoyMjA6MjA6IHdhcm5p
bmc6IGRlcmVmZXJlbmNlIG9mIG5vZGVyZWYgZXhwcmVzc2lvbgorLi9pbmNsdWRlL2xpbnV4L3Jl
c2VydmF0aW9uLmg6MjIwOjQ1OiB3YXJuaW5nOiBkZXJlZmVyZW5jZSBvZiBub2RlcmVmIGV4cHJl
c3Npb24KCkNvbW1pdDogZHJtL2k5MTU6IEtlZXAgY29udGV4dHMgcGlubmVkIHVudGlsIGFmdGVy
IHRoZSBuZXh0IGtlcm5lbCBjb250ZXh0IHN3aXRjaApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTog
U3RvcCByZXRpcmluZyBhbG9uZyBlbmdpbmUKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFJlcGxh
Y2UgZW5naW5lLT50aW1lbGluZSB3aXRoIGEgcGxhaW4gbGlzdApPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNTogRmx1c2ggdGhlIGV4ZWN1dGlvbi1jYWxsYmFja3Mgb24gcmV0aXJpbmcKT2theSEKCkNv
bW1pdDogZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRvLWJ1c3kKLWRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy8uLi9pOTE1X3V0aWxzLmg6MjIwOjE2OiB3YXJuaW5nOiBleHByZXNz
aW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzLy4u
L2k5MTVfdXRpbHMuaDoyMzI6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZv
aWQpCgpDb21taXQ6IGRybS9pOTE1L2V4ZWNsaXN0czogTWluaW1hbGlzdGljIHRpbWVzbGljaW5n
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzo4NzY6MTY6IHdhcm5pbmc6IGV4
cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYzo4NzY6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpD
b21taXQ6IGRybS9pOTE1L2V4ZWNsaXN0czogRm9yY2UgcHJlZW1wdGlvbgorCitkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3V0aWxzLmg6MjMyOjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5n
IHNpemVvZih2b2lkKQorRXJyb3IgaW4gcmVhZGluZyBvciBlbmQgb2YgZmlsZS4KCkNvbW1pdDog
ZHJtL2k5MTU6IEFkZCBhIGxhYmVsIGZvciBjb25maWcgRFJNX0k5MTVfU1BJTl9SRVFVRVNUCk9r
YXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
