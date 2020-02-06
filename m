Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C601154A84
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 18:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEC96FAE3;
	Thu,  6 Feb 2020 17:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F27A66FAE0;
 Thu,  6 Feb 2020 17:49:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E96E6A0096;
 Thu,  6 Feb 2020 17:49:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 17:49:49 -0000
Message-ID: <158101138992.15031.14484436127326564278@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206174658.2576421-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200206174658.2576421-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_Apply_Enable_Boot_Fetch_to_MBC_control_register?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IEFwcGx5IEVuYWJsZSBC
b290IEZldGNoIHRvIE1CQyBjb250cm9sIHJlZ2lzdGVyClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MzEwNy8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1t
YXJ5ID09CgpDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0
cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wKICBDSEsgICAgIGlu
Y2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMubwpkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jOiBJbiBmdW5jdGlvbiDigJhndF9pbml0X3dvcmthcm91bmRz4oCZOgpkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jOjk3ODozOiBlcnJvcjogaW1wbGlj
aXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYZ2VuN19ndF93b3JrYXJvdW5kc+KAmTsgZGlk
IHlvdSBtZWFuIOKAmGd0X2luaXRfd29ya2Fyb3VuZHPigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1
bmN0aW9uLWRlY2xhcmF0aW9uXQogICBnZW43X2d0X3dvcmthcm91bmRzKGk5MTUsIHdhbCk7CiAg
IF5+fn5+fn5+fn5+fn5+fn5+fn4KICAgZ3RfaW5pdF93b3JrYXJvdW5kcwpkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jOjk4MDozOiBlcnJvcjogaW1wbGljaXQgZGVj
bGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYZ2VuNl9ndF93b3JrYXJvdW5kc+KAmTsgZGlkIHlvdSBt
ZWFuIOKAmGd0X2luaXRfd29ya2Fyb3VuZHPigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9u
LWRlY2xhcmF0aW9uXQogICBnZW42X2d0X3dvcmthcm91bmRzKGk5MTUsIHdhbCk7CiAgIF5+fn5+
fn5+fn5+fn5+fn5+fn4KICAgZ3RfaW5pdF93b3JrYXJvdW5kcwpBdCB0b3AgbGV2ZWw6CmRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmM6Nzg4OjE6IGVycm9yOiDigJhn
ZW42X2d0X3dvcmthcm91bmRzX2luaXTigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9
dW51c2VkLWZ1bmN0aW9uXQogZ2VuNl9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiBefn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn4KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYzo3
ODI6MTogZXJyb3I6IOKAmGdlbjdfZ3Rfd29ya2Fyb3VuZHNfaW5pdOKAmSBkZWZpbmVkIGJ1dCBu
b3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtZnVuY3Rpb25dCiBnZW43X2d0X3dvcmthcm91bmRzX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndh
bCkKIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgpjYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVh
dGVkIGFzIGVycm9ycwpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NTogcmVjaXBlIGZvciB0YXJn
ZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLm8nIGZhaWxlZApt
YWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLm9d
IEVycm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdk
cml2ZXJzL2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJt
L2k5MTVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDM6IHJlY2lwZSBmb3IgdGFy
Z2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1L2Ry
bV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwMzogcmVjaXBlIGZvciB0YXJnZXQg
J2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpN
YWtlZmlsZToxNjkzOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkCm1ha2U6ICoq
KiBbZHJpdmVyc10gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
