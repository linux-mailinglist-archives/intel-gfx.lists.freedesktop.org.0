Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B2220CEBF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 15:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD776E063;
	Mon, 29 Jun 2020 13:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AB3A6EA6A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 22:30:02 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id k18so91752qke.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 15:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=eaPZgevT2CpnMUUM+GmJp3ep826/Vu8USLaTW1XXGMw=;
 b=QWQq5RDGTnwX3WnqevkbBWkazZh8odQfl932pZ3UbY0dCGQegngCVgx95WkZVr6BnO
 65ZIHrqmao0uN6GenF/4y4CW/OcmRkJXPzNKvRDmcXb7ZC7erhMA93XdDlwZ6l3vBF1f
 GxHnbtJycGks7s5BOlmqFZKUgWd+grPqJxni7VbGgMA8zUApStYLutkeT0rlrIBOHI08
 3Cql55Igvie4tl+36H8VyJCyQqgV0RR76/eI9IGW+so79IAWGhwE2UWaR81yETHij9Y+
 SmTPqigtUan78yqLcCU63BGCxEuDALLbhJ89gWLbCtwqVG4DBdoucn263Wyo8rE2fDql
 8TgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=eaPZgevT2CpnMUUM+GmJp3ep826/Vu8USLaTW1XXGMw=;
 b=AWkVSjFC/0T/UXlNydizWB35d86ROmfMpR4PKAFrHeFUh7dYu2jlJGn2QMP1Xe+Som
 VRSWsgfh6I1MZyZLhx0r5jqfL2PKCefcV0QdjYnxwGreD5X1rNCwaYn1V529qUKn08dK
 fkD71vuGDTjCvAZpoKOueobIv+PzLG4F72EdFA4pw9VG9wow84VRUme/x9fdfzZJ781E
 0h3AAGU2/PAHwS+PsZ3WhZRBlpDb5wfrJV2pSPjfCdz3P7mXQrWACAteroUOR6mKP5aW
 tfdaYMZZ7PdgKYTBDrYAemeWyrC0hLf5picBeb2iSO2s91XjQupnGeNYfZtbZ1OfYxx9
 OZzg==
X-Gm-Message-State: AOAM533zdwI8GCIiwuzMkG8ovcY5+IU4riGJF3734bpy7Mvp75MZSI80
 cC+0JUvas19xY3p6gCMTzX+3zg==
X-Google-Smtp-Source: ABdhPJwk15aS1BWBT2iEbMasfTOJdZ8L9kYNLCwIeSkqEjFH3YWtkSFhBbq1XdpbSIFrixrWCXSxpg==
X-Received: by 2002:a37:5ac1:: with SMTP id o184mr6623255qkb.498.1592951401983; 
 Tue, 23 Jun 2020 15:30:01 -0700 (PDT)
Received: from ?IPv6:2600:1000:b118:1dc0:18a:ef24:8000:54d8?
 ([2600:1000:b118:1dc0:18a:ef24:8000:54d8])
 by smtp.gmail.com with ESMTPSA id 207sm1764428qki.134.2020.06.23.15.30.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Jun 2020 15:30:01 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Date: Tue, 23 Jun 2020 18:29:58 -0400
Message-Id: <CBC5DC63-241C-4291-8686-21CF758AC91B@lca.pw>
References: <CAKMK7uH90-k12KMHE0pWN6G_aCTr=YNhQsqoaAJC5FHygnf96g@mail.gmail.com>
In-Reply-To: <CAKMK7uH90-k12KMHE0pWN6G_aCTr=YNhQsqoaAJC5FHygnf96g@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Mailer: iPhone Mail (17F80)
X-Mailman-Approved-At: Mon, 29 Jun 2020 13:14:32 +0000
Subject: Re: [Intel-gfx] [PATCH] mm: Track mmu notifiers in
 fs_reclaim_acquire/release
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-xfs@vger.kernel.org, Linux MM <linux-mm@kvack.org>,
 Jason Gunthorpe <jgg@mellanox.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IE9uIEp1biAyMywgMjAyMCwgYXQgNjoxMyBQTSwgRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPiB3cm90ZToKPiAKPiBPayBJIHRlc3RlZCB0aGlzLiBJIGNhbid0IHVzZSB5b3VyIHNj
cmlwdCB0byByZXBybyBiZWNhdXNlCj4gLSBJIGRvbid0IGhhdmUgYSBzZXR1cCB3aXRoIHhmcywg
YW5kIHRoZSBzcGxhdCBwb2ludHMgYXQgYW4gaXNzdWUgaW4geGZzCj4gLSByZXByb2R1Y2luZyBs
b2NrZGVwIHNwbGF0cyBpbiBzaHJpbmtlciBjYWxsYmFja3MgaXMgYWx3YXlzIGEgYml0IHRyaWNr
eQoKV2hhdOKAmXMgeGZzIHNldHVwIGFyZSB5b3UgdGFsa2luZyBhYm91dD8gVGhpcyBpcyBzaW1w
bGUgeGZzIHJvb3RmcyBhbmQgdGhlbiB0cmlnZ2VyIHN3YXBwaW5nLiBOb3RoaW5nIHRyaWNreSBo
ZXJlIGFzIGl0IGhpdCBvbiBtdWx0aXBsZSBtYWNoaW5lcyB3aXRoaW4gYSBmZXcgc2Vjb25kcyBv
biBsaW51eC1uZXh0LgoKPiBTdW1tYXJ5OiBFdmVyeXRoaW5nIGlzIHdvcmtpbmcgYXMgZXhwZWN0
ZWQsIHRoZXJlJ3Mgbm8gY2hhbmdlIGluIHRoZQo+IGxvY2tkZXAgYW5ub3RhdGlvbnMuCj4gSSBy
ZWFsbHkgdGhpbmsgdGhlIHByb2JsZW0gaXMgdGhhdCBlaXRoZXIgeW91ciB0ZXN0Y2FzZSBkb2Vz
bid0IGhpdAo+IHRoZSBpc3N1ZSByZWxpYWJseSBlbm91Z2gsIG9yIHRoYXQgeW91J3JlIG5vdCBh
Y3R1YWxseSB0ZXN0aW5nIHRoZQo+IHNhbWUga2VybmVscyBhbmQgdGhlcmUncyBzb21lIG90aGVy
IGNoYW5nZXMgKHhmcyBtb3N0IGxpa2VseSwgYnV0Cj4gcmVhbGx5IGl0IGNvdWxkIGJlIGFueXdo
ZXJlKSB3aGljaCBpcyBjYXVzaW5nIHRoaXMgcmVncmVzc2lvbi4gSSdtCj4gcmF0aGVyIGNvbnZp
bmNlZCBub3cgYWZ0ZXIgdGhpcyB0ZXN0IHRoYXQgaXQncyBub3QgbXkgc3R1ZmYuCgpXZWxsLCB0
aGUgbWVtb3J5IHByZXNzdXJlIHdvcmtsb2FkcyBoYXZlIGJlZW4gcnVubmluZyBmb3IgeWVhcnMg
b24gZGFpbHkgbGludXgtbmV4dCBidWlsZHMgYW5kIG5ldmVyIHNhdyB0aGlzIG9uZSBoYXBwZW5l
ZCBvbmNlLiBBbHNvLCB0aGUgcmV2ZXJ0aW5nIGlzIE9OTFkgdG8gcmV2ZXJ0IHlvdXIgcGF0Y2gg
b24gdGhlIHRvcCBvZiBsaW51eC1uZXh0IHdpbGwgc3RvcCB0aGUgc3BsYXQsIHNvIHRoZXJlIGlz
IG5vIG5vdCB0ZXN0aW5nIHRoZSBzYW1lIGtlcm5lbCBhdCBhbGwuCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
