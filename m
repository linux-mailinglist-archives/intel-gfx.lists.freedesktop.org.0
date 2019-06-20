Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 250114DDCA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 01:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659626E7EC;
	Thu, 20 Jun 2019 23:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A38786E7EC;
 Thu, 20 Jun 2019 23:36:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98A75A00EA;
 Thu, 20 Jun 2019 23:36:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 20 Jun 2019 23:36:50 -0000
Message-ID: <20190620233650.12825.82320@emeril.freedesktop.org>
References: <20190620214613.14481-1-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190620214613.14481-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_S?=
 =?utf-8?q?plit_hw_and_drm_state=2E?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogU3BsaXQgaHcgYW5kIGRybSBzdGF0ZS4KVVJM
ICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNDg1LwpTdGF0
ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApT
cGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTU6IFBhc3MgaW50ZWxfY3J0Y19z
dGF0ZSB0byBuZWVkc19tb2Rlc2V0KCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IENvbnZlcnQg
bW9zdCBvZiBhdG9taWMgY29tbWl0IHRvIHRha2UgbW9yZSBpbnRlbCBzdGF0ZQpPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNTogQ29udmVydCBodyBzdGF0ZSB2ZXJpZmllciB0byB0YWtlIG1vcmUgaW50
ZWwgc3RhdGUKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFVzZSBpbnRlbF9jcnRjX3N0YXRlIGlu
IHNhbml0aXplX3dhdGVybWFya3MoKSB0b28KT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFBhc3Mg
aW50ZWwgc3RhdGUgdG8gcGxhbmUgZnVuY3Rpb25zIGFzIHdlbGwKT2theSEKCkNvbW1pdDogZHJt
L2k5MTU6IFVzZSBpbnRlbCBzdGF0ZSBhcyBtdWNoIGFzIHBvc3NpYmxlIGluIHdtIGNvZGUKT2th
eSEKCkNvbW1pdDogZHJtL2k5MTU6IFByZXBhcmUgdG8gc3BsaXQgY3J0YyBzdGF0ZSBpbiB1YXBp
IGFuZCBodyBzdGF0ZQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjI1NDg6MTY6
IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmM6MjU0ODoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6MjU0ODoxNjogd2Fybmlu
ZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmM6MjU0ODoxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
CkNvbW1pdDogZHJtL2k5MTU6IEhhbmRsZSBhIGZldyBtb3JlIGNhc2VzIGZvciBody9zdyBzcGxp
dApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQ29tcGxldGUgc3cvaHcgc3BsaXQKT2theSEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
