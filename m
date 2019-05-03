Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 166A01259A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 02:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABCAB8947A;
	Fri,  3 May 2019 00:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2641B8947A;
 Fri,  3 May 2019 00:38:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F56EA0019;
 Fri,  3 May 2019 00:38:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 03 May 2019 00:38:51 -0000
Message-ID: <20190503003851.26884.2299@emeril.freedesktop.org>
References: <20190502232648.4450-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190502232648.4450-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Add_support_for_asynchronous_display_power_disabling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBh
c3luY2hyb25vdXMgZGlzcGxheSBwb3dlciBkaXNhYmxpbmcKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwMjQyLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1
bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAu
NS4yCkNvbW1pdDogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciB0cmFja2luZyB3YWtlcmVmcyB3
L28gcG93ZXItb24gZ3VhcmFudGVlCi1kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvLi4v
aTkxNV9kcnYuaDozNDQ4OjE2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lk
KQorZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzLy4uL2k5MTVfZHJ2Lmg6MzQ0OToxNjog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5MTU6
IFZlcmlmeSBwb3dlciBkb21haW5zIHN0YXRlIGR1cmluZyBzdXNwZW5kIGluIGFsbCBjYXNlcwpP
a2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQWRkIHN1cHBvcnQgZm9yIGFzeW5jaHJvbm91cyBkaXNw
bGF5IHBvd2VyIGRpc2FibGluZwotZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzLy4uL2k5
MTVfZHJ2Lmg6MzQ0OToxNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
K2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy8uLi9pOTE1X2Rydi5oOjM0NTQ6MTY6IHdh
cm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9pOTE1OiBE
aXNhYmxlIHBvd2VyIGFzeW5jaHJvbm91c2x5IGR1cmluZyBEUCBBVVggdHJhbnNmZXJzCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1OiBXQVJOIGZvciBlRFAgZW5jb2RlcnMgaW4gaW50ZWxfZHBfZGV0
ZWN0X2RwY2QoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVtb3ZlIHRoZSB1bm5lZWRlZCBB
VVggcG93ZXIgcmVmIGZyb20gaW50ZWxfZHBfZGV0ZWN0KCkKT2theSEKCkNvbW1pdDogZHJtL2k5
MTU6IFJlbW92ZSB0aGUgdW5uZWVkZWQgQVVYIHBvd2VyIHJlZiBmcm9tIGludGVsX2RwX2hwZF9w
dWxzZSgpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZXBsYWNlIHVzZSBvZiBQTExTIHBvd2Vy
IGRvbWFpbiB3aXRoIERJU1BMQVlfQ09SRSBkb21haW4KT2theSEKCkNvbW1pdDogZHJtL2k5MTU6
IEF2b2lkIHRha2luZyB0aGUgUFBTIGxvY2sgZm9yIG5vbi1lRFAvVkxWL0NIVgpPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNTogQXNzZXJ0IHRoYXQgVHlwZUMgcG9ydHMgYXJlIG5vdCB1c2VkIGZvciBl
RFAKT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
