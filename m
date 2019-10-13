Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D60D581E
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Oct 2019 22:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8B16E17C;
	Sun, 13 Oct 2019 20:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 024456E175;
 Sun, 13 Oct 2019 20:37:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EEBEAA00EF;
 Sun, 13 Oct 2019 20:37:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 13 Oct 2019 20:37:51 -0000
Message-ID: <20191013203751.5007.2743@emeril.freedesktop.org>
References: <20191013203012.25208-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191013203012.25208-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/execlists=3A_Tweak_virtual_unsubmission?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBUd2VhayB2
aXJ0dWFsIHVuc3VibWlzc2lvbgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjc5NTgvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
Y2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAozYjJiMGFjZDUzN2YgZHJtL2k5MTUvZXhlY2xpc3Rz
OiBUd2VhayB2aXJ0dWFsIHVuc3VibWlzc2lvbgotOjE0OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9O
R19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBt
YXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMTQ6IApSZWZlcmVuY2VzOiBlMjE0NDUwM2JmM2Ig
KCJkcm0vaTkxNTogUHJldmVudCBib25kZWQgcmVxdWVzdHMgZnJvbSBvdmVydGFraW5nIGVhY2gg
b3RoZXIgb24gcHJlZW1wdGlvbiIpCgotOjE0OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2Ug
dXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNo
YTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgZTIxNDQ1MDNiZjNiICgiZHJtL2k5
MTU6IFByZXZlbnQgYm9uZGVkIHJlcXVlc3RzIGZyb20gb3ZlcnRha2luZyBlYWNoIG90aGVyIG9u
IHByZWVtcHRpb24iKScKIzE0OiAKUmVmZXJlbmNlczogZTIxNDQ1MDNiZjNiICgiZHJtL2k5MTU6
IFByZXZlbnQgYm9uZGVkIHJlcXVlc3RzIGZyb20gb3ZlcnRha2luZyBlYWNoIG90aGVyIG9uIHBy
ZWVtcHRpb24iKQoKdG90YWw6IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMzggbGlu
ZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
