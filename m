Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236B9229555
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 11:46:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9076E0FF;
	Wed, 22 Jul 2020 09:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACDF6E0FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 09:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 369E33F357;
 Wed, 22 Jul 2020 11:46:32 +0200 (CEST)
Authentication-Results: pio-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="AwvWg/4O";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3StDLQwUeW4G; Wed, 22 Jul 2020 11:46:31 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 7808E3F265;
 Wed, 22 Jul 2020 11:46:30 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id DC0A6362551;
 Wed, 22 Jul 2020 11:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595411190; bh=tFnWTvzMib23p+TjJJ1bgRpIfM09oAkdGTObxolk8kA=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=AwvWg/4OEqswcWrLeDsk2pMtRQyv6Dp23vb9/sStk6TWQz5KTC6EptnDLHsCbRPr+
 pzIm4X5wMIQ5yGRbGCexC5ZtzBC7JW1/iFXjC39t2bEd9juBfLOGmqQw37lZU9A5If
 Y815mpQ2vaJ7gdlmK1jcTqsB+AQ61eUvRyyT6Cak=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-7-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <bd2d122c-4346-97e2-7491-5118d081fcc8@shipmail.org>
Date: Wed, 22 Jul 2020 11:46:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/66] drm/i915: Keep the most recently used
 active-fence upon discard
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

Ck9uIDIwMjAtMDctMTUgMTM6NTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaGVuZXZlciBhbiBp
OTE1X2FjdGl2ZSBpZGxlcywgd2UgcHJ1bmUgaXRzIHRyZWUgb2Ygb2xkIGZlbmNlIHNsb3RzIHRv
Cj4gcHJldmVudCBhIGdyYWR1YWwgbGVhayBzaG91bGQgaXQgYmUgdXNlZCB0byB0cmFjayBtYW55
LCBtYW55IHRpbWVsaW5lcy4KPiBUaGUgZG93bnNpZGUgaXMgdGhhdCB3ZSB0aGVuIGhhdmUgdG8g
ZnJlcXVlbnRseSByZWFsbG9jYXRlIHRoZSByYnRyZWUuCj4gQSBjb21wcm9taXNlIGlzIHRoYXQg
d2Uga2VlcCB0aGUgbW9zdCByZWNlbnRseSB1c2VkIGZlbmNlIHNsb3QsIGFuZAo+IHJldXNlIHRo
YXQgZm9yIHRoZSBuZXh0IGFjdGl2ZSByZWZlcmVuY2UgYXMgdGhhdCBpcyB0aGUgbW9zdCBsaWtl
bHkKPiB0aW1lbGluZSB0byBiZSByZXVzZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfYWN0aXZlLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmggfCAgNCAtLS0tCj4gICAyIGZpbGVzIGNo
YW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKTGd0bS4gUmV2aWV3ZWQt
Ynk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
