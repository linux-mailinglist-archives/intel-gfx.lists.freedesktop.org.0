Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 257D65FA2F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 16:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D356E35B;
	Thu,  4 Jul 2019 14:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E86166E35B;
 Thu,  4 Jul 2019 14:37:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9817A010A;
 Thu,  4 Jul 2019 14:37:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 04 Jul 2019 14:37:10 -0000
Message-ID: <20190704143710.29485.43108@emeril.freedesktop.org>
References: <20190704121756.27824-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190704121756.27824-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Rework_some_?=
 =?utf-8?q?interrupt_handling_functions_to_take_intel=5Fgt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
M10gZHJtL2k5MTU6IFJld29yayBzb21lIGludGVycnVwdCBoYW5kbGluZyBmdW5jdGlvbnMgdG8g
dGFrZSBpbnRlbF9ndApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjMyMjUvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2tw
YXRjaCBvcmlnaW4vZHJtLXRpcAo1NzAxNjlkMTJmNTUgZHJtL2k5MTU6IFJld29yayBzb21lIGlu
dGVycnVwdCBoYW5kbGluZyBmdW5jdGlvbnMgdG8gdGFrZSBpbnRlbF9ndAotOjEyOiBXQVJOSU5H
OkJBRF9TSUdOX09GRjogQ28tZGV2ZWxvcGVkLWJ5IGFuZCBTaWduZWQtb2ZmLWJ5OiBuYW1lL2Vt
YWlsIGRvIG5vdCBtYXRjaCAKIzEyOiAKQ28tZGV2ZWxvcGVkLWJ5OiBQYXVsbyBaYW5vbmkgPHBh
dWxvLnIuemFub25pQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNo
ZWNrcywgMjY5IGxpbmVzIGNoZWNrZWQKMTkwY2M0M2Y2YTYwIGRybS9pOTE1OiBSZW1vdmUgc29t
ZSBsZWdhY3kgbW1pbyBhY2Nlc3NvcnMgZnJvbSBpbnRlcnJ1cHQgaGFuZGxpbmcKLToxMTogV0FS
TklORzpCQURfU0lHTl9PRkY6IENvLWRldmVsb3BlZC1ieSBhbmQgU2lnbmVkLW9mZi1ieTogbmFt
ZS9lbWFpbCBkbyBub3QgbWF0Y2ggCiMxMTogCkNvLWRldmVsb3BlZC1ieTogUGF1bG8gWmFub25p
IDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywg
MCBjaGVja3MsIDEzNiBsaW5lcyBjaGVja2VkCjhlZDg5NGJlNGU1MyBkcm0vaTkxNTogTW92ZSBk
ZXZfcHJpdi0+cG1faXttLCBlfXIgaW50byBpbnRlbF9ndAotOjEwOiBXQVJOSU5HOkJBRF9TSUdO
X09GRjogQ28tZGV2ZWxvcGVkLWJ5IGFuZCBTaWduZWQtb2ZmLWJ5OiBuYW1lL2VtYWlsIGRvIG5v
dCBtYXRjaCAKIzEwOiAKQ28tZGV2ZWxvcGVkLWJ5OiBQYXVsbyBaYW5vbmkgPHBhdWxvLnIuemFu
b25pQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMzQy
IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
