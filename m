Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C8CAE983
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 13:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2017B6E04B;
	Tue, 10 Sep 2019 11:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2083D6E047;
 Tue, 10 Sep 2019 11:52:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1BE8DA0071;
 Tue, 10 Sep 2019 11:52:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Simon Ser" <contact@emersion.fr>
Date: Tue, 10 Sep 2019 11:52:34 -0000
Message-ID: <20190910115234.31034.68348@emeril.freedesktop.org>
References: <FP-q2bMX9wd_xahtrbX09Axlcfxg0hElk2Bs68pWgxpbwTHGKR3yAUIyWdjgqM8XSid0cM8JAtujhN3t_XGU_8yPqNAwhzCdZRc_80IwEk0=@emersion.fr>
X-Patchwork-Hint: ignore
In-Reply-To: <FP-q2bMX9wd_xahtrbX09Axlcfxg0hElk2Bs68pWgxpbwTHGKR3yAUIyWdjgqM8XSid0cM8JAtujhN3t_XGU_8yPqNAwhzCdZRc_80IwEk0=@emersion.fr>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm=3A_two_planes_with_the_same_zpos_have_undefined_ordering?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtOiB0d28gcGxhbmVzIHdpdGggdGhlIHNh
bWUgenBvcyBoYXZlIHVuZGVmaW5lZCBvcmRlcmluZwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY0ODAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFy
eSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo3YjhmMWMyYTk0MTUgZHJtOiB0
d28gcGxhbmVzIHdpdGggdGhlIHNhbWUgenBvcyBoYXZlIHVuZGVmaW5lZCBvcmRlcmluZwotOjY6
IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQg
ZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiM2OiAKQ3Vy
cmVudGx5IHRoZSBwcm9wZXJ0eSBkb2NzIGRvbid0IHNwZWNpZnkgd2hldGhlciBpdCdzIG9rYXkg
Zm9yIHR3byBwbGFuZXMgdG8KCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3Ms
IDE0IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
