Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A402DA56DD
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 15:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81CB896C7;
	Mon,  2 Sep 2019 13:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A5B3896C4;
 Mon,  2 Sep 2019 13:00:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80E40A47E0;
 Mon,  2 Sep 2019 13:00:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhou, David(ChunMing)" <david1.zhou@amd.com>
Date: Mon, 02 Sep 2019 13:00:27 -0000
Message-ID: <20190902130027.16951.8261@emeril.freedesktop.org>
References: <20190902122624.31902-1-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190902122624.31902-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915=3A_Vulkan_performance_query_support_=28rev14=29?=
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
ZSBxdWVyeSBzdXBwb3J0IChyZXYxNCkKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzYwOTE2LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNB
TEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9j
aGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAgICAgaW5jbHVkZS9nZW5l
cmF0ZWQvY29tcGlsZS5oCiAgQVIgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9idWlsdC1pbi5h
CiAgQ0MgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5oLnMKICBDQyAg
ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaC5zCiAgQ0MgICAgICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmgucwogIENDICAgICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9xdWVyeS5oLnMKICBDQyAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5oLnMKICBDQyAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5o
LnMKICBDQyAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaC5zCiAgQ0Mg
ICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaC5zCiAgQ0MgICAgICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuaC5zCiAgQ0MgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5oLnMKICBDQyAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc3luY21hcC5oLnMKICBDQyAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5oLnMKICBDQyAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmgucwogIENDICAg
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zZWxmdGVzdC5oLnMKICBDQyAgICAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmgucwogIENDICAgICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9hY3RpdmVfdHlwZXMuaC5zCiAgQ0MgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuaC5zCkluIGZpbGUgaW5jbHVkZWQgZnJvbSA8Y29tbWFuZC1saW5lPjowOjA6Ci4v
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmg6IEluIGZ1bmN0aW9uIOKAmGk5MTVfb2Ff
Y29uZmlnX2dldOKAmToKLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuaDo0NzoyMTog
ZXJyb3I6IGRlcmVmZXJlbmNpbmcgcG9pbnRlciB0byBpbmNvbXBsZXRlIHR5cGUg4oCYc3RydWN0
IGk5MTVfb2FfY29uZmln4oCZCiAga3JlZl9nZXQoJm9hX2NvbmZpZy0+cmVmKTsKICAgICAgICAg
ICAgICAgICAgICAgXn4Kc2NyaXB0cy9NYWtlZmlsZS5idWlsZDozMDg6IHJlY2lwZSBmb3IgdGFy
Z2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuaC5zJyBmYWlsZWQKbWFrZVs0XTog
KioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuaC5zXSBFcnJvciAxCnNjcmlwdHMv
TWFrZWZpbGUuYnVpbGQ6NDk3OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5
MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNj
cmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDk3OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUv
ZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0
cy9NYWtlZmlsZS5idWlsZDo0OTc6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFp
bGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTA4MzogcmVj
aXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9y
IDIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
