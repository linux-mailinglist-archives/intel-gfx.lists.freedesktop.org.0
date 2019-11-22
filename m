Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95F11069AF
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 11:12:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38EB6F514;
	Fri, 22 Nov 2019 10:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7BDC6F50F;
 Fri, 22 Nov 2019 10:12:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEAC7A0099;
 Fri, 22 Nov 2019 10:12:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 Nov 2019 10:12:12 -0000
Message-ID: <157441753274.23771.13074377931474669883@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191122070238.576748-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191122070238.576748-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Use_a_ctor_for_TYPESAFE=5FBY=5FRCU_i915=5Freques?=
 =?utf-8?q?t_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFVzZSBhIGN0b3IgZm9yIFRZ
UEVTQUZFX0JZX1JDVSBpOTE1X3JlcXVlc3QgKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTgyNC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1t
YXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmMxMjVhOWUyNDc2MSBkcm0v
aTkxNTogVXNlIGEgY3RvciBmb3IgVFlQRVNBRkVfQllfUkNVIGk5MTVfcmVxdWVzdAotOjUxOiBX
QVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRl
c2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojNTE6IAo+IFNv
IHRoZSByZS11c2UgbWlnaHQgaW5pdGlhbGl6ZSB0aGUgZmllbGRzIGxhemlseSwgbm90IG5lY2Vz
c2FyaWx5IHVzaW5nIGEgY3Rvci4KCi06MjQ5OiBXQVJOSU5HOkFWT0lEX0JVRzogQXZvaWQgY3Jh
c2hpbmcgdGhlIGtlcm5lbCAtIHRyeSB1c2luZyBXQVJOX09OICYgcmVjb3ZlcnkgY29kZSByYXRo
ZXIgdGhhbiBCVUcoKSBvciBCVUdfT04oKQojMjQ5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3N3X2ZlbmNlLmM6MTY6CisjZGVmaW5lIEk5MTVfU1dfRkVOQ0VfQlVHX09OKGV4cHIp
IEJVR19PTihleHByKQoKdG90YWw6IDAgZXJyb3JzLCAyIHdhcm5pbmdzLCAwIGNoZWNrcywgMTc1
IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
