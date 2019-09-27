Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEAEC0212
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 11:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C8E6EED4;
	Fri, 27 Sep 2019 09:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752516EED2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 09:18:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18636527-1500050 for multiple; Fri, 27 Sep 2019 10:18:45 +0100
MIME-Version: 1.0
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156957281229.8291.5777712716828684584@jlahtine-desk.ger.corp.intel.com>
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-20-chris@chris-wilson.co.uk>
 <156957281229.8291.5777712716828684584@jlahtine-desk.ger.corp.intel.com>
Message-ID: <156957592174.32596.11711862638387677006@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 10:18:41 +0100
Subject: Re: [Intel-gfx] [PATCH 19/27] drm/i915: Replace hangcheck by
 heartbeats
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

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMDktMjcgMDk6MjY6NTIpCj4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDktMjUgMTM6MDE6MjkpCj4gPiBSZXBsYWNlIHNhbXBsaW5nIHRo
ZSBlbmdpbmUgc3RhdGUgZXZlcnkgc28gb2Z0ZW4gd2l0aCBhIHBlcmlvZGljCj4gPiBoZWFydGJl
YXQgcmVxdWVzdCB0byBtZWFzdXJlIHRoZSBoZWFsdGggb2YgYW4gZW5naW5lLiBUaGlzIGlzIGNv
dXBsZWQKPiA+IHdpdGggdGhlIGZvcmNlZC1wcmVlbXB0aW9uIHRvIGFsbG93IGxvbmcgcnVubmlu
ZyByZXF1ZXN0cyB0byBzdXJ2aXZlIHNvCj4gPiBsb25nIGFzIHRoZXkgZG8gbm90IGJsb2NrIG90
aGVyIHVzZXJzLgo+ID4gCj4gPiB2MjogQ291cGxlIGluIHN5c2ZzIGNvbnRyb2xzCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4K
PiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gQ2M6
IEpvbiBCbG9vbWZpZWxkIDxqb24uYmxvb21maWVsZEBpbnRlbC5jb20+Cj4gPiBSZXZpZXdlZC1i
eTogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KPiAKPiA8U05JUD4K
PiAKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmlsZQo+ID4gQEAg
LTM3LDMgKzM3LDE0IEBAIGNvbmZpZyBEUk1fSTkxNV9QUkVFTVBUX1RJTUVPVVQKPiA+ICAgICAg
ICAgICB0byBleGVjdXRlLgo+ID4gIAo+ID4gICAgICAgICAgIE1heSBiZSAwIHRvIGRpc2FibGUg
dGhlIHRpbWVvdXQuCj4gPiArCj4gPiArY29uZmlnIERSTV9JOTE1X0hFQVJUQkVBVF9JTlRFUlZB
TAo+ID4gKyAgICAgICBpbnQgIkludGVydmFsIGJldHdlZW4gaGVhcnRiZWF0IHB1bHNlcyAobXMp
Igo+ID4gKyAgICAgICBkZWZhdWx0IDI1MDAgIyBtaWNyb3NlY29uZHMKPiAKPiAibXMiIG9yICJ1
cyIsIHBpY2sgb25lPwoKSXQgYmVnYW4gd2l0aCAnbScsIGNsb3NlIGVub3VnaCB3aGVuIGNvcHkn
bidwYXN0ZSA6KQoKPiA+ICsgICAgICAgaGVscAo+ID4gKyAgICAgICAgIFdoaWxlIGFjdGl2ZSB0
aGUgZHJpdmVyIHVzZXMgYSBwZXJpb2RpYyByZXF1ZXN0LCBhIGhlYXJ0YmVhdCwgdG8KPiA+ICsg
ICAgICAgICBjaGVjayB0aGUgd2VsbG5lc3Mgb2YgdGhlIEdQVSBhbmQgdG8gcmVndWxhcmx5IGZs
dXNoIHN0YXRlIGNoYW5nZXMKPiA+ICsgICAgICAgICAoaWRsZSBiYXJyaWVycykuCj4gPiArCj4g
PiArICAgICAgICAgTWF5IGJlIDAgdG8gZGlzYWJsZSBoZWFydGJlYXRzIGFuZCB0aGVyZWZvcmUg
ZGlzYWJsZSBhdXRvbWF0aWMgR1BVCj4gPiArICAgICAgICAgaGFuZyBkZXRlY3Rpb24uCj4gCj4g
V29ydGggdG8gbWVudGlvbiB0aGlzIGNhbiBiZSBvdmVycmlkZGVuIGZyb20gc3lzZnMuCgpUaGUg
aWRlYSBvZiBzZXR0aW5nIDAgaGVyZSBpcyB0byBkaXNhYmxlIGl0IGF0IGNvbXBpbGF0aW9uIGFu
ZCBEQ0UuCgpCdXQgYW55IG90aGVyIHZhbHVlIGNvdWxkIGJlIG92ZXJyaWRkZW4uLi4KCj4gPiAr
c3RhdGljIHZvaWQgaGVhcnRiZWF0KHN0cnVjdCB3b3JrX3N0cnVjdCAqd3JrKQo+ID4gK3sKPiAK
PiA8U05JUD4KPiAKPiA+ICsgICAgICAgaWYgKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9oYW5nY2hl
Y2spCj4gPiArICAgICAgICAgICAgICAgZW5naW5lLT5oZWFydGJlYXQuc3lzdG9sZSA9IGk5MTVf
cmVxdWVzdF9nZXQocnEpOwo+IAo+IEknZCBiZSBtb3JlIGluY2xpbmVkIHRvIHRoZSB1c2Vyc3Bh
Y2Ugb3B0LWluIGZvciBydW5uaW5nIGluZGVmaW5pdGVseSBhbmQKPiBnZXR0aW5nIHJpZCBvZiB0
aGUgbW9kcGFyYW0gY29tcGxldGVseS4KClRoYXQncyBhIHNlcGFyYXRlIGNoYWxsZW5nZS4gOikK
IAo+IFRoZSBsb25nIHdvcmtsb2FkcyBtaWdodCBldmVuIG5vdCBwcmUtZW1wdCBhdCBkZXNpcmVk
IGdyYW51bGFyaXR5LgoKSW5kZWVkLCBidXQgYXMgdGhhdCBpcyBhIHFvcyBpbXBhY3Qgb24gYW5v
dGhlciB1c2VyLCBJIHdvdWxkIHNpbWlsYXJseQpzdWdnZXN0IHRoYXQgb3B0aW5nIG91dCBvZiB0
aGlzIGlzIGFraW4gdG8gc2V0dGluZyB5b3Vyc2VsZiB0byBiZQpub24tcHJlZW1wdGFibGUsIGVy
Z28gYSByZXN0cmljdGVkIG9wZXJhdGlvbi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
