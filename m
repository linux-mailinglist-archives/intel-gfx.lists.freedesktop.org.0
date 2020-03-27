Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 385551953EF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 10:27:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BCB6E9E6;
	Fri, 27 Mar 2020 09:27:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E7B66E9E4;
 Fri, 27 Mar 2020 09:27:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26EFEA0118;
 Fri, 27 Mar 2020 09:27:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 27 Mar 2020 09:27:16 -0000
Message-ID: <158530123613.17237.4143511447535911254@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200327092425.20346-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200327092425.20346-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/execlists=3A_Prevent_GPU_death_on_ELSP=5B1=5D_promotion?=
 =?utf-8?q?_to_idle_context_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmV2ZW50
IEdQVSBkZWF0aCBvbiBFTFNQWzFdIHByb21vdGlvbiB0byBpZGxlIGNvbnRleHQgKHJldjMpClVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83NTEzMC8KU3Rh
dGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxs
cy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaAogIERFU0NFTkQg
IG9ianRvb2wKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAogIENDIFtNXSAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLm8KZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmM6IEluIGZ1bmN0aW9uIOKAmGV4ZWNsaXN0c19kZXF1ZXVl4oCZOgpkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzoyMjEyOjIyOiBlcnJvcjogcGFzc2luZyBh
cmd1bWVudCAxIG9mIOKAmHRhc2tsZXRfaGlfc2NoZWR1bGXigJkgZnJvbSBpbmNvbXBhdGlibGUg
cG9pbnRlciB0eXBlIFstV2Vycm9yPWluY29tcGF0aWJsZS1wb2ludGVyLXR5cGVzXQogIHRhc2ts
ZXRfaGlfc2NoZWR1bGUoJmV4ZWNsaXN0cy0+YWN0aXZlKTsgLyogcGFwZXIgb3ZlciBsb3N0IGlu
dGVycnVwdCAqLwogICAgICAgICAgICAgICAgICAgICAgXgpJbiBmaWxlIGluY2x1ZGVkIGZyb20g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MTM0OjA6Ci4vaW5jbHVkZS9saW51
eC9pbnRlcnJ1cHQuaDo2NTg6MjA6IG5vdGU6IGV4cGVjdGVkIOKAmHN0cnVjdCB0YXNrbGV0X3N0
cnVjdCAq4oCZIGJ1dCBhcmd1bWVudCBpcyBvZiB0eXBlIOKAmHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KiBjb25zdCoq4oCZCiBzdGF0aWMgaW5saW5lIHZvaWQgdGFza2xldF9oaV9zY2hlZHVsZShzdHJ1
Y3QgdGFza2xldF9zdHJ1Y3QgKnQpCiAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fn5+fgpjYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwpzY3JpcHRzL01h
a2VmaWxlLmJ1aWxkOjI2NzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5vJyBmYWlsZWQKbWFrZVs0XTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMub10gRXJyb3IgMQpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNTogcmVj
aXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1JyBmYWlsZWQKbWFrZVszXTogKioq
IFtkcml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUw
NTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybScgZmFpbGVkCm1ha2VbMl06ICoq
KiBbZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA1OiBy
ZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUnIGZhaWxlZAptYWtlWzFdOiAqKiogW2RyaXZl
cnMvZ3B1XSBFcnJvciAyCk1ha2VmaWxlOjE2ODM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJz
JyBmYWlsZWQKbWFrZTogKioqIFtkcml2ZXJzXSBFcnJvciAyCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
