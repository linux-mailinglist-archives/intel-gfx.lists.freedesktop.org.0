Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC23F42D3
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 10:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 820B26F8BD;
	Fri,  8 Nov 2019 09:04:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD1C6F8BC;
 Fri,  8 Nov 2019 09:04:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 01:04:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,280,1569308400"; d="scan'208";a="193108151"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga007.jf.intel.com with ESMTP; 08 Nov 2019 01:04:09 -0800
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 8 Nov 2019 09:04:07 +0000
Date: Fri, 8 Nov 2019 11:04:05 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191108090405.yes2ktbqngt3vtlj@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20191107173820.2wj2b6ziehhnmoyo@ahiler-desk1.fi.intel.com>
 <157316097482.2228.167580740381610009@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157316097482.2228.167580740381610009@skylake-alporthouse-com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] [ANNOUNCEMENT] Documenting tests with igt_describe()
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMDk6MDk6MzRQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgQXJrYWRpdXN6IEhpbGVyICgyMDE5LTExLTA3IDE3OjM4OjIwKQo+ID4g
V2UgZG9uJ3Qgd2FudCB5b3UgdG8gdHJhbnNsYXRlIEMgaW50byBFbmdsaXNoLCB3ZSB3YW50IHlv
dSB0byBwcm92aWRlIGEgYml0IG9mCj4gPiB0aGF0IGV4dHJhIGluZm9ybWF0aW9uIHRoYXQgeW91
IHdvdWxkIGhhdmUgcHV0IGluIHRoZSBjb21tZW50cyBhbnl3YXkuCj4gCj4gVGhlIGNvbW1lbnRz
IHNob3VsZCBleGlzdCBhbmQgYXJlIF9pbmxpbmVfIHdpdGggdGhlIGNvZGUuCgpBbmQgSSBlbmNv
dXJhZ2UgZG9pbmcgc28uIERldGFpbGVkIGNvbW1lbnRzIHdoYXQgdGhpcyBwYXJ0aWN1bGFyCm5v
bi1vYnZpb3VzIGNodW5rIG9mIGNvZGUgaXMgZG9pbmcgYXJlIGFsd2F5cyB3ZWxjb21lLgoKPiBJ
biBhbGwgdGhlIGV4YW1wbGVzIG9mIGlndF9kZXNjcmliZSgpIEkgaGF2ZSBzZWVuLCBpdCBpcyBu
b3doZXJlIG5lYXIKPiB0aGUgY29kZSBzbyBpcyB1c2VsZXNzOyB0aGUgaW5mb3JtYXRpb24gY29u
dmV5ZWQgZG9lcyBub3QgYXNzaXN0Cj4gYW55b25lIGluIGRpYWdub3Npbmcgb3IgZGVidWdnaW5n
IHRoZSBwcm9ibGVtLCBzbyBJIHlldCB0byB1bmRlcnN0YW5kCj4gaG93IGl0IGhlbHBzLgoKVGhl
eSBhcmUgc3VwcG9zZWQgdG8gZG9jdW1lbnQgbm90IHRoZSBpbXBsZW1lbnRhdGlvbiBidXQgd2hh
dCBpcyB0aGUKZ3JhbmQgaWRlYSBiZWhpbmQgYSBnaXZlbiBzdWJ0ZXN0LCBzbyB0aGV5IGFyZSBv
biBhIHN1YnRlc3QgbGV2ZWwgKG9yIGEKZ3JvdXAgb2Ygc3VidGVzdHMpLCB3aGljaCBpcyBvdXIg
YmFzaWMgdGVzdGluZyB1bml0IC0gdGhpcyBpcyB3aGF0IGZhaWxzCmluIENJLCB0aGlzIGlzIHdo
YXQgeW91IGV4ZWN1dGUgbG9jYWxseSB0byByZXByb2R1Y2UgdGhlIGlzc3VlLgoKQ2FuIHlvdSB0
cnVseSBkZWJ1ZyBhbiBpc3N1ZSBvciB1bmRlcnN0YW5kIHdoYXQgdGhlIGZhaWx1cmUgbWVhbnMK
d2l0aG91dCBrbm93aW5nIHdoYXQgdGhlIHRlc3QgaXMgc3VwcG9zZWQgdG8gcHJvdmU/CgpBIGxv
dCBvZiBwZW9wbGUgaGVyZSBoYXZlIHN0cnVnZ2xlZCB3aXRoIHRoaXMgYW5kIG9mdGVuIGl0IHRh
a2VzIGEgbG90Cm9mIHRpbWUgYW5kIHJlcXVpcmVzIGFkdmFuY2VkIGFyY2hlb2xvZ3kgd2l0aCBg
Z2l0IGJsYW1lYCBob3BpbmcgdGhhdAp0aGVyZSBpcyBhdCBsZWFzdCBvbmUgZGV0YWlsZWQgZW5v
dWdoIGNvbW1pdCBtZXNzYWdlIGluIHRoZXJlLgoKSWYgbm90IHRoZW4gdGFsa2luZyB0byBwZW9w
bGUgYW5kIHJlbHlpbmcgb24gb3VyIHRyaWJhbCBrbm93bGVkZ2UgaXMKcmVxdWlyZWQuCgpBcyBJ
IGhhdmUgbWVudGlvbmVkIC0gZ2V0dGluZyB0aGUgYmlnZ2VyIHBpY3R1cmUgZnJvbSBpbXBsZW1l
bnRhdGlvbgpkZXRhaWxzIGlzIGhhcmQuIEkgZ2V0IHRoYXQgeW91IGFyZSBub3QgYWZmZWN0ZWQg
YnkgdGhpcywgYnV0IHBsZWFzZSBkbwpub3QgZGVueSB0aGUgb3RoZXJzLgoKPiBXaGF0IGlzIG1v
cmUgdXNlZnVsLCBhIGxpbmsgdG8gdGhlIGtlcm5lbCBjb3ZlcmFnZSBvZiB0aGUgdGVzdCBhbmQK
PiBsaW5rIHRvIHRoZSB0ZXN0IHNvdXJjZSBjb2RlLCBvciB3YWZmbGU/Cj4gLUNocmlzCgpUaG9z
ZSB0aGluZ3MgYXJlIG5vdCBleGNsdXNpdmUuIENvdmVyYWdlIGlzIGV4dHJlbWVseSB1c2VmdWwg
bWV0cmljLApzb3VyY2UgY29kZSBpcyB3aGVyZSB0aGUgYWN0aW9uIGhhcHBlbnMgYnV0IHNvbWUg
aGlnaGVyLWxldmVsCmV4cGxhbmF0aW9ucyBhbmQgd2FmZmxlcyBjYW4gY29leGlzdCBwZWFjZWZ1
bGx5IGFuZCBtYWtlIG1hbnkgbGl2ZXMgbXVjaAptb3JlIHBsZWFzYW50LgoKLS0gCkNoZWVycywK
QXJlawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
