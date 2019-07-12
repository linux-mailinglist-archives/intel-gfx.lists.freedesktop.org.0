Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A03C867066
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 15:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13DE3898EA;
	Fri, 12 Jul 2019 13:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C5F3898EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 13:44:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17249140-1500050 for multiple; Fri, 12 Jul 2019 14:44:25 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190712112931.GD12992@intel.com>
References: <20190712111445.21040-1-michal.wajdeczko@intel.com>
 <20190712111445.21040-3-michal.wajdeczko@intel.com>
 <20190712112931.GD12992@intel.com>
Message-ID: <156293906362.15207.18400880540699704309@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 12 Jul 2019 14:44:23 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Turn on GuC/HuC auto mode
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSb2RyaWdvIFZpdmkgKDIwMTktMDctMTIgMTI6Mjk6MzEpCj4gT24gRnJpLCBKdWwg
MTIsIDIwMTkgYXQgMTE6MTQ6NDVBTSArMDAwMCwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiA+
IFVzaW5nICJlbmFibGVfZ3VjIiBtb2RwYXJhbSBhdXRvIG1vZGUgKC0xKSB3aWxsIGxldCBkcml2
ZXIKPiA+IGRlY2lkZSBvbiB3aGljaCBwbGF0Zm9ybXMgYW5kIGluIHdoaWNoIGNvbmZpZ3VyYXRp
b24gd2Ugd2FudAo+ID4gdG8gdXNlIEd1Qy9IdUMgZmlybXdhcmVzLgo+ID4gCj4gPiBUb2RheSBk
cml2ZXIgd2lsbCBlbmFibGUgSHVDIGZpcm13YXJlIGF1dGhlbnRpY2F0aW9uIGJ5IEd1Qwo+ID4g
b25seSBvbiBHZW4xMSsgcGxhdGZvcm1zIGFzIEh1QyBmaXJtd2FyZSBpcyByZXF1aXJlZCB0byB1
bmxvY2sKPiA+IGFkdmFuY2VkIHZpZGVvIGNvZGVjcyBpbiBtZWRpYSBkcml2ZXIuCj4gPiAKPiA+
IExlZ2FjeSBwbGF0Zm9ybXMgd2l0aCBHdUMvSHVDIGFyZSBub3QgYWZmZWN0ZWQgYnkgdGhpcyBj
aGFuZ2UKPiA+IGFzIGZvciB0aGVtIGRyaXZlciBzdGlsbCBkZWZhdWx0cyB0byBkaXNhYmxlZCgw
KSBpbiBhdXRvIG1vZGUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28g
PG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KPiA+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+
IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwu
Y29tPgo+IAo+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+CgpBbmQgcHVzaGVkLiBHb29kIGx1Y2shCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
