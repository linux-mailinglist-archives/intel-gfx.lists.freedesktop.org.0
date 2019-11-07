Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD257F2397
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 01:52:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C5566EE57;
	Thu,  7 Nov 2019 00:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3FAB76EE57;
 Thu,  7 Nov 2019 00:52:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 391EFA0094;
 Thu,  7 Nov 2019 00:52:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 07 Nov 2019 00:52:36 -0000
Message-ID: <157308795621.9302.17268674023358154075@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191106222550.20752-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191106222550.20752-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Start_removing_legacy_guc_code?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogU3RhcnQgcmVtb3ZpbmcgbGVnYWN5IGd1YyBj
b2RlClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTA5
NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdp
bi9kcm0tdGlwCmY3OWQ1MDc1NjE4ZSBkcm0vaTkxNS9ndWM6IERyb3AgbGVmdG92ZXIgcHJlZW1w
dGlvbiBjb2RlCmE0OWM0OTU3ZjlkNiBkcm0vaTkxNS9ndWM6IGFkZCBhIGhlbHBlciB0byBhbGxv
Y2F0ZSBhbmQgbWFwIGd1YyB2bWEKZTEwZDY5NGU1M2Y5IGRybS9pOTE1L2d1Yzoga2lsbCBkb29y
YmVsbCBjb2RlIGFuZCBzZWxmdGVzdHMKLTo2NzI6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6
IGFkZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1
cGRhdGluZz8KIzY3MjogCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAoKdG90YWw6IDAgZXJyb3Jz
LCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNjEyIGxpbmVzIGNoZWNrZWQKMGYxMzc5NzZmNWU1IGRy
bS9pOTE1L2d1Yzoga2lsbCB0aGUgR3VDIGNsaWVudAotOjY2OiBDSEVDSzpVTkNPTU1FTlRFRF9E
RUZJTklUSU9OOiBzcGlubG9ja190IGRlZmluaXRpb24gd2l0aG91dCBjb21tZW50CiM2NjogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmg6NTI6CisJc3BpbmxvY2tf
dCB3cV9sb2NrOwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgNTYwIGxp
bmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
