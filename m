Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95854720C0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 22:27:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D066E3BF;
	Tue, 23 Jul 2019 20:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E60D6E3BC;
 Tue, 23 Jul 2019 20:27:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1313EA010A;
 Tue, 23 Jul 2019 20:27:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 23 Jul 2019 20:27:36 -0000
Message-ID: <20190723202736.27090.84946@emeril.freedesktop.org>
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190723183842.20372-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/23=5D_drm/i915=3A_Move_aliasing=5Fppg?=
 =?utf-8?q?tt_underneath_its_i915=5Fggtt?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzIz
XSBkcm0vaTkxNTogTW92ZSBhbGlhc2luZ19wcGd0dCB1bmRlcm5lYXRoIGl0cyBpOTE1X2dndHQK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MTI4LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRp
cApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTU6IE1vdmUgYWxpYXNpbmdf
cHBndHQgdW5kZXJuZWF0aCBpdHMgaTkxNV9nZ3R0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0
OiBQcm92aWRlIGEgbG9jYWwgaW50ZWxfY29udGV4dC52bQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkx
NTogUmVtb3ZlIGxyYyBkZWZhdWx0IGRlc2MgZnJvbSBHRU0gY29udGV4dApPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNTogUHVzaCB0aGUgcmluZyBjcmVhdGlvbiBmbGFncyB0byB0aGUgYmFja2VuZApP
a2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRmx1c2ggZXh0cmEgaGFyZCBhZnRlciB3cml0aW5nIHJl
bG9jYXRpb25zIHRocm91Z2ggdGhlIEdUVApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogSGlkZSB1
bnNocmlua2FibGUgY29udGV4dCBvYmplY3RzIGZyb20gdGhlIHNocmlua2VyCk9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1L2d0OiBNb3ZlIHRoZSBbY2xhc3NdW2luc3RdIGxvb2t1cCBmb3IgZW5naW5l
cyBvbnRvIHRoZSBHVAorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0Nzo1Njog
d2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4MDAwMDAw
MDAwMDAwMDAwIGJlY29tZXMgMCkKCkNvbW1pdDogZHJtL2k5MTU6IEludHJvZHVjZSBmb3JfZWFj
aF91c2VyX2VuZ2luZSgpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBVc2UgaW50ZWxfZW5naW5l
X2xvb2t1cF91c2VyIGZvciBwcm9iaW5nIEhBU19CU0QgZXRjCk9rYXkhCgpDb21taXQ6IGRybS9p
OTE1OiBJc29sYXRlIGk5MTVfZ2V0cGFyYW1faW9jdGwoKQorLi9pbmNsdWRlL3VhcGkvbGludXgv
cGVyZl9ldmVudC5oOjE0Nzo1Njogd2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNv
bnN0YW50IHZhbHVlICg4MDAwMDAwMDAwMDAwMDAwIGJlY29tZXMgMCkKCkNvbW1pdDogZHJtL2k5
MTU6IE9ubHkgaW5jbHVkZSBhY3RpdmUgZW5naW5lcyBpbiB0aGUgY2FwdHVyZSBzdGF0ZQotZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYzo5NzM6MjE6IHdhcm5pbmc6IGV4cHJl
c3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9l
cnJvci5jOjk3MzoyMTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmM6OTczOjIxOiB3YXJuaW5nOiBleHBy
ZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVf
ZXJyb3IuYzo5NzM6MjE6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpD
b21taXQ6IGRybS9pOTE1OiBUZWFjaCBleGVjYnVmZmVyIHRvIHRha2UgdGhlIGVuZ2luZSB3YWtl
cmVmIG5vdCBHVApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndDogVHJhY2sgdGltZWxpbmUgYWN0
aXZlbmVzcyBpbiBlbnRlci9leGl0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBDb252ZXJ0
IHRpbWVsaW5lIHRyYWNraW5nIHRvIHNwaW5sb2NrCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0
OiBHdWFyZCB0aW1lbGluZSBwaW5uaW5nIHdpdGggaXRzIG93biBtdXRleApPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNS9ndDogQWRkIHRvIHRpbWVsaW5lIHJlcXVpcmVzIHRoZSB0aW1lbGluZSBtdXRl
eApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUHJvdGVjdCByZXF1ZXN0IHJldGlyZW1lbnQgd2l0
aCB0aW1lbGluZS0+bXV0ZXgKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFJlcGxhY2Ugc3RydWN0
X211dGV4IGZvciBiYXRjaCBwb29sIHNlcmlhbGlzYXRpb24KKy4vaW5jbHVkZS91YXBpL2xpbnV4
L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdhcm5pbmc6IGNhc3QgdHJ1bmNhdGVzIGJpdHMgZnJvbSBj
b25zdGFudCB2YWx1ZSAoODAwMDAwMDAwMDAwMDAwMCBiZWNvbWVzIDApCgpDb21taXQ6IGRybS9p
OTE1L2d0OiBNYXJrIGNvbnRleHQtPmFjdGl2ZV9jb3VudCBhcyBwcm90ZWN0ZWQgYnkgdGltZWxp
bmUtPm11dGV4Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBGb3JnbyBsYXN0X2ZlbmNlIGFjdGl2
ZSByZXF1ZXN0IHRyYWNraW5nCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L292ZXJsYXk6IFN3aXRj
aCB0byB1c2luZyBpOTE1X2FjdGl2ZSB0cmFja2luZwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTog
RXh0cmFjdCBpbnRlbF9mcm9udGJ1ZmZlciBhY3RpdmUgdHJhY2tpbmcKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTU6IE1hcmt1cCBleHBlY3RlZCB0aW1lbGluZSBsb2NrcyBmb3IgaTkxNV9hY3RpdmUK
T2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
