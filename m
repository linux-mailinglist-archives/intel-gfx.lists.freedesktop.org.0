Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9841F762E0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 11:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B3C6ED08;
	Fri, 26 Jul 2019 09:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716406ED08
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 09:57:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17623204-1500050 for multiple; Fri, 26 Jul 2019 10:57:41 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-7-chris@chris-wilson.co.uk>
 <f9893cc8-ae33-c7ba-9e20-467e54cfec85@linux.intel.com>
 <156413359650.30723.4362365063332311124@skylake-alporthouse-com>
 <5454f79a-fa15-a811-6cb4-20e7177d7c32@linux.intel.com>
In-Reply-To: <5454f79a-fa15-a811-6cb4-20e7177d7c32@linux.intel.com>
Message-ID: <156413505979.30723.961568723684143840@skylake-alporthouse-com>
Date: Fri, 26 Jul 2019 10:57:39 +0100
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915/gt: Move the [class][inst]
 lookup for engines onto the GT
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yNiAxMDo1MTowMSkKPiAKPiBPbiAyNi8w
Ny8yMDE5IDEwOjMzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTI2IDEwOjIyOjA4KQo+ID4+Cj4gPj4gT24gMjMvMDcvMjAxOSAxOTozOCwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+IEkgcmVhZCBpdCwgcmVsYXRpdmVseSBydXNoZWQsIHNp
bmNlIHByZXNzdXJlIGtlZXBzIGdldHRpbmcgYXBwbGllZCEgOi8KPiA+Pgo+ID4+IFRoZXJlIGFy
ZSBzb21lIGdvb2QgcGFydHMgYW5kIGltcGxlbWVudGF0aW9uIGxvb2tzIG9rYXksIGJ1dCBJIGFt
IG5vdAo+ID4+IHN1cmUgd2UgbmVlZCBhIHRyZWUuIE5vZGVzIGFyZSBiaWdnZXIgdGhhbiBwb2lu
dGVycywgbWFuYWdlbWVudCBjb2RlIGlzCj4gPj4gYmlnZ2VyLCBsb29rdXAgaXMgc2xvd2VyLi4g
aXMgaXQgYSB3aW4gYWxsIHRoaW5ncyBjb25zaWRlcmVkPwo+ID4gCj4gPiBBIGJpZyB3aW4gaW1v
LiBDb25zaWRlciB0aGF0IHRoaXMgaW50ZXJmYWNlIGlzIHB1cmVseSBkZWJ1ZywgdGhlIHByaW1h
cnkKPiA+IGludGVyZmFjZSBydW50aW1lIHdpbGwgYmUgdmlhIGd0LT5lbmdpbmVzLCB0aGUgbm9k
ZXMgYXJlIG11Y2ggc21hbGxlcgo+ID4gdGhhbiB0aGUgc3BhcnNlIGFycmF5Lgo+IAo+IEkgZ3Vl
c3MgaXQgZGVwZW5kcy4gT25lIHJiX25vZGUgaXMgdGhyZWUgcG9pbnRlcnMgYW5kIGNhbiBvbmx5
IGJlIHVzZWQgCj4gZnJvbSBhIHNpbmdsZSB0cmVlLiBOb3IgZG9lcyB0aGUgcGF0Y2ggcmVwbGFj
ZXMgYWxsIHNwYXJzZSBhcnJheXMuCgpUaGVyZSB3b3VsZCBiZSByZWFzb25hYmxlIG9iamVjdGlv
biBpZiBJIHJlbW92ZWQgYWxsIHRoZSBhcnJheXMgaW4gb25lCmdvIDotcAoKPiA+IEkgYW0gYWRh
bWFudCB0aGF0IHdlIGFyZSBub3QgYWRkaW5nIG1vcmUgc3BhcnNlIGFycmF5cy4gQSAyRCBsb29r
dXAKPiA+IHRhYmxlIHNpbmNlIHRoYXQgbWF0Y2hlcyB0aGUgSFcsIGJ1dCBldmVuIHRoZW4gd2Ug
bWF5IGp1c3QgZW5kIHVwIHdpdGgKPiA+IExVVCAoMSBleHRyYSBwb2ludGVyIGxvYWQgdG8gcmVw
bGFjZSB0aGUgc3BhcnNlIGFycmF5IHdpdGggYSBjb21wYWN0PykKPiAKPiBJIGZlZWwgaXQncyB0
b28gZWFybHkgZm9yIHRoaXMgc3BlY2lmaWMgcGF0Y2guCgpJdCdzIHRvbyBlYXJseT8gVGhlIHdo
b2xlIHBvaW50IGlzIHRvIGVuYWJsZSBndC1jZW50cmlmaWNhdGlvbiBmb3IgdGhlCmxhdGVyIHBh
dGNoZXMgYW5kIGxpZnQgZ3QgaW5pdGlhbGlzYXRpb24gb3V0IG9mIEdFTS4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
