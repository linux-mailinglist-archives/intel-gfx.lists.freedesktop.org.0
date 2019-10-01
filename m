Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81861C3771
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0E9890D8;
	Tue,  1 Oct 2019 14:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58825890D8
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:31:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18681028-1500050 for multiple; Tue, 01 Oct 2019 15:31:52 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>,
 =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87zhikbkv0.fsf@intel.com>
References: <20191001134353.12028-1-jani.nikula@intel.com>
 <156993916993.1880.15358337785059883105@skylake-alporthouse-com>
 <20191001142248.GM1208@intel.com> <87zhikbkv0.fsf@intel.com>
Message-ID: <156994030747.1880.13816414492049943899@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 01 Oct 2019 15:31:47 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: split out
 intel_vga_client.[ch]
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0xMC0wMSAxNToyODo1MSkKPiBPbiBUdWUsIDAxIE9j
dCAyMDE5LCBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3
cm90ZToKPiA+IE9uIFR1ZSwgT2N0IDAxLCAyMDE5IGF0IDAzOjEyOjQ5UE0gKzAxMDAsIENocmlz
IFdpbHNvbiB3cm90ZToKPiA+PiBGb3IgdGhlIHNha2Ugb2YgYXJndW1lbnQsIGNvdWxkIHlvdSBm
bG9hdCB0aGUgc3BsaXQgaW4gdGhlIG90aGVyCj4gPj4gZGlyZWN0aW9uPwo+IAo+IFBsZWFzZSBl
bGFib3JhdGUuIE1vdmUgc3dpdGNoZXJvbyBoaWdoZXIgaW4gdGhlIGNhbGwgY2hhaW4/CgpJIHdh
cyB0aGlua2luZyBhbG9uZyB0aGUgbGluZXMgb2YgcHVsbGluZyBzd2l0Y2hlcm9vIGludG8KaTkx
NS9pOTE1X3ZnYV9jbGllbnQuYyBhbmQgc2VlaW5nIHdoZXJlIHRoYXQgbGVhZC4gSSBsZWF2ZSB0
aGUgZGV0YWlscwp0byB0aGUgcG9vciBzb3VsIHB1bGxpbmcgYXQgdGhlIHN0YW5kcyBvZiBzcGFn
aGV0dGkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
