Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3B63877D8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:39:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8A56E0F4;
	Tue, 18 May 2021 11:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 542 seconds by postgrey-1.36 at gabe;
 Tue, 18 May 2021 11:39:38 UTC
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63F06E0F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 11:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id D2FB93F423;
 Tue, 18 May 2021 13:30:33 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="rRIc/GcQ";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TygfrFIVegzg; Tue, 18 May 2021 13:30:31 +0200 (CEST)
Received: by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 1074C3F2B8;
 Tue, 18 May 2021 13:30:30 +0200 (CEST)
Received: from [192.168.0.209] (fmdmzpr03-ext.fm.intel.com [192.55.54.38])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 4A969360341;
 Tue, 18 May 2021 13:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1621337430; bh=cz7MWKthI7I41IYNzBwOnVqqO9vZ8leLCjUiewi3y/M=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=rRIc/GcQk71QGx/e2PvJ3m2tcKmg8SYC/3t73ngrYao3P4e/srz95uFbDmGYVAKGn
 +zNpo0orZy/2L3Yh9l/vPjHId10hO2cOJ6WfJN/vCAldK+Pw7t1Hte9a083wCTvH1P
 JGwNyGVX+hXA2BuRryZe7OGwmq6rtctyBryD1Sog=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-3-thomas.hellstrom@linux.intel.com>
 <2f219b65-a27a-2939-6f3e-974ca2694bf1@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <0c1cc6c4-fa1f-a334-5e27-cfc182f69447@shipmail.org>
Date: Tue, 18 May 2021 13:30:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <2f219b65-a27a-2939-6f3e-974ca2694bf1@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 02/15] drm/i915: Don't free shared locks
 while shared
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

Ck9uIDUvMTgvMjEgMToxOCBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gT3AgMTgtMDUt
MjAyMSBvbSAxMDoyNiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+PiBXZSBhcmUgY3VycmVu
dGx5IHNoYXJpbmcgdGhlIFZNIHJlc2VydmF0aW9uIGxvY2tzIGFjcm9zcyBhIG51bWJlciBvZgo+
PiBnZW0gb2JqZWN0cyB3aXRoIHBhZ2UtdGFibGUgbWVtb3J5LiBTaW5jZSBUVE0gd2lsbCBpbmRp
dmlkaXVhbGl6ZSB0aGUKPj4gcmVzZXJ2YXRpb24gbG9ja3Mgd2hlbiBmcmVlaW5nIG9iamVjdHMs
IGluY2x1ZGluZyBhY2Nlc3NpbmcgdGhlIHNoYXJlZAo+PiBsb2NrcywgbWFrZSBzdXJlIHRoYXQg
dGhlIHNoYXJlZCBsb2NrcyBhcmUgbm90IGZyZWVkIHVudGlsIHRoYXQgaXMgZG9uZS4KPj4gRm9y
IFBQR1RUIHdlIGFkZCBhbiBhZGRpdGlvbmFsIHJlZmNvdW50LCBmb3IgR0dUVCB3ZSB0YWtlIGFk
ZGl0aW9uYWwKPj4gbWVhc3VyZXMgdG8gbWFrZSBzdXJlIG9iamVjdHMgc2hhcmluZyB0aGUgR0dU
VCByZXNlcnZhdGlvbiBsb2NrIGFyZQo+PiBmcmVlZCBhdCBHR1RUIHRha2Vkb3duCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4KPj4gLS0tCj4+IHYyOiBUcnkgaGFyZGVyIHRvIG1ha2Ugc3VyZSBvYmplY3RzIHNo
YXJpbmcgdGhlIEdHVFQgcmVzZXJ2YXRpb24gbG9jayBhcmUKPj4gZnJlZWQgYXQgR0dUVCB0YWtl
ZG93bi4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5jICAgIHwgIDMgKysKPj4gICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Rf
dHlwZXMuaCAgfCAgMSArCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5j
ICAgICAgICAgIHwgMTkgKysrKysrLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndHQuYyAgICAgICAgICAgfCA0NSArKysrKysrKysrKysrKystLS0tCj4+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmggICAgICAgICAgIHwgMzAgKysrKysrKysrKysrLQo+
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3BwZ3R0LmMgICAgICAgICB8ICAyICst
Cj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgIDUg
KysrCj4+ICAgNyBmaWxlcyBjaGFuZ2VkLCA5MiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+PiBp
bmRleCAyODE0NDQxMGRmODYuLmFiYWRmMDk5NGFkMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+PiBAQCAtMjUyLDYgKzI1Miw5IEBAIHN0YXRp
YyB2b2lkIF9faTkxNV9nZW1fZnJlZV9vYmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAo+PiAgIAkJaWYgKG9iai0+bW0ubl9wbGFjZW1lbnRzID4gMSkKPj4gICAJCQlrZnJlZShv
YmotPm1tLnBsYWNlbWVudHMpOwo+PiAgIAo+PiArCQlpZiAob2JqLT5yZXN2X3NoYXJlZF9mcm9t
KQo+PiArCQkJaTkxNV92bV9yZXN2X3B1dChvYmotPnJlc3Zfc2hhcmVkX2Zyb20pOwo+PiArCj4+
ICAgCQkvKiBCdXQga2VlcCB0aGUgcG9pbnRlciBhbGl2ZSBmb3IgUkNVLXByb3RlY3RlZCBsb29r
dXBzICovCj4+ICAgCQljYWxsX3JjdSgmb2JqLT5yY3UsIF9faTkxNV9nZW1fZnJlZV9vYmplY3Rf
cmN1KTsKPj4gICAJCWNvbmRfcmVzY2hlZCgpOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCj4+IGluZGV4IDA3MjdkMGM3NmFhMC4uNDUw
MzQwYTczMTg2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X3R5cGVzLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF90eXBlcy5oCj4+IEBAIC0xNDksNiArMTQ5LDcgQEAgc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3Qgewo+PiAgIAkgKiB3aGVuIGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKCkgb3Ig
aTkxNV9nZW1fd3dfY3R4X2ZpbmkoKSBhcmUgY2FsbGVkLgo+PiAgIAkgKi8KPj4gICAJc3RydWN0
IGxpc3RfaGVhZCBvYmpfbGluazsKPj4gKwlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3Zfc2hhcmVkX2Zy
b207Cj4gU2luY2UgdGhpcyBjYW4gb25seSBiZSBhIHZtIG9iamVjdCwgd291bGQgaXQgbWFrZSBz
ZW5zZSB0byBtYWtlIHRoaXMgYSBwb2ludGVyIHRvIHRoZSB2bSBhZGRyZXNzIHNwYWNlLCBzbyB3
ZSBjYW4gY2FsbCB2bV9yZXN2X3B1dCBvbiBpdCBkaXJlY3RseT8KPgo+IFRoZSBjdXJyZW50IHBv
aW50ZXIgdHlwZSBhbmQgbmFtZSBtYWtlcyBpdCBsb29rIGdlbmVyaWMsIGJ1dCBpZiB5b3UgdHJ5
IHRvIHVzZSBpdCB3aXRoIGFueXRoaW5nIGJ1dCBhbiBhZGRyZXNzIHNwYWNlLCBpdCB3aWxsIGJs
b3cgdXAuCj4KPiBPdGhlcndpc2UgbG9va3MgZ29vZC4gSSBndWVzcyB3ZSBjYW5ub3QgZm9yY2Ug
YWxsIGJvJ3MgdG8gYmUgZGVsZXRlZCBiZWZvcmUgdGhlIHZtIGlzIGZyZWVkLiA6LSkKPgo+IFNv
IHdpdGggdGhhdCBmaXhlZAo+Cj4gUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpUaGFua3MsIEknbGwgdGFrZSBhIGxvb2sg
YXQgdGhhdC4KClRob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
