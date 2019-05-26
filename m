Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CBB2AB8D
	for <lists+intel-gfx@lfdr.de>; Sun, 26 May 2019 20:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00226897EF;
	Sun, 26 May 2019 18:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A25F1897DC;
 Sun, 26 May 2019 18:08:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D8D2A011C;
 Sun, 26 May 2019 18:08:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sam Ravnborg" <sam@ravnborg.org>
Date: Sun, 26 May 2019 18:08:31 -0000
Message-ID: <20190526180831.540.33360@emeril.freedesktop.org>
References: <20190526173535.32701-1-sam@ravnborg.org>
X-Patchwork-Hint: ignore
In-Reply-To: <20190526173535.32701-1-sam@ravnborg.org>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm=3A_make_headers_self-contained_and_drop_drmP=2Eh?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtOiBtYWtlIGhlYWRlcnMgc2VsZi1jb250
YWluZWQgYW5kIGRyb3AgZHJtUC5oClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82MTE1Ni8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRp
bSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRy
bTogbWFrZSBkcm0vZHJtX2F1dGguaCBzZWxmIGNvbnRhaW5lZApPa2F5IQoKQ29tbWl0OiBkcm06
IG1ha2UgZHJtL2RybV9sZWdhY3kuaCBzZWxmLWNvbnRhaW5lZApPa2F5IQoKQ29tbWl0OiBkcm06
IG1ha2UgZHJtX2NydGNfaW50ZXJuYWwuaCBzZWxmLWNvbnRhaW5lZApPa2F5IQoKQ29tbWl0OiBk
cm06IG1ha2UgZHJtX2ludGVybmFsLmggc2VsZi1jb250YWluZWQKT2theSEKCkNvbW1pdDogZHJt
OiBtYWtlIGRybV9sZWdhY3kuaCBzZWxmLWNvbnRhaW5lZApPa2F5IQoKQ29tbWl0OiBkcm06IG1h
a2UgZHJtX3RyYWNlLmggc2VsZi1jb250YWluZWQKT2theSEKCkNvbW1pdDogZHJtOiBkcm9wIHVz
ZSBvZiBkcm1QLmggaW4gZHJtLyoKK2RyaXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5jOjEwMDoyNzog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9k
cm1fcmVjdC5jOjEwMDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
K2RyaXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5jOjEwMDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1
c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5jOjEwMDoyNzogd2Fy
bmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9kcm1f
cmVjdC5jOjEwMDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2Ry
aXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5jOjEwMDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2lu
ZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5jOjEwMDoyNzogd2Fybmlu
ZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9kcm1fcmVj
dC5jOjEwMDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZl
cnMvZ3B1L2RybS9kcm1fcmVjdC5jOjEwMDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBz
aXplb2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5jOjEwMDoyNzogd2FybmluZzog
ZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5j
OjEwMDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMv
Z3B1L2RybS9kcm1fcmVjdC5jOjEwMDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5jOjEwMDoyNzogd2FybmluZzogZXhw
cmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9kcm1fcmVjdC5jOjEw
MDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
