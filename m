Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 224CBD4411
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 17:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 528696EC5B;
	Fri, 11 Oct 2019 15:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 007ED6EC5B;
 Fri, 11 Oct 2019 15:24:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECDD4A0134;
 Fri, 11 Oct 2019 15:24:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Fri, 11 Oct 2019 15:24:10 -0000
Message-ID: <20191011152410.18209.36837@emeril.freedesktop.org>
References: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915/tgl=3A_Include_ro_pa?=
 =?utf-8?q?rts_of_l3_to_invalidate?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvdGdsOiBJbmNsdWRlIHJvIHBhcnRzIG9mIGwzIHRvIGludmFsaWRhdGUKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3OTEyLwpTdGF0ZSA6
IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAK
OTQzODU3MWE3YWJlIGRybS9pOTE1L3RnbDogSW5jbHVkZSBybyBwYXJ0cyBvZiBsMyB0byBpbnZh
bGlkYXRlCi06MjE6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQg
Jzw8JyAoY3R4OlZ4VikKIzIxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
cHVfY29tbWFuZHMuaDoyMzM6CisjZGVmaW5lICAgUElQRV9DT05UUk9MX0wzX1JPX0NBQ0hFX0lO
VkFMSURBVEUJCSgxPDwxMCkgLyogZ2VuMTIgKi8KICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIAkJICBeCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEg
Y2hlY2tzLCAxNCBsaW5lcyBjaGVja2VkCjhlZDljMzhjN2M0NCBkcm0vaTkxNS90Z2w6IEFkZCBI
REMgUGlwZWxpbmUgRmx1c2gKLToxOTogQ0hFQ0s6U1BBQ0lORzogc3BhY2VzIHByZWZlcnJlZCBh
cm91bmQgdGhhdCAnPDwnIChjdHg6VnhWKQojMTk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oOjIzNToKKyNkZWZpbmUgICBQSVBFX0NPTlRST0xfSERD
X1BJUEVMSU5FX0ZMVVNICQkoMTw8OSkgIC8qIGdlbiAxMiAqLwogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAJCSAgXgoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdz
LCAxIGNoZWNrcywgMTQgbGluZXMgY2hlY2tlZAoyODU1ZDhmMTc1OTEgZHJtL2k5MTUvdGdsOiBB
ZGQgZXh0cmEgaGRjIGZsdXNoIHdvcmthcm91bmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
