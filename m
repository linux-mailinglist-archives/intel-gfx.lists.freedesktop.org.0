Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 079D023443E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 12:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 593A16EA5E;
	Fri, 31 Jul 2020 10:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7726EA5E
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 10:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id C5B153F28E;
 Fri, 31 Jul 2020 12:49:10 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=DwmiT1JE; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.911
X-Spam-Level: 
X-Spam-Status: No, score=-2.911 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.812,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jqrIhsjATAyB; Fri, 31 Jul 2020 12:49:06 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 026503F25B;
 Fri, 31 Jul 2020 12:49:04 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 72B95361FD5;
 Fri, 31 Jul 2020 12:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596192544; bh=r/iMfRJ0nyKHwy6wuMBpJyBjDtcZIu8pfz/2dPYRkn0=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=DwmiT1JEtZNyu8vG3M4W/0ST7GC0HG6q9u71SSazskYYIy1NTDiYi2qhwo/wytaVs
 YPTrurKhPBM9Ks9G69rIBuwHOqK79snmQbVvXCfoK6xxi+vD3ayG/N3ciel6i16O+4
 L0AXOxecw25xn3BYx/DGaa2T41hAMCltMCGqMwuU=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-32-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <6d98ba88-9f90-1f1a-f439-1bd97d7b4538@shipmail.org>
Date: Fri, 31 Jul 2020 12:48:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-32-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 32/66] drm/i915/gt: Push the wait for the
 context to bound to the request
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

Ck9uIDcvMTUvMjAgMTo1MSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFJhdGhlciB0aGFuIHN5
bmNocm9ub3VzbHkgd2FpdCBmb3IgdGhlIGNvbnRleHQgdG8gYmUgYm91bmQsIHdpdGhpbiB0aGUK
PiBpbnRlbF9jb250ZXh0X3BpbigpLCB3ZSBjYW4gdHJhY2sgdGhlIHBlbmRpbmcgY29tcGxldGlv
biBvZiB0aGUgYmluZAo+IGZlbmNlIGFuZCBvbmx5IHN1Ym1pdCByZXF1ZXN0cyBhbG9uZyB0aGUg
Y29udGV4dCB3aGVuIHNpZ25hbGVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0g
PHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
