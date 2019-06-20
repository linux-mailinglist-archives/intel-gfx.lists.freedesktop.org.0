Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 061454CC31
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 12:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41286E3FE;
	Thu, 20 Jun 2019 10:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F89B6E3FE;
 Thu, 20 Jun 2019 10:47:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 03:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="181838324"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2019 03:47:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Joe Perches <joe@perches.com>, Alastair D'Silva <alastair@d-silva.org>
In-Reply-To: <fcf57339aea60fb1744cea2a2593656c728c4ec4.camel@perches.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
 <c68cb819257f251cbb66f8998a95c31cebe2d72e.camel@d-silva.org>
 <d8316be322f33ea67640ff83f2248fe433078407.camel@perches.com>
 <9456ca2a4ae827635bb6d864e5095a9e51f2ac45.camel@d-silva.org>
 <fcf57339aea60fb1744cea2a2593656c728c4ec4.camel@perches.com>
Date: Thu, 20 Jun 2019 13:50:33 +0300
Message-ID: <87sgs4sf7q.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 0/7] Hexdump Enhancements
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Steven Rostedt <rostedt@goodmis.org>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, netdev@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxOSBKdW4gMjAxOSwgSm9lIFBlcmNoZXMgPGpvZUBwZXJjaGVzLmNvbT4gd3JvdGU6
Cj4gT24gVGh1LCAyMDE5LTA2LTIwIGF0IDExOjE0ICsxMDAwLCBBbGFzdGFpciBEJ1NpbHZhIHdy
b3RlOgo+PiBPbiBXZWQsIDIwMTktMDYtMTkgYXQgMTc6MzUgLTA3MDAsIEpvZSBQZXJjaGVzIHdy
b3RlOgo+PiA+IE9uIFRodSwgMjAxOS0wNi0yMCBhdCAwOToxNSArMTAwMCwgQWxhc3RhaXIgRCdT
aWx2YSB3cm90ZToKPj4gPiA+IE9uIFdlZCwgMjAxOS0wNi0xOSBhdCAwOTozMSAtMDcwMCwgSm9l
IFBlcmNoZXMgd3JvdGU6Cj4+ID4gPiA+IE9uIE1vbiwgMjAxOS0wNi0xNyBhdCAxMjowNCArMTAw
MCwgQWxhc3RhaXIgRCdTaWx2YSB3cm90ZToKPj4gPiA+ID4gPiBGcm9tOiBBbGFzdGFpciBEJ1Np
bHZhIDxhbGFzdGFpckBkLXNpbHZhLm9yZz4KPj4gPiA+ID4gPiAKPj4gPiA+ID4gPiBBcG9sb2dp
ZXMgZm9yIHRoZSBsYXJnZSBDQyBsaXN0LCBpdCdzIGEgaGVhZHMgdXAgZm9yIHRob3NlCj4+ID4g
PiA+ID4gcmVzcG9uc2libGUKPj4gPiA+ID4gPiBmb3Igc3Vic3lzdGVtcyB3aGVyZSBhIHByb3Rv
dHlwZSBjaGFuZ2UgaW4gZ2VuZXJpYyBjb2RlIGNhdXNlcwo+PiA+ID4gPiA+IGEKPj4gPiA+ID4g
PiBjaGFuZ2UKPj4gPiA+ID4gPiBpbiB0aG9zZSBzdWJzeXN0ZW1zLgo+PiA+ID4gPiA+IAo+PiA+
ID4gPiA+IFRoaXMgc2VyaWVzIGVuaGFuY2VzIGhleGR1bXAuCj4+ID4gPiA+IAo+PiA+ID4gPiBT
dGlsbCBub3QgYSBmYW4gb2YgdGhlc2UgcGF0Y2hlcy4KPj4gPiA+IAo+PiA+ID4gSSdtIGFmcmFp
ZCB0aGVyZSdzIG5vdCB0b28gbXVjaCBhY3Rpb24gSSBjYW4gdGFrZSBvbiB0aGF0LCBJJ20KPj4g
PiA+IGhhcHB5IHRvCj4+ID4gPiBhZGRyZXNzIHNwZWNpZmljIGlzc3VlcyB0aG91Z2guCj4+ID4g
PiAKPj4gPiA+ID4gPiBUaGVzZSBpbXByb3ZlIHRoZSByZWFkYWJpbGl0eSBvZiB0aGUgZHVtcGVk
IGRhdGEgaW4gY2VydGFpbgo+PiA+ID4gPiA+IHNpdHVhdGlvbnMKPj4gPiA+ID4gPiAoZWcuIHdp
ZGUgdGVybWluYWxzIGFyZSBhdmFpbGFibGUsIG1hbnkgbGluZXMgb2YgZW1wdHkgYnl0ZXMKPj4g
PiA+ID4gPiBleGlzdCwKPj4gPiA+ID4gPiBldGMpLgo+PiA+IAo+PiA+IEkgdGhpbmsgaXQncyBn
ZW5lcmFsbHkgb3ZlcmtpbGwgZm9yIHRoZSBkZXNpcmVkIHVzZXMuCj4+IAo+PiBJIHVuZGVyc3Rh
bmQgd2hlcmUgeW91J3JlIGNvbWluZyBmcm9tLCBob3dldmVyLCB0aGVzZSBwYXRjaGVzIG1ha2Ug
aXQgYQo+PiBsb3QgZWFzaWVyIHRvIHdvcmsgd2l0aCBsYXJnZSBjaHVja3Mgb2YgYmluYXJ5IGRh
dGEuIEkgdGhpbmsgaXQgbWFrZXMKPj4gbW9yZSBzZW5zZSB0byBoYXZlIHRoZXNlIHBhdGNoZXMg
dXBzdHJlYW0sIGV2ZW4gdGhvdWdoIGNvbW1pdHRlZCBjb2RlCj4+IG1heSBub3QgbmVjZXNzYXJp
bHkgaGF2ZSBhbGwgdGhlIGZlYXR1cmVzIGVuYWJsZWQsIGFzIGl0IG1lYW5zIHRoYXQKPj4gZGV2
cyB3b24ndCBoYXZlIHRvIGFwcGx5IG91dC1vZi10cmVlIHBhdGNoZXMgZHVyaW5nIGRldmVsb3Bt
ZW50IHRvIG1ha2UKPj4gbGFyZ2VyIGR1bXBzIG1hbmFnZWFibGUuCj4+IAo+PiA+ID4gPiBDaGFu
Z2luZyBoZXhkdW1wJ3MgbGFzdCBhcmd1bWVudCBmcm9tIGJvb2wgdG8gaW50IGlzIG9kZC4KPj4g
PiA+ID4gCj4+ID4gPiAKPj4gPiA+IFRoaW5rIG9mIGl0IGFzIHJlcGxhY2luZyBhIHNpbmdsZSBi
b29sZWFuIHdpdGggbWFueSBib29sZWFucy4KPj4gPiAKPj4gPiBJIHVuZGVyc3RhbmQgaXQuICBJ
dCdzIG9kZC4KPj4gPiAKPj4gPiBJIHdvdWxkIHJhdGhlciBub3QgaGF2ZSBhIG1peHR1cmUgb2Yg
dHJ1ZSwgZmFsc2UsIGFuZCBhcHBhcmVudGx5Cj4+ID4gcmFuZG9tIGNvbGxlY3Rpb25zIG9mIGJp
dGZpZWxkcyBsaWtlIDB4ZCBvciAwYjEwMTEgb3IgdGhlaXIKPj4gPiBlcXVpdmFsZW50IG9yJ2Qg
ZGVmaW5lcy4KPj4gPiAKPj4gCj4+IFdoZXJlJ3MgdGhlIG1peHR1cmU/IFdoYXQgd291bGQgeW91
IHByb3Bvc2UgaW5zdGVhZD8KPgo+IGNyZWF0ZSBhIGhleF9kdW1wX3RvX2J1ZmZlcl9leHQgd2l0
aCBhIG5ldyBhcmd1bWVudAo+IGFuZCBhIG5ldyBzdGF0aWMgaW5saW5lIGZvciB0aGUgb2xkIGhl
eF9kdW1wX3RvX2J1ZmZlcgo+IHdpdGhvdXQgbW9kaWZ5aW5nIHRoZSBhcmd1bWVudCBsaXN0IHRo
YXQgY2FsbHMKPiBoZXhfZHVtcF90b19idWZmZXIgd2l0aCB3aGF0ZXZlciBhZGRlZCBhcmd1bWVu
dCBjb250ZW50Cj4geW91IG5lZWQuCj4KPiBTb21ldGhpbmcgbGlrZToKPgo+IHN0YXRpYyBpbmxp
bmUKPiBpbnQgaGV4X2R1bXBfdG9fYnVmZmVyKGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IGxlbiwg
aW50IHJvd3NpemUsCj4gCQkgICAgICAgaW50IGdyb3Vwc2l6ZSwgY2hhciAqbGluZWJ1Ziwgc2l6
ZV90IGxpbmVidWZsZW4sCj4gCQkgICAgICAgYm9vbCBhc2NpaSkKPiB7Cj4gCXJldHVybiBoZXhf
ZHVtcF90b19idWZmZXJfZXh0KGJ1ZiwgbGVuLCByb3dzaXplLCBncm91cHNpemUsCj4gCQkJCSAg
ICAgIGxpbmVidWYsIGxpbmVidWZsZW4sIGFzY2lpLCAwKTsKPiB9Cj4KPiBhbmQgcmVtb3ZlIEVY
UE9SVF9TWU1CT0woaGV4X2R1bXBfdG9fYnVmZmVyKQoKSWYgeW91IGRlY2lkZSB0byBkbyBzb21l
dGhpbmcgbGlrZSB0aGlzLCBJJ2QgYWN0dWFsbHkgc3VnZ2VzdCB5b3UgZHJvcAp0aGUgYm9vbCBh
c2NpaSBwYXJhbWV0ZXIgZnJvbSBoZXhfZHVtcF90b19idWZmZXIoKSBhbHRvZ2V0aGVyLCBhbmQK
cmVwbGFjZSB0aGUgY2FsbGVycyB0aGF0IGRvIHJlcXVpcmUgYXNjaWkgd2l0aApoZXhfZHVtcF90
b19idWZmZXJfZXh0KC4uLiwgSEVYRFVNUF9BU0NJSSkuIEV2ZW4gaWYgdGhhdCBhbHNvIHJlcXVp
cmVzCnRvdWNoaW5nIGFsbCBjYWxsZXJzLgoKQnV0IG5vIHN0cm9uZyBvcGluaW9ucywgcmVhbGx5
LgoKQlIsCkphbmkuCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
