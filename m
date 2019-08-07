Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E86FE8520C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E26F06E742;
	Wed,  7 Aug 2019 17:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B94A6E742
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:28:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17921980-1500050 for multiple; Wed, 07 Aug 2019 18:27:55 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190807170034.8440-3-michal.wajdeczko@intel.com>
References: <20190807170034.8440-1-michal.wajdeczko@intel.com>
 <20190807170034.8440-3-michal.wajdeczko@intel.com>
Message-ID: <156519887275.6198.551831017513120124@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 07 Aug 2019 18:27:52 +0100
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/uc: HuC firmware can't be
 supported without GuC
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTA3IDE4OjAwOjI5KQo+IFRoZXJlIGlz
IG5vIHBvaW50IGluIHNlbGVjdGluZyBIdUMgZmlybXdhcmUgaWYgR3VDIGlzIHVuc3VwcG9ydGVk
Cj4gb3IgaXQgd2FzIGFscmVhZHkgZGlzYWJsZWQsIGFzIHdlIG5lZWQgR3VDIHRvIGF1dGhlbnRp
Y2F0ZSBIdUMuCgpNYWtlcyBzZW5zZS4KCj4gV2hpbGUgYXJvdW5kLCBtYWtlIHVjX2Z3X2luaXRf
ZWFybHkgd29yayB3aXRob3V0IGRpcmVjdCBhY2Nlc3MKPiB0byB3aG9sZSBpOTE1LCBwYXNzIG9u
bHkgbmVlZGVkIHBsYXRmb3JtL3JldiBpbmZvLgoKSG1tLiBXaGVuIEkndmUgYmVlbiBicmllZmx5
IHRoaW5raW5nIGFib3V0IHRoaXMsIEkndmUgY29udGVtcGxhdGVkCnBhc3NpbmcgYXJvdW5kIHRo
ZSAqeyBpbnRlbF9kZXZpY2VfaW5mbywgaW50ZWxfcnVudGltZV9pbmZvIH0KIAo+IFNpZ25lZC1v
ZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENj
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
Pgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkxvb2tzIG9r
LCBidXQgSSB3b3VsZG4ndCBiZSBzdXJwcmlzZWQgaWYgd2UgY2FtZSB1cCB3aXRoIGFuIGFsdGVy
bmF0aXZlCmFwcHJvYWNoIHRvIHBhc3NpbmcgdGhlIGZlYXR1cmUgZmxhZ3MgYXJvdW5kIGxhdGVy
IChvbiBhIHdpZGVyIHNjYWxlKS4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
