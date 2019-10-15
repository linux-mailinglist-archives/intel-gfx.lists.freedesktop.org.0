Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBDAD7AA0
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA63D6E373;
	Tue, 15 Oct 2019 15:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0956E373
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:55:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846384-1500050 for multiple; Tue, 15 Oct 2019 16:55:03 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191015154449.10338-3-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
 <20191015154449.10338-3-mika.kuoppala@linux.intel.com>
Message-ID: <157115490137.22469.10919731993532631879@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 15 Oct 2019 16:55:01 +0100
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/tgl: Add HDC Pipeline Flush
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjQxKQo+IEFkZCBoZGMgcGlw
ZWxpbmUgZmx1c2ggdG8gZW5zdXJlIG1lbW9yeSBzdGF0ZSBpcyBjb2hlcmVudAo+IGluIEwzIHdo
ZW4gd2UgYXJlIGRvbmUuCj4gCj4gdjI6IEZsdXNoIGFsc28gaW4gYnJlYWRjcnVtYnMgKENocmlz
KQo+IAo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBTaWdu
ZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0t
LQo+IEBAIC0zNDE2LDcgKzM0MTcsOSBAQCBnZW4xMl9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9yY3Mo
c3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwgdTMyICpjcykKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJPTF9SRU5ERVJfVEFSR0VUX0NBQ0hFX0ZM
VVNIIHwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJP
TF9ERVBUSF9DQUNIRV9GTFVTSCB8Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBQSVBFX0NPTlRST0xfRENfRkxVU0hfRU5BQkxFIHwKPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJPTF9GTFVTSF9FTkFCTEUpOwo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUElQRV9DT05UUk9MX0ZMVVNIX0VOQUJMRSB8
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xfSERD
X1BJUEVMSU5FX0ZMVVNIKTsKPiArCgpCb251cyEKLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
