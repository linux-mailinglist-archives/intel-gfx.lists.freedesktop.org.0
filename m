Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D2B83420
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 16:42:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2EE86E3B0;
	Tue,  6 Aug 2019 14:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03536E3B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 14:42:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17906742-1500050 for multiple; Tue, 06 Aug 2019 15:41:30 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68B3A9B4F@fmsmsx120.amr.corp.intel.com>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A9B4F@fmsmsx120.amr.corp.intel.com>
Message-ID: <156510248816.2892.16071640056614739337@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 06 Aug 2019 15:41:28 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMDgtMDYgMTU6MjY6MDcpCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiArCj4gPiArICAgICAvKgo+ID4gKyAgICAgICogSWYgdGhlIHVzZXIg
aGFzIGRpc2FibGVkIGhhbmdjaGVja2luZywgd2UgY2FuIG5vdCBiZSBzdXJlIHRoYXQKPiA+ICsg
ICAgICAqIHRoZSBiYXRjaGVzIHdpbGwgZXZlciBjb21wbGV0ZSBhbmQgbGV0IHRoZSBjb250ZXh0
IGJlIGZyZWVkLgo+ID4gKyAgICAgICogRm9yY2libHkga2lsbCBvZmYgYW55IHJlbWFpbmluZyBy
ZXF1ZXN0cyBpbiB0aGlzIGNhc2UuCj4gPiArICAgICAgKi8KPiAKPiBQZXJzaXN0ZW5jZSBpcyBp
bmRlcGVuZGVudCBvZiBoYW5nY2hlY2sgd2hpY2ggbWFrZXMgdGhlIGFib3ZlIGNvbW1lbnQgdW5y
ZXByZXNlbnRhdGl2ZSBvZiB0aGUgYmVsb3cgY29kZS4KPiBEbyB3ZSBldmVuIG5lZWQgYSBjb21t
ZW50IGhlcmUsIGl0IGxvb2tzIHNlbGYtZXhwbGFuYXRvcnk/IEluc3RlYWQgbWF5YmUgY29tbWVu
dCB0aGUgZGVmYXVsdGluZyBzdGF0ZSBpbiBfX2NyZWF0ZUNvbnRleHQoKSB0byBtYWtlIHRoZSBj
b25uZWN0aW9uIGJldHdlZW4gaGFuZ2NoZWNrIGFuZCBwZXJzaXN0ZW5jZT8KCkluZGVlZCwgaXQg
Y2FuIGJlIG1vdmVkIGFsbW9zdCB2ZXJiYXRpbSB0byBleHBsYWluIHRoZSBkZWZhdWx0IGJlaGF2
aW91cgphbmQgZXhwYW5kIHVwb24gdGhlIGNncm91cCB3aXNoLiAoUmF0aGVyIHRoYW4gdXNpbmcg
aGFuZ2NoZWNrIG1vZHBhcmFtLApsZXQgdGhlIHN5c2FkbWluIHNwZWNpZnkgZGVmYXVsdHMgZm9y
IGdyb3VwcyBvZiBwcm9jZXNzZXMgLS0gcGxhbm5pbmcKZm9yIHdoZW4gd2UgcmVtb3ZlIGhhbmdj
aGVjayBlbnRpcmVseS4pCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
