Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D2C3C5EF6
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 17:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E195889CD7;
	Mon, 12 Jul 2021 15:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 318 seconds by postgrey-1.36 at gabe;
 Mon, 12 Jul 2021 15:17:31 UTC
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95BD389CD3;
 Mon, 12 Jul 2021 15:17:31 +0000 (UTC)
Received: from [10.172.193.212] (1.general.cking.uk.vpn [10.172.193.212])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id C8FE44057E; 
 Mon, 12 Jul 2021 15:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626102732;
 bh=RbwaKgH+40tX4ABd0qWgnTwTmSTR24M1qYXtjKJTl7o=;
 h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
 b=VRdB7rqVuyop4lZvtnOogx+VCNSezzKocfbgVuW1cuf/us5s0ys/SZJeVxY2KyFJ/
 k5DObZk7Vv6QVU5WM/wyRuNrTTyNN3+zTLNaefq4UfvVFusOMKS06wDhDiewMzTWzb
 RHocbp3+vRv+/0Kk8Og3ftJHdGgrDhXqbXFBlfKoIBTN42qL8xVtQm96eGr7y2Pzyw
 +orY0u0SaawztCDsD+u9e4gtu7FmcYxGXMJTbwcRuy/lzsVqayoVcs0gDyBS5Kjhpi
 70HKRLMe0LF7J0476sFBu7v2RW6Fayg7kB2DsTPyk6EXH/NxnMkhZnYY4rtgO1XM8/
 YR3Afks8KwPqQ==
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>
From: Colin Ian King <colin.king@canonical.com>
Message-ID: <161dac7a-5aad-150e-7c14-7bb195ecf30f@canonical.com>
Date: Mon, 12 Jul 2021 16:12:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Language: en-US
Subject: Re: [Intel-gfx] drm/i915/ttm Initialize the ttm device and memory
 managers
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
Cc: David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpTdGF0aWMgYW5hbHlzaXMgd2l0aCBDb3Zlcml0eSBvbiBsaW51eC1uZXh0IGhhcyBmb3Vu
ZCBhIHBvdGVudGlhbCBpc3N1ZQppbiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50
ZWxfbWVtb3J5X3JlZ2lvbi5jIGluIGZ1bmN0aW9uCmlndF9tb2NrX2ZpbGwgLSB0aGUgcHJvYmxl
bWF0aWMgY29tbWl0IGlzIGFzIGZvbGxvd3M6Cgpjb21taXQgZDE0ODczODkyM2ZkYjUwNzcwODll
NDhlYzE1NTU1ZTYwMDgxMDBkMApBdXRob3I6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVs
bHN0cm9tQGxpbnV4LmludGVsLmNvbT4KRGF0ZTogICBXZWQgSnVuIDIgMTA6Mzg6MDggMjAyMSAr
MDIwMAoKICAgIGRybS9pOTE1L3R0bSBJbml0aWFsaXplIHRoZSB0dG0gZGV2aWNlIGFuZCBtZW1v
cnkgbWFuYWdlcnMKClRoZSBhbmFseXNpcyBpcyBhcyBmb2xsb3dzOgoKCiA0OSBzdGF0aWMgaW50
IGlndF9tb2NrX2ZpbGwodm9pZCAqYXJnKQogNTAgewogNTEgICAgICAgIHN0cnVjdCBpbnRlbF9t
ZW1vcnlfcmVnaW9uICptZW0gPSBhcmc7CiA1MiAgICAgICAgcmVzb3VyY2Vfc2l6ZV90IHRvdGFs
ID0gcmVzb3VyY2Vfc2l6ZSgmbWVtLT5yZWdpb24pOwogNTMgICAgICAgIHJlc291cmNlX3NpemVf
dCBwYWdlX3NpemU7CiA1NCAgICAgICAgcmVzb3VyY2Vfc2l6ZV90IHJlbTsKIDU1ICAgICAgICB1
bnNpZ25lZCBsb25nIG1heF9wYWdlczsKIDU2ICAgICAgICB1bnNpZ25lZCBsb25nIHBhZ2VfbnVt
OwogNTcgICAgICAgIExJU1RfSEVBRChvYmplY3RzKTsKIDU4ICAgICAgICBpbnQgZXJyID0gMDsK
IDU5CiA2MCAgICAgICAgcGFnZV9zaXplID0gbWVtLT5jaHVua19zaXplOwogNjEgICAgICAgIHJl
bSA9IHRvdGFsOwogNjIgcmV0cnk6Cgp2YWx1ZV9vdmVyd3JpdGU6IE92ZXJ3cml0aW5nIHByZXZp
b3VzIHdyaXRlIHRvIG1heF9wYWdlcyB3aXRoIHZhbHVlIGZyb20KZGl2NjRfdTY0KHJlbSwgcGFn
ZV9zaXplKS4KCiA2MyAgICAgICAgbWF4X3BhZ2VzID0gZGl2NjRfdTY0KHJlbSwgcGFnZV9zaXpl
KTsKIDY0CiA2NSAgICAgICAgZm9yX2VhY2hfcHJpbWVfbnVtYmVyX2Zyb20ocGFnZV9udW0sIDEs
IG1heF9wYWdlcykgewogNjYgICAgICAgICAgICAgICAgcmVzb3VyY2Vfc2l6ZV90IHNpemUgPSBw
YWdlX251bSAqIHBhZ2Vfc2l6ZTsKIDY3ICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmo7CiA2OAogNjkgICAgICAgICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2Jq
ZWN0X2NyZWF0ZV9yZWdpb24obWVtLCBzaXplLCAwKTsKIDcwICAgICAgICAgICAgICAgIGlmIChJ
U19FUlIob2JqKSkgewogNzEgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSBQVFJfRVJSKG9i
aik7CiA3MiAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwogNzMgICAgICAgICAgICAgICAg
fQogNzQKIDc1ICAgICAgICAgICAgICAgIGVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXNf
dW5sb2NrZWQob2JqKTsKIDc2ICAgICAgICAgICAgICAgIGlmIChlcnIpIHsKIDc3ICAgICAgICAg
ICAgICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwogNzggICAgICAgICAgICAg
ICAgICAgICAgICBicmVhazsKIDc5ICAgICAgICAgICAgICAgIH0KIDgwCiA4MSAgICAgICAgICAg
ICAgICBsaXN0X2FkZCgmb2JqLT5zdF9saW5rLCAmb2JqZWN0cyk7CiA4MiAgICAgICAgICAgICAg
ICByZW0gLT0gc2l6ZTsKIDgzICAgICAgICB9CiA4NAogODUgICAgICAgIGlmIChlcnIgPT0gLUVO
T01FTSkKIDg2ICAgICAgICAgICAgICAgIGVyciA9IDA7CiA4NyAgICAgICAgaWYgKGVyciA9PSAt
RU5YSU8pIHsKIDg4ICAgICAgICAgICAgICAgIGlmIChwYWdlX251bSAqIHBhZ2Vfc2l6ZSA8PSBy
ZW0pIHsKIDg5ICAgICAgICAgICAgICAgICAgICAgICAgaWYgKG1lbS0+aXNfcmFuZ2VfbWFuYWdl
ciAmJiBtYXhfcGFnZXMgPiAxKSB7CgpVbnVzZWQgdmFsdWUgKFVOVVNFRF9WQUxVRSkKYXNzaWdu
ZWRfdmFsdWU6IEFzc2lnbmluZyB2YWx1ZSBmcm9tIG1heF9wYWdlcyA+PiAxIHRvIG1heF9wYWdl
cyBoZXJlLApidXQgdGhhdCBzdG9yZWQgdmFsdWUgaXMgb3ZlcndyaXR0ZW4gYmVmb3JlIGl0IGNh
biBiZSB1c2VkLgoKIDkwICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtYXhfcGFnZXMg
Pj49IDE7CiA5MSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ290byByZXRyeTsKIDky
ICAgICAgICAgICAgICAgICAgICAgICAgfQogOTMKClRoZSByaWdodCBzaGlmdCB0byBtYXhfcGFn
ZXMgb24gbGluZSA5MCBpcyBiZWluZyBvdmVyd3JpdHRlbiBvbiBsaW5lIDY0Cm9uIHRoZSByZXRy
eS4KCkNvbGluCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
