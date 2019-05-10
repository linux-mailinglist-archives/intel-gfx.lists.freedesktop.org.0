Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB5E19E40
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 15:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D9B89C49;
	Fri, 10 May 2019 13:32:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226B289BB0;
 Fri, 10 May 2019 13:32:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16516754-1500050 for multiple; Fri, 10 May 2019 14:31:58 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190508121058.27038-15-tvrtko.ursulin@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-15-tvrtko.ursulin@linux.intel.com>
Message-ID: <155749511614.10894.3374008959346093413@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 May 2019 14:31:56 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 14/21] gem_wsim: Engine map
 load balance command
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wOCAxMzoxMDo1MSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEEgbmV3IHdvcmtsb2Fk
IGNvbW1hbmQgZm9yIGVuYWJsaW5nIGEgbG9hZCBiYWxhbmNlZCBjb250ZXh0IG1hcCAoYWthCj4g
VmlydHVhbCBFbmdpbmUpLiBFeGFtcGxlIHVzYWdlOgo+IAo+ICAgQi4xCj4gCj4gVGhpcyB0dXJu
cyBvbiBsb2FkIGJhbGFuY2luZyBmb3IgY29udGV4dCBvbmUsIGFzc3VtaW5nIGl0IGhhcyBhbHJl
YWR5IGJlZW4KPiBjb25maWd1cmVkIHdpdGggYW4gZW5naW5lIG1hcC4gT25seSBERUZBVUxUIGVu
Z2luZSBzcGVjaWZpZXIgY2FuIGJlIHVzZWQKPiB3aXRoIGxvYWQgYmFsYW5jZWQgZW5naW5lIG1h
cHMuCgpSZXN0cmljdGlvbiBtYWtlcyBzZW5zZSBmb3Iga2VlcGluZyBsaW5lbm9pc2VeVyBmaWxl
IGZvcm1hdCBzaW1wbGUuCgo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gQEAgLTExNzIsNiArMTIxMCw4IEBAIHByZXBhcmVf
d29ya2xvYWQodW5zaWduZWQgaW50IGlkLCBzdHJ1Y3Qgd29ya2xvYWQgKndyaywgdW5zaWduZWQg
aW50IGZsYWdzKQo+ICAgICAgICAgICAgICAgICBpZiAoY3R4LT5lbmdpbmVfbWFwKSB7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgSTkxNV9ERUZJTkVfQ09OVEVYVF9QQVJBTV9FTkdJTkVTKHNl
dF9lbmdpbmVzLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjdHgtPmVuZ2luZV9tYXBfY291bnQgKyAxKTsKPiArICAgICAgICAgICAg
ICAgICAgICAgICBJOTE1X0RFRklORV9DT05URVhUX0VOR0lORVNfTE9BRF9CQUxBTkNFKGxvYWRf
YmFsYW5jZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGN0eC0+ZW5naW5lX21hcF9jb3VudCk7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtIHBhcmFtID0gewo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmN0eF9pZCA9IGN0eF9pZCwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5wYXJhbSA9IEk5MTVfQ09OVEVYVF9QQVJBTV9F
TkdJTkVTLAo+IEBAIC0xMTc5LDcgKzEyMTksMjUgQEAgcHJlcGFyZV93b3JrbG9hZCh1bnNpZ25l
ZCBpbnQgaWQsIHN0cnVjdCB3b3JrbG9hZCAqd3JrLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAudmFsdWUgPSB0b191c2VyX3BvaW50ZXIoJnNl
dF9lbmdpbmVzKSwKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICAKPiAtICAgICAgICAg
ICAgICAgICAgICAgICBzZXRfZW5naW5lcy5leHRlbnNpb25zID0gMDsKPiArICAgICAgICAgICAg
ICAgICAgICAgICBpZiAoY3R4LT53YW50c19iYWxhbmNlKSB7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBzZXRfZW5naW5lcy5leHRlbnNpb25zID0KPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdG9fdXNlcl9wb2ludGVyKCZsb2FkX2JhbGFuY2UpOwo+
ICsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1lbXNldCgmbG9hZF9iYWxhbmNl
LCAwLCBzaXplb2YobG9hZF9iYWxhbmNlKSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBsb2FkX2JhbGFuY2UuYmFzZS5uYW1lID0KPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgSTkxNV9DT05URVhUX0VOR0lORVNfRVhUX0xPQURfQkFMQU5DRTsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvYWRfYmFsYW5jZS5udW1fc2libGluZ3Mg
PQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjdHgtPmVuZ2luZV9t
YXBfY291bnQ7Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZm9yIChqID0g
MDsgaiA8IGN0eC0+ZW5naW5lX21hcF9jb3VudDsgaisrKSB7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGxvYWRfYmFsYW5jZS5lbmdpbmVzW2pdLmVuZ2luZV9jbGFz
cyA9Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSTkx
NV9FTkdJTkVfQ0xBU1NfVklERU87IC8qIEZJWE1FICovCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGxvYWRfYmFsYW5jZS5lbmdpbmVzW2pdLmVuZ2luZV9pbnN0YW5j
ZSA9Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY3R4
LT5lbmdpbmVfbWFwW2pdIC0gVkNTMTsgLyogRklYTUUgKi8KCk9rLCBtb3JlIGZhbGxvdXQgZnJv
bSBmaXhpbmcgY3R4LT5lbmdpbmVfbWFwW10gZmlyc3Q/CgpPdGhlcndpc2UgbG9va3MgZmluZS4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
