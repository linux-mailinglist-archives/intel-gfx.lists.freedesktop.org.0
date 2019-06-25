Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D28F5240B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 09:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26C2F89DED;
	Tue, 25 Jun 2019 07:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp113.iad3b.emailsrvr.com (smtp113.iad3b.emailsrvr.com
 [146.20.161.113])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D1789DED
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 07:08:35 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp23.relay.iad3b.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id EE9FFA00D8; 
 Tue, 25 Jun 2019 03:08:33 -0400 (EDT)
X-Sender-Id: kenneth@whitecape.org
Received: from kirito.trees (50-39-175-242.bvtn.or.frontiernet.net
 [50.39.175.242])
 (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:465 (trex/5.7.12); Tue, 25 Jun 2019 03:08:34 -0400
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 00:08:29 -0700
Message-Id: <20190625070829.25277-1-kenneth@whitecape.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable SAMPLER_STATE prefetching on
 all Gen11 steppings.
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
Cc: Kenneth Graunke <kenneth@whitecape.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIERlbWFuZCBQcmVmZXRjaCB3b3JrYXJvdW5kIChiaW5kaW5nIHRhYmxlIHByZWZldGNoaW5n
KSBvbmx5IGFwcGxpZXMKdG8gSWNlbGFrZSBBMC9CMC4gIEJ1dCB0aGUgU2FtcGxlciBQcmVmZXRj
aCB3b3JrYXJvdW5kIG5lZWRzIHRvIGJlCmFwcGxpZWQgdG8gYWxsIEdlbjExIHN0ZXBwaW5ncywg
YWNjb3JkaW5nIHRvIGEgcHJvZ3JhbW1pbmcgbm90ZSBpbiB0aGUKU0FSQ0hLTUQgZG9jdW1lbnRh
dGlvbi4KClVzaW5nIHRoZSBJbnRlbCBHYWxsaXVtIGRyaXZlciwgSSBoYXZlIHNlZW4gaW50ZXJt
aXR0ZW50IGZhaWx1cmVzIGluCnRoZSBkRVFQLUdMRVMzMS5mdW5jdGlvbmFsLmNvcHlfaW1hZ2Uu
bm9uX2NvbXByZXNzZWQuKiB0ZXN0cy4gIEFmdGVyCmFwcGx5aW5nIHRoaXMgd29ya2Fyb3VuZCwg
dGhlIHRlc3RzIHJlbGlhYmx5IHBhc3MuCgpCU3BlYzogOTY2MwpDYzogc3RhYmxlQHZnZXIua2Vy
bmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBLZW5uZXRoIEdyYXVua2UgPGtlbm5ldGhAd2hpdGVjYXBl
Lm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwg
NSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKKHJlc2VuZGluZyB3aXRo
IFMtby1iIGFkZGVkLi4uKQoKSGkgdGhlcmUhCgpXZSB0cmllZCB0byB3b3JrIGFyb3VuZCB0aGlz
IGluIHRoZSBNZXNhIGRyaXZlciwgYW5kIG1hbmFnZWQgdG8gZG8gc28KaW4gaTk2NSwgYW52LCBp
cmlzLCBidXQgbWlzc2VkIGRvaW5nIHNvIGluIGJsb3JwLiAgT29wcyEgIEknbSBwbGFubmluZwpv
biBmaXhpbmcgdGhhdCwgYnV0IHNldHRpbmcgdGhlIFNBUkNIS01EIGJpdCB0byBzaHV0IG9mZiB0
aGUgYnJva2VuCnByZWZldGNoaW5nIGdsb2JhbGx5IHNlZW1zIGxpa2UgYSBnb29kIGlkZWEuICBU
aGF0IHdheSwgd2UgbWFrZSBzdXJlIGl0CndvcmtzIGZvciBpOTY1LCBhbnYsIGlyaXMsIGxpYnZh
LCBhbmQgYWxsIHRoZSBvdGhlciB1c2Vyc3BhY2UgZHJpdmVycy4KCkZXSVcsIEkgZG9uJ3QgaGF2
ZSBjb21taXQgYWNjZXNzLCBzbyBJIHdvdWxkIGFwcHJlY2lhdGUgaXQgaWYgc29tZW9uZQpjb3Vs
ZCBjb21taXQgdGhpcyBmb3IgbWUgYXNzdW1pbmcgaXQgY2xlYXJzIHJldmlldyBhbmQgdGVzdGlu
Zy4KCiAtLUtlbgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
CmluZGV4IGM3MDQ0NWFkZmIwMi4uYTNjYjM1ZDA1OGE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTEyNTQsNiArMTI1NCwxMSBAQCByY3NfZW5n
aW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93
YV9saXN0ICp3YWwpCiAJCQkJICAgIEdFTjdfU0FSQ0hLTUQsCiAJCQkJICAgIEdFTjdfRElTQUJM
RV9ERU1BTkRfUFJFRkVUQ0ggfAogCQkJCSAgICBHRU43X0RJU0FCTEVfU0FNUExFUl9QUkVGRVRD
SCk7CisKKwkJLyogV2FfMTYwNjY4MjE2NjppY2wgKi8KKwkJd2Ffd3JpdGVfb3Iod2FsLAorCQkJ
ICAgIEdFTjdfU0FSQ0hLTUQsCisJCQkgICAgR0VON19ESVNBQkxFX1NBTVBMRVJfUFJFRkVUQ0gp
OwogCX0KIAogCWlmIChJU19HRU5fUkFOR0UoaTkxNSwgOSwgMTEpKSB7Ci0tIAoyLjIyLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
