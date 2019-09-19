Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EACDB80F4
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 20:38:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89C36F890;
	Thu, 19 Sep 2019 18:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 045D96F7FE;
 Thu, 19 Sep 2019 18:38:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE5CCA0084;
 Thu, 19 Sep 2019 18:38:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@intel.com>
Date: Thu, 19 Sep 2019 18:38:22 -0000
Message-ID: <20190919183822.23915.38687@emeril.freedesktop.org>
References: <20190919143840.20384-1-andi.shyti@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190919143840.20384-1-andi.shyti@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Extract_GT_render_sleep_=28rc6=29_management?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEV4dHJhY3QgR1QgcmVuZGVy
IHNsZWVwIChyYzYpIG1hbmFnZW1lbnQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY2OTM3LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKOTgyMWQyYmJiYTA5IGRybS9pOTE1OiBFeHRy
YWN0IEdUIHJlbmRlciBzbGVlcCAocmM2KSBtYW5hZ2VtZW50Ci06NzM6IFdBUk5JTkc6RklMRV9Q
QVRIX0NIQU5HRVM6IGFkZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRB
SU5FUlMgbmVlZCB1cGRhdGluZz8KIzczOiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06Nzg6IFdB
Uk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojNzg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3JjNi5jOjE6CisvKgoKLTo3OTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBN
aXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFk
CiM3OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmM6MjoKKyAqIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06NzUwOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9U
QUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBs
aW5lIDEKIzc1MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2Lmg6MToK
Ky8qCgotOjc1MTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiM3NTE6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5oOjI6CisgKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogTUlUCgotOjc4MDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1h
bGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAxCiM3ODA6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNl90eXBlcy5oOjE6CisvKgoKLTo3ODE6
IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojNzgxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yYzZfdHlwZXMuaDoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVAoKdG90YWw6IDAgZXJyb3JzLCA3IHdhcm5pbmdzLCAwIGNoZWNrcywgMTU2MyBsaW5lcyBj
aGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
