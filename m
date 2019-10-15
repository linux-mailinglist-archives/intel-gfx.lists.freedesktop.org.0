Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BB6D7052
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 09:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135558926D;
	Tue, 15 Oct 2019 07:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FAB18925D;
 Tue, 15 Oct 2019 07:41:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5833DA0094;
 Tue, 15 Oct 2019 07:41:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
Date: Tue, 15 Oct 2019 07:41:42 -0000
Message-ID: <20191015074142.22843.51405@emeril.freedesktop.org>
References: <20191015073129.2375-1-prathap.kumar.valsan@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191015073129.2375-1-prathap.kumar.valsan@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Add_sysfs_interface_to_control_class-of-service?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogQWRkIHN5c2ZzIGludGVyZmFjZSB0byBjb250
cm9sIGNsYXNzLW9mLXNlcnZpY2UKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzY4MDA3LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGlt
IGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMmU0ZGEzMjliZjA0IGRybS9pOTE1OiBBZGQgc3lz
ZnMgaW50ZXJmYWNlIHRvIGNvbnRyb2wgY2xhc3Mtb2Ytc2VydmljZQotOjMwMTogV0FSTklORzpG
SUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBN
QUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojMzAxOiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06
MzA2OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzMwNjogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9jbG9zLmM6MToKKy8qCgotOjMwNzogV0FSTklORzpTUERYX0xJQ0VOU0Vf
VEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBp
bnN0ZWFkCiMzMDc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY2xvcy5jOjI6Cisg
KiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjQ0MDogV0FSTklORzpTUERYX0xJQ0VO
U0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcg
aW4gbGluZSAxCiM0NDA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY2xvcy5oOjE6
CisvKgoKLTo0NDE6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojNDQxOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Nsb3MuaDoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IE1JVAoKdG90YWw6IDAgZXJyb3JzLCA1IHdhcm5pbmdzLCAwIGNoZWNrcywgNTM2IGxpbmVz
IGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
