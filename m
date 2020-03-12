Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D71C6182EB0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 12:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC056E13F;
	Thu, 12 Mar 2020 11:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A74C6E13D;
 Thu, 12 Mar 2020 11:11:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45A7CA47E6;
 Thu, 12 Mar 2020 11:11:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Mar 2020 11:11:47 -0000
Message-ID: <158401150728.4947.1078229991087514070@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312103548.19962-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200312103548.19962-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/mm=3A_Use_debugobject_to_track_lifetimes?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL21tOiBVc2UgZGVidWdvYmplY3QgdG8g
dHJhY2sgbGlmZXRpbWVzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy83NDYzOC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDQUxMICAgIHNj
cmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRv
bWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2Nv
bXBpbGUuaAogIENDICAgICAgZHJpdmVycy9ncHUvZHJtL2RybV9tbS5vCmRyaXZlcnMvZ3B1L2Ry
bS9kcm1fbW0uYzo2ODQ6NjogZXJyb3I6IHJlZGVmaW5pdGlvbiBvZiDigJhfX2RybV9tbV9ub2Rl
X2luaXTigJkKIHZvaWQgX19kcm1fbW1fbm9kZV9pbml0KHN0cnVjdCBkcm1fbW1fbm9kZSAqbm9k
ZSkKICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJz
L2dwdS9kcm0vZHJtX21tLmM6NTI6MDoKLi9pbmNsdWRlL2RybS9kcm1fbW0uaDoyODI6MjA6IG5v
dGU6IHByZXZpb3VzIGRlZmluaXRpb24gb2Yg4oCYX19kcm1fbW1fbm9kZV9pbml04oCZIHdhcyBo
ZXJlCiBzdGF0aWMgaW5saW5lIHZvaWQgX19kcm1fbW1fbm9kZV9pbml0KHN0cnVjdCBkcm1fbW1f
bm9kZSAqbm9kZSkgeyB9CiAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+CmRy
aXZlcnMvZ3B1L2RybS9kcm1fbW0uYzo2OTA6NjogZXJyb3I6IHJlZGVmaW5pdGlvbiBvZiDigJhf
X2RybV9tbV9ub2RlX2ZpbmnigJkKIHZvaWQgX19kcm1fbW1fbm9kZV9maW5pKHN0cnVjdCBkcm1f
bW1fbm9kZSAqbm9kZSkKICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+CkluIGZpbGUgaW5jbHVkZWQg
ZnJvbSBkcml2ZXJzL2dwdS9kcm0vZHJtX21tLmM6NTI6MDoKLi9pbmNsdWRlL2RybS9kcm1fbW0u
aDoyODM6MjA6IG5vdGU6IHByZXZpb3VzIGRlZmluaXRpb24gb2Yg4oCYX19kcm1fbW1fbm9kZV9m
aW5p4oCZIHdhcyBoZXJlCiBzdGF0aWMgaW5saW5lIHZvaWQgX19kcm1fbW1fbm9kZV9maW5pKHN0
cnVjdCBkcm1fbW1fbm9kZSAqbm9kZSkgeyB9CiAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+CnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY3OiByZWNpcGUgZm9yIHRhcmdldCAn
ZHJpdmVycy9ncHUvZHJtL2RybV9tbS5vJyBmYWlsZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dw
dS9kcm0vZHJtX21tLm9dIEVycm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDU6IHJlY2lw
ZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZl
cnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNTogcmVjaXBlIGZv
ciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0g
RXJyb3IgMgpNYWtlZmlsZToxNjgzOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVk
Cm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
