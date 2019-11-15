Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56052FE3D0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 18:20:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E9E6E9CE;
	Fri, 15 Nov 2019 17:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B4146E9CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 17:20:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19216695-1500050 for multiple; Fri, 15 Nov 2019 17:20:02 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Hiatt, Don" <don.hiatt@intel.com>, "Summers,
 Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20191115011112.25249-1-don.hiatt@intel.com>
 <20191115011112.25249-2-don.hiatt@intel.com>
 <5cebb6ef4b95c893ec53f68113439a3922ea8163.camel@intel.com>
In-Reply-To: <5cebb6ef4b95c893ec53f68113439a3922ea8163.camel@intel.com>
Message-ID: <157383839967.11997.12324024656389899848@skylake-alporthouse-com>
Date: Fri, 15 Nov 2019 17:19:59 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
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

UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMTEtMTUgMTc6MTI6NTgpCj4gT24gVGh1LCAy
MDE5LTExLTE0IGF0IDE3OjExIC0wODAwLCBkb24uaGlhdHRAaW50ZWwuY29tIHdyb3RlOgo+ID4g
RnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgo+ID4gCj4gPiBPbiBzb21lIHBs
YXRmb3JtcyAoZS5nLiBLQkwpIHRoYXQgZG8gbm90IHN1cHBvcnQgR3VDIHN1Ym1pc3Npb24sIGJ1
dAo+ID4gdGhlIHVzZXIgZW5hYmxlZCB0aGUgR3VDIGNvbW11bmljYXRpb24gKGUuZyBmb3IgSHVD
IGF1dGhlbnRpY2F0aW9uKQo+ID4gY2FsbGluZyB0aGUgR3VDIEVYSVRfU19TVEFURSBhY3Rpb24g
cmVzdWx0cyBpbiBsb3NlIG9mIGFiaWxpdHkgdG8KPiA+IGVudGVyIFJDNi4gV2UgY2FuIHJlbW92
ZSB0aGUgR3VDIHN1c3BlbmQvcmVzdW1lIGVudGlyZWx5IGFzIHdlIGRvCj4gPiBub3QgbmVlZCB0
byBzYXZlIHRoZSBHdUMgc3VibWlzc2lvbiBzdGF0dXMuCj4gPiAKPiA+IHYyOiBEbyBub3Qgc3Vz
cGVuZC9yZXN1bWUgdGhlIEd1QyBvbiBwbGF0Zm9ybXMgdGhhdCBkbyBub3Qgc3VwcG9ydAo+ID4g
ICAgIEd1YyBTdWJtaXNzaW9uLgo+ID4gdjM6IEZpeCB0eXBvLCBtb3ZlIHN1c3BlbmQgbG9naWMg
dG8gcmVtb3ZlIGdvdG8uCj4gPiB2NDogVXNlIGludGVsX2d1Y19zdWJtaXNzaW9uX2lzX2VuYWJs
ZWQoKSB0byBjaGVjayBHdUMgc3VibWlzc2lvbgo+ID4gICAgIHN0YXR1cy4KPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgo+IAo+IEFueSByZWFz
b24gbm90IHRvIGp1c3QgY29tYmluZSBib3RoIG9mIHRoZXNlIGludG8gYSBzaW5nbGUgcGF0Y2g/
CgpBbHNvIHBsZWFzZSByZW1lbWJlciB0byBpbmNsdWRlIHRoZSBidWd6aWxsYSBsaW5rLCBhc2sg
aWYgdGhlIHJlcG9ydGVyCndhbnRzIHRvIGJlIGNyZWRpdGVkLCBhbmQgbW9zdCBpbXBvcnRhbnQg
b2YgYWxsIGEgRml4ZXM6IHNvIHdlIGNhbgpiYWNrcG9ydCBpdCBjb3JyZWN0bHkuIElmIHRoZXJl
IGlzIG5vIHNpbmd1bGFyIGNhdXNlLCBwb2ludCBhdCB0aGUKImd1Yy9odWMgZW5hYmxpbmcgYnkg
ZGVmYXVsdCIgcGF0Y2guCgpMYXN0IGJ1dCBub3QgbGVhc3QsIHRoaW5rIGFib3V0IGhvdyBkaWQg
d2UgbWlzcyBpbiB0aGlzIENJIGFuZCBwcm92aWRlCmEgVGVzdGNhc2U6IHRvIHZlcmlmeSB0aGF0
IGl0IGlzIGZpeGVkIGFuZCBzdGF5cyBmaXhlZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
