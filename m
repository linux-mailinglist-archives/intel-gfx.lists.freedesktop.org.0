Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AB520CE1A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 13:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0586E0B8;
	Mon, 29 Jun 2020 11:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 744A56E0B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 11:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 75BEF3FBA2;
 Mon, 29 Jun 2020 13:15:32 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=l0llwgCJ; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vko00NjFDLfq; Mon, 29 Jun 2020 13:15:31 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 0B40F3FB8A;
 Mon, 29 Jun 2020 13:15:30 +0200 (CEST)
Received: from localhost.localdomain (2.67.230.125.mobile.tre.se
 [2.67.230.125])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 812BB36017B;
 Mon, 29 Jun 2020 13:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1593429330; bh=qBY2VZsaF+nRY74OZX57CQbCcDwpKmY9H58rBZjr0rg=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=l0llwgCJtuRtgJqYYDCYZKQioHC4nzaXzaZL9z3Fujt5sVGch4n73Nf9b29cM9gkx
 2FO5leSMo5TytbkBAIWqDr+nFZLG68LstIGuoas6m/vd1gVZJliTFGrEan43IlVnhr
 4DCyhdCqmV+/KXZ5zo643e0dWA/HGTLv0AgEiAEI=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-6-maarten.lankhorst@linux.intel.com>
 <6f313791-d0f7-465a-e4ab-63826ef70bf8@shipmail.org>
 <cec259f8-170f-ad74-3eb1-f583cb01920f@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <11cd7a6a-af85-e68f-5936-0a8d4157da91@shipmail.org>
Date: Mon, 29 Jun 2020 13:15:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <cec259f8-170f-ad74-3eb1-f583cb01920f@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/26] drm/i915: Parse command buffer
 earlier in eb_relocate(slow)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiA2LzI5LzIwIDEyOjQwIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPgo+Pj4g
IMKgwqDCoMKgwqAgLyoKPj4+ICDCoMKgwqDCoMKgwqAgKiBzbmIvaXZiL3ZsdiBjb25mbGF0ZSB0
aGUgImJhdGNoIGluIHBwZ3R0IiBiaXQgd2l0aCB0aGUgIm5vbi1zZWN1cmUKPj4+ICDCoMKgwqDC
oMKgwqAgKiBiYXRjaCIgYml0LiBIZW5jZSB3ZSBuZWVkIHRvIHBpbiBzZWN1cmUgYmF0Y2hlcyBp
bnRvIHRoZSBnbG9iYWwgZ3R0Lgo+Pj4gIMKgwqDCoMKgwqDCoCAqIGhzdyBzaG91bGQgaGF2ZSB0
aGlzIGZpeGVkLCBidXQgYmR3IG11Y2tzIGl0IHVwIGFnYWluLiAqLwo+Pj4gLcKgwqDCoCBiYXRj
aCA9IGViLmJhdGNoLT52bWE7Cj4+PiAgwqDCoMKgwqDCoCBpZiAoZWIuYmF0Y2hfZmxhZ3MgJiBJ
OTE1X0RJU1BBVENIX1NFQ1VSRSkgewo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaTkx
NV92bWEgKnZtYTsKPj4+ICDCoCBAQCAtMjkyMywxMyArMjkyNywxNSBAQCBpOTE1X2dlbV9kb19l
eGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKsKgwqAgZml0dGluZyBkdWUgdG8gZnJhZ21lbnRhdGlvbi4KPj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAqIFNvIHRoaXMgaXMgYWN0dWFsbHkgc2FmZS4KPj4+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAqLwo+Pj4gLcKgwqDCoMKgwqDCoMKgIHZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3Bp
bihiYXRjaC0+b2JqLCBOVUxMLCAwLCAwLCAwKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCB2bWEgPSBp
OTE1X2dlbV9vYmplY3RfZ2d0dF9waW4oZWIuYmF0Y2gtPnZtYS0+b2JqLCBOVUxMLCAwLCAwLCAw
KTsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKElTX0VSUih2bWEpKSB7Cj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZXJyID0gUFRSX0VSUih2bWEpOwo+Pj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX3BhcnNlOwo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCB9
Cj4+PiAgwqAgwqDCoMKgwqDCoMKgwqDCoMKgIGJhdGNoID0gdm1hOwo+Pj4gK8KgwqDCoCB9IGVs
c2Ugewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGJhdGNoID0gZWIuYmF0Y2gtPnZtYTsKPj4+ICDCoMKg
wqDCoMKgIH0KPj4+ICAgIAo+PiBIbW0sIGl0J3MgbGF0ZSBmcmlkYXkgYWZ0ZXJub29uIHNvIHRo
YXQgbWlnaHQgYmUgdGhlIGNhdXNlLCBidXQgSSBmYWlsIHRvIHNlZSB3aGF0IHRoZSBhYm92ZSBo
dW5rIGlzIHRyeWluZyB0byBhY2hpZXZlPwo+Cj4gRXhlY2J1ZiBwYXJzaW5nIG1heSBjcmVhdGUg
YSBzaGFkb3cgb2JqZWN0IHdoaWNoIGFsc28gbmVlZHMgdG8gYmUgbG9ja2VkLCB3ZSBkbyB0aGlz
IGluc2lkZSBlYl9yZWxvY2F0ZSgpIHRvIGVuc3VyZSB0aGUgbm9ybWFsIHJ1bGVzIGZvciB3L3cg
aGFuZGxpbmcgY2FuIGJlIHVzZWQgZm9yIGViIHBhcnNpbmcgYXMgd2VsbC4gOikKPgo+IH5NYWFy
dGVuCgpJIG1lYW50IHRoZSBjaGFuZ2VkIGFzc2lnbm1lbnQgb2YgdGhlIGJhdGNoIHZhcmlhYmxl
PwoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
