Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9D4242F77
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 21:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9343C6E136;
	Wed, 12 Aug 2020 19:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A04786E136
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 19:39:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id EBEAA3F515;
 Wed, 12 Aug 2020 21:39:23 +0200 (CEST)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=C7zkV/7s; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.554
X-Spam-Level: 
X-Spam-Status: No, score=-3.554 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-1.455,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GPg8SzUxurW7; Wed, 12 Aug 2020 21:39:23 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id DEC083F4FC;
 Wed, 12 Aug 2020 21:39:22 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 1B6C9360507;
 Wed, 12 Aug 2020 21:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597261162; bh=HQJoZx+ZkRLNfeDGJN1boKcQR0G0JfZngNstu1U8PpE=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=C7zkV/7sDv1w+ql3cu5VJzX7NkEcpd2SqnmDygXS6e6D/NeZuP7XyFdiNm2lDZCvS
 YKX+XDVkrrpGS9nGZ2If5Lm7ntqv5vbTaNYnvJCSElSrg0vZ/VMjI48wX43nTicYFl
 ue/7TBK2/wo5yTfg+iYhpACEeRGoOC7ECs7mpAcA=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-17-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <69a20a58-949b-2109-9444-2ca37f21e18a@shipmail.org>
Date: Wed, 12 Aug 2020 21:39:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200810103103.303818-17-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/24] drm/i915: Convert
 i915_gem_object/client_blt.c to use ww locking as well, v2.
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

Ck9uIDgvMTAvMjAgMTI6MzAgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IFRoaXMgaXMg
dGhlIGxhc3QgcGFydCBvdXRzaWRlIG9mIHNlbGZ0ZXN0cyB0aGF0IHN0aWxsIGRvbid0IHVzZSB0
aGUKPiBjb3JyZWN0IGxvY2sgb3JkZXJpbmcgb2YgdGltZWxpbmUtPm11dGV4IHZzIHJlc3ZfbG9j
ay4KPgo+IFdpdGggZ2VtIGZpeGVkLCB0aGVyZSBhcmUgYSBmZXcgcGxhY2VzIHRoYXQgc3RpbGwg
Z2V0IGxvY2tpbmcgd3Jvbmc6Cj4gLSBndnQvc2NoZWR1bGVyLmMKPiAtIGk5MTVfcGVyZi5jCj4g
LSBNb3N0IGlmIG5vdCBhbGwgc2VsZnRlc3RzLgo+Cj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAtIEFk
ZCBpbnRlbF9lbmdpbmVfcG1fZ2V0L3B1dCgpIGNhbGxzIHRvIGZpeCB1c2UtYWZ0ZXItZnJlZSB3
aGVuIHVzaW5nCj4gICAgaW50ZWxfZW5naW5lX2dldF9wb29sKCkuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoK
TEdUTS4KClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBp
bnRlbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
