Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D53234059
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 09:44:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3537D6EA10;
	Fri, 31 Jul 2020 07:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9B26EA10
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 07:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 94EDA3F6A9;
 Fri, 31 Jul 2020 09:43:59 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=WajAByta; 
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
 with ESMTP id Vo0MxuJ0m1tH; Fri, 31 Jul 2020 09:43:58 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id C51E63F3B8;
 Fri, 31 Jul 2020 09:43:57 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 1C899361FD5;
 Fri, 31 Jul 2020 09:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596181437; bh=zahQJRRypLGkg5SeDLvDlcZk2inIdb/KRL3GjbXqrfg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=WajABytalJFRqqZlsargvge5M+VPWm1CqSQF187gXpJVjf2ZA9mgE8uSfR0wB44iq
 xeP9yBaay/EdQPLXVImZOiU82C4/MNRvYe1wh9gqIvyALll02LpIkh7+PvIPxG7LCF
 DS8lE7Oc9t3BjOXP/9ayKC/ie80et2XAXIuOxB20=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-11-chris@chris-wilson.co.uk>
 <ce53a500-4ec1-44f4-17d9-c63fad5aaf21@shipmail.org>
 <159594736565.665.915217302462044205@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <0295557e-29ba-ff4e-8117-65ef918145e3@shipmail.org>
Date: Fri, 31 Jul 2020 09:43:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159594736565.665.915217302462044205@build.alporthouse.com>
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDcvMjgvMjAgNDo0MiBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVGhvbWFz
IEhlbGxzdHLDtm0gKEludGVsKSAoMjAyMC0wNy0yMyAxNTozMzoyMCkKPj4gT24gMjAyMC0wNy0x
NSAxMzo1MCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gV2UgbmVlZCB0byBtYWtlIHRoZSBETUEg
YWxsb2NhdGlvbnMgdXNlZCBmb3IgcGFnZSBkaXJlY3RvcmllcyB0byBiZQo+Pj4gcGVyZm9ybWVk
IHVwIGZyb250IHNvIHRoYXQgd2UgY2FuIGluY2x1ZGUgdGhvc2UgYWxsb2NhdGlvbnMgaW4gb3Vy
Cj4+PiBtZW1vcnkgcmVzZXJ2YXRpb24gcGFzcy4gVGhlIGRvd25zaWRlIGlzIHRoYXQgd2UgaGF2
ZSB0byBhc3N1bWUgdGhlCj4+PiB3b3JzdCBjYXNlLCBldmVuIGJlZm9yZSB3ZSBrbm93IHRoZSBm
aW5hbCBsYXlvdXQsIGFuZCBhbHdheXMgYWxsb2NhdGUKPj4+IGVub3VnaCBwYWdlIGRpcmVjdG9y
aWVzIGZvciB0aGlzIG9iamVjdCwgZXZlbiB3aGVuIHRoZXJlIHdpbGwgYmUgb3ZlcmxhcC4KPj4+
IFRoaXMgdW5mb3J0dW5hdGVseSBjYW4gYmUgcXVpdGUgZXhwZW5zaXZlLCBlc3BlY2lhbGx5IGFz
IHdlIGhhdmUgdG8KPj4+IGNsZWFyL3Jlc2V0IHRoZSBwYWdlIGRpcmVjdG9yaWVzIGFuZCBETUEg
cGFnZXMsIGJ1dCBpdCBzaG91bGQgb25seSBiZQo+Pj4gcmVxdWlyZWQgZHVyaW5nIGVhcmx5IHBo
YXNlcyBvZiBhIHdvcmtsb2FkIHdoZW4gbmV3IG9iamVjdHMgYXJlIGJlaW5nCj4+PiBkaXNjb3Zl
cmVkLCBvciBhZnRlciBtZW1vcnkvZXZpY3Rpb24gcHJlc3N1cmUgd2hlbiB3ZSBuZWVkIHRvIHJl
YmluZC4KPj4+IE9uY2Ugd2UgcmVhY2ggc3RlYWR5IHN0YXRlLCB0aGUgb2JqZWN0cyBzaG91bGQg
bm90IGJlIG1vdmVkIGFuZCB3ZSBubwo+Pj4gbG9uZ2VyIG5lZWQgdG8gcHJlYWxsb2NhdGluZyB0
aGUgcGFnZXMgdGFibGVzLgo+Pj4KPj4+IEl0IHNob3VsZCBiZSBub3RlZCB0aGF0IHRoZSBsaWZl
dGltZSBmb3IgdGhlIHBhZ2UgZGlyZWN0b3JpZXMgRE1BIGlzCj4+PiBtb3JlIG9yIGxlc3MgZGVj
b3VwbGVkIGZyb20gaW5kaXZpZHVhbCBmZW5jZXMgYXMgdGhleSB3aWxsIGJlIHNoYXJlZAo+Pj4g
YWNyb3NzIG9iamVjdHMgYWNyb3NzIHRpbWVsaW5lcy4KPj4+Cj4+PiB2MjogT25seSBhbGxvY2F0
ZSBlbm91Z2ggUEQgc3BhY2UgZm9yIHRoZSBQVEUgd2UgbWF5IHVzZSwgd2UgZG8gbm90IG5lZWQK
Pj4+IHRvIGFsbG9jYXRlIFBEIHRoYXQgd2lsbCBiZSBsZWZ0IGFzIHNjcmF0Y2guCj4+PiB2Mzog
U3RvcmUgdGhlIHNoaWZ0IHVudG8gdGhlIGZpcnN0IFBEIGxldmVsIHRvIGVuY2Fwc3VsYXRlIHRo
ZSBkaWZmZXJlbnQKPj4+IFBURSBjb3VudHMgZm9yIGdlbjYvZ2VuOC4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IENjOiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICAgIC4uLi9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYyAgICB8IDExICstLQo+Pj4gICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuNl9wcGd0dC5jICAgICAgICAgIHwgNDAgKysrKy0t
LS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW44X3BwZ3R0LmMgICAgICAgICAg
fCA3OCArKysrKy0tLS0tLS0tLS0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ2d0dC5jICAgICAgICAgIHwgNjAgKysrKysrLS0tLS0tLS0KPj4+ICAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oICAgICAgICAgICB8IDQ2ICsrKysrKy0tLS0KPj4+ICAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3BwZ3R0LmMgICAgICAgICB8IDgzICsrKysr
KysrKysrKysrKystLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgICAg
ICAgICAgICAgICB8IDI3ICsrKy0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfZ2VtX2d0dC5jIHwgNjAgKysrKysrKystLS0tLS0KPj4+ICAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2d0dC5jICAgICB8IDIyICsrLS0tCj4+PiAgICA5IGZp
bGVzIGNoYW5nZWQsIDIzNyBpbnNlcnRpb25zKCspLCAxOTAgZGVsZXRpb25zKC0pCj4+IEhpLCBD
aHJpcywKPj4KPj4gT3ZlcmFsbCBsb29rcyBnb29kLCBidXQgYSBxdWVzdGlvbjogV2h5IGNhbid0
IHdlIHBlcmZvcm0gcGFnZS10YWJsZQo+PiBtZW1vcnkgYWxsb2NhdGlvbiBvbiBkZW1hbmQgd2hl
biBuZWVkZWQ/Cj4gV2UgbmVlZCB0byBhbGxvY2F0ZSBkZXZpY2UgbWVtb3J5IGZvciB0aGUgcGFn
ZSB0YWJsZXMuIFRoZSBpbnRlbnRpb24KPiBoZXJlIGlzIGdhdGhlciB1cCBhbGwgdGhlIHJlc291
cmNlIHJlcXVpcmVtZW50cyBmb3IgYW4gb3BlcmF0aW9uIGFuZAo+IHJlc2VydmUgdGhlbSBpbiBh
IHNpbmdsZSBwYXNzLgo+ICAgCj4+IEFyZSB3ZSB0aGVuIHVuZGVyIGEgbXV0ZXggdGhhdCB3ZSBh
bHNvIHRha2UgZHVyaW5nIHJlY2xhaW0/Cj4gWWVzLCB0aGUgdm0tPm11dGV4IGlzIHVzZWQgZHVy
aW5nIHRoZSBzaHJpbmtlciB0byByZXZva2UgdGhlIEdQVQo+IGJpbmRpbmdzIGJlZm9yZSByZXR1
cm5pbmcgbWVtb3J5IHRvIHRoZSBzeXN0ZW0uCj4gLUNocmlzCgpSZXZpZXdlZC1ieTogVGhvbWFz
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
