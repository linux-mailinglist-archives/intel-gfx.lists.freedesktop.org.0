Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 158B420B2E4
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 15:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729B46ECA0;
	Fri, 26 Jun 2020 13:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EAD46ECA0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 13:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 5B59F3F530;
 Fri, 26 Jun 2020 15:52:12 +0200 (CEST)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=ngCgRI7f; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y6pnW46JUqoC; Fri, 26 Jun 2020 15:52:11 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 058473F40E;
 Fri, 26 Jun 2020 15:52:10 +0200 (CEST)
Received: from localhost.localdomain (2.70.62.59.mobile.tre.se [2.70.62.59])
 by mail1.shipmail.org (Postfix) with ESMTPSA id EBC3A362131;
 Fri, 26 Jun 2020 15:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1593179530; bh=VJQMGwU1JXsyh1qJgj1hp+7DUTiLDWaxXkcQqLLSFao=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ngCgRI7fwUKcVpO/5rvDOSVRFxoEdYrJihWGxJ22Yjzpf2Vo4d9vgT+lNH7n5v5S+
 6WLSNHpqm4h12Peub9klRqugDaKuEAtLkLcdyi78Asfop42S5/QzbbvocrJdGKxKv8
 rZYMZbAdfV9OL7nCuo7zf4EnFl1b/SovnolK5L/0=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-8-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <ff4734b0-b529-5598-d1ef-82813f439d49@shipmail.org>
Date: Fri, 26 Jun 2020 15:52:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200623142843.423594-8-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/26] drm/i915/gem: Make eb_add_lut
 interruptible wait on object lock.
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

Ck9uIDYvMjMvMjAgNDoyOCBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gVGhlIGxvY2sg
aGVyZSBzaG91bGQgYmUgaW50ZXJydXB0aWJsZSwgc28gd2UgY2FuIGJhY2tvZmYgaWYgbmVlZGVk
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMgfCA4ICsrKysrKystCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBpbmRleCAyNjM2YTEzMGZiNTcuLmFhNDQxYWY4MTQz
MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1
ZmZlci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYwo+IEBAIC03NzQsNyArNzc0LDEyIEBAIHN0YXRpYyBpbnQgX19lYl9hZGRfbHV0KHN0cnVj
dCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+ICAgCQlpZiAoZXJyID09IDApIHsgLyogQW5kIG5vciBo
YXMgdGhpcyBoYW5kbGUgKi8KPiAgIAkJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmog
PSB2bWEtPm9iajsKPiAgIAo+IC0JCQlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOwo+
ICsJCQllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaiwgTlVMTCk7
Cj4gKwkJCWlmIChlcnIpIHsKPiArCQkJCXJhZGl4X3RyZWVfZGVsZXRlKCZjdHgtPmhhbmRsZXNf
dm1hLCBoYW5kbGUpOwo+ICsJCQkJZ290byB1bmxvY2s7Cj4gKwkJCX0KPiArCj4gICAJCQlpZiAo
aWRyX2ZpbmQoJmViLT5maWxlLT5vYmplY3RfaWRyLCBoYW5kbGUpID09IG9iaikgewo+ICAgCQkJ
CWxpc3RfYWRkKCZsdXQtPm9ial9saW5rLCAmb2JqLT5sdXRfbGlzdCk7Cj4gICAJCQl9IGVsc2Ug
ewo+IEBAIC03ODMsNiArNzg4LDcgQEAgc3RhdGljIGludCBfX2ViX2FkZF9sdXQoc3RydWN0IGk5
MTVfZXhlY2J1ZmZlciAqZWIsCj4gICAJCQl9Cj4gICAJCQlpOTE1X2dlbV9vYmplY3RfdW5sb2Nr
KG9iaik7Cj4gICAJCX0KPiArdW5sb2NrOgo+ICAgCQltdXRleF91bmxvY2soJmN0eC0+bXV0ZXgp
Owo+ICAgCX0KPiAgIAlpZiAodW5saWtlbHkoZXJyKSkKUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxs
c3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
