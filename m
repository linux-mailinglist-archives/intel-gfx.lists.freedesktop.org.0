Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF5A205736
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 18:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00CE86E433;
	Tue, 23 Jun 2020 16:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34126E433
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 16:29:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 48D893F80C;
 Tue, 23 Jun 2020 18:29:54 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=joyhbvUr; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zfk61kMO3R8B; Tue, 23 Jun 2020 18:29:53 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 5F85F3F240;
 Tue, 23 Jun 2020 18:29:52 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 8FF00362166;
 Tue, 23 Jun 2020 18:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592929791; bh=vts61wmF73N778DF/bfb98JeCgHZsQ9ktKqdWxrhF9g=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=joyhbvUrIMIpm7Ew9h5SoPuB1DC7er3iy+KpVv+IgLnYI9BTSx0DgZBgMEmXLZ3nm
 FRNhaot6d/chrZiF6k/0Vk46LmANR4m5bDQMbv9c2lhX94/4lYSQyjWrR0irZonzhe
 rw0ML+U4V0Bu+EILZWa86z9ZHslY+SmgCU9Fr3zY=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <1712fc5b-9b1e-0632-13c0-e0bc2c1d889d@shipmail.org>
 <e05ef872-8659-2a11-5c89-c42cf080905b@shipmail.org>
 <159292086189.10607.10450244252436195167@build.alporthouse.com>
 <3ea271d6-3101-62e0-8fb6-d433ba78ff17@shipmail.org>
 <159292905802.3967.14570193627723429860@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <84641356-2c26-6208-e165-3cb6a143ca2c@shipmail.org>
Date: Tue, 23 Jun 2020 18:29:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159292905802.3967.14570193627723429860@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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

Ck9uIDYvMjMvMjAgNjoxNyBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVGhvbWFz
IEhlbGxzdHLDtm0gKEludGVsKSAoMjAyMC0wNi0yMyAxNjowOTowOCkKPj4gWW91IGNhbid0IHRh
a2UgdGhlIGRtYV9yZXN2X2xvY2sgaW5zaWRlIGEgZmVuY2UgY3JpdGljYWwgc2VjdGlvbi4KPiBJ
IG11Y2ggcHJlZmVyIHRoZSBhbHRlcm5hdGl2ZSBpbnRlcnByZXRhdGlvbiwgeW91IGNhbid0IHdh
aXQgaW5zaWRlIGEKPiBkbWFfcmVzdl9sb2NrLgo+IC1DaHJpcwoKSSByZXNwZWN0IHlvdXIgcG9p
bnQgb2YgdmlldywgYXRob3VnaCBJIG5lZWQgdG8gdGhpbmsgd2UgbmVlZCB0byBmb2N1cyAKb24g
d2hhdCB3ZSBoYXZlIHRvIGRvIGluIHRoZSBpOTE1IGRyaXZlci4KCi9UaG9tYXMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
