Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1884663388
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 11:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A13789DD2;
	Tue,  9 Jul 2019 09:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F22789DD2
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 09:35:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17181001-1500050 for multiple; Tue, 09 Jul 2019 10:35:36 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190709093208.20470-2-lionel.g.landwerlin@intel.com>
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-2-lionel.g.landwerlin@intel.com>
Message-ID: <156266493431.9375.6892980173526152959@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 09 Jul 2019 10:35:34 +0100
Subject: Re: [Intel-gfx] [PATCH v7 01/12] drm/i915/perf: ensure we keep a
 reference on the driver
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAxMDozMTo1NykKPiBUaGUgaTkx
NSBwZXJmIHN0cmVhbSBoYXMgaXRzIG93biBmaWxlIGRlc2NyaXB0b3IgYW5kIGlzIHRpZWQgdG8K
PiByZWZlcmVuY2Ugb2YgdGhlIGRyaXZlci4gV2UgaGF2ZW4ndCB0YWtlbiBjYXJlIG9mIGtlZXAg
dGhlIGRyaXZlcgo+IGFsaXZlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGlu
IDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiBTdWdnZXN0ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IEZpeGVzOiBlZWM2ODhlMTQyMGRhNSAo
ImRybS9pOTE1OiBBZGQgaTkxNSBwZXJmIGluZnJhc3RydWN0dXJlIikKUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKVGhlcmUncyBhIG1lYW4gdGVz
dCB5b3UgY2FuIHRyeSBpbiBpZ3QsIG9wZW4gdGhlIGk5MTVfcGVyZiBmZCwgdHJ5IHRvCnVubG9h
ZCB0aGUgbW9kdWxlLCByZWFkIGZyb20gdGhlIGZkLCBjbG9zZSBmZCwgdW5sb2FkIHRoZSBtb2R1
bGUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
