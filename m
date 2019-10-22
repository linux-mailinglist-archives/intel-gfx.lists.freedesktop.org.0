Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBF4DFF42
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 10:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB3266E43A;
	Tue, 22 Oct 2019 08:18:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD5456E43A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 08:18:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18921024-1500050 for multiple; Tue, 22 Oct 2019 09:18:12 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157173099231.2684.14654341150413322087@skylake-alporthouse-com>
References: <20191022075151.5781-1-chris@chris-wilson.co.uk>
 <20191022075151.5781-2-chris@chris-wilson.co.uk>
 <157173099231.2684.14654341150413322087@skylake-alporthouse-com>
Message-ID: <157173228954.2684.15139191746581266865@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 22 Oct 2019 09:18:09 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Defer mocs setup until
 after the initial context is loaded
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMjIgMDg6NTY6MzIpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMTAtMjIgMDg6NTE6NTEpCj4gPiBPbiBteSBrYmwgZ3Q0ZSwgdGhlcmUg
aXMgYSBkaXN0aW5jdGlvbiBiZXR3ZWVuIHRoZSBwb3dlciBjb250ZXh0IGFuZCB0aGUKPiA+IG5v
cm1hbCBjb250ZXh0cy4gV2UgbXVzdCBkZWxheSB0aGUgbW9jcyBzZXR1cCB1bnRpbCBhZnRlciB3
ZSBoYXZlIHByaW1lZAo+ID4gdGhlIGtlcm5lbCBjb250ZXh0IHRvIHJlY29yZCB0aGUgbW9jcyBy
ZWdpc3RlciBzZXR0aW5ncyB3aXRoaW4gdGhlCj4gPiBjb250ZXh0IGltYWdlLgo+ID4gCj4gPiBG
aXhlczogZWNhMGI3MjA4OTY5ICgiZHJtL2k5MTU6IERvIGluaXRpYWwgbW9jcyBjb25maWd1cmF0
aW9uIGRpcmVjdGx5IikKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFByYXRoYXAgS3VtYXIgVmFsc2FuIDxwcmF0aGFwLmt1
bWFyLnZhbHNhbkBpbnRlbC5jb20+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gSG1tLCBhZnRlciBzZW5kaW5nIHRoZSBwYXRjaCwgSSBy
ZXJhbiB0aGUgdGVzdHMgYW5kIGl0IGhhZCBsb3N0IHRoZSBsM2NjCj4gY29uZmlndXJhdGlvbiBh
Z2Fpbi4gUHJvYmxlbSBub3Qgc29sdmVkLgoKU28gdGhlIHNlY3JldCBpcyBJIG5lZWQgYm90aCB0
aGlzIGRlZmVycmFsIGFuZCBlbWlzc2lvbiB3aXRoaW4gY29udGV4dC4KRXhpc3Rpbmcgc2VxdWVu
Y2Ugb3IgZWl0aGVyIGNoYW5nZSBhbG9uZSBpcyBub3QgZW5vdWdoISEhCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
