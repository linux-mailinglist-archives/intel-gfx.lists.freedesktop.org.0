Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F21F41CA6F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 16:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F640892EA;
	Tue, 14 May 2019 14:33:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF52B892EA;
 Tue, 14 May 2019 14:33:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9902A011F;
 Tue, 14 May 2019 14:33:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Tue, 14 May 2019 14:33:03 -0000
Message-ID: <20190514143303.20124.14041@emeril.freedesktop.org>
References: <1557827010-24239-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1557827010-24239-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_adding_state_checker_for_gamma_lut_values_=28rev9=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IGFkZGluZyBzdGF0ZSBjaGVj
a2VyIGZvciBnYW1tYSBsdXQgdmFsdWVzIChyZXY5KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTgwMzkvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFy
eSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIK
Q29tbWl0OiBkcm0vaTkxNTogSW50cm9kdWNlIHZmdW5jIHJlYWRfbHV0cygpIHRvIGNyZWF0ZSBo
dyBsdXQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEVuYWJsZSBpbnRlbF9jb2xvcl9nZXRfY29u
ZmlnKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEFkZCBpbnRlbF9jb2xvcl9sdXRfZXF1YWwo
KSB0byBjb21wYXJlIGh3IGFuZCBzdyBnYW1tYS9kZWdhbW1hIGx1dCB2YWx1ZXMKT2theSEKCkNv
bW1pdDogZHJtL2k5MTU6IEV4dHJhY3QgaTl4eF9yZWFkX2x1dHMoKQorZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY29sb3IuYzoxMzUyOjE1OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNp
emVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYzoxMzUyOjE1OiB3
YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfY29sb3IuYzoxMzUyOjE1OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVv
Zih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYzoxMzUyOjE1OiB3YXJu
aW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfY29sb3IuYzoxMzUyOjE1OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2
b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYzoxMzUyOjE1OiB3YXJuaW5n
OiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfY29sb3IuYzoxMzUyOjE1OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lk
KQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYzoxMzUyOjE1OiB3YXJuaW5nOiBl
eHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Y29sb3IuYzoxMzkyOjY6IHdhcm5pbmc6IHN5bWJvbCAnaTl4eF9yZWFkX2x1dHMnIHdhcyBub3Qg
ZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/CgpDb21taXQ6IGRybS9pOTE1OiBFeHRyYWN0
IGNodl9yZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRXh0cmFjdCBpOTY1X3Jl
YWRfbHV0cygpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBFeHRyYWN0IGljbF9yZWFkX2x1dHMo
KQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRXh0cmFjdCBnbGtfcmVhZF9sdXRzKCkKT2theSEK
CkNvbW1pdDogZHJtL2k5MTU6IEV4dHJhY3QgYmR3X3JlYWRfbHV0cygpCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiBFeHRyYWN0IGl2Yl9yZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkx
NTogRXh0cmFjdCBpbGtfcmVhZF9sdXRzKCkKT2theSEKCkNvbW1pdDogRk9SX1RFU1RJTkdfT05M
WTogUHJpbnQgcmdiIHZhbHVlcyBvZiBodyBhbmQgc3cgYmxvYnMKT2theSEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
