Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF07B1C636
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 11:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADA089265;
	Tue, 14 May 2019 09:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E46FA89254
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 09:37:35 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 02:37:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,468,1549958400"; d="scan'208";a="171523890"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 14 May 2019 02:37:34 -0700
Date: Tue, 14 May 2019 12:37:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20190514093710.GA31163@ideak-desk.fi.intel.com>
References: <20190510140255.25215-1-imre.deak@intel.com>
 <87a7fq8nli.fsf@intel.com>
 <20190513140518.GD30042@ideak-desk.fi.intel.com>
 <87tvdxjwxt.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tvdxjwxt.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: More workaround for port F
 detection due to broken VBTs
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMTQsIDIwMTkgYXQgMTA6NTE6MjZBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gTW9uLCAxMyBNYXkgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
PiB3cm90ZToKPiA+IE9uIE1vbiwgTWF5IDEzLCAyMDE5IGF0IDA0OjU2OjI1UE0gKzAzMDAsIEph
bmkgTmlrdWxhIHdyb3RlOgo+ID4+IE9uIEZyaSwgMTAgTWF5IDIwMTksIEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4gd3JvdGU6Cj4gPj4gPiBBZGQgYW5vdGhlciBJQ0wtWSBQQ0lJRCB0
aGF0IHByb3ZlZCB0byBoYXZlIG9ubHkgNSBwb3J0cyB0byB0aGUKPiA+PiA+IGNvcnJlc3BvbmRp
bmcgUENJSUQgbGlzdC4KPiA+PiA+Cj4gPj4gPiBNZWFud2hpbGUgSSdtIHRyeWluZyB0byBnZXQg
YSBjb21wbGV0ZSBsaXN0IG9mIGFsbCBQQ0lJRHMgd2l0aCBsZXNzIHRoYW4KPiA+PiA+IDYgcG9y
dHMgYW5kL29yIGdldCBhIFZCVCBmaXggdG8gbWFyayB0aGVzZSBwb3J0cyBub24tZXhpc3RhbnQs
IGJ1dCB1bnRpbAo+ID4+ID4gdGhlbiB0aGUgb25seSB3YXkgaXMgdG8gZ28gb25lLWJ5LW9uZS4K
PiA+PiA+Cj4gPj4gPiBUaGlzIGZpeGVzIHRoZSBmb2xsb3dpbmcgZXJyb3Igb24gbWFjaGluZXMg
d2l0aCBsZXNzIHRoYW4gNiBwb3J0Ogo+ID4+ID4KPiA+PiA+IAlbZHJtOmludGVsX3Bvd2VyX3dl
bGxfZW5hYmxlIFtpOTE1XV0gZW5hYmxpbmcgQVVYIEYKPiA+PiA+IAktLS0tLS0tLS0tLS1bIGN1
dCBoZXJlIF0tLS0tLS0tLS0tLS0KPiA+PiA+IAlXQVJOX09OKGludGVsX3dhaXRfZm9yX3JlZ2lz
dGVyKCZkZXZfcHJpdi0+dW5jb3JlLCByZWdzLT5kcml2ZXIsICgweDEgPDwgKChwd19pZHgpICog
MikpLCAoMHgxIDw8ICgocHdfaWR4KSAqIDIpKSwgMSkpCj4gPj4gPgo+ID4+ID4gKEludGVybmFs
IHJlZmVyZW5jZTogQlNwZWMvSW5kZXgvMjA1ODQvSXNzdWVzLCBIU0QvMTMwNjA4NDExNikKPiA+
PiA+Cj4gPj4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KPiA+PiA+
IFJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTEwODkxNQo+ID4+IAo+ID4+IFdlJ3ZlIHVzZWQgQnVnemlsbGE6IGZvciBidWdzIHRoYXQgdGhl
IHBhdGNoIGF0IGhhbmQgZml4ZXMsIGFuZAo+ID4+IFJlZmVyZW5jZXM6IGZvciBvdGhlciByZWxh
dGVkIGxpbmtzIGFuZCBzdHVmZi4gU2VlbXMgbGlrZSB0aGUgcGF0Y2gKPiA+PiBhY3R1YWxseSBm
aXhlZCB0aGUgYnVnLgo+ID4KPiA+IFllcywgaXQncyBhIGxpbmsgdG8gYSByZWxhdGVkIGJ1Zy4g
SXQgLSB1bmZvcnR1bmF0ZWx5IC0gZG9lcyBub3QgZml4IHRoZQo+ID4gYnVnLCBzaW5jZSB3ZSBk
b24ndCBrbm93IHlldCB0aGUgZnVsbCBQQ0lJRCBsaXN0IGZvciBJQ0xzIHRoYXQgaGF2ZSBvbmx5
Cj4gPiA1IChvciBldmVuIGxlc3MpIHBvcnRzLgo+IAo+IFlldCB0aGUgYnVnIHdhcyBjbG9zZWQg
cmVmZXJlbmNpbmcgdGhpcyBjb21taXQuLi4KClllcywgdGhhdCB3YXMgaW4gdGhlIGhvcGUgdGhh
dCBieSBub3cgKGFmdGVyIG1vbnRocykgd2UnZCBnZXQgYSBWQlQKZml4Li4gSSByZW9wZW5lZCB0
aGUgZmRvIGJ1ZyBub3cgdW50aWwgd2UgZ2V0IHRoZSBmdWxsIGxpc3Qgb2YgUENJSURzLAoob3Ig
bWFnaWMgaGFwcGVucyBhbmQgdGhlIFZCVCBnZXRzIGZpeGVkKS4KClRoYW5rcywKSW1yZQoKPiAK
PiBCUiwKPiBKYW5pLgo+IAo+IAo+ID4KPiA+PiAKPiA+PiBCUiwKPiA+PiBKYW5pLgo+ID4+IAo+
ID4+IAo+ID4+ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pgo+ID4+ID4gLS0tCj4gPj4gPiAgaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDQgKystLQo+
ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Pj4gPgo+ID4+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNs
dWRlL2RybS9pOTE1X3BjaWlkcy5oCj4gPj4gPiBpbmRleCA2NDc3ZGEyMmFmMjguLjZkNjBlYTY4
YzE3MSAxMDA2NDQKPiA+PiA+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPiA+PiA+
ICsrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPiA+PiA+IEBAIC01NTksNyArNTU5LDYg
QEAKPiA+PiA+ICAjZGVmaW5lIElOVEVMX0lDTF9QT1JUX0ZfSURTKGluZm8pIFwKPiA+PiA+ICAJ
SU5URUxfVkdBX0RFVklDRSgweDhBNTAsIGluZm8pLCBcCj4gPj4gPiAgCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg4QTVDLCBpbmZvKSwgXAo+ID4+ID4gLQlJTlRFTF9WR0FfREVWSUNFKDB4OEE1RCwgaW5m
byksIFwKPiA+PiA+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNTksIGluZm8pLAlcCj4gPj4gPiAg
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTU4LCBpbmZvKSwJXAo+ID4+ID4gIAlJTlRFTF9WR0FfREVW
SUNFKDB4OEE1MiwgaW5mbyksIFwKPiA+PiA+IEBAIC01NzMsNyArNTcyLDggQEAKPiA+PiA+ICAK
PiA+PiA+ICAjZGVmaW5lIElOVEVMX0lDTF8xMV9JRFMoaW5mbykgXAo+ID4+ID4gIAlJTlRFTF9J
Q0xfUE9SVF9GX0lEUyhpbmZvKSwgXAo+ID4+ID4gLQlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MSwg
aW5mbykKPiA+PiA+ICsJSU5URUxfVkdBX0RFVklDRSgweDhBNTEsIGluZm8pLCBcCj4gPj4gPiAr
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTVELCBpbmZvKQo+ID4+ID4gIAo+ID4+ID4gIC8qIEVITCAq
Lwo+ID4+ID4gICNkZWZpbmUgSU5URUxfRUhMX0lEUyhpbmZvKSBcCj4gPj4gCj4gPj4gLS0gCj4g
Pj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgo+IAo+IC0t
IAo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
