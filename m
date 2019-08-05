Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BC881E6B
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 16:01:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C5D6E492;
	Mon,  5 Aug 2019 14:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACA3D6E45F;
 Mon,  5 Aug 2019 14:01:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 57E3530613CA;
 Mon,  5 Aug 2019 14:01:24 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-81.ams2.redhat.com
 [10.36.116.81])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 721DC643E2;
 Mon,  5 Aug 2019 14:01:23 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id F369B9D40; Mon,  5 Aug 2019 16:01:21 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 16:01:11 +0200
Message-Id: <20190805140119.7337-10-kraxel@redhat.com>
In-Reply-To: <20190805140119.7337-1-kraxel@redhat.com>
References: <20190805140119.7337-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Mon, 05 Aug 2019 14:01:25 +0000 (UTC)
Subject: [Intel-gfx] [PATCH v6 09/17] drm/ttm: set both resv and base.resv
 pointers
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
Cc: thomas@shipmail.org, David Airlie <airlied@linux.ie>,
 ckoenig.leichtzumerken@gmail.com, intel-gfx@lists.freedesktop.org,
 open list <linux-kernel@vger.kernel.org>, Huang Rui <ray.huang@amd.com>,
 bskeggs@redhat.com, tzimmermann@suse.de,
 Christian Koenig <christian.koenig@amd.com>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5pdGlhbGl6ZSBib3RoIHR0bV9idWZmZXJfb2JqZWN0LT5yZXN2IGFuZCB0dG1fYnVmZmVyX29i
amVjdC0+YmFzZS5yZXN2CnBvaW50ZXJzLiAgVGhpcyBhbGxvd3MgdG8gbW92ZSB1c2VycyBmcm9t
IHRoZSBmb3JtZXIgdG8gdGhlIGxhdHRlci4gIFdoZW4KYWxsIHVzZXJzIGFyZSBtb3ZlZCB3ZSBj
YW4gZHJvcCB0dG1fYnVmZmVyX29iamVjdC0+cmVzdi4KClNpZ25lZC1vZmYtYnk6IEdlcmQgSG9m
Zm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2Jv
LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2Jv
LmMKaW5kZXggM2UwYTBjYmM0MTBlLi5jZTFlNjIyMWU3ZWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX2JvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwpA
QCAtMTMzMyw5ICsxMzMzLDExIEBAIGludCB0dG1fYm9faW5pdF9yZXNlcnZlZChzdHJ1Y3QgdHRt
X2JvX2RldmljZSAqYmRldiwKIAliby0+c2cgPSBzZzsKIAlpZiAocmVzdikgewogCQliby0+cmVz
diA9IHJlc3Y7CisJCWJvLT5iYXNlLnJlc3YgPSByZXN2OwogCQlyZXNlcnZhdGlvbl9vYmplY3Rf
YXNzZXJ0X2hlbGQoYm8tPnJlc3YpOwogCX0gZWxzZSB7CiAJCWJvLT5yZXN2ID0gJmJvLT5iYXNl
Ll9yZXN2OworCQliby0+YmFzZS5yZXN2ID0gJmJvLT5iYXNlLl9yZXN2OwogCX0KIAlpZiAoIXR0
bV9ib191c2VzX2VtYmVkZGVkX2dlbV9vYmplY3QoYm8pKSB7CiAJCS8qCi0tIAoyLjE4LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
