Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5BF7CC36
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 20:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C253A6E2EC;
	Wed, 31 Jul 2019 18:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D938E6E2EC;
 Wed, 31 Jul 2019 18:45:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17766718-1500050 for multiple; Wed, 31 Jul 2019 19:45:28 +0100
MIME-Version: 1.0
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <2ebddb86-a072-45f7-b64c-26e296d3ba0e@intel.com>
References: <20190729191955.24544-1-chris@chris-wilson.co.uk>
 <2ebddb86-a072-45f7-b64c-26e296d3ba0e@intel.com>
Message-ID: <156459872707.15787.1928235939364477079@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 19:45:27 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_schedule:
 Avoid using borked engines
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaW5heSBCZWxnYXVta2FyICgyMDE5LTA3LTMxIDE5OjMxOjM4KQo+IAo+IAo+IE9u
IDA3LzI5LzIwMTkgMTI6MTkgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IENoZWNrIGZvciB2
aWFiaWxpdHkgb2Ygc3RvcmUtZHdvcmQgYmVmb3JlIHVzZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gICB0
ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgfCA2ICsrKystLQo+ID4gICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3Nj
aGVkdWxlLmMKPiA+IGluZGV4IDRjY2FjYmE0MS4uNmU4NDY2Mjk5IDEwMDY0NAo+ID4gLS0tIGEv
dGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jCj4gPiArKysgYi90ZXN0cy9pOTE1L2dlbV9l
eGVjX3NjaGVkdWxlLmMKPiA+IEBAIC0yODIsOSArMjgyLDExIEBAIHN0YXRpYyB2b2lkIHNtb2tl
dGVzdChpbnQgZmQsIHVuc2lnbmVkIHJpbmcsIHVuc2lnbmVkIHRpbWVvdXQpCj4gPiAgICAgICBu
ZW5naW5lID0gMDsKPiA+ICAgICAgIGlmIChyaW5nID09IEFMTF9FTkdJTkVTKSB7Cj4gPiAgICAg
ICAgICAgICAgIGZvcl9lYWNoX3BoeXNpY2FsX2VuZ2luZShmZCwgZW5naW5lKQo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgIGVuZ2luZXNbbmVuZ2luZSsrXSA9IGVuZ2luZTsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBpZiAoZ2VtX2Nhbl9zdG9yZV9kd29yZChmZCwgZW5naW5lKSkKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVuZ2luZXNbbmVuZ2luZSsrXSA9IGVuZ2luZTsK
PiA+ICAgICAgIH0gZWxzZSB7Cj4gCj4gVGhlIGdlbV9jYW5fc3RvcmVfZHdvcmQoKSBjaGVjayBp
cyBhbHJlYWR5IGV4ZWN1dGVkIGluIHRoZSBmaXh0dXJlIGZvciAKPiBwZXIgZW5naW5lIHNtb2tl
dGVzdCwgcmlnaHQ/Cj4gV2Ugb25seSBuZWVkIGl0IGZvciB0aGUgc21va2V0ZXN0LWFsbCBjYXNl
PwoKWWVzLCBidXQgSSBsaWtlZCB0aGUgc3ltbWV0cnkuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
