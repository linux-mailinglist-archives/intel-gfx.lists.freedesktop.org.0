Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EFD10DBD0
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2019 00:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FCF06E96C;
	Fri, 29 Nov 2019 23:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5F556E965;
 Fri, 29 Nov 2019 23:41:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD76EA0009;
 Fri, 29 Nov 2019 23:41:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 Nov 2019 23:41:05 -0000
Message-ID: <157507086581.30585.10477670883246789854@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191129201427.1398860-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191129201427.1398860-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/2=5D_drm/i915/dp=3A_Take_disp?=
 =?utf-8?q?lay_powerwell_before_intel=5Fdp=5Fdetect=5Fdpcd?=
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
Ml0gZHJtL2k5MTUvZHA6IFRha2UgZGlzcGxheSBwb3dlcndlbGwgYmVmb3JlIGludGVsX2RwX2Rl
dGVjdF9kcGNkClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy83MDIyNi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCmVlNmUxODg2ZDRmYSBkcm0vaTkxNS9kcDogVGFrZSBkaXNwbGF5IHBv
d2Vyd2VsbCBiZWZvcmUgaW50ZWxfZHBfZGV0ZWN0X2RwY2QKLToyMDogV0FSTklORzpDT01NSVRf
TE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJl
ZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzIwOiAKPDQ+IFs0MDEuMTE1Mjk0XSBm
ZmZmZmZmZjgyMjYzYTQwIChmc19yZWNsYWltKXsrLisufSwgYXQ6IGZzX3JlY2xhaW1fYWNxdWly
ZS5wYXJ0LjExNysweDAvMHgzMAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNr
cywgMzAgbGluZXMgY2hlY2tlZAowNjJkNjRkNDI5YjIgZHJtL2k5MTU6IFNlcmlhbGlzZSBpOTE1
X2FjdGl2ZV93YWl0KCkgd2l0aCBpdHMgcmV0aXJlbWVudAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
