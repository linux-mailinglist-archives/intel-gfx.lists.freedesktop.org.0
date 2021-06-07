Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BACE39E797
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 21:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 998616E54C;
	Mon,  7 Jun 2021 19:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 884966E52A;
 Mon,  7 Jun 2021 19:39:02 +0000 (UTC)
IronPort-SDR: JNdERZApqSAYFtEPCNwA10CiERfm4VZAbzTiaFD3WKzHfJCIauxvDTsSjqC03eUTe4SGdIxKPD
 QdZqt7Ja0WUw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204509313"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="204509313"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 12:39:00 -0700
IronPort-SDR: MHDQjhALUOg8aUTlVQtd4TllVva7mDyp1aXGdRpbudS3VFBMqv1C3KzyGHD8B4HJhPAkJKZ/yt
 rsXDsaQdPBgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="469214094"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 07 Jun 2021 12:39:00 -0700
Received: from [10.249.152.173] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.152.173])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 157JcwmY032391; Mon, 7 Jun 2021 20:38:59 +0100
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210607180356.165785-1-matthew.brost@intel.com>
 <20210607180356.165785-10-matthew.brost@intel.com>
 <20210607174550.GA14577@sdutt-i7>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <46b24580-493d-7bee-09af-5996b886c6d4@intel.com>
Date: Mon, 7 Jun 2021 21:38:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210607174550.GA14577@sdutt-i7>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/doc: Include GuC ABI
 documentation
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

CgpPbiAwNy4wNi4yMDIxIDE5OjQ1LCBNYXR0aGV3IEJyb3N0IHdyb3RlOgo+IE9uIE1vbiwgSnVu
IDA3LCAyMDIxIGF0IDExOjAzOjUxQU0gLTA3MDAsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6Cj4+IEZy
b206IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+Pgo+PiBH
dUMgQUJJIGRvY3VtZW50YXRpb24gaXMgbm93IHJlYWR5IHRvIGJlIGluY2x1ZGVkIGluIGk5MTUu
cnN0Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6
a29AaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJy
b3N0QGludGVsLmNvbT4KPj4gQ2M6IFBpb3RyIFBpw7Nya293c2tpIDxwaW90ci5waW9ya293c2tp
QGludGVsLmNvbT4KPiAKPiBNaWNoYWwgLSBJIG5vdGljZWQgd2hpbGUgcHV0dGluZyB0aGlzIHNl
cmllcyB0b2dldGhlciB0aGF0IHRoZXJlIGlzCj4ga2VybmVsIGRvYyBpbiBpbnRlbF9ndWNfY3Qu
KiBidXQgdGhpcyBpc24ndCBpbmNsdWVkIGluIGk5MTUucnN0LiBEbyB5b3UKPiB0aGluayB3ZSBz
aG91bGQgYWRkIHRoZSB0aG9zZSBoZXJlIG9yIGluIGEgbmV3IHNlY3Rpb24gKGUuZy4gR3VDIENU
QnMpPwo+IAo+IExldCBtZSBrbm93IHdoYXQgeW91IHRoaW5rIGFuZCBJIGNhbiBmaXggdGhpcyB1
cCBiZWZvcmUgdGhpcyBnZXRzCj4gbWVyZ2VkLgoKV2hhdCdzIGluIGludGVsX2d1Y19jdC4qIGlz
IGltcGxlbWVudGF0aW9uIGRldGFpbCwgdGhhdCBzaG91bGQgYmUgcGxhY2VkCmluIHNlcGFyYXRl
IHNlY3Rpb24sIHdoaWxlIHRoaXMgcGF0Y2ggYWRkcyBwdXJlIEFCSSBkZWZpbml0aW9ucyB0aGF0
CmRlc2VydmUgaXRzIG93biBkZWRpY2F0ZWQgc2VjdGlvbi4KCkJ0dywgdGhpcyBwYXRjaCBkb2Vz
IG5vdCBuZWVkIHRvIGJlIHNxdWFzaGVkIHdpdGggb3RoZXJzLCBhcyBpdCBpcyBhYm91dAp1cGRh
dGluZyAucnN0IG9ubHkgYW5kIGlzIG5vdCBicmVha2luZyBhbnl0aGluZy4gU2FtZSBmb3IgcGF0
Y2ggMS8xMwp0aGF0IGludHJvZHVjZXMgbmV3IGRlZmluaXRpb25zIGluIG5ldyAuaCBmaWxlLgoK
TWljaGFsCgo+IAo+IFdpdGggdGhhdCwgZm9yIHRoaXMgcGF0Y2g6Cj4gCj4gUmV2aWV3ZWQtYnk6
IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgo+IAo+PiAtLS0KPj4gIERv
Y3VtZW50YXRpb24vZ3B1L2k5MTUucnN0IHwgOCArKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkx
NS5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAo+PiBpbmRleCA0MmNlMDE5NjkzMGEu
LmM3ODQ2YjFkOTI5MyAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QK
Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKPj4gQEAgLTUxOCw2ICs1MTgsMTQg
QEAgR3VDLWJhc2VkIGNvbW1hbmQgc3VibWlzc2lvbgo+PiAgLi4ga2VybmVsLWRvYzo6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKPj4gICAgIDpkb2M6
IEd1Qy1iYXNlZCBjb21tYW5kIHN1Ym1pc3Npb24KPj4gIAo+PiArR3VDIEFCSQo+PiArfn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+PiArCj4+ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19tZXNzYWdlc19hYmkuaAo+PiArLi4ga2VybmVsLWRv
Yzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfY29tbXVuaWNhdGlvbl9tbWlv
X2FiaS5oCj4+ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJp
L2d1Y19jb21tdW5pY2F0aW9uX2N0Yl9hYmkuaAo+PiArLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfYWN0aW9uc19hYmkuaAo+PiArCj4+ICBIdUMKPj4g
IC0tLQo+PiAgLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2h1Yy5jCj4+IC0tIAo+PiAyLjI4LjAKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
