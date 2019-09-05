Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEC5AA57F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 16:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823B16E0FE;
	Thu,  5 Sep 2019 14:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B21B76E0FD;
 Thu,  5 Sep 2019 14:11:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ADE17A363D;
 Thu,  5 Sep 2019 14:11:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhou, David(ChunMing)" <david1.zhou@amd.com>
Date: Thu, 05 Sep 2019 14:11:17 -0000
Message-ID: <20190905141117.8129.15515@emeril.freedesktop.org>
References: <20190905120451.14327-1-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190905120451.14327-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915=3A_Vulkan_performance_query_support_=28rev15=29?=
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
ZSBxdWVyeSBzdXBwb3J0IChyZXYxNSkKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzYwOTE2LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNB
TEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9j
aGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAgICAgaW5jbHVkZS9nZW5l
cmF0ZWQvY29tcGlsZS5oCiAgQVIgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9idWlsdC1pbi5h
CiAgQ0MgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuaC5zCkluIGZpbGUgaW5j
bHVkZWQgZnJvbSA8Y29tbWFuZC1saW5lPjowOjA6Ci4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmg6IEluIGZ1bmN0aW9uIOKAmGk5MTVfb2FfY29uZmlnX2dldOKAmToKLi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuaDo0NzoyMTogZXJyb3I6IGRlcmVmZXJlbmNpbmcgcG9p
bnRlciB0byBpbmNvbXBsZXRlIHR5cGUg4oCYc3RydWN0IGk5MTVfb2FfY29uZmln4oCZCiAga3Jl
Zl9nZXQoJm9hX2NvbmZpZy0+cmVmKTsKICAgICAgICAgICAgICAgICAgICAgXn4Kc2NyaXB0cy9N
YWtlZmlsZS5idWlsZDozMDg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuaC5zJyBmYWlsZWQKbWFrZVs0XTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuaC5zXSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDk3OiByZWNp
cGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiog
W2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDk3
OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioq
IFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0OTc6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVy
cy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTA4MzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMn
IGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
