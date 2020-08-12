Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD71D242EDA
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 21:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD3A6E159;
	Wed, 12 Aug 2020 19:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9922A6E159
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 19:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 7E2C73F58A;
 Wed, 12 Aug 2020 21:01:11 +0200 (CEST)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=BV78ZGDA; 
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
 with ESMTP id iLkXTT76M9fW; Wed, 12 Aug 2020 21:01:10 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 32B2F3F571;
 Wed, 12 Aug 2020 21:01:09 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 5FB87360507;
 Wed, 12 Aug 2020 21:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597258869; bh=ALGq4TRqCxr6AOSzqKvt7HYvP3tRG7eg+OcewfppUqg=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=BV78ZGDAiSKXkNafkfrb/zRVQ3DwqQqLT5GOqC4vAu4Q1m/PNETmbHiwv5GSfaUdd
 GE4V6hivXfX+i3oW7xsTEHH1pUA3A+1Q7NZ4K9crHD4ZnXyG5ecPKllRUFcza9++hO
 Dv+eoDVbI/ZR85vLVWmZSzAGdTFmfpw0gMtHsXGo=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-14-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <c0a71aa6-0db2-7de6-2dd0-281dbd84bba2@shipmail.org>
Date: Wed, 12 Aug 2020 21:01:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200810103103.303818-14-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 13/24] drm/i915: Pin engine before pinning
 all objects, v5.
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

Ck9uIDgvMTAvMjAgMTI6MzAgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IFdlIHdhbnQg
dG8gbG9jayBhbGwgZ2VtIG9iamVjdHMsIGluY2x1ZGluZyB0aGUgZW5naW5lIGNvbnRleHQgb2Jq
ZWN0cywKPiByZXdvcmsgdGhlIHRocm90dGxpbmcgdG8gZW5zdXJlIHRoYXQgd2UgY2FuIGRvIHRo
aXMuIE5vdyB3ZSBvbmx5IHRocm90dGxlCj4gb25jZSwgYnV0IGNhbiB0YWtlIGViX3Bpbl9lbmdp
bmUgd2hpbGUgYWNxdWlyaW5nIG9iamVjdHMuIFRoaXMgbWVhbnMgd2UKPiB3aWxsIGhhdmUgdG8g
ZHJvcCB0aGUgbG9jayB0byB3YWl0LiBJZiB3ZSBkb24ndCBoYXZlIHRvIHRocm90dGxlIHdlIGNh
bgo+IHN0aWxsIHRha2UgdGhlIGZhc3RwYXRoLCBpZiBub3Qgd2Ugd2lsbCB0YWtlIHRoZSBzbG93
cGF0aCBhbmQgd2FpdCBmb3IKPiB0aGUgdGhyb3R0bGUgcmVxdWVzdCB3aGlsZSB1bmxvY2tlZC4K
Pgo+IFRoZSBlbmdpbmUgaGFzIHRvIGJlIHBpbm5lZCBhcyBmaXJzdCBzdGVwLCBvdGhlcndpc2Ug
Z3B1IHJlbG9jYXRpb25zCj4gd29uJ3Qgd29yay4KPgo+IENoYW5nZXMgc2luY2UgdjE6Cj4gLSBP
bmx5IG5lZWQgdG8gZ2V0IGEgdGhyb3R0bGVkIHJlcXVlc3QgaW4gdGhlIGZhc3RwYXRoLCBubyBu
ZWVkIGZvcgo+ICAgIGEgZ2xvYmFsIGZsYWcgYW55IG1vcmUuCj4gLSBBbHdheXMgZnJlZSB0aGUg
d2FpdGVkIHJlcXVlc3QgY29ycmVjdGx5Lgo+IENoYW5nZXMgc2luY2UgdjI6Cj4gLSBVc2UgaW50
ZWxfZW5naW5lX3BtX2dldCgpL3B1dCgpIHRvIGtlZWVwIGVuZ2luZSBwb29sIGFsaXZlIGR1cmlu
Zwo+ICAgIEVERUFETEsgaGFuZGxpbmcuCj4gQ2hhbmdlcyBzaW5jZSB2MzoKPiAtIEZpeCBzbWFs
bCBycSBsZWFrLgo+IENoYW5nZXMgc2luY2UgdjQ6Cj4gLSBVc2UgYSBzaW5nbGUgcmVsb2NfY29u
dGV4dCwgZm9yIGludGVsX2NvbnRleHRfcGluX3d3KCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKUmV2aWV3
ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
