Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 342BC23319E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 14:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C0F6E8D8;
	Thu, 30 Jul 2020 12:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39BFA6E8D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 12:04:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id BA9163FAA5;
 Thu, 30 Jul 2020 14:04:34 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=cgRm7aVg; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.923
X-Spam-Level: 
X-Spam-Status: No, score=-2.923 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.824,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4TmLfmHdTT-m; Thu, 30 Jul 2020 14:04:33 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id F3C653FA20;
 Thu, 30 Jul 2020 14:04:32 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 33CBE361FE2;
 Thu, 30 Jul 2020 14:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596110673; bh=bWSWBc+Fq8BjpplTQXdPQ7s+iVHFtcrpGQcuIiFEpvQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=cgRm7aVgTP3AQuhc0kiA+z3XWX+8/boHEp5ex3Vljra5DpQR5lZeM8phDo7TDMWss
 TOT40lcpvG5dP0IHB7vWcekoQdx+V7Et4wA8758wqmubYxV8la2PV64E99cZsPJRpJ
 gs3VOUSFZmDF1AcwNPvtIr6MkaEELweTf2I2IYJA=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-11-chris@chris-wilson.co.uk>
 <dabc6756-3ba8-ee58-ca6c-e2ae2f0227ac@shipmail.org>
 <159594782797.665.3798858958968044733@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <057d3aca-9be0-6f8a-ee18-fb2ece032718@shipmail.org>
Date: Thu, 30 Jul 2020 14:04:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159594782797.665.3798858958968044733@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/66] drm/i915: Preallocate stashes for vma
 page-directories
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

CgpPbiA3LzI4LzIwIDQ6NTAgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFRob21h
cyBIZWxsc3Ryw7ZtIChJbnRlbCkgKDIwMjAtMDctMjcgMTA6MjQ6MjQpCj4+IEhpLCBDaHJpcywK
Pj4KPj4gSXQgYXBwZWFycyB0byBtZSBsaWtlIHRoaXMgc2VyaWVzIGlzIGRvaW5nIGEgbG90IG9m
IGRpZmZlcmVudCB0aGluZ3M6Cj4+Cj4+IC0gVmFyaW91cyBvcHRpbWl6YXRpb25zCj4+IC0gTG9j
a2luZyByZXdvcmsKPj4gLSBBZGRpbmcgc2NoZWR1bGVycwo+PiAtIE90aGVyIG1pc2MgZml4ZXMK
Pj4KPj4gQ291bGQgeW91IHBsZWFzZSBzZXBhcmF0ZSBvdXQgYXMgbXVjaCBhcyBwb3NzaWJsZSB0
aGUgbG9ja2luZyByZXdvcmsKPj4gcHJlcmVxdWlzaXRlcyBpbiBvbmUgc2VyaWVzIHdpdGggY292
ZXIgbGV0dGVyLCBhbmQgbW9zdCBpbXBvcnRhbnRseSB0aGUKPj4gbWFqb3IgcGFydCBvZiB0aGUg
bG9ja2luZyByZXdvcmsgKG9ubHkpIHdpdGggYSBtb3JlIGVsYWJvcmF0ZSBjb3Zlcgo+PiBsZXR0
ZXIgZGlzY3Vzc2luZywgaWYgbm90IHRyaXZpYWwsIGhvdyBlYWNoIHBhdGNoIGZpdHMgaW4gYW5k
IG9uIGRlc2lnbgo+PiBhbmQgZnV0dXJlIGRpcmVjdGlvbnMsIFF1ZXN0aW9ucyB0aGF0IEkgaGF2
ZSBzdHVtYmxlZCBvbiBzbyBmYXIgKGJlaW5nIGEKPj4gbmV3LXRvLXRoZS1kcml2ZXIgcmV2aWV3
ZXIpOgo+IFRoZSBsb2NraW5nIGRlcGVuZCBvbiB0aGUgZm9ybWVyIHdvcmsgdG8gcmVkdWNlIHRo
ZSBpbXBhY3QuIEl0J3Mgc3RpbGwgYQo+IG1ham9yIGlzc3VlIHRoYXQgd2UgaW50cm9kdWNlIGEg
YnJvYWQgbG9jayB0aGF0IGlzIGhlbGQgZm9yIHNldmVyYWwKPiBodW5kcmVkIG1pbGxpc2Vjb25k
cyBhY3Jvc3MgbWFueSBvYmplY3RzIHRoYXQgc3RhbGxzIGdhbWUmY29tcG9zaXRvci4KPiAgIAo+
PiAtIFdoZW4gYXJlIG1lbW9yeSBhbGxvY2F0aW9ucyBkaXNhbGxvd2VkPyBJZiB3ZSBuZWVkIHRv
IHByZS1hbGxvY2F0ZSBpbgo+PiBleGVjYnVmLCB3aGVuPyB3aHk/Cj4gVGhhdCBzaG91bGQgYmUg
bWVudGlvbmVkIGluIHRoZSBjb2RlLgo+Cj4+IC0gV2hlbiBpcyB0aGUgcmVxdWVzdCBkbWEtZmVu
Y2UgcHVibGlzaGVkPwo+IFRoZXJlIGEgYmlnIGNvbW1lbnQgdG8gdGhhdCBlZmZlY3QuCj4KPj4g
LSBEbyB3ZSBuZWVkIHRvIGtlZXAgY3B1IGFzeW5jaHJvbm91cyBleGVjYnVmIHRhc2tzIGFmdGVy
IHRoaXM/IHdoeT8KPiBLZWVwPyBPaCwgeW91IG1lYW4gbm90IGltbWVkaWF0ZWx5IGRpc2NhcmQg
YWZ0ZXIgcHVibGlzaGluZyB0aGVtLCBidXQKPiB3aHkgd2UgbmVlZCB0aGVtLiBTYW1lIHJlYXNv
biBhcyB3ZSBuZWVkIHRoZW0gYmVmb3JlLgo+Cj4+IC0gV2hhdCBhYm91dCB1c2VycHRyIHBpbm5p
bmcgZW5kaW5nIHVwIGluIHRoZSBkbWFfZmVuY2UgY3JpdGljYWwgcGF0aD8KPiBJdCdzIGluIHRo
ZSB1c2VyIGNyaXRpY2FsIHBhdGggKHRoZSBzaG9ydGVzdCBwYXRoIHRvIHBlcmZvcm0gdGhlaXIK
PiBzZXF1ZW5jZSBvZiBvcGVyYXRpb25zKSwgYnV0IGl0J3MgYmVmb3JlIHRoZSBkbWEtZmVuY2Ug
aXRzZWxmLiBJIHNheQo+IHRoYXQncyBhIHBhcnRpY3VsYXJseSBuYXN0eSBmYWxzZSBjbGFpbSB0
aGF0IGl0IGlzIG5vdCBvbiB0aGUgY3JpdGljYWwKPiBwYXRoLCBidXQgYmVpbmcgd2hlcmUgaXQg
aXMgY2lyY3VtdmVudHMgdGhlIHdob2xlIGFyZ3VtZW50Lgo+ICAgCj4+IEFuZCB0aGVuIG1vdmUg
YW55dGhpbmcgbm9uLXJlbGF0ZWQgdG8gc2VwYXJhdGUgc2VyaWVzPwo+IE5vdCByZWxhdGVkIHRv
IHdoYXQ/IERldmVsb3BtZW50IG9mIGk5MTU/Cj4gLUNocmlzCgpTbyB3aGlsZSBpdCdzIHRydWUg
dGhhdCBhIGdvb2QgcHJpb3IgdW5kZXJzdGFuaW5nIG9mIHRoZSBkcml2ZXIgdG9nZXRoZXIgCndp
dGggYSBkZXRhaWxlZCBhbmFseXNpcyBvZiB0aGUgY29kZSB3b3VsZCBwcm92aWRlIGFuc3dlcnMg
dG8gbW9zdCBvZiAKdGhlc2UgcXVlc3Rpb25zLCB0aGV5IHdlcmUgYWN0dWFsbHkgcHJpbWFyaWxs
eSBpbnRlbmRlZCB0byBzZXJ2ZSBhcyAKaW5zcGlyYXRpb24gZm9yIGFuIGVsYWJvcmF0ZSBjb3Zl
ciBsZXR0ZXIuCgpJIGJlbGlldmUgYSBkaXNjdXNzaW9uIHRvdWNoaW5nIHRoZXNlIGl0ZW1zIHdv
dWxkIGJlIGEgZ29vZCBhaWQgdG8gCnBlb3BsZSBlbWJhcmtpbmcgb24gcmV2aWV3aW5nIHRoZSBz
ZXJpZXMuCgovVGhvbWFzCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
