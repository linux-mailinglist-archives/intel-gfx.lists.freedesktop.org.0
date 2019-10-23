Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70084E2703
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 01:30:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE6A89BF3;
	Wed, 23 Oct 2019 23:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 811B389BF3
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 23:30:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18943135-1500050 for multiple; Thu, 24 Oct 2019 00:30:52 +0100
MIME-Version: 1.0
To: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191023232606.GQ3257@intel.com>
References: <20191023122151.5017-1-chris@chris-wilson.co.uk>
 <20191023122151.5017-4-chris@chris-wilson.co.uk>
 <20191023232606.GQ3257@intel.com>
Message-ID: <157187344961.18893.5512926294245604184@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 24 Oct 2019 00:30:49 +0100
Subject: Re: [Intel-gfx] [CI 4/4] drm/i915/gem: Cancel contexts when
 hangchecking is disabled
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBLdW1hciBWYWxzYW4sIFByYXRoYXAgKDIwMTktMTAtMjQgMDA6MjY6MDYpCj4gT24g
V2VkLCBPY3QgMjMsIDIwMTkgYXQgMDE6MjE6NTFQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+ID4gKwo+ID4gKyAgICAgLyoKPiA+ICsgICAgICAqIElmIHRoZSB1c2VyIGhhcyBkaXNhYmxl
ZCBoYW5nY2hlY2tpbmcsIHdlIGNhbiBub3QgYmUgc3VyZSB0aGF0Cj4gPiArICAgICAgKiB0aGUg
YmF0Y2hlcyB3aWxsIGV2ZXIgY29tcGxldGUgYWZ0ZXIgdGhlIGNvbnRleHQgaXMgY2xvc2VkLAo+
ID4gKyAgICAgICoga2VlcGluZyB0aGUgY29udGV4dCBhbmQgYWxsIHJlc291cmNlcyBwaW5uZWQg
Zm9yZXZlci4gU28gaW4gdGhpcwo+ID4gKyAgICAgICogY2FzZSB3ZSBvcHQgdG8gZm9yY2libHkg
a2lsbCBvZmYgYWxsIHJlbWFpbmluZyByZXF1ZXN0cyBvbgo+ID4gKyAgICAgICogY29udGV4dCBj
bG9zZS4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAgaWYgKCFpOTE1X21vZHBhcmFtcy5lbmFibGVf
aGFuZ2NoZWNrKQo+ID4gKyAgICAgICAgICAgICBraWxsX2NvbnRleHQoY3R4KTsKPiAKPiBXaHkg
bm90IGtpbGxpbmcgdGhlIGNvbnRleHQgYWx3YXlzIHdoZW4gYSBjb250ZXh0IGlzIGNsb3NlZD8K
CkJlY2F1c2Ugd2UgaGlzdG9yaWNhbGx5IGhhdmUgbm90IGFuZCBzbyBkZXNrdG9wIHVzZXJzcGFj
ZSBoYXMgY29tZSB0bwpkZXBlbmQgb24gdGhhdCBiZWhhdmlvdXIgKHRoaW5rIG9uZSBjbGllbnQg
aGFuZGluZyBvdmVyIGEgZnJhbWVidWZmZXIgdG8KdGhlIGRpc3BsYXkgc2VydmVyIHdpdGggcGVu
ZGluZyByZW5kZXJpbmcpLgoKPiBXaGVuIGhhbmdfY2hlY2sgaXMgZW5hYmxlZCwgaG93IHdvdWxk
IGl0IGtub3cgdGhlIGNvbnRleHQgaXMgY2xvc2VkIGFuZAo+IHdlIHNob3VsZCByZWxlYXNlIGl0
cyByZXNvdXJjZXMsIHVubGVzcyBhbmQgdW50aWxsIHRoZSBjb250ZXh0IGhhcwo+IGhhbmdlZD8K
CkV4YWN0bHkuIFRoZSBjb250ZXh0cyBwZXJzaXN0IHVudGlsIGNvbXBsZXRlLiBUaGUgc2FtZSBk
b3MgcHJldmVudGlvbgpydWxlcyBhcHBseSB0byB0aGUgb3V0c3RhbmRpbmcgd29yayBhcyBhcHBs
aWVkIHdoZW4gdGhlIGNvbnRleHQgd2FzCm9wZW4uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
