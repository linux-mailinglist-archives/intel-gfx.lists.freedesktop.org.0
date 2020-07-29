Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D899231C3A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 11:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779E86E4A6;
	Wed, 29 Jul 2020 09:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F8CD6E4A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 09:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 3209B3F5EB;
 Wed, 29 Jul 2020 11:39:56 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=A5mKfOne; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.923
X-Spam-Level: 
X-Spam-Status: No, score=-2.923 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.824,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RGRsUKuuZnbc; Wed, 29 Jul 2020 11:39:55 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 45B743F491;
 Wed, 29 Jul 2020 11:39:53 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr06-ext.jf.intel.com
 [134.134.137.75])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 9FA553607C5;
 Wed, 29 Jul 2020 11:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596015593; bh=3fmkMycnlKhhxTAKGjdaCx+i+7MN+Lx3U11zDdFN4JI=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=A5mKfOner5bkwqoA4r/7OCtUcwQTRm/29tSw0wmtRXAkAcMPbAark3O9+aMA94ysR
 dsD8LHJH8OoF6NgCQB17BrhEWLLJUkWo9EcTuc88r7YYae2ayukpEJN1ra6/yB4pHQ
 hnWI2zFu38IDyTKtclA/QJlZKq3IGxa3phW4gZsE=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200728153325.28351-1-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <fdf6f18e-3034-6fd4-0462-c404d23da62d@shipmail.org>
Date: Wed, 29 Jul 2020 11:39:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200728153325.28351-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Flush the active
 barriers before asserting
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

Ck9uIDcvMjgvMjAgNTozMyBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEJlZm9yZSB3ZSBwZWVr
IGF0IHRoZSBiYXJyaWVyIHN0YXR1cyBmb3IgYW4gYXNzZXJ0LCBmaXJzdCBzZXJpYWxpc2Ugd2l0
aAo+IGl0cyBjYWxsYmFja3Mgc28gdGhhdCB3ZSBzZWUgYSBzdGFibGUgdmFsdWUuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYyB8IDIgKysKPiAg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9jb250ZXh0LmMKPiBpbmRleCA1MmFmMWNlZTlhOTQuLjFmNDAyMGU5MDZh
OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0LmMKPiBA
QCAtNjgsNiArNjgsOCBAQCBzdGF0aWMgaW50IGNvbnRleHRfc3luYyhzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UpCj4gICAJfSB3aGlsZSAoIWVycik7Cj4gICAJbXV0ZXhfdW5sb2NrKCZ0bC0+bXV0
ZXgpOwo+ICAgCj4gKwkvKiBXYWl0IGZvciBhbGwgYmFycmllcnMgdG8gY29tcGxldGUgKHJlbW90
ZSBDUFUpIGJlZm9yZSB3ZSBjaGVjayAqLwo+ICsJaTkxNV9hY3RpdmVfdW5sb2NrX3dhaXQoJmNl
LT5hY3RpdmUpOwo+ICAgCXJldHVybiBlcnI7Cj4gICB9Cj4gICAKClJldmlld2VkLWJ5OiBUaG9t
YXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
