Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E875E234036
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 09:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48DB76EA03;
	Fri, 31 Jul 2020 07:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E699C6E9FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 07:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 66C3C3F3CA;
 Fri, 31 Jul 2020 09:39:02 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=oAbdxZfO; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.923
X-Spam-Level: 
X-Spam-Status: No, score=-2.923 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.824,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6dJNrRDnV0vQ; Fri, 31 Jul 2020 09:39:01 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 193C73F3BF;
 Fri, 31 Jul 2020 09:38:59 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id EE20C361FD5;
 Fri, 31 Jul 2020 09:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596181140; bh=1wHKPpFLIKGJVtyyrgS7qTKv+gV2uhO5BVpTi37PrM8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=oAbdxZfOBX2YVA/m8Pg1JfTZYEVeoxibwH65KWQOwbRGzSVto8zZS3qjoSr8IhPhI
 axTHam7vVLX60oWwgbW9ta0Or7wWg6KEH1dpVwZrcRZoiZ8/x8KRGI2bJE1dIOZiIk
 ZZSWehtICSuP8BT4/n5fqK565eQ/SiR1HOgApRKA=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
 <20200730093756.16737-7-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <0e073f55-db48-58bb-169f-9c7a25d0fb7a@shipmail.org>
Date: Fri, 31 Jul 2020 09:39:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200730093756.16737-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/21] drm/i915: Reduce locking around
 i915_active_acquire_preallocate_barrier()
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDcvMzAvMjAgMTE6MzcgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB0aGUgY29udmVy
c2lvbiBiZXR3ZWVuIGlkbGUtYmFycmllciBhbmQgZnVsbCBpOTE1X2FjdGl2ZV9mZW5jZSBpcwo+
IGFscmVhZHkgc2VyaWFsaXNlZCBieSBleHBsaWNpdCBtZW1vcnkgYmFycmllcnMsIHdlIGNhbiBy
ZWR1Y2UgdGhlCj4gc3BpbmxvY2sgaW4gaTkxNV9hY3RpdmVfYWNxdWlyZV9wcmVhbGxvY2F0ZV9i
YXJyaWVyKCkgZm9yIGZpbmRpbmcgYW4KPiBpZGxlLWJhcnJpZXIgdG8gcmV1c2UgdG8gYW4gUkNV
IHJlYWQgbG9jayB0byBlbnN1cmUgdGhlIGZlbmNlIHJlbWFpbnMKPiB2YWxpZCwgb25seSB0YWtp
bmcgdGhlIHNwaW5sb2NrIGZvciB0aGUgdXBkYXRlIG9mIHRoZSByYnRyZWUgaXRzZWxmLgo+Cj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJl
dmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgNiArKystLS0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKPiBpbmRleCA3YjUxMDQ1Yzg0NjEuLjVkZDUyYmI2
ZDM4YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwo+IEBAIC04MDcsNyArODA3
LDYgQEAgc3RhdGljIHN0cnVjdCBhY3RpdmVfbm9kZSAqcmV1c2VfaWRsZV9iYXJyaWVyKHN0cnVj
dCBpOTE1X2FjdGl2ZSAqcmVmLCB1NjQgaWR4KQo+ICAgCWlmIChSQl9FTVBUWV9ST09UKCZyZWYt
PnRyZWUpKQo+ICAgCQlyZXR1cm4gTlVMTDsKPiAgIAo+IC0Jc3Bpbl9sb2NrX2lycSgmcmVmLT50
cmVlX2xvY2spOwo+ICAgCUdFTV9CVUdfT04oaTkxNV9hY3RpdmVfaXNfaWRsZShyZWYpKTsKPiAg
IAo+ICAgCS8qCj4gQEAgLTg3MiwxMSArODcxLDEwIEBAIHN0YXRpYyBzdHJ1Y3QgYWN0aXZlX25v
ZGUgKnJldXNlX2lkbGVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwgdTY0IGlkeCkK
PiAgIAkJCWdvdG8gbWF0Y2g7Cj4gICAJfQo+ICAgCj4gLQlzcGluX3VubG9ja19pcnEoJnJlZi0+
dHJlZV9sb2NrKTsKPiAtCj4gICAJcmV0dXJuIE5VTEw7Cj4gICAKPiAgIG1hdGNoOgo+ICsJc3Bp
bl9sb2NrX2lycSgmcmVmLT50cmVlX2xvY2spOwo+ICAgCXJiX2VyYXNlKHAsICZyZWYtPnRyZWUp
OyAvKiBIaWRlIGZyb20gd2FpdHMgYW5kIHNpYmxpbmcgYWxsb2NhdGlvbnMgKi8KPiAgIAlpZiAo
cCA9PSAmcmVmLT5jYWNoZS0+bm9kZSkKPiAgIAkJV1JJVEVfT05DRShyZWYtPmNhY2hlLCBOVUxM
KTsKPiBAQCAtOTExLDcgKzkwOSw5IEBAIGludCBpOTE1X2FjdGl2ZV9hY3F1aXJlX3ByZWFsbG9j
YXRlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsCj4gICAJCXN0cnVjdCBsbGlzdF9u
b2RlICpwcmV2ID0gZmlyc3Q7Cj4gICAJCXN0cnVjdCBhY3RpdmVfbm9kZSAqbm9kZTsKPiAgIAo+
ICsJCXJjdV9yZWFkX2xvY2soKTsKPiAgIAkJbm9kZSA9IHJldXNlX2lkbGVfYmFycmllcihyZWYs
IGlkeCk7Cj4gKwkJcmN1X3JlYWRfdW5sb2NrKCk7Cj4gICAJCWlmICghbm9kZSkgewo+ICAgCQkJ
bm9kZSA9IGttZW1fY2FjaGVfYWxsb2MoZ2xvYmFsLnNsYWJfY2FjaGUsIEdGUF9LRVJORUwpOwo+
ICAgCQkJaWYgKCFub2RlKSB7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
