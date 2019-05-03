Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C4012D51
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 14:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51CC189D79;
	Fri,  3 May 2019 12:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F166C89D79
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 12:16:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16441042-1500050 for multiple; Fri, 03 May 2019 13:16:06 +0100
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190502232648.4450-4-imre.deak@intel.com>
References: <20190502232648.4450-1-imre.deak@intel.com>
 <20190502232648.4450-4-imre.deak@intel.com>
Message-ID: <155688576496.3139.256837794873689597@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 03 May 2019 13:16:04 +0100
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Add support for
 asynchronous display power disabling
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

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMDUtMDMgMDA6MjY6NDEpCj4gQnkgZGlzYWJsaW5nIGEg
cG93ZXIgZG9tYWluIGFzeW5jaHJvbm91c2x5IHdlIGNhbiByZXN0cmljdCBob2xkaW5nIGEKPiBy
ZWZlcmVuY2Ugb24gdGhhdCBwb3dlciBkb21haW4gdG8gdGhlIGFjdHVhbCBjb2RlIHNlcXVlbmNl
IHRoYXQKPiByZXF1aXJlcyB0aGUgcG93ZXIgdG8gYmUgb24gZm9yIHRoZSBIVyBhY2Nlc3MgaXQn
cyBkb2luZywgYnkgYWxzbwo+IGF2b2lkaW5nIHVubmVlZGVkIG9uLW9mZi1vbiB0b2dnbGluZ3Mg
b2YgdGhlIHBvd2VyIGRvbWFpbiAoc2luY2UgdGhlCj4gZGlzYWJsaW5nIGhhcHBlbnMgd2l0aCBh
IGRlbGF5KS4KClRoYXQgYXBwbGllcyB0byBuby1kZWxheS4gQXJlIHdlIG5vdCBzdGFydGluZyBm
cm9tIGEgc3RhdGUgd2hlcmUgdGhlCmNvZGUgYWNxdWlyZXMgdGhlIHBvd2Vyd2VsbCBmb3IgaXRz
IGltbWVkaWF0ZSB1c2UsIG9yIGl0IHRha2VzIGFuZCBob2xkcwppdCBmb3IgcHJvdHJhY3RlZCBk
dXJhdGlvbnMgZXZlbiB3aGVuIHRoZSBwb3dlcndlbGwgaXMgbm90IGJlaW5nIHVzZWQ/Cgo+IE9u
ZSBiZW5lZml0IGlzIHBvdGVudGlhbCBwb3dlciBzYXZpbmcgaWYgdGhlIGRlbGF5IGlzIGNob3Nl
biBwcm9wZXJseS4KCldoaWNoIGlzIHN1Z2dlc3RpbmcgdGhhdCBzb21lIGRlbGF5IGlzIGJldHRl
ciBwb3dlciBzYXZpbmcgdGhhbgpuby1kZWxheT8gSXQncyBiZWxpZXZhYmxlIHRoYXQgcG93ZXJp
bmcgb24gY29zdCBtb3JlcyBtb3JlIGVuZXJneSB0aGFuCm5vcm1hbC4gQnV0IGRvIHBsZWFzZSBm
aWxsIGluIGEgZmV3IGRldGFpbHMgb24gaG93IHRoZSBkZWxheSBzaG91bGQgYmUKY2hvc2VuLgoK
PiBJbiB0aGUgY2FzZSBvZiB0aGUgQVVYIHBvd2VyIGRvbWFpbiBob2xkaW5nIHRoZSByZWZlcmVu
Y2Ugb24gdGhlIGRvbWFpbgo+IGZvciB0aGUgbWluaW1hbCBhbW91bnQgb2YgdGltZSBhdCBkZWZp
bmVkIHNwb3RzIGlzIGFsc28gYSByZXF1aXJlbWVudDoKCkRvIHlvdSBtZWFuIHRoYXQgdGhlcmUg
aXMgYSBtaW5pbXVtIGR1cmF0aW9uIGZvciB3aGljaCB0aGUgcG93ZXIgd2VsbAptdXN0IGJlIGFz
c2VydGVkIG9uY2UgYWNxdWlyZWQgYmVmb3JlIGJlaW5nIHJlbGVhc2VkPwoKPiBvbiBJQ0wgd2Ug
bmVlZCBhIHN0cmljdGVyIGNvbnRyb2wgb2Ygd2hlbiBlaXRoZXIga2luZCBvZiBBVVggcG93ZXIK
PiBkb21haW4gKFRCVC1hbHQgb3IgRFAtYWx0KSBjYW4gYmUgZW5hYmxlZCBhbmQgdGhlIGxvY2tp
bmcgd2UgbmVlZCBmb3IKPiB0aGF0IGJlY29tZXMgcHJvYmxlbWF0aWMgKGR1ZSB0byBkZXBlbmRl
bmNpZXMgb24gb3RoZXIgbG9ja3MpIGlmIHdlCj4gYWxsb3cgdGhlIHJlZmVyZW5jZSB0byBiZSBo
ZWxkIGZvciBhcmJpdHJhcmlseSBsb25nIHBlcmlvZHMvcGxhY2VzIGluCj4gdGhlIGNvZGUuCj4g
Cj4gSSBjaG9zZSB0aGUgZGlzYWJsaW5nIGRlbGF5IHRvIGJlIDEwMG1zZWMgZm9yIG5vdyB0byBh
dm9pZCB0aGUgdW5uZWVkZWQKPiB0b2dnbGluZyAoYW5kIHNvIG5vdCB0byBpbnRyb2R1Y2UgZG1l
c2cgc3BhbW1pbmcpIGluIHRoZSBEUCBNU1Qgc2lkZWJhbmQKPiBzaWduYWxpbmcgY29kZS4gV2Ug
Y291bGQgb3B0aW1pemUgdGhpcyBkZWxheSBsYXRlci4KCk9yIHJlbW92aW5nIHRoZSBzcGFtLiBB
cmUgd2UgYXQgYSBwb2ludCB3aGVyZSB0aGUgZXJyb3IgZGV0ZWN0aW9uIGlzCmdvb2QgZW5vdWdo
IHRvIHBpbi1wb2ludCB0aGUgbGFjayBvZiBhIHBhcnRpY3VsYXIgcG93ZXJ3ZWxsIHdha2VyZWY/
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
