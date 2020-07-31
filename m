Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C96B23469B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 15:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658C36E8F8;
	Fri, 31 Jul 2020 13:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 242A16E8F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 13:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id A1B2D3F54A;
 Fri, 31 Jul 2020 15:09:15 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=Z3or6ogd; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.911
X-Spam-Level: 
X-Spam-Status: No, score=-2.911 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.812,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YdYu28tazBQs; Fri, 31 Jul 2020 15:09:14 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id C065C3F536;
 Fri, 31 Jul 2020 15:09:12 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id CA63D361FD5;
 Fri, 31 Jul 2020 15:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596200953; bh=H/WEHCSNTK0ZKmxqlrJSY7Kn/Uolw16bH3+ls1u9x0M=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Z3or6ogd3y/5c00yJWYuf3DR2sHo+eHqY4CJB1Psyb9nG4PR+GfNGcF+UxZkhuR5b
 NHbWk0nL1FFFpvQvvGSWNhlgDjbRCvvZ+1fzfnsRf9CuLYn5mDOYXUi5aLtWZ71AwV
 a6nh9Ap1rcgIFDowCYZ2vfYeWGIAo797DP1HmBuk=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-21-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <27885558-879c-1e4b-be71-d8c8dcac694a@shipmail.org>
Date: Fri, 31 Jul 2020 15:09:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-21-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 21/66] drm/i915/gem: Asynchronous GTT
 unbinding
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDcvMTUvMjAgMTo1MSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEl0IGlzIHJlYXNvbmFi
bHkgY29tbW9uIGZvciB1c2Vyc3BhY2UgKGV2ZW4gbW9kZXJuIGRyaXZlcnMgbGlrZSBpcmlzKSB0
bwo+IHJldXNlIGFuIGFjdGl2ZSBhZGRyZXNzIGZvciBhIG5ldyBidWZmZXIuIFRoaXMgd291bGQg
Y2F1c2UgdGhlCj4gYXBwbGljYXRpb24gdG8gc3RhbGwgdW5kZXIgaXRzIG11dGV4IChvcmlnaW5h
bGx5IHN0cnVjdF9tdXRleCkgdW50aWwgdGhlCj4gb2xkIGJhdGNoZXMgd2VyZSBpZGxlIGFuZCBp
dCBjb3VsZCBzeW5jaHJvbm91c2x5IHJlbW92ZSB0aGUgc3RhbGUgUFRFLgo+IEhvd2V2ZXIsIHdl
IGNhbiBxdWV1ZSB1cCBhIGpvYiB0aGF0IHdhaXRzIG9uIHRoZSBzaWduYWwgZm9yIHRoZSBvbGQK
PiBub2RlcyB0byBjb21wbGV0ZSBhbmQgdXBvbiB0aG9zZSBzaWduYWxzLCByZW1vdmUgdGhlIG9s
ZCBub2RlcyByZXBsYWNpbmcKPiB0aGVtIHdpdGggdGhlIG5ldyBvbmVzIGZvciB0aGUgYmF0Y2gu
IFRoaXMgaXMgc3RpbGwgQ1BVIGRyaXZlbiwgYnV0IGluCj4gdGhlb3J5IHdlIGNhbiBkbyB0aGUg
R1RUIHBhdGNoaW5nIGZyb20gdGhlIEdQVS4gVGhlIGpvYiBpdHNlbGYgaGFzIGEKPiBjb21wbGV0
aW9uIHNpZ25hbCBhbGxvd2luZyB0aGUgZXhlY2J1ZiB0byB3YWl0IHVwb24gdGhlIHJlYmluZGlu
ZywgYW5kCj4gYWxzbyBvdGhlciBvYnNlcnZlcnMgdG8gY29vcmRpbmF0ZSB3aXRoIHRoZSBjb21t
b24gVk0gYWN0aXZpdHkuCj4KPiBMZXR0aW5nIHVzZXJzcGFjZSBxdWV1ZSB1cCBtb3JlIHdvcmss
IGxldHMgaXQgZG8gbW9yZSBzdHVmZiB3aXRob3V0Cj4gYmxvY2tpbmcgb3RoZXIgY2xpZW50cy4g
SW4gdHVybiwgd2UgdGFrZSBjYXJlIG5vdCB0byBsZXQgaXQgdG9vIG11Y2gKPiBjb25jdXJyZW50
IHdvcmssIGNyZWF0aW5nIGEgc21hbGwgbnVtYmVyIG9mIHF1ZXVlcyBmb3IgZWFjaCBjb250ZXh0
IHRvCj4gbGltaXQgdGhlIG51bWJlciBvZiBjb25jdXJyZW50IHRhc2tzLgo+Cj4gVGhlIGltcGxl
bWVudGF0aW9uIHJlbGllcyBvbiBvbmx5IHNjaGVkdWxpbmcgb25lIHVuYmluZCBvcGVyYXRpb24g
cGVyCj4gdm1hIGFzIHdlIHVzZSB0aGUgdW5ib3VuZCB2bWEtPm5vZGUgbG9jYXRpb24gdG8gdHJh
Y2sgdGhlIHN0YWxlIFBURS4KPgo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC9pc3N1ZXMvMTQwMgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+Cj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgoKUmV2
aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
