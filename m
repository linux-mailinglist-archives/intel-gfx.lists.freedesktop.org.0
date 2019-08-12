Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB2D89576
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 04:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9CC06E41D;
	Mon, 12 Aug 2019 02:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA11B6E41D;
 Mon, 12 Aug 2019 02:51:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEBAAA41FB;
 Mon, 12 Aug 2019 02:51:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dong Yang" <dong.yang@intel.com>
Date: Mon, 12 Aug 2019 02:51:51 -0000
Message-ID: <20190812025151.32130.32037@emeril.freedesktop.org>
References: <20190812023616.6194-1-dong.yang@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190812023616.6194-1-dong.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Remove_i915_ggtt_WA_since_GT_E?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlbW92ZSBpOTE1IGdndHQg
V0Egc2luY2UgR1QgRQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjUwNjYvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3Jp
cHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21p
Y3Muc2gKICBERVNDRU5EICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21w
aWxlLmgKICBDQyAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZ21idXMu
aC5zCiAgQ0MgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaC5zCkluIGZpbGUgaW5jbHVkZWQgZnJvbSAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oOjQ2OjAsCiAgICAgICAgICAgICAgICAgZnJvbSA8
Y29tbWFuZC1saW5lPjowOgouL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmg6IEluIGZ1
bmN0aW9uIOKAmGludGVsX2dndHRfdXBkYXRlX25lZWRzX3Z0ZF93YeKAmToKLi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oOjIyNTk6OTogZXJyb3I6IGV4cGVjdGVkIGV4cHJlc3Npb24g
YmVmb3JlIOKAmHJldHVybuKAmQogIHJldHVybiByZXR1cm4gSVNfQlhUX1JFVklEKGRldl9wcml2
LCAwLCBCWFRfUkVWSURfRDApICYmIGludGVsX3Z0ZF9hY3RpdmUoKTsKICAgICAgICAgXn5+fn5+
CnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MzAxOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgucycgZmFpbGVkCm1ha2Vb
NV06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
Lmguc10gRXJyb3IgMQpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ5MDogcmVjaXBlIGZvciB0YXJn
ZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXknIGZhaWxlZAptYWtlWzRdOiAqKiogW2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXldIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWls
ZDo0OTA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNScgZmFpbGVkCm1h
a2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmls
ZS5idWlsZDo0OTA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZApt
YWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1
aWxkOjQ5MDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTog
KioqIFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmlsZToxMDgwOiByZWNpcGUgZm9yIHRhcmdl
dCAnZHJpdmVycycgZmFpbGVkCm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
