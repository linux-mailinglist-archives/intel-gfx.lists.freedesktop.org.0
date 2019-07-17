Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E81A6BB4F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 13:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C0D6E110;
	Wed, 17 Jul 2019 11:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF756E110;
 Wed, 17 Jul 2019 11:23:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17368629-1500050 for multiple; Wed, 17 Jul 2019 12:23:44 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z42ix1ubxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190717104418.23809-1-tvrtko.ursulin@linux.intel.com>
 <op.z42ix1ubxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156336262261.9436.7999497132997352436@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 17 Jul 2019 12:23:42 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update description of
 i915.enable_guc modparam
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTE3IDExOjQ3OjUxKQo+IE9uIFdlZCwg
MTcgSnVsIDIwMTkgMTI6NDQ6MTggKzAyMDAsIFR2cnRrbyBVcnN1bGluICAKPiA8dHZydGtvLnVy
c3VsaW5AbGludXguaW50ZWwuY29tPiB3cm90ZToKPiAKPiA+IEZyb206IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPgo+ID4gQ29tbWl0IGY3NzRmMDk2NDkxOSAo
ImRybS9pOTE1L2d1YzogVHVybiBvbiBHdUMvSHVDIGF1dG8gbW9kZSIpIGNoYW5nZWQKPiA+IHRo
ZSBkZWZhdWx0IGZyb20gMCB0byAtMSBidXQgZm9yZ290IHRvIHVwZGF0ZSB0aGUgZGVzY3JpcHRp
b24uCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiA+IEZpeGVzOiBmNzc0ZjA5NjQ5MTkgKCJkcm0vaTkxNS9ndWM6IFR1cm4g
b24gR3VDL0h1QyBhdXRvIG1vZGUiKQo+ID4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53
YWpkZWN6a29AaW50ZWwuY29tPgo+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50
ZWwuY29tPgo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+
IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4g
Q2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gLS0tCj4gCj4gVGhhbmtzIGZvciBjYXRj
aGluZyB0aGF0LAo+IFJldmlld2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVj
emtvQGludGVsLmNvbT4KCkFuZCBwdXNoZWQsIHRoYW5rcyBmb3IgdGhlIHF1aWNrIGZpeC4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
