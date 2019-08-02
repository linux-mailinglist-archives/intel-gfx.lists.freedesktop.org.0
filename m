Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5611E7FA7A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 15:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37016EE56;
	Fri,  2 Aug 2019 13:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2270B6EE52;
 Fri,  2 Aug 2019 13:34:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 161F1A0071;
 Fri,  2 Aug 2019 13:34:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 02 Aug 2019 13:34:15 -0000
Message-ID: <20190802133415.15550.55483@emeril.freedesktop.org>
References: <20190802132836.6787-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190802132836.6787-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Flush_any_deferred_RCU_cleanup_before_switching_off_GEM?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZsdXNoIGFueSBkZWZlcnJl
ZCBSQ1UgY2xlYW51cCBiZWZvcmUgc3dpdGNoaW5nIG9mZiBHRU0KVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0NjEyLwpTdGF0ZSA6IGZhaWx1cmUKCj09
IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBz
Y3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAg
ICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQVIgICAgICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9idWlsdC1pbi5hCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5v
CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmM6IEluIGZ1bmN0aW9uIOKAmGk5MTVfZ2Vt
X2luaXTigJk6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmM6MTYwNjoyODogZXJyb3I6
IOKAmHN0cnVjdCBkcm1faTkxNV9wcml2YXRl4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYcnHi
gJk7IGRpZCB5b3UgbWVhbiDigJh3ceKAmT8KICBmbHVzaF93b3JrcXVldWUoZGV2X3ByaXYtPnJx
KTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+CiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB3cQpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI3MzogcmVjaXBlIGZvciB0YXJnZXQgJ2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLm8nIGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLm9dIEVycm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWls
ZDo0OTA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNScgZmFpbGVkCm1h
a2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmls
ZS5idWlsZDo0OTA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZApt
YWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1
aWxkOjQ5MDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTog
KioqIFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmlsZToxMDc5OiByZWNpcGUgZm9yIHRhcmdl
dCAnZHJpdmVycycgZmFpbGVkCm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
