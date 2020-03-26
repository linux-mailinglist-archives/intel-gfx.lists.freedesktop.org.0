Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2733D1948BF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 21:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374366E356;
	Thu, 26 Mar 2020 20:25:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B9D396E2EC;
 Thu, 26 Mar 2020 20:25:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A85A2A363D;
 Thu, 26 Mar 2020 20:25:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Mar 2020 20:25:21 -0000
Message-ID: <158525432166.23003.11714705479357291690@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326180511.12200-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200326180511.12200-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/execlists=3A_Explicitly_reset_both_reg_and_context_runt?=
 =?utf-8?q?ime?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBFeHBsaWNp
dGx5IHJlc2V0IGJvdGggcmVnIGFuZCBjb250ZXh0IHJ1bnRpbWUKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzc1MTI3LwpTdGF0ZSA6IGZhaWx1cmUKCj09
IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBz
Y3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAg
ICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMubwpkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzog
SW4gZnVuY3Rpb24g4oCYcmVzdG9yZV9kZWZhdWx0X3N0YXRl4oCZOgpkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYzoxMTU3OjIxOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24g
b2YgZnVuY3Rpb24g4oCYaW50ZWxfY29udGV4dF9nZXRfcnVudGltZeKAmTsgZGlkIHlvdSBtZWFu
IOKAmGludGVsX2NvbnRleHRfZ2V0X2F2Z19ydW50aW1lX25z4oCZPyBbLVdlcnJvcj1pbXBsaWNp
dC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICBjZS0+cnVudGltZS5sYXN0ID0gaW50ZWxfY29udGV4
dF9nZXRfcnVudGltZShjZSk7CiAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn4KICAgICAgICAgICAgICAgICAgICAgaW50ZWxfY29udGV4dF9nZXRfYXZnX3J1bnRp
bWVfbnMKZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6IEF0IHRvcCBsZXZlbDoK
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MTE5OToxMjogZXJyb3I6IGNvbmZs
aWN0aW5nIHR5cGVzIGZvciDigJhpbnRlbF9jb250ZXh0X2dldF9ydW50aW1l4oCZCiBzdGF0aWMg
dTMyIGludGVsX2NvbnRleHRfZ2V0X3J1bnRpbWUoY29uc3Qgc3RydWN0IGludGVsX2NvbnRleHQg
KmNlKQogICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jOjExNTc6MjE6IG5vdGU6IHByZXZpb3VzIGltcGxpY2l0IGRl
Y2xhcmF0aW9uIG9mIOKAmGludGVsX2NvbnRleHRfZ2V0X3J1bnRpbWXigJkgd2FzIGhlcmUKICBj
ZS0+cnVudGltZS5sYXN0ID0gaW50ZWxfY29udGV4dF9nZXRfcnVudGltZShjZSk7CiAgICAgICAg
ICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KY2MxOiBhbGwgd2FybmluZ3Mg
YmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNjc6IHJlY2lw
ZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMubycgZmFpbGVk
Cm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLm9dIEVycm9y
IDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJz
L2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTVd
IEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdk
cml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1L2RybV0gRXJy
b3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZl
cnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmls
ZToxNjgzOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkCm1ha2U6ICoqKiBbZHJp
dmVyc10gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
