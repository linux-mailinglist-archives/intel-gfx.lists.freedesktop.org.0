Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C2E21FDEF
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 21:56:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854A66E861;
	Tue, 14 Jul 2020 19:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 162D16E862;
 Tue, 14 Jul 2020 19:56:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 147E7A8832;
 Tue, 14 Jul 2020 19:56:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 14 Jul 2020 19:56:49 -0000
Message-ID: <159475660908.24022.5763208142400611435@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBk?=
 =?utf-8?q?rm/i915/fbc=3A_Limit_cfb_to_the_first_256MiB_of_stolen_on_g4x+?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZmJjOiBMaW1pdCBjZmIgdG8g
dGhlIGZpcnN0IDI1Nk1pQiBvZiBzdG9sZW4gb24gZzR4KwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzk0ODkvClN0YXRlIDogd2FybmluZwoKPT0gU3Vt
bWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlw
dHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2Nv
bXBpbGUuaAogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
bwpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L2JpdHMuaDo2OjAsCiAgICAg
ICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYml0b3BzLmg6NSwKICAgICAgICAgICAg
ICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9rZXJuZWwuaDoxMiwKICAgICAgICAgICAgICAgICBm
cm9tIC4vaW5jbHVkZS9hc20tZ2VuZXJpYy9idWcuaDoxOSwKICAgICAgICAgICAgICAgICBmcm9t
IC4vYXJjaC94ODYvaW5jbHVkZS9hc20vYnVnLmg6OTIsCiAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvbGludXgvYnVnLmg6NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9s
aW51eC9tbWRlYnVnLmg6NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9n
ZnAuaDo1LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L3NsYWIuaDoxNSwK
ICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9pby1tYXBwaW5nLmg6MTAsCiAg
ICAgICAgICAgICAgICAgZnJvbSAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmg6MzYs
CiAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jOjQzOgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jOiBJbiBm
dW5jdGlvbiDigJhpbnRlbF9mYmNfY2ZiX2Jhc2VfbWF44oCZOgouL2luY2x1ZGUvdmRzby9iaXRz
Lmg6NzoyNjogZXJyb3I6IGxlZnQgc2hpZnQgY291bnQgPj0gd2lkdGggb2YgdHlwZSBbLVdlcnJv
cj1zaGlmdC1jb3VudC1vdmVyZmxvd10KICNkZWZpbmUgQklUKG5yKSAgIChVTCgxKSA8PCAobnIp
KQogICAgICAgICAgICAgICAgICAgICAgICAgIF4KZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYzo0MzI6MTA6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhCSVTi
gJkKICAgcmV0dXJuIEJJVCgzMik7CiAgICAgICAgICBefn4KY2MxOiBhbGwgd2FybmluZ3MgYmVp
bmcgdHJlYXRlZCBhcyBlcnJvcnMKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyODA6IHJlY2lwZSBm
b3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5vJyBmYWls
ZWQKbWFrZVs0XTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5v
XSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDk3OiByZWNpcGUgZm9yIHRhcmdldCAn
ZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDk3OiByZWNpcGUgZm9yIHRh
cmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9k
cm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0OTc6IHJlY2lwZSBmb3IgdGFyZ2V0
ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIK
TWFrZWZpbGU6MTc1NjogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAq
KiogW2RyaXZlcnNdIEVycm9yIDIKCj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODE2Ni9i
dWlsZF8zMmJpdC5sb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
