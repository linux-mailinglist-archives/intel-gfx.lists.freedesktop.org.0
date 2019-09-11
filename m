Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEACAFDCF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 15:38:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0AD6EB04;
	Wed, 11 Sep 2019 13:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4C6D6EB03;
 Wed, 11 Sep 2019 13:38:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE736A0087;
 Wed, 11 Sep 2019 13:38:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Sep 2019 13:38:50 -0000
Message-ID: <20190911133850.22029.88242@emeril.freedesktop.org>
References: <20190911125717.28997-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190911125717.28997-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/tgl=3A_Disable_read-only_support?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdGdsOiBEaXNhYmxlIHJlYWQt
b25seSBzdXBwb3J0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82NjUzNS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3Bh
dGNoIG9yaWdpbi9kcm0tdGlwCjhmMDk3MDhmNDhmZiBkcm0vaTkxNS90Z2w6IERpc2FibGUgcmVh
ZC1vbmx5IHN1cHBvcnQKLToxMDogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2li
bGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFy
cyBwZXIgbGluZSkKIzEwOiAKUmVmZXJlbmNlczogMzkzNjg2N2RiYzFlICgiZHJtL2k5MTU6IERp
c2FibGUgcmVhZCBvbmx5IHBwZ3R0IHN1cHBvcnQgZm9yIGdlbjExIikKCi06MTA6IEVSUk9SOkdJ
VF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29t
bWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCAz
OTM2ODY3ZGJjMWUgKCJkcm0vaTkxNTogRGlzYWJsZSByZWFkIG9ubHkgcHBndHQgc3VwcG9ydCBm
b3IgZ2VuMTEiKScKIzEwOiAKUmVmZXJlbmNlczogMzkzNjg2N2RiYzFlICgiZHJtL2k5MTU6IERp
c2FibGUgcmVhZCBvbmx5IHBwZ3R0IHN1cHBvcnQgZm9yIGdlbjExIikKCnRvdGFsOiAxIGVycm9y
cywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDExIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
