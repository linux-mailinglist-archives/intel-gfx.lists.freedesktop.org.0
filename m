Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94555D1DD0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 03:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008446E16F;
	Thu, 10 Oct 2019 01:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F7F96E16F;
 Thu, 10 Oct 2019 01:04:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49527A0134;
 Thu, 10 Oct 2019 01:04:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 10 Oct 2019 01:04:19 -0000
Message-ID: <20191010010419.31952.43031@emeril.freedesktop.org>
References: <20191009224113.5432-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20191009224113.5432-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/dp-mst=3A_Drop_connection=5Fmutex_check?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2RwLW1zdDogRHJvcCBjb25uZWN0aW9u
X211dGV4IGNoZWNrClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82NzgwNy8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3Bh
dGNoIG9yaWdpbi9kcm0tdGlwCjFkN2M1N2Y0MGJiMSBkcm0vZHAtbXN0OiBEcm9wIGNvbm5lY3Rp
b25fbXV0ZXggY2hlY2sKLTo4OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBj
b21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRp
dGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgYjk2MmExMjA1MGEzICgiZHJtL2F0b21pYzogaW50
ZWdyYXRlIG1vZGVzZXQgbG9jayB3aXRoIHByaXZhdGUgb2JqZWN0cyIpJwojODogCmNvbW1pdCBi
OTYyYTEyMDUwYTM4N2U0YmJmM2E0ODc0NWFmZTFkMjlkMzk2YjBkCgotOjMzOiBXQVJOSU5HOk5P
X0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwg
cGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRv
dGFsOiAxIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDcgbGluZXMgY2hlY2tlZAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
