Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B8EC92DB
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 22:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960F06E1A3;
	Wed,  2 Oct 2019 20:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D066F6E196;
 Wed,  2 Oct 2019 20:29:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9522A47E1;
 Wed,  2 Oct 2019 20:29:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 02 Oct 2019 20:29:27 -0000
Message-ID: <20191002202927.9782.78729@emeril.freedesktop.org>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191002112000.12280-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/30=5D_drm/i915/selftests=3A_Exercise_?=
 =?utf-8?q?potential_false_lite-restore_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzMw
XSBkcm0vaTkxNS9zZWxmdGVzdHM6IEV4ZXJjaXNlIHBvdGVudGlhbCBmYWxzZSBsaXRlLXJlc3Rv
cmUgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82NzQ4My8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3Jp
Z2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjYuMApDb21taXQ6IGRybS9pOTE1L3NlbGZ0
ZXN0czogRXhlcmNpc2UgcG90ZW50aWFsIGZhbHNlIGxpdGUtcmVzdG9yZQpPa2F5IQoKQ29tbWl0
OiBkbWEtZmVuY2U6IFNlcmlhbGlzZSBzaWduYWwgZW5hYmxpbmcgKGRtYV9mZW5jZV9lbmFibGVf
c3dfc2lnbmFsaW5nKQpPa2F5IQoKQ29tbWl0OiBkcm0vbW06IFBhY2sgYWxsb2NhdGVkL3NjYW5u
ZWQgYm9vbGVhbiBpbnRvIGEgYml0ZmllbGQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE9ubHkg
dHJhY2sgYm91bmQgZWxlbWVudHMgb2YgdGhlIEdUVApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTog
TWFyayB1cCBhZGRyZXNzIHNwYWNlcyB0aGF0IG1heSBuZWVkIHRvIGFsbG9jYXRlCk9rYXkhCgpD
b21taXQ6IGRybS9pOTE1OiBQdWxsIGk5MTVfdm1hX3BpbiB1bmRlciB0aGUgdm0tPm11dGV4Ck9r
YXkhCgpDb21taXQ6IGRybS9pOTE1OiBQdXNoIHRoZSBpOTE1X2FjdGl2ZS5yZXRpcmUgaW50byBh
IHdvcmtlcgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQ29vcmRpbmF0ZSBpOTE1X2FjdGl2ZSB3
aXRoIGl0cyBvd24gbXV0ZXgKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE1vdmUgaWRsZSBiYXJy
aWVyIGNsZWFudXAgaW50byBlbmdpbmUtcG0KT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IERyb3Ag
c3RydWN0X211dGV4IGZyb20gYXJvdW5kIGk5MTVfcmV0aXJlX3JlcXVlc3RzKCkKT2theSEKCkNv
bW1pdDogZHJtL2k5MTU6IFJlbW92ZSB0aGUgR0VNIGlkbGUgd29ya2VyCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiBNZXJnZSB3YWl0X2Zvcl90aW1lbGluZXMgd2l0aCByZXRpcmVfcmVxdWVzdApP
a2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9nZW06IFJldGlyZSBkaXJlY3RseSBmb3IgbW1hcC1vZmZz
ZXQgc2hyaW5raW5nCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBNb3ZlIHJlcXVlc3QgcnVudGlt
ZSBtYW5hZ2VtZW50IG9udG8gZ3QKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IE1vdmUgZ2xvYmFs
IGFjdGl2aXR5IHRyYWNraW5nIGZyb20gR0VNIHRvIEdUCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1
OiBFeHBvc2UgZW5naW5lIHByb3BlcnRpZXMgdmlhIHN5c2ZzCk9rYXkhCgpDb21taXQ6IGRybS9p
OTE1L2V4ZWNsaXN0czogRm9yY2UgcHJlZW1wdGlvbgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTog
TWFyayB1cCAic2VudGluZWwiIHJlcXVlc3RzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2V4ZWNs
aXN0czogQ2FuY2VsIGJhbm5lZCBjb250ZXh0cyBvbiBzY2hlZHVsZS1vdXQKT2theSEKCkNvbW1p
dDogZHJtL2k5MTU6IENhbmNlbCBub24tcGVyc2lzdGVudCBjb250ZXh0cyBvbiBjbG9zZQpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVwbGFjZSBoYW5nY2hlY2sgYnkgaGVhcnRiZWF0cwpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVtb3ZlIGxvZ2ljYWwgSFcgSUQKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTU6IE1vdmUgY29udGV4dCBtYW5hZ2VtZW50IHVuZGVyIEdFTQpPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNS9vdmVybGF5OiBEcm9wIHN0cnVjdF9tdXRleCBndWFyZApPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNTogRHJvcCBzdHJ1Y3RfbXV0ZXggZ3VhcmQgZnJvbSBkZWJ1Z2ZzL2ZyYW1lYnVm
ZmVyX2luZm8KT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
