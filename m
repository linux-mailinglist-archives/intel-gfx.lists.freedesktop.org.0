Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA90CB830
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 12:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA2DA6EB1B;
	Fri,  4 Oct 2019 10:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 448E56E2E4;
 Fri,  4 Oct 2019 10:25:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C333A0136;
 Fri,  4 Oct 2019 10:25:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 04 Oct 2019 10:25:56 -0000
Message-ID: <20191004102556.26993.2041@emeril.freedesktop.org>
References: <20191003210100.22250-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191003210100.22250-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/5=5D_drm/i915/execlists=3A_Skip_re?=
 =?utf-8?q?dundant_resubmission_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTUvZXhlY2xpc3RzOiBTa2lwIHJlZHVuZGFudCByZXN1Ym1pc3Npb24gKHJldjIpClVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzU2Ni8KU3Rh
dGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0t
dGlwCjZhZGJjNTU4OWNkOCBkcm0vaTkxNS9leGVjbGlzdHM6IFNraXAgcmVkdW5kYW50IHJlc3Vi
bWlzc2lvbgpkMTY5MDkxMTUzN2IgZG1hLWZlbmNlOiBTZXJpYWxpc2Ugc2lnbmFsIGVuYWJsaW5n
IChkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZykKLToxNDogRVJST1I6R0lUX0NPTU1JVF9J
RDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBj
aGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDBmYzg5YjY4MDJi
YSAoImRtYS1mZW5jZTogU2ltcGx5IHdyYXAgZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQgd2l0aCBk
bWFfZmVuY2Vfc2lnbmFsIiknCiMxNDogClNlZSBhbHNvIDBmYzg5YjY4MDJiYSAoImRtYS1mZW5j
ZTogU2ltcGx5IHdyYXAgZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQKCnRvdGFsOiAxIGVycm9ycywg
MCB3YXJuaW5ncywgMCBjaGVja3MsIDEyMCBsaW5lcyBjaGVja2VkCjg3MGViYjhiNmQyNCBkcm0v
bW06IFVzZSBoZWxwZXJzIGZvciBkcm1fbW1fbm9kZSBib29sZWFucwpmZTBjODk1OGVlMzMgZHJt
L21tOiBDb252ZXJ0IGRybV9tbV9ub2RlIGJvb2xlYW5zIHRvIGJpdG9wcwowYWQzYWE2MTkyNmQg
ZHJtL21tOiBVc2UgY2xlYXJfYml0X3VubG9jaygpIGZvciByZWxlYXNpbmcgdGhlIGRybV9tbV9u
b2RlKCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
