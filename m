Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CA537A93
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 19:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3783893D0;
	Thu,  6 Jun 2019 17:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6870893D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 17:09:43 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 10:09:43 -0700
X-ExtLoop1: 1
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2019 10:09:43 -0700
Date: Thu, 6 Jun 2019 10:09:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190606170942.GZ13184@mdroper-desk.amr.corp.intel.com>
References: <20190605211832.23945-1-matthew.d.roper@intel.com>
 <20190605215107.GA14368@intel.com>
 <20190605221522.GW13184@mdroper-desk.amr.corp.intel.com>
 <20190606160056.GF3452@intel.com>
 <20190606160908.odxcvg2kji7dco5x@ldmartin-desk.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606160908.odxcvg2kji7dco5x@ldmartin-desk.amr.corp.intel.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Support HBR3 on EHL combo PHY
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

T24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMDk6MDk6MDhBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIFRodSwgSnVuIDA2LCAyMDE5IGF0IDA5OjAwOjU2QU0gLTA3MDAsIFJvZHJp
Z28gVml2aSB3cm90ZToKPiA+IE9uIFdlZCwgSnVuIDA1LCAyMDE5IGF0IDAzOjE1OjIyUE0gLTA3
MDAsIE1hdHQgUm9wZXIgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgSnVuIDA1LCAyMDE5IGF0IDAyOjUx
OjA4UE0gLTA3MDAsIE1hbmFzaSBOYXZhcmUgd3JvdGU6Cj4gPiA+ID4gT24gV2VkLCBKdW4gMDUs
IDIwMTkgYXQgMDI6MTg6MzJQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90ZToKPiA+ID4gPiA+IFVu
bGlrZSBJQ0wsIEVITCdzIGNvbWJvIFBIWXMgY2FuIHN1cHBvcnQgSEJSMyBkYXRhIHJhdGVzLiAg
Tm90ZSB0aGF0Cj4gPiA+ID4gPiB0aGlzIGp1c3QgZXh0ZW5kcyB0aGUgdXBwZXIgbGltaXQ7IHdl
IHdpbGwgY29udGludWUgdG8gaG9ub3IgdGhlIG1heAo+ID4gPiA+ID4gZGF0YSByYXRlIHNwZWNp
ZmllZCBpbiB0aGUgVkJUIGluIGNhc2VzIHdoZXJlIGl0IGlzIGxvd2VyIHRoYW4gSEJSMy4KPiA+
ID4gPiA+Cj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPgo+ID4gPiA+Cj4gPiA+ID4gWWVzIGxvb2tzIGdvb2QgdG8gbWUuCj4gPiA+
ID4KPiA+ID4gPiBSZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGlu
dGVsLmNvbT4KPiA+ID4gPgo+ID4gPiA+IE1hbmFzaQo+ID4gPiAKPiA+ID4gVGhhbmtzIGZvciB0
aGUgcXVpY2sgcmV2aWV3LiAgQ0kgbG9va3MgaGFwcHkgdG9vLCBzbyBwdXNoZWQgdG8gZGlucS4K
PiA+ID4gCj4gPiA+IAo+ID4gPiBNYXR0Cj4gPiA+IAo+ID4gPiA+Cj4gPiA+ID4gPiAtLS0KPiA+
ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIHwgMSArCj4gPiA+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcC5jCj4gPiA+ID4gPiBpbmRleCAyNGI1NmIyYTc2YzguLmIwOTlhOWRjMjhm
ZCAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMK
PiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiA+ID4gPiA+
IEBAIC0zMzIsNiArMzMyLDcgQEAgc3RhdGljIGludCBpY2xfbWF4X3NvdXJjZV9yYXRlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gPiA+ID4gPiAgCWVudW0gcG9ydCBwb3J0ID0gZGlnX3Bv
cnQtPmJhc2UucG9ydDsKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgCWlmIChpbnRlbF9wb3J0X2lzX2Nv
bWJvcGh5KGRldl9wcml2LCBwb3J0KSAmJgo+ID4gPiA+ID4gKwkgICAgIUlTX0VMS0hBUlRMQUtF
KGRldl9wcml2KSAmJgo+ID4gCj4gPiBJIHdvbmRlciBpZiB3ZSBzaG91bGRuJ3QgdXNlIElTX0lD
RUxBS0UgaW5zdGVhZCBvZiAhSVNfRUxLSEFSVExBS0UgaGVyZS4uLgo+ID4gYnV0IGl0IHNlZW1z
IHRvIGxhdGUuLi4KPiAKPiBpZiB3ZSBhcHBseSB0aGUgcHJpbmNpcGxlIHdlIGhhdmUgYmVlbiBh
ZG9wdGluZyBvZiBhbHdheXMgdXNpbmcgdGhlIGxhc3QKPiBwbGF0Zm9ybSBmb3IgdGhlIG5leHQg
b25lLi4uIEkgYWdyZWUsIHRoaXMgc2hvdWxkIGJlIElTX0lDRUxBS0UoKS4KCk1ha2VzIHNlbnNl
LiAgSSBhc3N1bWVkIHRoaXMgd2FzIHNvbWV0aGluZyBtb3JlIHRpZWQgdG8gRUhMJ3MgbGFjayBv
ZiBUQwpwb3J0cyByYXRoZXIgdGhhbiBzb21ldGhpbmcgdGhhdCB3b3VsZCBuZWNlc3NhcmlseSBi
ZSBjYXJyaWVkIGZvcndhcmQgdG8KZnV0dXJlIHBsYXRmb3JtcywgYnV0IGFzIHlvdSBwb2ludCBv
dXQgSSBwcm9iYWJseSBzaG91bGRuJ3QgbWFrZSBndWVzc2VzCmFib3V0IGZ1dHVyZSBwbGF0Zm9y
bXMgbGlrZSB0aGF0IGFuZCBzaG91bGQganVzdCBmb2xsb3cgb3VyIGV4aXN0aW5nCmNvbnZlbnRp
b24gb2YgaW5oZXJpdGluZyBhbGwgZmVhdHVyZXMuICBJJ2xsIHNlbmQgYSBmb2xsb3ctdXAgcGF0
Y2ggdG8KZmxpcCB0aGlzIHRvIElTX0lDRUxBS0UgaW4gYSBsaXR0bGUgYml0LgoKCk1hdHQKCj4g
Cj4gTHVjYXMgRGUgTWFyY2hpCj4gCj4gPiAKPiA+IEJ1dCBzb21ldGhpbmcgdG8gcmVtZW1iZXIg
dG8gcGF5IGF0dGVudGlvbiBvbiBhbnkgdXBjb21pbmcgcGxhdGZvcm0uLi4KPiA+IAo+ID4gPiA+
ID4gIAkgICAgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCj4gPiA+ID4gPiAgCQlyZXR1cm4g
NTQwMDAwOwo+ID4gPiA+ID4KPiA+ID4gPiA+IC0tCj4gPiA+ID4gPiAyLjE0LjUKPiA+ID4gPiA+
Cj4gPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4gPiA+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gPiA+ID4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiA+ID4gCj4gPiA+IC0tCj4gPiA+IE1hdHQg
Um9wZXIKPiA+ID4gR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKPiA+ID4gSW9URyBQbGF0Zm9y
bSBFbmFibGluZyAmIERldmVsb3BtZW50Cj4gPiA+IEludGVsIENvcnBvcmF0aW9uCj4gPiA+ICg5
MTYpIDM1Ni0yNzk1Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+ID4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdh
cmUgRW5naW5lZXIKSW9URyBQbGF0Zm9ybSBFbmFibGluZyAmIERldmVsb3BtZW50CkludGVsIENv
cnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
