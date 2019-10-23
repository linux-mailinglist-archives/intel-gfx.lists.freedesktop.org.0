Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEFCE22C1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 20:53:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39786E15B;
	Wed, 23 Oct 2019 18:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B2D716E15B;
 Wed, 23 Oct 2019 18:53:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD1E4A0088;
 Wed, 23 Oct 2019 18:53:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 23 Oct 2019 18:53:04 -0000
Message-ID: <20191023185304.3026.64986@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191023101256.20509-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191023101256.20509-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/simple-kms=3A_Standardize_arguments_for_callbacks?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL3NpbXBsZS1rbXM6IFN0YW5kYXJkaXpl
IGFyZ3VtZW50cyBmb3IgY2FsbGJhY2tzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy82ODQ1Mi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09Cgok
IGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjJkN2QwOTdlZGFjNSBkcm0vc2ltcGxlLWtt
czogU3RhbmRhcmRpemUgYXJndW1lbnRzIGZvciBjYWxsYmFja3MKLToxNTogV0FSTklORzpCQURf
U0lHTl9PRkY6ICdBY2tlZC1ieTonIGlzIHRoZSBwcmVmZXJyZWQgc2lnbmF0dXJlIGZvcm0KIzE1
OiAKQWNrZWQtQnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPiAodjEp
CgotOjI2OiBXQVJOSU5HOk9CU09MRVRFOiBkcml2ZXJzL2dwdS9kcm0vY2lycnVzL2NpcnJ1cy5j
IGlzIG1hcmtlZCBhcyAnb2Jzb2xldGUnIGluIHRoZSBNQUlOVEFJTkVSUyBoaWVyYXJjaHkuICBO
byB1bm5lY2Vzc2FyeSBtb2RpZmljYXRpb25zIHBsZWFzZS4KCi06Mjk6IFdBUk5JTkc6T0JTT0xF
VEU6IGRyaXZlcnMvZ3B1L2RybS9jaXJydXMvY2lycnVzLmMgaXMgbWFya2VkIGFzICdvYnNvbGV0
ZScgaW4gdGhlIE1BSU5UQUlORVJTIGhpZXJhcmNoeS4gIE5vIHVubmVjZXNzYXJ5IG1vZGlmaWNh
dGlvbnMgcGxlYXNlLgoKLToxMDE6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5n
IFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCA0IHdhcm5pbmdz
LCAwIGNoZWNrcywgNTEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
