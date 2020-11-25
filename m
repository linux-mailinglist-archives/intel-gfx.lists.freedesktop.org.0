Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 026932C3647
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 02:39:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A312389E36;
	Wed, 25 Nov 2020 01:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9293D89D56;
 Wed, 25 Nov 2020 01:39:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D655A00E6;
 Wed, 25 Nov 2020 01:39:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Wed, 25 Nov 2020 01:39:23 -0000
Message-ID: <160626836357.8879.17972342839211798809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201125003108.156110-1-aditya.swarup@intel.com>
In-Reply-To: <20201125003108.156110-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBk?=
 =?utf-8?q?rm/i915/tgl=3A_Fix_REVID_macros_for_TGL_to_fetch_correct_steppi?=
 =?utf-8?q?ng?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdGdsOiBGaXggUkVWSUQgbWFj
cm9zIGZvciBUR0wgdG8gZmV0Y2ggY29ycmVjdCBzdGVwcGluZwpVUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvODQyMzgvClN0YXRlIDogd2FybmluZwoKPT0g
U3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNj
cmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVk
L2NvbXBpbGUuaAogIEhEUlRFU1QgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vaW5jbHVkZS9kcm0vZHJtX21t
Lmg6NDksCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvZHJtL2RybV92bWFfbWFuYWdl
ci5oOjI2LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2RybS9kcm1fZ2VtLmg6NDAs
CiAgICAgICAgICAgICAgICAgZnJvbSAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmg6
NTUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oOjQ2LAogICAgICAgICAgICAgICAgIGZyb20gPGNvbW1hbmQt
bGluZT46Ci4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaDogSW4gZnVuY3Rpb24g4oCY
dGdsX3Jldmlkc19nZXTigJk6Ci4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaDoxNTk0
Ojk6IGVycm9yOiBmb3JtYXQg4oCYJWx14oCZIGV4cGVjdHMgYXJndW1lbnQgb2YgdHlwZSDigJhs
b25nIHVuc2lnbmVkIGludOKAmSwgYnV0IGFyZ3VtZW50IDUgaGFzIHR5cGUg4oCYdW5zaWduZWQg
aW504oCZIFstV2Vycm9yPWZvcm1hdD1dCiAgICAgICAgICJVbnN1cHBvcnRlZCBTT0Mgc3RlcHBp
bmcgZm91bmQgJXUsIHVzaW5nICVsdSBpbnN0ZWFkXG4iLAogICAgICAgICBefn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgouL2luY2x1ZGUvZHJt
L2RybV9wcmludC5oOjQ1MDozODogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhkcm1f
ZGJnX2ttc+KAmQogIGRybV9kZXZfZGJnKChkcm0pLT5kZXYsIERSTV9VVF9LTVMsIGZtdCwgIyNf
X1ZBX0FSR1NfXykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn4KLi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oOjE2MDI6ODogZXJyb3I6IGZvcm1hdCDigJgl
bHXigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmGxvbmcgdW5zaWduZWQgaW504oCZLCBi
dXQgYXJndW1lbnQgNSBoYXMgdHlwZSDigJh1bnNpZ25lZCBpbnTigJkgWy1XZXJyb3I9Zm9ybWF0
PV0KICAgICAgICAiVW5zdXBwb3J0ZWQgU09DIHN0ZXBwaW5nIGZvdW5kICV1LCB1c2luZyAlbHUg
aW5zdGVhZFxuIiwKICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fgouL2luY2x1ZGUvZHJtL2RybV9wcmludC5oOjQ1MDozODogbm90
ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhkcm1fZGJnX2ttc+KAmQogIGRybV9kZXZfZGJn
KChkcm0pLT5kZXYsIERSTV9VVF9LTVMsIGZtdCwgIyNfX1ZBX0FSR1NfXykKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBefn4KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJl
YXRlZCBhcyBlcnJvcnMKZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGU6MzA0OiByZWNpcGUg
Zm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmhkcnRlc3QnIGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oZHJ0ZXN0XSBFcnJvciAxCnNjcmlwdHMvTWFrZWZp
bGUuYnVpbGQ6NTAwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZh
aWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMv
TWFrZWZpbGUuYnVpbGQ6NTAwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBm
YWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtl
ZmlsZS5idWlsZDo1MDA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1h
a2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTc5OTogcmVjaXBlIGZv
ciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCj09
IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODk3Mi9idWlsZF8zMmJpdC5sb2cKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
