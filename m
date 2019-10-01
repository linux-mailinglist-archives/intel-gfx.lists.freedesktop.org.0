Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A318C38FD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 17:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42066E835;
	Tue,  1 Oct 2019 15:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5AFF06E835;
 Tue,  1 Oct 2019 15:29:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5435DA0093;
 Tue,  1 Oct 2019 15:29:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 01 Oct 2019 15:29:28 -0000
Message-ID: <20191001152928.21995.19587@emeril.freedesktop.org>
References: <20191001055308.21643-1-ramalingam.c@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191001055308.21643-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B1/2=5D_drm/i915=3A_Create_dumb_buffer_fro?=
 =?utf-8?q?m_LMEM_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IENyZWF0ZSBkdW1iIGJ1ZmZlciBmcm9tIExNRU0gKHJldjIpClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzQyOC8KU3RhdGUgOiBmYWls
dXJlCgo9PSBTdW1tYXJ5ID09CgpDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENB
TEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wK
ICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAogIEFSICAgICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvYnVpbHQtaW4uYQogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RvbWFpbi5vCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21h
aW4uYzogSW4gZnVuY3Rpb24g4oCYaTkxNV9nZW1fb2JqZWN0X3Bpbl90b19kaXNwbGF5X3BsYW5l
4oCZOgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmM6NDI5OjY6IGVy
cm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhIQVNfTE1FTeKAmTsgZGlk
IHlvdSBtZWFuIOKAmEhBU19HTUNI4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNs
YXJhdGlvbl0KICBpZiAoSEFTX0xNRU0oaTkxNSkpCiAgICAgIF5+fn5+fn5+CiAgICAgIEhBU19H
TUNICmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYzo0MzA6MTQ6IGVy
cm9yOiDigJhzdHJ1Y3QgPGFub255bW91cz7igJkgaGFzIG5vIG1lbWJlciBuYW1lZCDigJhyZWdp
b27igJkKICAgaWYgKG9iai0+bW0ucmVnaW9uLT50eXBlICE9IElOVEVMX0xNRU0pIHsKICAgICAg
ICAgICAgICBeCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYzo0MzA6
MzE6IGVycm9yOiDigJhJTlRFTF9MTUVN4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlz
IGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmElOVEVMX0dNNDXigJk/CiAgIGlmIChvYmotPm1t
LnJlZ2lvbi0+dHlwZSAhPSBJTlRFTF9MTUVNKSB7CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBefn5+fn5+fn5+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJTlRFTF9HTTQ1
CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYzo0MzA6MzE6IG5vdGU6
IGVhY2ggdW5kZWNsYXJlZCBpZGVudGlmaWVyIGlzIHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFj
aCBmdW5jdGlvbiBpdCBhcHBlYXJzIGluCmNjMTogYWxsIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQg
YXMgZXJyb3JzCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY1OiByZWNpcGUgZm9yIHRhcmdldCAn
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5vJyBmYWlsZWQKbWFrZVs0
XTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLm9dIEVycm9y
IDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJz
L2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTVd
IEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdk
cml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1L2RybV0gRXJy
b3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwOTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZl
cnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmls
ZToxNjcwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkCm1ha2U6ICoqKiBbZHJp
dmVyc10gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
