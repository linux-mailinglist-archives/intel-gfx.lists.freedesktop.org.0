Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FC7C2D19
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 08:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D3D6E3FC;
	Tue,  1 Oct 2019 06:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6ED576E0C0;
 Tue,  1 Oct 2019 06:09:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6697FA006B;
 Tue,  1 Oct 2019 06:09:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Tue, 01 Oct 2019 06:09:10 -0000
Message-ID: <20191001060910.32576.14992@emeril.freedesktop.org>
References: <20191001055308.21643-1-ramalingam.c@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191001055308.21643-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B1/2=5D_drm/i915=3A_Create_dumb_buffer_fro?=
 =?utf-8?q?m_LMEM?=
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
ZHJtL2k5MTU6IENyZWF0ZSBkdW1iIGJ1ZmZlciBmcm9tIExNRU0KVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3NDI4LwpTdGF0ZSA6IGZhaWx1cmUKCj09
IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBz
Y3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAg
ICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQVIgICAgICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9idWlsdC1pbi5hCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZG9tYWluLm8KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jOiBJ
biBmdW5jdGlvbiDigJhpOTE1X2dlbV9vYmplY3RfcGluX3RvX2Rpc3BsYXlfcGxhbmXigJk6CmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYzo0Mjk6NjogZXJyb3I6IGlt
cGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmEhBU19MTUVN4oCZOyBkaWQgeW91IG1l
YW4g4oCYSEFTX0dNQ0jigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9u
XQogIGlmIChIQVNfTE1FTShkZXZfcHJpdikpCiAgICAgIF5+fn5+fn5+CiAgICAgIEhBU19HTUNI
CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYzo0MzA6MTQ6IGVycm9y
OiDigJhzdHJ1Y3QgPGFub255bW91cz7igJkgaGFzIG5vIG1lbWJlciBuYW1lZCDigJhyZWdpb27i
gJkKICAgaWYgKG9iai0+bW0ucmVnaW9uLT50eXBlICE9IElOVEVMX0xNRU0pIHsKICAgICAgICAg
ICAgICBeCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYzo0MzA6MzE6
IGVycm9yOiDigJhJTlRFTF9MTUVN4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1
bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmElOVEVMX0dNNDXigJk/CiAgIGlmIChvYmotPm1tLnJl
Z2lvbi0+dHlwZSAhPSBJTlRFTF9MTUVNKSB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBefn5+fn5+fn5+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJTlRFTF9HTTQ1CmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYzo0MzA6MzE6IG5vdGU6IGVh
Y2ggdW5kZWNsYXJlZCBpZGVudGlmaWVyIGlzIHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFjaCBm
dW5jdGlvbiBpdCBhcHBlYXJzIGluCmNjMTogYWxsIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMg
ZXJyb3JzCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY1OiByZWNpcGUgZm9yIHRhcmdldCAnZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5vJyBmYWlsZWQKbWFrZVs0XTog
KioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLm9dIEVycm9yIDEK
c2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dw
dS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTVdIEVy
cm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2
ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1L2RybV0gRXJyb3Ig
MgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwOTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMv
Z3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmlsZTox
NjcwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkCm1ha2U6ICoqKiBbZHJpdmVy
c10gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
