Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAFD113080
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 18:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08BB66E92B;
	Wed,  4 Dec 2019 17:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E20016E89B;
 Wed,  4 Dec 2019 17:11:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D69BBA0096;
 Wed,  4 Dec 2019 17:11:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 04 Dec 2019 17:11:47 -0000
Message-ID: <157547950785.12193.7371469159219563896@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191204123556.3740002-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191204123556.3740002-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gem=3A_Try_to_flush_pending_unbind_events?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VtOiBUcnkgdG8gZmx1c2gg
cGVuZGluZyB1bmJpbmQgZXZlbnRzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy83MDQzNS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRp
bSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjBiODFjMjdjM2IzNiBkcm0vaTkxNS9nZW06IFRy
eSB0byBmbHVzaCBwZW5kaW5nIHVuYmluZCBldmVudHMKLToxMTogV0FSTklORzpDT01NSVRfTE9H
X0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVy
IGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzExOiAKUmVmZXJlbmNlczogY2I2YzNkNDVm
OTQ4ICgiZHJtL2k5MTUvZ2VtOiBBdm9pZCBwYXJraW5nIHRoZSB2bWEgYXMgd2UgdW5iaW5kIikK
Ci06MTE6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlw
dGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScg
LSBpZTogJ2NvbW1pdCBjYjZjM2Q0NWY5NDggKCJkcm0vaTkxNS9nZW06IEF2b2lkIHBhcmtpbmcg
dGhlIHZtYSBhcyB3ZSB1bmJpbmQiKScKIzExOiAKUmVmZXJlbmNlczogY2I2YzNkNDVmOTQ4ICgi
ZHJtL2k5MTUvZ2VtOiBBdm9pZCBwYXJraW5nIHRoZSB2bWEgYXMgd2UgdW5iaW5kIikKCnRvdGFs
OiAxIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDM0IGxpbmVzIGNoZWNrZWQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
