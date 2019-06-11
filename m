Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 696303D029
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 17:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4BFE89207;
	Tue, 11 Jun 2019 15:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA4B989206;
 Tue, 11 Jun 2019 15:04:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4483A0138;
 Tue, 11 Jun 2019 15:04:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 11 Jun 2019 15:04:50 -0000
Message-ID: <20190611150450.31857.31196@emeril.freedesktop.org>
References: <20190611142725.4531-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190611142725.4531-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gtt=3A_Skip_initializing_PT_with_scratch_if_full?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBTa2lwIGluaXRpYWxp
emluZyBQVCB3aXRoIHNjcmF0Y2ggaWYgZnVsbApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjE5MDAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9
PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo2YWZhY2M4NzBhYjQgZHJtL2k5MTUv
Z3R0OiBTa2lwIGluaXRpYWxpemluZyBQVCB3aXRoIHNjcmF0Y2ggaWYgZnVsbAotOjk6IFdBUk5J
Tkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3Jp
cHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiM5OiAKUmVmZXJlbmNl
czogMTQ4MjY2NzMyNDdlICgiZHJtL2k5MTU6IE9ubHkgaW5pdGlhbGl6ZSBwYXJ0aWFsbHkgZmls
bGVkIHBhZ2V0YWJsZXMiKQoKLTo5OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdp
dCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgi
PHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgMTQ4MjY2NzMyNDdlICgiZHJtL2k5MTU6IE9u
bHkgaW5pdGlhbGl6ZSBwYXJ0aWFsbHkgZmlsbGVkIHBhZ2V0YWJsZXMiKScKIzk6IApSZWZlcmVu
Y2VzOiAxNDgyNjY3MzI0N2UgKCJkcm0vaTkxNTogT25seSBpbml0aWFsaXplIHBhcnRpYWxseSBm
aWxsZWQgcGFnZXRhYmxlcyIpCgp0b3RhbDogMSBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tz
LCA5IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
