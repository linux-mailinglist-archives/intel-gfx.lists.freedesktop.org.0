Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AA118A42
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 15:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C4489AC6;
	Thu,  9 May 2019 13:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from merlin.infradead.org (merlin.infradead.org
 [IPv6:2001:8b0:10b:1231::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D87EF89AC6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 13:05:24 +0000 (UTC)
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOijS-0003Ib-KB; Thu, 09 May 2019 13:05:06 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 28E9222158202; Thu,  9 May 2019 15:05:04 +0200 (CEST)
Date: Thu, 9 May 2019 15:05:04 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190509130504.GW2623@hirez.programming.kicks-ass.net>
References: <20190502141643.21080-1-daniel.vetter@ffwll.ch>
 <20190506074553.21464-1-daniel.vetter@ffwll.ch>
 <155739797736.28545.2942646931608459049@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <155739797736.28545.2942646931608459049@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0BxG/P6nTaRHuqfrtLoIVS1BNNS5MjTMtFgzd0GUMd4=; b=BxSg29KQW/uKNfhjMWs5rtImU
 8kmU1YHUsnPgLAdVsq7IajVexZeJhCQmXXFr4xSyw93bYdvLNKDtXaNRluD5dvJw6cLW8Bwcp0dgT
 LxU2aHHRDS349X+b3z724lYmmmDfu8MQnJYG2Icn3+8YzFITQhpgbF+zVebP/wHIajnu6kaqY4qwG
 5QChwJRn2PqG4xZlcjH1gpU8QXTCWBHwubaGzgMLDX4EiIV5TSe6sUrhdNCDBi/n/nDD+g0T2cfSC
 Sij+nfh51Y9j9s/s4oS3COZ4ee/dxE2UNxG/Ixygrc7c8HkWIjOfomFA3j+X5IGFped/HqPYyET2X
 EwxMimN9A==;
Subject: Re: [Intel-gfx] [PATCH] RFC: console: hack up console_lock more v2
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Petr Mladek <pmladek@suse.com>, John Ogness <john.ogness@linutronix.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMTE6MzI6NTdBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAxOS0wNS0wNiAwODo0NTo1MykKPiA+ICsv
KioKPiA+ICsgKiBwcmludGtfc2FmZV91cCAtIHJlbGVhc2UgdGhlIHNlbWFwaG9yZSBpbiBjb25z
b2xlX3VubG9jawo+ID4gKyAqIEBzZW06IHRoZSBzZW1hcGhvcmUgdG8gcmVsZWFzZQo+ID4gKyAq
Cj4gPiArICogUmVsZWFzZSB0aGUgc2VtYXBob3JlLiAgVW5saWtlIG11dGV4ZXMsIHVwKCkgbWF5
IGJlIGNhbGxlZCBmcm9tIGFueQo+ID4gKyAqIGNvbnRleHQgYW5kIGV2ZW4gYnkgdGFza3Mgd2hp
Y2ggaGF2ZSBuZXZlciBjYWxsZWQgZG93bigpLgo+ID4gKyAqCj4gPiArICogTk9URTogVGhpcyBp
cyBhIHNwZWNpYWwgdmVyc2lvbiBvZiB1cCgpIGZvciBjb25zb2xlX3VubG9jayBvbmx5LiBJdCBp
cyBvbmx5Cj4gPiArICogc2FmZSBpZiB0aGVyZSBhcmUgbm8ga2lsbGFibGUsIGludGVycnVwdGli
bGUgb3IgdGltaW5nIG91dCBkb3duKCkgY2FsbHMuCj4gPiArICovCj4gPiArdm9pZCBwcmludGtf
c2FmZV91cChzdHJ1Y3Qgc2VtYXBob3JlICpzZW0pCj4gPiArewo+ID4gKyAgICAgICB1bnNpZ25l
ZCBsb25nIGZsYWdzOwo+ID4gKyAgICAgICBzdHJ1Y3Qgc2VtYXBob3JlX3dhaXRlciAqd2FpdGVy
ID0gTlVMTDsKPiA+ICsKPiA+ICsgICAgICAgcmF3X3NwaW5fbG9ja19pcnFzYXZlKCZzZW0tPmxv
Y2ssIGZsYWdzKTsKPiA+ICsgICAgICAgaWYgKGxpa2VseShsaXN0X2VtcHR5KCZzZW0tPndhaXRf
bGlzdCkpKSB7Cj4gPiArICAgICAgICAgICAgICAgc2VtLT5jb3VudCsrOwo+ID4gKyAgICAgICB9
IGVsc2Ugewo+ID4gKyAgICAgICAgICAgICAgIHdhaXRlciA9IGxpc3RfZmlyc3RfZW50cnkoJnNl
bS0+d2FpdF9saXN0LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IHNlbWFwaG9yZV93YWl0ZXIsIGxpc3QpOwo+ID4gKyAgICAgICAgICAgICAgIGxp
c3RfZGVsKCZ3YWl0ZXItPmxpc3QpOwo+ID4gKyAgICAgICAgICAgICAgIHdhaXRlci0+dXAgPSB0
cnVlOwo+ID4gKyAgICAgICB9Cj4gPiArICAgICAgIHJhd19zcGluX3VubG9ja19pcnFyZXN0b3Jl
KCZzZW0tPmxvY2ssIGZsYWdzKTsKPiA+ICsKPiA+ICsgICAgICAgaWYgKHdhaXRlcikKPiA+ICsg
ICAgICAgICAgICAgICB3YWtlX3VwX3Byb2Nlc3Mod2FpdGVyLT50YXNrKTsKPiAKPiBGcm9tIGNv
bXBhcmluZyBhZ2FpbnN0IF9fZG93bl9jb21tb24oKSB0aGVyZSdzIGEgcmlzayBoZXJlIHRoYXQg
YXMgc29vbgo+IGFzIHdhaXRlci0+dXAgPT0gdHJ1ZSwgdGhlIHdhaXRlciBtYXkgY29tcGxldGUg
YW5kIG1ha2UgdGhlIG9uc3RhY2sKPiBzdHJ1Y3Qgc2VtYXBob3JlX3dhaXRlciBpbnZhbGlkLiBJ
ZiB5b3Ugc3RvcmUgd2FpdGVyLT50YXNrIGxvY2FsbHkgdW5kZXIKPiB0aGUgc3BpbmxvY2sgdGhh
dCBwcm9ibGVtIGlzIHJlc29sdmVkLgo+IAo+IFRoZW4gdGhlcmUgaXMgdGhlIGlzc3VlIG9mIGFu
IHVucHJvdGVjdGVkIGRlcmVmZXJlbmNlIG9mIHRoZSB0YXNrIGluCj4gd2FrZV91cF9wcm9jZXNz
KCkgLS0gSSB0aGluayB5b3UgY2FuIHdyYXAgdGhpcyBmdW5jdGlvbiB3aXRoCj4gcmN1X3JlYWRf
bG9jaygpIHRvIGtlZXAgdGhhdCBzYWZlLCBhbmQgd2FrZV91cF9wcm9jZXNzKCkgc2hvdWxkIGJl
IGEKPiBuby1vcCBpZiBpdCByYWNlcyBhZ2FpbnN0IHByb2Nlc3MgdGVybWluYXRpb24uCgp0YXNr
X3N0cnVjdCBpcyBub3QgUkNVIHByb3RlY3RlZCwgc2VlIHRhc2tfcmN1X2RlcmVmZXJlbmNlKCkg
Zm9yIG1hZ2ljLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
