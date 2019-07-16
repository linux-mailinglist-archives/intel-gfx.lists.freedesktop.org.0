Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD226B1B4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 00:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8CD08937C;
	Tue, 16 Jul 2019 22:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64A268937C;
 Tue, 16 Jul 2019 22:19:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C1C6A00EF;
 Tue, 16 Jul 2019 22:19:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rob Clark" <robdclark@gmail.com>
Date: Tue, 16 Jul 2019 22:19:37 -0000
Message-ID: <20190716221937.25033.2083@emeril.freedesktop.org>
References: <20190716213746.4670-1-robdclark@gmail.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190716213746.4670-1-robdclark@gmail.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv3=2C1/3=5D_drm/gem=3A_don=27t_force?=
 =?utf-8?q?_writecombine_mmap=27ing?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YzLDEv
M10gZHJtL2dlbTogZG9uJ3QgZm9yY2Ugd3JpdGVjb21iaW5lIG1tYXAnaW5nClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82Mzc3MC8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmI2ZWMx
NjczODc0ZSBkcm0vZ2VtOiBkb24ndCBmb3JjZSB3cml0ZWNvbWJpbmUgbW1hcCdpbmcKM2U0YWZl
NjI1NWFiIGRybTogcGx1bWIgYXR0YWNoaW5nIGRldiB0aHJ1IHRvIHByaW1lX3Bpbi91bnBpbgot
OjE0NTogQ0hFQ0s6QVZPSURfRVhURVJOUzogZXh0ZXJuIHByb3RvdHlwZXMgc2hvdWxkIGJlIGF2
b2lkZWQgaW4gLmggZmlsZXMKIzE0NTogRklMRTogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91
dmVhdV9nZW0uaDozNToKK2V4dGVybiBpbnQgbm91dmVhdV9nZW1fcHJpbWVfcGluKHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqLCBzdHJ1Y3QgZGV2aWNlICopOwoKLToxNDU6IFdBUk5JTkc6RlVOQ1RJ
T05fQVJHVU1FTlRTOiBmdW5jdGlvbiBkZWZpbml0aW9uIGFyZ3VtZW50ICdzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKicgc2hvdWxkIGFsc28gaGF2ZSBhbiBpZGVudGlmaWVyIG5hbWUKIzE0NTogRklM
RTogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9nZW0uaDozNToKK2V4dGVybiBpbnQg
bm91dmVhdV9nZW1fcHJpbWVfcGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqLCBzdHJ1Y3QgZGV2
aWNlICopOwoKLToxNDU6IFdBUk5JTkc6RlVOQ1RJT05fQVJHVU1FTlRTOiBmdW5jdGlvbiBkZWZp
bml0aW9uIGFyZ3VtZW50ICdzdHJ1Y3QgZGV2aWNlIConIHNob3VsZCBhbHNvIGhhdmUgYW4gaWRl
bnRpZmllciBuYW1lCiMxNDU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVf
Z2VtLmg6MzU6CitleHRlcm4gaW50IG5vdXZlYXVfZ2VtX3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKiwgc3RydWN0IGRldmljZSAqKTsKCi06MTQ4OiBDSEVDSzpBVk9JRF9FWFRFUk5T
OiBleHRlcm4gcHJvdG90eXBlcyBzaG91bGQgYmUgYXZvaWRlZCBpbiAuaCBmaWxlcwojMTQ4OiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5oOjM3OgorZXh0ZXJuIHZv
aWQgbm91dmVhdV9nZW1fcHJpbWVfdW5waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICosIHN0cnVj
dCBkZXZpY2UgKik7CgotOjE0ODogV0FSTklORzpGVU5DVElPTl9BUkdVTUVOVFM6IGZ1bmN0aW9u
IGRlZmluaXRpb24gYXJndW1lbnQgJ3N0cnVjdCBkcm1fZ2VtX29iamVjdCAqJyBzaG91bGQgYWxz
byBoYXZlIGFuIGlkZW50aWZpZXIgbmFtZQojMTQ4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vbm91
dmVhdS9ub3V2ZWF1X2dlbS5oOjM3OgorZXh0ZXJuIHZvaWQgbm91dmVhdV9nZW1fcHJpbWVfdW5w
aW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICosIHN0cnVjdCBkZXZpY2UgKik7CgotOjE0ODogV0FS
TklORzpGVU5DVElPTl9BUkdVTUVOVFM6IGZ1bmN0aW9uIGRlZmluaXRpb24gYXJndW1lbnQgJ3N0
cnVjdCBkZXZpY2UgKicgc2hvdWxkIGFsc28gaGF2ZSBhbiBpZGVudGlmaWVyIG5hbWUKIzE0ODog
RklMRTogZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9nZW0uaDozNzoKK2V4dGVybiB2
b2lkIG5vdXZlYXVfZ2VtX3ByaW1lX3VucGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqLCBzdHJ1
Y3QgZGV2aWNlICopOwoKdG90YWw6IDAgZXJyb3JzLCA0IHdhcm5pbmdzLCAyIGNoZWNrcywgMTkx
IGxpbmVzIGNoZWNrZWQKMWVhY2Q1NjNkNGYxIGRybS92Z2VtOiB1c2Ugbm9ybWFsIGNhY2hlZCBt
bWFwJ2luZ3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
