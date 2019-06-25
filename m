Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7252855323
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D822C6E14E;
	Tue, 25 Jun 2019 15:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F99D6E14C;
 Tue, 25 Jun 2019 15:18:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19B15A0119;
 Tue, 25 Jun 2019 15:18:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 25 Jun 2019 15:18:23 -0000
Message-ID: <20190625151823.20399.80461@emeril.freedesktop.org>
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190625130128.11009-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/20=5D_drm/i915/execlists=3A_Convert_r?=
 =?utf-8?q?ecursive_defer=5Frequest=28=29_into_iterative_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzIw
XSBkcm0vaTkxNS9leGVjbGlzdHM6IENvbnZlcnQgcmVjdXJzaXZlIGRlZmVyX3JlcXVlc3QoKSBp
bnRvIGl0ZXJhdGl2ZSAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzYyNzA2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGlt
IHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJt
L2k5MTUvZXhlY2xpc3RzOiBDb252ZXJ0IHJlY3Vyc2l2ZSBkZWZlcl9yZXF1ZXN0KCkgaW50byBp
dGVyYXRpdmUKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Q6IFBhc3MgaW50ZWxfZ3QgdG8gcG0g
cm91dGluZXMKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvc2VsZnRlc3RzOiBTZXJpYWxpc2Ugbm9w
IHJlc2V0IHdpdGggcmV0aXJlbWVudApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9zZWxmdGVzdHM6
IERyb3AgbWFudWFsIHJlcXVlc3Qgd2FrZXJlZnMgYXJvdW5kIGhhbmdjaGVjawpPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNS9zZWxmdGVzdHM6IEZpeHVwIGF0b21pYyByZXNldCBjaGVja2luZwpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVuYW1lIGludGVsX3dha2VyZWZfW2lzXV9hY3RpdmUKKy4v
aW5jbHVkZS91YXBpL2xpbnV4L3BlcmZfZXZlbnQuaDoxNDc6NTY6IHdhcm5pbmc6IGNhc3QgdHJ1
bmNhdGVzIGJpdHMgZnJvbSBjb25zdGFudCB2YWx1ZSAoODAwMDAwMDAwMDAwMDAwMCBiZWNvbWVz
IDApCgpDb21taXQ6IGRybS9pOTE1OiBBZGQgYSB3YWtlcmVmIGdldHRlciBmb3IgaWZmIHRoZSB3
YWtlcmVmIGlzIGFscmVhZHkgYWN0aXZlCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBPbmx5IHJl
Y292ZXIgYWN0aXZlIGVuZ2luZXMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IExpZnQgaW50ZWxf
ZW5naW5lc19yZXN1bWUoKSB0byBjYWxsZXJzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBUZWFj
aCBleGVjYnVmZmVyIHRvIHRha2UgdGhlIGVuZ2luZSB3YWtlcmVmIG5vdCBHVApPa2F5IQoKQ29t
bWl0OiBkcm0vaTkxNS9ndDogVHJhY2sgdGltZWxpbmUgYWN0aXZlbmVzcyBpbiBlbnRlci9leGl0
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBDb252ZXJ0IHRpbWVsaW5lIHRyYWNraW5nIHRv
IHNwaW5sb2NrCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBHdWFyZCB0aW1lbGluZSBwaW5u
aW5nIHdpdGggaXRzIG93biBtdXRleApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9zZWxmdGVzdHM6
IEhvbGQgcmVmIG9uIHJlcXVlc3QgYWNyb3NzIHdhaXRzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1
L2d0OiBBbHdheXMgY2FsbCBrcmVmX2luaXQgZm9yIHRoZSB0aW1lbGluZQpPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNS9ndDogRHJvcCBzdGFsZSBjb21tZW50YXJ5IGZvciB0aW1lbGluZSBkZW5zaXR5
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBBZGQgc29tZSBkZWJ1ZyB0cmFjaW5nIGZvciBj
b250ZXh0IHBpbm5pbmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEluY2x1ZGUgdGhlIGJyZWFk
Y3J1bWIgd2hlbiBhc3NlcnRpbmcgcmVxdWVzdCBjb21wbGV0aW9uCk9rYXkhCgpDb21taXQ6IGRy
bS9pOTE1OiBQcm90ZWN0IHJlcXVlc3QgcmV0aXJlbWVudCB3aXRoIHRpbWVsaW5lLT5tdXRleApP
a2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVwbGFjZSBzdHJ1Y3RfbXV0ZXggZm9yIGJhdGNoIHBv
b2wgc2VyaWFsaXNhdGlvbgorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0Nzo1
Njogd2FybmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4MDAw
MDAwMDAwMDAwMDAwIGJlY29tZXMgMCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
