Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 142B0D5590
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Oct 2019 11:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82AC96E11E;
	Sun, 13 Oct 2019 09:56:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A3476E11C;
 Sun, 13 Oct 2019 09:56:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 557F4A47EE;
 Sun, 13 Oct 2019 09:56:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 13 Oct 2019 09:56:29 -0000
Message-ID: <20191013095629.5008.27869@emeril.freedesktop.org>
References: <20191013091127.1165-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191013091127.1165-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_warning_for_dr?=
 =?utf-8?q?m/i915/selftests=3A_Fixup_naked_64b_divide?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBGaXh1cCBu
YWtlZCA2NGIgZGl2aWRlClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82Nzk0Ny8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgpDQUxMICAgIHNj
cmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRv
bWljcy5zaAogIENISyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQVIgICAgICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9idWlsdC1pbi5hCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLm8KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYzoyMDE6MDoKZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYzogSW4gZnVuY3Rpb24g4oCYaWd0
X21vY2tfY29udGlndW91c+KAmToKZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVs
X21lbW9yeV9yZWdpb24uYzoxNjc6MzE6IGVycm9yOiBwYXNzaW5nIGFyZ3VtZW50IDMgb2Yg4oCY
ZGl2NjRfdTY0X3JlbeKAmSBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUgWy1XZXJyb3I9
aW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdCiAgZGl2NjRfdTY0X3JlbSh0YXJnZXQsIHRvdGFs
LCAmdGFyZ2V0KTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KSW4gZmlsZSBpbmNs
dWRlZCBmcm9tIC4vaW5jbHVkZS9saW51eC90aW1lNjQuaDo1OjAsCiAgICAgICAgICAgICAgICAg
ZnJvbSAuL2luY2x1ZGUvbGludXgvcmVzdGFydF9ibG9jay5oOjEwLAogICAgICAgICAgICAgICAg
IGZyb20gLi9pbmNsdWRlL2xpbnV4L3RocmVhZF9pbmZvLmg6MTMsCiAgICAgICAgICAgICAgICAg
ZnJvbSAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL3ByZWVtcHQuaDo3LAogICAgICAgICAgICAgICAg
IGZyb20gLi9pbmNsdWRlL2xpbnV4L3ByZWVtcHQuaDo3OCwKICAgICAgICAgICAgICAgICBmcm9t
IC4vaW5jbHVkZS9saW51eC9zcGlubG9jay5oOjUxLAogICAgICAgICAgICAgICAgIGZyb20gLi9p
bmNsdWRlL2xpbnV4L2tyZWYuaDoxNiwKICAgICAgICAgICAgICAgICBmcm9tIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaDo5LAogICAgICAgICAgICAgICAgIGZyb20g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jOjY6Ci4vaW5jbHVkZS9s
aW51eC9tYXRoNjQuaDoxMDA6MTI6IG5vdGU6IGV4cGVjdGVkIOKAmHU2NCAqIHtha2EgbG9uZyBs
b25nIHVuc2lnbmVkIGludCAqfeKAmSBidXQgYXJndW1lbnQgaXMgb2YgdHlwZSDigJhyZXNvdXJj
ZV9zaXplX3QgKiB7YWthIHVuc2lnbmVkIGludCAqfeKAmQogZXh0ZXJuIHU2NCBkaXY2NF91NjRf
cmVtKHU2NCBkaXZpZGVuZCwgdTY0IGRpdmlzb3IsIHU2NCAqcmVtYWluZGVyKTsKICAgICAgICAg
ICAgXn5+fn5+fn5+fn5+fgpjYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9y
cwpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24ubycgZmFpbGVkCm1ha2VbNF06ICoqKiBb
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5vXSBFcnJvciAxCnNjcmlw
dHMvTWFrZWZpbGUuYnVpbGQ6NTA5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJt
L2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAy
CnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9n
cHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScg
ZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTY1MDog
cmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVy
cm9yIDIKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc4MC9idWlsZF8zMmJpdC5sb2cK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
