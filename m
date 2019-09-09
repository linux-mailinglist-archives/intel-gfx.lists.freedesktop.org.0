Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3DDAD513
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 10:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B9F89A20;
	Mon,  9 Sep 2019 08:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED37189A20;
 Mon,  9 Sep 2019 08:48:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9410A00FE;
 Mon,  9 Sep 2019 08:48:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Mon, 09 Sep 2019 08:48:18 -0000
Message-ID: <20190909084818.8309.2160@emeril.freedesktop.org>
References: <20190909082245.27245-1-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190909082245.27245-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5BCI=2C01/13=5D_drm/i915=3A_introduce_a_me?=
 =?utf-8?q?chanism_to_extend_execbuf2?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDAx
LzEzXSBkcm0vaTkxNTogaW50cm9kdWNlIGEgbWVjaGFuaXNtIHRvIGV4dGVuZCBleGVjYnVmMgpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY0MTgvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlw
ClNwYXJzZSB2ZXJzaW9uOiB2MC42LjAKQ29tbWl0OiBkcm0vaTkxNTogaW50cm9kdWNlIGEgbWVj
aGFuaXNtIHRvIGV4dGVuZCBleGVjYnVmMgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogYWRkIHN5
bmNvYmogdGltZWxpbmUgc3VwcG9ydApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9wZXJmOiBkcm9w
IGxpc3Qgb2Ygc3RyZWFtcworZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MTQzNjox
NTogd2FybmluZzogbWVtc2V0IHdpdGggYnl0ZSBjb3VudCBvZiAxNjc3NzIxNgorZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MTQ5MjoxNTogd2FybmluZzogbWVtc2V0IHdpdGggYnl0
ZSBjb3VudCBvZiAxNjc3NzIxNgotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzox
NDM2OjE1OiB3YXJuaW5nOiBtZW1zZXQgd2l0aCBieXRlIGNvdW50IG9mIDE2Nzc3MjE2Ci1POmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jOjE0OTU6MTU6IHdhcm5pbmc6IG1lbXNldCB3
aXRoIGJ5dGUgY291bnQgb2YgMTY3NzcyMTYKCkNvbW1pdDogZHJtL2k5MTUvcGVyZjogc3RvcmUg
dGhlIGFzc29jaWF0ZWQgZW5naW5lIG9mIGEgc3RyZWFtCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1
L3BlcmY6IGludHJvZHVjZSBhIHZlcnNpb25pbmcgb2YgdGhlIGk5MTUtcGVyZiB1YXBpCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1L3BlcmY6IG1vdmUgcGVyZiB0eXBlcyB0byB0aGVpciBvd24gaGVh
ZGVyCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3BlcmY6IGFsbG93IGZvciBDUyBPQSBjb25maWdz
IHRvIGJlIGNyZWF0ZWQgbGF6aWx5Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3BlcmY6IGltcGxl
bWVudCBhY3RpdmUgd2FpdCBmb3Igbm9hIGNvbmZpZ3VyYXRpb25zCk9rYXkhCgpDb21taXQ6IGRy
bS9pOTE1OiBhZGQgd2FpdCBmbGFncyB0byBpOTE1X2FjdGl2ZV9yZXF1ZXN0X3JldGlyZQpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNS9wZXJmOiBleGVjdXRlIE9BIGNvbmZpZ3VyYXRpb24gZnJvbSBj
b21tYW5kIHN0cmVhbQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogYWRkIGEgbmV3IHBlcmYgY29u
ZmlndXJhdGlvbiBleGVjYnVmIHBhcmFtZXRlcgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9wZXJm
OiBhbGxvdyBob2xkaW5nIHByZWVtcHRpb24gb24gZmlsdGVyZWQgY3R4Ck9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiBhZGQgc3VwcG9ydCBmb3IgcGVyZiBjb25maWd1cmF0aW9uIHF1ZXJpZXMKT2th
eSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
