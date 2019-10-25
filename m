Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217DEE4FE1
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 17:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E106EA7F;
	Fri, 25 Oct 2019 15:14:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DD86EA7F;
 Fri, 25 Oct 2019 15:14:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18964541-1500050 for multiple; Fri, 25 Oct 2019 16:13:58 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191025142410.18465-2-tvrtko.ursulin@linux.intel.com>
References: <20191025142410.18465-1-tvrtko.ursulin@linux.intel.com>
 <20191025142410.18465-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <157201643536.11797.12701857221082778286@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 25 Oct 2019 16:13:55 +0100
Subject: Re: [Intel-gfx] [igt-dev] [RFC i-g-t 1/1] intel-gpu-top: Support
 for client stats
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0yNSAxNToyNDoxMCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEFkZHMgc3VwcG9ydCBm
b3IgcGVyLWNsaWVudCBlbmdpbmUgYnVzeW5lc3Mgc3RhdHMgaTkxNSBleHBvcnRzIGluIHN5c2Zz
Cj4gYW5kIHByb2R1Y2VzIG91dHB1dCBsaWtlIHRoZSBiZWxvdzoKPiAKPiA9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PQo+IGludGVsLWdwdS10b3AgLSAgOTM1LyA5MzUgTUh6OyAgICAwJSBSQzY7IDE0LjczIFdh
dHRzOyAgICAgMTA5NyBpcnFzL3MKCkNvdWxkIHdlIGdldCAiZ3B1IC8gcGtnIFdhdHRzIiBwcmV0
dHkgcGxlYXNlPwoKQXJlIGlycS9zIGludGVyZXN0aW5nIHdpdGggZXhlY2xpc3RzPyBPcmlnaW5h
bGx5IHRoZSBpZGVhIHdhcyB0byBzYXkgaG93Cm1hbnkgdGltZXMgY2xpZW50cyB3ZXJlIHNsZWVw
aW5nIGFuZCBiZWluZyB3b2tlbiB1cC4gTm93IHdlIGludGVycnVwdAp0byB3aXBlIHRoZSBncHUn
cyBub3NlIHdoZW4gaXQgc25lZXplcy4KCj4gCj4gICAgICAgSU1DIHJlYWRzOiAgICAgMTQwMSBN
aUIvcwo+ICAgICAgSU1DIHdyaXRlczogICAgICAgIDQgTWlCL3MKPiAKPiAgICAgICAgICAgRU5H
SU5FICAgICAgQlVTWSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1JX1NFTUEgTUlf
V0FJVAo+ICAgICAgUmVuZGVyLzNELzAgICA2My43MyUgfOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKW
iOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiCAgICAgICAgICAgfCAgICAgIDMlICAg
ICAgMCUKPiAgICAgICAgQmxpdHRlci8wICAgIDkuNTMlIHzilojilojiloogICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgICAgNiUgICAgICAwJQo+ICAgICAgICAgIFZpZGVvLzAgICAzOS4z
MiUgfOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiiAgICAgICAgICAgICAgICAg
IHwgICAgIDE2JSAgICAgIDAlCj4gICAgICAgICAgVmlkZW8vMSAgIDE1LjYyJSB84paI4paI4paI
4paI4paLICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAwJSAgICAgIDAlCj4gICBWaWRl
b0VuaGFuY2UvMCAgICAwLjAwJSB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAg
IDAlICAgICAgMCUKPiAKPiAgIFBJRCAgICAgICAgICAgIE5BTUUgICAgIFJDUyAgICAgICAgICBC
Q1MgICAgICAgICAgVkNTICAgICAgICAgVkVDUwo+ICA0MDg0ICAgICAgICBnZW1fd3NpbSB84paI
4paI4paI4paI4paI4paMICAgICB8fOKWiCAgICAgICAgICB8fCAgICAgICAgICAgfHwgICAgICAg
ICAgIHwKPiAgNDA4NiAgICAgICAgZ2VtX3dzaW0gfOKWiOKWjCAgICAgICAgIHx8ICAgICAgICAg
ICB8fOKWiOKWiOKWiCAgICAgICAgfHwgICAgICAgICAgIHwKPiA9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+
IAo+IEFwYXJ0IGZyb20gdGhlIGV4aXN0aW5nIHBoeXNpY2FsIGVuZ2luZSB1dGlsaXphdGlvbiBp
dCBub3cgYWxzbyBzaG93cwo+IHV0aWxpemF0aW9uIHBlciBjbGllbnQgYW5kIHBlciBlbmdpbmUg
Y2xhc3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiAtLS0KCj4gKyNkZWZpbmUgU1lTRlNfQ0xJRU5UUyAiL3N5cy9jbGFzcy9k
cm0vY2FyZDAvY2xpZW50cyIKCldlIG5lZWQgdG8gc29tZWhvdyBwdWxsIHRoZSByaWdodCBjYXJk
LgoKTm90aGluZyBzaG9ja2luZyBoZXJlLiBXaGVyZSdzIHRoZSBpbnRlbC1ncHUtb3ZlcmxheSBp
bnRlZ3JhdGlvbj8gOykKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
