Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C132229B0D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 17:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2D96E228;
	Wed, 22 Jul 2020 15:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A7A6E822
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 15:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id ADF643F3B9;
 Wed, 22 Jul 2020 17:10:28 +0200 (CEST)
Authentication-Results: pio-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="A6kzxA+q";
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
 with ESMTP id IAI6dTXeWtui; Wed, 22 Jul 2020 17:10:27 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 69BD73F357;
 Wed, 22 Jul 2020 17:10:26 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id B0B9436010A;
 Wed, 22 Jul 2020 17:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595430626; bh=iON6+fs4XzZ0WBWm4a3hzLbUJM06atDH1OU2PVUotjI=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=A6kzxA+qCSvqse4OG7BqVuoDcbFj4DJdp6jkiar41WVJHHMWE0xonsVxsCZ3JVHu7
 trIflfhQWVVkTKeuFwKB9a/x3gclRFkj+wYp8nMZ8ECYJYJMaX2iEI3/BG9qzJEQgD
 6LOfIx8B8RvkdKqC3aGZw9PcYhSb5gpIIQv4DaQE=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-10-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <150c0098-86d4-86ce-561e-f1e9e25d931b@shipmail.org>
Date: Wed, 22 Jul 2020 17:10:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-10-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/66] drm/i915: Soften the tasklet flush
 frequency before waits
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

Ck9uIDIwMjAtMDctMTUgMTM6NTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBpbmNsdWRlIGEg
dGFza2xldCBmbHVzaCBiZWZvcmUgd2FpdGluZyBvbiBhIHJlcXVlc3QgYXMgYSBwcmVjYXV0aW9u
Cj4gYWdhaW5zdCB0aGUgSFcgYmVpbmcgbGF4IGluIGV2ZW50IHNpZ25hbGluZy4gV2Ugbm93IGhh
dmUgYSBwcmVjYXV0aW9uYXJ5Cj4gZmx1c2ggaW4gdGhlIGVuZ2luZSdzIGhlYXJ0YmVhdCBhbmQg
c28gZG8gbm90IG5lZWQgdG8gYmUgcXVpdGUgc28KPiB6ZWFsb3VzIG9uIGV2ZXJ5IHJlcXVlc3Qg
d2FpdC4gSWYgd2UgZm9jdXMgb24gdGhlIHJlcXVlc3QsIHRoZSBvbmx5Cj4gdGFza2xldCBmbHVz
aCB0aGF0IG1hdHRlcnMgaXMgaWYgdGhlcmUgaXMgYSBkZWxheSBpbiBzdWJtaXR0aW5nIHRoaXMK
PiByZXF1ZXN0IHRvIEhXLCBzbyBpZiB0aGUgcmVxdWVzdCBpcyBub3QgcmVhZHkgdG8gYmUgZXhl
Y3V0ZWQgbm8KPiBhZHZhbnRhZ2UgaW4gcmVkdWNpbmcgdGhpcyB3YWl0IGNhbiBiZSBnYWluZWQg
YnkgcnVubmluZyB0aGUgdGFza2xldC4KPiBBbmQgdGhlcmUgaXMgbGl0dGxlIHBvaW50IGluIGRv
aW5nIGJ1c3kgd29yayBmb3Igbm8gcmVzdWx0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
