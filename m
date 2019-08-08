Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A42A786502
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 17:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B92F6E864;
	Thu,  8 Aug 2019 15:01:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FAF96E52C
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 15:01:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17932459-1500050 for multiple; Thu, 08 Aug 2019 16:00:53 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87ef1vhfys.fsf@gaia.fi.intel.com>
References: <20190808074207.18274-1-chris@chris-wilson.co.uk>
 <20190808074207.18274-2-chris@chris-wilson.co.uk>
 <87ef1vhfys.fsf@gaia.fi.intel.com>
Message-ID: <156527645105.22627.15571633866055248024@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 08 Aug 2019 16:00:51 +0100
Subject: Re: [Intel-gfx] [PATCH 02/19] drm/i915: Defer final
 intel_wakeref_put to process context
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA4IDE1OjQ3OjA3KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBBcyB3ZSBuZWVkIHRv
IGFjcXVpcmUgYSBtdXRleCB0byBzZXJpYWxpc2UgdGhlIGZpbmFsCj4gPiBpbnRlbF93YWtlcmVm
X3B1dCwgd2UgbmVlZCB0byBlbnN1cmUgdGhhdCB3ZSBhcmUgaW4gcHJvY2VzcyBjb250ZXh0IGF0
Cj4gPiB0aGF0IHRpbWUuIEhvd2V2ZXIsIHdlIHdhbnQgdG8gYWxsb3cgb3BlcmF0aW9uIG9uIHRo
ZSBpbnRlbF93YWtlcmVmIGZyb20KPiA+IGluc2lkZSB0aW1lciBhbmQgb3RoZXIgaGFyZGlycSBj
b250ZXh0LCB3aGljaCBtZWFucyB0aGF0IG5lZWQgdG8gZGVmZXIKPiA+IHRoYXQgZmluYWwgcHV0
IHRvIGEgd29ya3F1ZXVlLgo+ID4KPiA+IEluc2lkZSB0aGUgZmluYWwgd2FrZXJlZiBwdXRzLCB3
ZSBhcmUgc2FmZSB0byBvcGVyYXRlIGluIGFueSBjb250ZXh0LCBhcwo+ID4gd2UgYXJlIHNpbXBs
eSBtYXJraW5nIHVwIHRoZSBIVyBhbmQgc3RhdGUgdHJhY2tpbmcgZm9yIHRoZSBwb3RlbnRpYWwK
PiA+IHNsZWVwLiBJdCdzIG9ubHkgdGhlIHNlcmlhbGlzYXRpb24gd2l0aCB0aGUgcG90ZW50aWFs
IHNsZWVwaW5nIGdldHRpbmcKPiA+IHRoYXQgcmVxdWlyZXMgY2FyZWZ1bCB3YWl0IGF2b2lkYW5j
ZS4gVGhpcyBhbGxvd3MgdXMgdG8gcmV0YWluIHRoZQo+ID4gaW1tZWRpYXRlIHByb2Nlc3Npbmcg
YXMgYmVmb3JlICh3ZSBvbmx5IG5lZWQgdG8gc2xlZXAgb3ZlciB0aGUgc2FtZQo+ID4gcmFjZXMg
YXMgdGhlIGN1cnJlbnQgbXV0ZXhfbG9jaykuCj4gPgo+ID4gdjI6IEFkZCBhIHNlbGZ0ZXN0IHRv
IGVuc3VyZSB3ZSBleGVyY2lzZSB0aGUgY29kZSB3aGlsZSBsb2NrZGVwIHdhdGNoZXMuCj4gPiB2
MzogVGhhdCB0ZXN0IHdhcyBleHRyZW1lbHkgbG91ZCBhbmQgY29tcGxhaW5lZCBhYm91dCBtYW55
IHRoaW5ncyEKPiA+Cj4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExMjk1Cj4gPiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEyNDUKPiA+IFJlZmVyZW5jZXM6IGh0dHBzOi8v
YnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTI1Ngo+ID4gRml4ZXM6IDE4
Mzk4OTA0Y2E5ZSAoImRybS9pOTE1OiBPbmx5IHJlY292ZXIgYWN0aXZlIGVuZ2luZXMiKQo+ID4g
Rml4ZXM6IDUxZmJkOGRlODdkYyAoImRybS9pOTE1L3BtdTogQXRvbWljYWxseSBhY3F1aXJlIHRo
ZSBndF9wbSB3YWtlcmVmIikKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gCj4gT2ssIHRoaXMgd2FzIGRpc2N1c3NlZCBvbiB0aGUgb3RoZXIgc3VibWlz
c2lvbiB0aHJlYWQgYW5kCj4gY29uZnVzaW9uIGNsZWFyZWQuIFRoZXJlIHdhcyBubyBhaW0gZm9y
IGltcGxpY2l0IHN5bmMKPiBmb3IgZ2VtX3dhaXQgYnV0IHJhdGhlciByZWZpbmUgdGhlIHJlc29s
dXRpb24uCj4gCj4gVGhlIHRlc3QgbG9va2VkIHZpY2lvdXMgZW5vdWdoLCBmb3IgYm90aCBkb21h
aW5zIHNvCj4gd2Ugc2hvdWxkIG5vdGljZSBpZiB0aGluZ3MgZmx5IGFwYXJ0Lgo+IAo+IFJldmll
d2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
aXMgaXMgb25lIG9mIHRob3NlIHRoYXQgaXMgZGlmZmljdWx0IHRvIHJlYXNvbiB3aXRob3V0IHRl
c3RzIGFuZApkaWZmaWN1bHQgdG8gbmFpbCBkb3duIGluIHRlc3RzLiBJJ20gc3VyZSB0aGVyZSdz
IHBsZW50eSBvZiByZWZpbmVtZW50CnRvIGNvbWUuIDp8CgpUaGFua3MsCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
