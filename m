Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 682DAAB503
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 11:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F8B6E1F8;
	Fri,  6 Sep 2019 09:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9644989292;
 Fri,  6 Sep 2019 09:37:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EBE0A00FE;
 Fri,  6 Sep 2019 09:37:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhou, David(ChunMing)" <david1.zhou@amd.com>
Date: Fri, 06 Sep 2019 09:37:34 -0000
Message-ID: <20190906093734.31240.25707@emeril.freedesktop.org>
References: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915=3A_Vulkan_performance_query_support_=28rev16=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFZ1bGthbiBwZXJmb3JtYW5j
ZSBxdWVyeSBzdXBwb3J0IChyZXYxNikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzYwOTE2LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNB
TEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9j
aGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAgICAgaW5jbHVkZS9nZW5l
cmF0ZWQvY29tcGlsZS5oCiAgQVIgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9idWlsdC1pbi5h
CiAgQ0MgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaC5zCkluIGZp
bGUgaW5jbHVkZWQgZnJvbSA8Y29tbWFuZC1saW5lPjowOjA6Ci4vZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wZXJmX3R5cGVzLmg6MjU6MjogZXJyb3I6IHVua25vd24gdHlwZSBuYW1lIOKAmGk5
MTVfcmVnX3TigJkKICBpOTE1X3JlZ190IGFkZHI7CiAgXn5+fn5+fn5+fgouL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oOjMyOjEyOiBlcnJvcjog4oCYVVVJRF9TVFJJTkdf
TEVO4oCZIHVuZGVjbGFyZWQgaGVyZSAobm90IGluIGEgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g
4oCYX0xJTlVYX1NUUklOR19IX+KAmT8KICBjaGFyIHV1aWRbVVVJRF9TVFJJTkdfTEVOICsgMV07
CiAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fgogICAgICAgICAgICBfTElOVVhfU1RSSU5HX0hf
Ci4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5cGVzLmg6NzU6NjogZXJyb3I6IHVu
a25vd24gdHlwZSBuYW1lIOKAmHBvbGxfdGFibGXigJk7IGRpZCB5b3UgbWVhbiDigJhQR190YWJs
ZeKAmT8KICAgICAgcG9sbF90YWJsZSAqd2FpdCk7CiAgICAgIF5+fn5+fn5+fn4KICAgICAgUEdf
dGFibGUKLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaDoxMjg6MjogZXJy
b3I6IHVua25vd24gdHlwZSBuYW1lIOKAmGludGVsX3dha2VyZWZfdOKAmQogIGludGVsX3dha2Vy
ZWZfdCB3YWtlcmVmOwogIF5+fn5+fn5+fn5+fn5+fgouL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZl90eXBlcy5oOjE5NjoyOTogZXJyb3I6IGZpZWxkIOKAmGFjdGl2ZV9jb25maWdfcnHi
gJkgaGFzIGluY29tcGxldGUgdHlwZQogIHN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0IGFjdGl2
ZV9jb25maWdfcnE7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjMwODogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oLnMnIGZhaWxlZAptYWtlWzRdOiAqKiogW2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oLnNdIEVycm9yIDEKc2NyaXB0cy9N
YWtlZmlsZS5idWlsZDo0OTc6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkx
NScgZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTVdIEVycm9yIDIKc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDo0OTc6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9k
cm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRz
L01ha2VmaWxlLmJ1aWxkOjQ5NzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWls
ZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmlsZToxMDgzOiByZWNp
cGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkCm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3Ig
MgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
