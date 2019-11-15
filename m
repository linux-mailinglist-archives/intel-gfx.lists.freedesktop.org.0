Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 139E3FE84B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 23:53:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27AED6EB3F;
	Fri, 15 Nov 2019 22:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC4C76EB3D;
 Fri, 15 Nov 2019 22:53:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3A56A01BB;
 Fri, 15 Nov 2019 22:53:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 Nov 2019 22:53:09 -0000
Message-ID: <157385838983.3300.517885878923536047@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191115184156.1482912-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191115184156.1482912-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/selftests=3A_Autotune_timeouts?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBBdXRvdHVu
ZSB0aW1lb3V0cwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjk1NTMvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRz
L2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Mu
c2gKICBERVNDRU5EICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxl
LmgKICBBUiAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2J1aWx0LWluLmEKICBDQyBbTV0gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfdXRpbHMubwpkcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaWd0X3V0aWxzLmM6IEluIGZ1bmN0aW9uIOKAmGlndF9yZXF1ZXN0X3Rp
bWVvdXTigJk6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfdXRpbHMuYzoyMTox
MDogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmGV3bWFfZGVsYXlf
cmVhZOKAmTsgZGlkIHlvdSBtZWFuIOKAmGhsdF9wbGF5X2RlYWTigJk/IFstV2Vycm9yPWltcGxp
Y2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQogICBiYXNlID0gZXdtYV9kZWxheV9yZWFkKCZlbmdp
bmUtPmRlbGF5KTsKICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fgogICAgICAgICAgaGx0X3BsYXlf
ZGVhZApkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3V0aWxzLmM6MjE6MzU6IGVy
cm9yOiDigJhzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCY
ZGVsYXnigJk7IGRpZCB5b3UgbWVhbiDigJhsZWdhY3nigJk/CiAgIGJhc2UgPSBld21hX2RlbGF5
X3JlYWQoJmVuZ2luZS0+ZGVsYXkpOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGVnYWN5CmRyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfdXRpbHMuYzoyODozNzogZXJyb3I6IOKAmHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3PigJkgaGFzIG5vIG1lbWJlciBuYW1lZCDigJhkZWxheeKAmTsgZGlk
IHlvdSBtZWFuIOKAmGxlZ2FjeeKAmT8KICAgIGJhc2UgKz0gZXdtYV9kZWxheV9yZWFkKCZlbmdp
bmUtPmRlbGF5KSwgbisrOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+
fn4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxlZ2FjeQpkcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3V0aWxzLmM6Mjg6NDM6IGVycm9yOiBsZWZ0LWhhbmQg
b3BlcmFuZCBvZiBjb21tYSBleHByZXNzaW9uIGhhcyBubyBlZmZlY3QgWy1XZXJyb3I9dW51c2Vk
LXZhbHVlXQogICAgYmFzZSArPSBld21hX2RlbGF5X3JlYWQoJmVuZ2luZS0+ZGVsYXkpLCBuKys7
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCmNjMTogYWxsIHdh
cm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY1
OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF91
dGlscy5vJyBmYWlsZWQKbWFrZVs0XTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaWd0X3V0aWxzLm9dIEVycm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lw
ZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoqKiBb
ZHJpdmVycy9ncHUvZHJtL2k5MTVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6
IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiog
W2RyaXZlcnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwOTogcmVj
aXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJz
L2dwdV0gRXJyb3IgMgpNYWtlZmlsZToxNjQ5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycg
ZmFpbGVkCm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
