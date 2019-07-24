Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085D273176
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 16:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0CF6E5B0;
	Wed, 24 Jul 2019 14:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7B1E6E5B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 14:18:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17567905-1500050 for multiple; Wed, 24 Jul 2019 15:18:38 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
 <20190724022153.8927-6-daniele.ceraolospurio@intel.com>
 <op.z5fnildoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z5fnildoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156397791707.31349.8118888973298995984@skylake-alporthouse-com>
Date: Wed, 24 Jul 2019 15:18:37 +0100
Subject: Re: [Intel-gfx] [PATCH v2 5/8] drm/i915/huc: Copy huc rsa only once
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTI0IDEzOjU1OjIzKQo+IE9uIFdlZCwg
MjQgSnVsIDIwMTkgMDQ6MjE6NTAgKzAyMDAsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gIAo+IDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKPiAKPiA+IFRoZSBiaW5hcnkg
aXMgcGVybWEtcGlubmVkIGFuZCB0aGUgcnNhIGlzIG5vdCBnb2luZyB0byBjaGFuZ2UsIHNvIGNv
cHkKPiA+IGl0IG9ubHkgb25jZSBhbmQgbm90IG9uIGV2ZXJ5IGxvYWQuCj4gCj4gYXMgdGhpcyBu
ZXcgbG9jYXRpb24gaXMgYWNjZXNzaWJsZSBmcm9tIHRoZSBHdUMsIHdoYXQgaWYgR3VDIChvciB3
aG9ldmVyCj4gZWxzZSkgY29ycnVwdHMgaXQgPyB3aXRoIHN0YWxlIFJTQSB3ZSB3aWxsIGZhaWwg
dG8gYXV0aGVudGljYXRlIEh1QyBvbgo+IHN1YnNlcXVlbnQgcmVzZXRzLgoKUmVmdXNpbmcgdG8g
cnVuIGFmdGVyIG1pc2JlaGF2aW91ciBpcyByZWFzb25hYmxlLCBhbmQgcHJvYmFibHkgYmV0dGVy
CnRoYW4gcnVubmluZyB3aXRoIGEgc3VjY2Vzc2Z1bCBhZHZlcnNhcnkuIFdlIGNhbiBlcXVhbGx5
IGNvbmplY3R1cmUgaG93CnRvIHJlc3BvbmQgdG8gYW4gYXR0YWNrIGFnYWluc3QgYW55IG90aGVy
IEdHVFQgb3IgZXZlbiBwcEdUVCBvYmplY3QsCndoZXJlIHdlIGhhdmUgbm8gaWRlYSBvbiB0aGUg
aWRlbnRpdHkgb2YgdGhlIGN1bHByaXQuIFRoYXQncyBiZWZvcmUgd2UKZXZlbiBzdGFydCBvbiBo
aWRkZW4gaHlwZXJ2aXNvcnMgYW5kIG1pY3JvY29udHJvbGxlcnMuCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
