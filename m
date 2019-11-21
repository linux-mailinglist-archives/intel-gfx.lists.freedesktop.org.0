Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 404731047CF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 02:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0B86E42B;
	Thu, 21 Nov 2019 01:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 648226E42B;
 Thu, 21 Nov 2019 01:00:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FA0EA00E7;
 Thu, 21 Nov 2019 01:00:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 21 Nov 2019 01:00:57 -0000
Message-ID: <157429805738.19250.7369064918117692756@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1573831924.git.jani.nikula@intel.com>
In-Reply-To: <cover.1573831924.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/dsi=3A_enable_DSC_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZHNpOiBlbmFibGUgRFNDIChy
ZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjk1
NDAvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNr
c3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBE
RVNDRU5EICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgKICBB
UiAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2J1aWx0LWluLmEKICBDQyBbTV0gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5vCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jOiBJbiBmdW5jdGlvbiDigJhpbnRlbF9iaW9zX2dldF9kc2NfcGFy
YW1z4oCZOgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYzoyMzYxOjE2
OiBlcnJvcjog4oCYY29uc3Qgc3RydWN0IGRpc3BsYXlfZGV2aWNlX2RhdGHigJkgaGFzIG5vIG1l
bWJlciBuYW1lZCDigJhkc2PigJkKICAgIGlmICghZGV2ZGF0YS0+ZHNjKQogICAgICAgICAgICAg
ICAgXn4KZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmM6MjM2NTozNDog
ZXJyb3I6IOKAmGNvbnN0IHN0cnVjdCBkaXNwbGF5X2RldmljZV9kYXRh4oCZIGhhcyBubyBtZW1i
ZXIgbmFtZWQg4oCYZHNj4oCZCiAgICAgZmlsbF9kc2MocGlwZV9jb25maWcsIGRldmRhdGEtPmRz
YywgZHNjX21heF9icGMpOwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4Kc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDoyNjU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MubycgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLm9dIEVycm9yIDEKc2NyaXB0cy9NYWtl
ZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNScg
ZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTVdIEVycm9yIDIKc2NyaXB0
cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0n
IGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01h
a2VmaWxlLmJ1aWxkOjUwOTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQK
bWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmlsZToxNjUyOiByZWNpcGUg
Zm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkCm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
