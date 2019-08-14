Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D95B88DDEC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 21:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E306E81A;
	Wed, 14 Aug 2019 19:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 427B56E819;
 Wed, 14 Aug 2019 19:31:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C1BDA0087;
 Wed, 14 Aug 2019 19:31:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 14 Aug 2019 19:31:08 -0000
Message-ID: <20190814193108.21409.23142@emeril.freedesktop.org>
References: <20190814124933.19056-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190814124933.19056-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Comment_userptr_r?=
 =?utf-8?q?ecursion_on_struct=5Fmutex_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IENvbW1lbnQgdXNlcnB0ciByZWN1cnNpb24gb24gc3RydWN0X211dGV4IChyZXYz
KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjUxNzcv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcAo2OGY3ZDEyYmExMTEgZHJtL2k5MTU6IENvbW1lbnQgdXNlcnB0ciByZWN1cnNpb24g
b24gc3RydWN0X211dGV4Ci06MzA6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5n
IFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdz
LCAwIGNoZWNrcywgMTIgbGluZXMgY2hlY2tlZAo4NWQ5ZmJlNWNkZDggUkZDOiBkcm0vaTkxNTog
U3dpdGNoIG9iai0+bW0ubG9jayBsb2NrZGVwIGFubm90YXRpb25zIG9uIGl0cyBoZWFkCi06ODg6
IFdBUk5JTkc6QkxPQ0tfQ09NTUVOVF9TVFlMRTogQmxvY2sgY29tbWVudHMgdXNlIGEgdHJhaWxp
bmcgKi8gb24gYSBzZXBhcmF0ZSBsaW5lCiM4ODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5oOjI4NzoKKwkgKiBzdHJ1Y3RfbXV0ZXggaW4gdGhlIGVudGly
ZSBzeXN0ZW0uICovCgotOjI4MjogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3Npbmcg
U2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3Ms
IDAgY2hlY2tzLCAxNzAgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
