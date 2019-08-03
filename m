Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2A480548
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Aug 2019 10:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879FA6E482;
	Sat,  3 Aug 2019 08:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0BBA6E482
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Aug 2019 08:27:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17837834-1500050 for multiple; Sat, 03 Aug 2019 09:27:29 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190803010944.10169-1-daniele.ceraolospurio@intel.com>
References: <20190803010944.10169-1-daniele.ceraolospurio@intel.com>
Message-ID: <156482084765.6598.126150410559329639@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 03 Aug 2019 09:27:27 +0100
Subject: Re: [Intel-gfx] [RFC] drm/i915/gt: create a subfolder for GT debugfs
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTAzIDAyOjA5OjQ0KQo+IFRo
ZSBpZGVhIGlzIHRvIGJldHRlciBvcmdhbml6ZSBvdXIgZGVidWdmcyBlbnRyaWVzIGJ5IG1vdmlu
ZyB0aGUKPiBHVC1yZWxhdGVkIG9uZXMgaW50byB0aGVpciBvd24gc3ViZm9sZGVyLCBzaW1pbGFy
bHkgdG8gd2hhdCB3ZSBkaWQgZm9yCj4gdGhlIGtlcm5lbCBjb2RlLgo+IAo+IEFzIGFuIGV4YW1w
bGUsIHRoaXMgcGF0Y2ggbW92ZXMgdGhlIEd1Qy9IdUMgYW5kIHVzZXJfZm9yY2V3YWtlIGRlYnVn
ZnMsCj4gYnV0IGEgZmV3IG1vcmUgZmlsZXMgY2FuIGJlIG1vdmVkIGlmIHdlIGRlY2lkZSB0byBn
byB0aGlzIHdheSAoZW5naW5lCj4gc3RhdHVzLCBndF9wbSBldGMpLiBUZXN0IHVwZGF0ZXMgd2ls
bCBhbHNvIGJlIHJlcXVpcmVkIHRvIGxvb2sgZm9yIHRoZQo+IGZpbGUgaW4gdGhlIGNvcnJlY3Qg
cGxhY2UuCgpRdWljayBxdWVzdGlvbiwgd2h5IHN0b3AgYXQgaW50ZWxfZ3RfZGVidWdmcy5jPyBE
byB3ZSBub3Qgd2FudCB0byBwdWxsIHRoZQpbZ2hddWMgY2xvc2VyIHRvIHRoZSBzb3VyY2UgaS5l
LiBndC91Yy9pbnRlbF91Y19kZWJ1Z2ZzLmM/CgpJJ2QgYWxzbyByZWNvbW1lbmQgZm9yIGFueSBm
dXR1cmUgZGVidWdmcywgd2Ugc3BsaXQgaXQgYmV0d2VlbiB0aGUKZGVidWdmcyBob29rIGFuZCB0
aGUgcHJldHR5IHByaW50ZXIsIGFuZCBzcGl0IG91dCB5YW1sIDopCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
