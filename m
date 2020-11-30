Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBAE2C8897
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 16:50:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BA1C6E49A;
	Mon, 30 Nov 2020 15:50:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AAC8A6E49A;
 Mon, 30 Nov 2020 15:50:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A240EA7DFB;
 Mon, 30 Nov 2020 15:50:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Mon, 30 Nov 2020 15:50:01 -0000
Message-ID: <160675140166.10641.2497743576835683054@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201130091646.25576-1-anshuman.gupta@intel.com>
In-Reply-To: <20201130091646.25576-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?isplay_glitches_fixes?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRGlzcGxheSBnbGl0Y2hlcyBmaXhlcwpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvODQzOTQvClN0YXRl
IDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMu
c2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBv
Ymp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgKICBDQyBbTV0gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5vCmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOiBJbiBmdW5jdGlvbiDigJhpbnRlbF91cGRh
dGVfY3J0Y+KAmToKZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6
MTU5NDA6MTY6IGVycm9yOiDigJhkZXZfcHJpdmXigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGlu
IHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYZGV2X3ByaXbigJk/CiAgbXV0ZXhfdW5s
b2NrKCZkZXZfcHJpdmUtPnBvd2VyX2RvbWFpbnMubG9jayk7CiAgICAgICAgICAgICAgICBefn5+
fn5+fn4KICAgICAgICAgICAgICAgIGRldl9wcml2CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jOjE1OTQwOjE2OiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRp
ZmllciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBp
bgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI4MzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5vJyBmYWlsZWQKbWFrZVs0XTogKioq
IFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkub10gRXJyb3IgMQpz
Y3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwMDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1
L2RybS9pOTE1JyBmYWlsZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJy
b3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwMDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZl
cnMvZ3B1L2RybScgZmFpbGVkCm1ha2VbMl06ICoqKiBbZHJpdmVycy9ncHUvZHJtXSBFcnJvciAy
CnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTAwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9n
cHUnIGZhaWxlZAptYWtlWzFdOiAqKiogW2RyaXZlcnMvZ3B1XSBFcnJvciAyCk1ha2VmaWxlOjE3
OTk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKbWFrZTogKioqIFtkcml2ZXJz
XSBFcnJvciAyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
