Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B493A5E71
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 10:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBBDF89AC2;
	Mon, 14 Jun 2021 08:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA67D89AC2;
 Mon, 14 Jun 2021 08:35:36 +0000 (UTC)
IronPort-SDR: Ui0fE129qrj+D+GsmrojFyTrw1mCEW+1/1lP31UUaBfxO+0yHjkHjuMZI1NdZ8A/Bq0wvcxtBj
 vmncu9eLG6yw==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="192889833"
X-IronPort-AV: E=Sophos;i="5.83,272,1616482800"; d="scan'208";a="192889833"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 01:35:35 -0700
IronPort-SDR: XpjV8lHWTe5nj7tdBXAt2kzxNrfq92cxGUMU+CtUWw3JfxNta/qqdBrHIHwChTR/z8L7h8SMN5
 nQglkj2yGQvA==
X-IronPort-AV: E=Sophos;i="5.83,272,1616482800"; d="scan'208";a="403825879"
Received: from jczarnec-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.0.115])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 01:35:34 -0700
Date: Mon, 14 Jun 2021 10:35:30 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20210614083530.GB3302@zkempczy-mobl2>
References: <20210610103955.67802-1-zbigniew.kempczynski@intel.com>
 <YMIjXG1x7dwAsJxj@intel.com> <20210611060900.GA3298@zkempczy-mobl2>
 <YMMkyKf/B/9P8nFe@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMMkyKf/B/9P8nFe@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTEsIDIwMjEgYXQgMDQ6NTQ6MzJBTSAtMDQwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+IE9uIEZyaSwgSnVuIDExLCAyMDIxIGF0IDA4OjA5OjAwQU0gKzAyMDAsIFpiaWduaWV3
IEtlbXBjennFhHNraSB3cm90ZToKPiA+IE9uIFRodSwgSnVuIDEwLCAyMDIxIGF0IDEwOjM2OjEy
QU0gLTA0MDAsIFJvZHJpZ28gVml2aSB3cm90ZToKPiA+ID4gT24gVGh1LCBKdW4gMTAsIDIwMjEg
YXQgMTI6Mzk6NTVQTSArMDIwMCwgWmJpZ25pZXcgS2VtcGN6ecWEc2tpIHdyb3RlOgo+ID4gPiA+
IFdlIGhhdmUgZXN0YWJsaXNoZWQgcHJldmlvdXNseSB3ZSBzdG9wIHVzaW5nIHJlbG9jYXRpb25z
IHN0YXJ0aW5nCj4gPiA+ID4gZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdlcmxha2UgYXMg
YW4gZXhjZXB0aW9uLiBXZSBrZWVwIHRoaXMKPiA+ID4gPiBzdGF0ZW1lbnQgYnV0IHdlIHdhbnQg
dG8gZW5hYmxlIHJlbG9jYXRpb25zIGNvbmRpdGlvbmFsbHkgZm9yCj4gPiA+ID4gUm9ja2V0bGFr
ZSBhbmQgQWxkZXJsYWtlIHVuZGVyIHJlcXVpcmVfZm9yY2VfcHJvYmUgZmxhZyBzZXQuCj4gPiA+
ID4gCj4gPiA+ID4gS2VlcGluZyByZWxvY2F0aW9ucyB1bmRlciByZXF1aXJlX2ZvcmNlX3Byb2Jl
IGZsYWcgaXMgaW50ZXJpbSBzb2x1dGlvbgo+ID4gPiA+IHVudGlsIElHVHMgd2lsbCBiZSByZXdy
aXR0ZW4gdG8gdXNlIHNvZnRwaW4uCj4gPiA+IAo+ID4gPiBobW0uLi4gdG8gYmUgcmVhbGx5IGhv
bmVzdCBJJ20gbm90IHNvIGhhcHB5IHRoYXQgd2UgYXJlIGludHJvZHVjaW5nCj4gPiA+IGEgbmV3
IGNyaXRlcmlhIHRvIHRoZSBmb3JjZV9wcm9iZS4KPiA+ID4gCj4gPiA+IFRoZSBjcml0ZXJpYSB3
YXMgdG8gaGF2ZSBhIGZ1bmN0aW9uYWwgZHJpdmVyIGFuZCBub3QgdG8gdHJhY2sgdWFwaS4KPiA+
ID4gCj4gPiA+IEJ1dCBvbiB0aGUgb3RoZXIgaGFuZCBJIGRvIHJlY29nbml6ZSB0aGF0IHRoZSBj
dXJyZW50IGRlZmluaXRpb24KPiA+ID4gb2YgdGhlIGZsYWcgYWxsb3dzIHRoYXQsIGJlY2F1c2Ug
d2UgaGF2ZSBlc3RhYmxpc2hlZCB0aGF0IHdpdGgKPiA+ID4gdGhpcyBiZWhhdmlvciwgdGhlICJk
cml2ZXIgZm9yIG5ldyBJbnRlbCBncmFwaGljcyBkZXZpY2VzIHRoYXQKPiA+ID4gYXJlIHJlY29n
bml6ZWQgYnV0IG5vdCBwcm9wZXJseSBzdXBwb3J0ZWQgYnkgdGhpcyBrZXJuZWwgdmVyc2lvbiIK
PiA+ID4gKGFzIHN0YXRlZCBpbiB0aGUgS2NvbmZpZyBmb3IgdGhlIERSTV9JOTE1X0ZPUkNFX1BS
T0JFKS4KPiA+ID4gCj4gPiA+IEhvd2V2ZXIuLi4KPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gdjI6
IC0gcmVtb3ZlIGlubGluZSBmcm9tIGZ1bmN0aW9uIGRlZmluaXRpb24gKEphbmkpCj4gPiA+ID4g
ICAgIC0gZml4IGluZGVudGF0aW9uCj4gPiA+ID4gCj4gPiA+ID4gdjM6IGNoYW5nZSB0byBHUkFQ
SElDU19WRVIoKSAoWmJpZ25pZXcpCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWmJp
Z25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Cj4gPiA+
ID4gQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+Cj4gPiA+ID4gQ2M6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gPiA+IENjOiBKYXNvbiBFa3N0
cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gPiA+ID4gQWNrZWQtYnk6IERhdmUgQWlybGll
IDxhaXJsaWVkQHJlZGhhdC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIC4uLi9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDI0ICsrKysrKysrKysrKysrKy0tLS0K
PiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
Cj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZXhlY2J1ZmZlci5jCj4gPiA+ID4gaW5kZXggYThhYmM5YWY1ZmY0Li4zMGM0ZjA1NDllYTAgMTAw
NjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNi
dWZmZXIuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9l
eGVjYnVmZmVyLmMKPiA+ID4gPiBAQCAtNDkxLDE2ICs0OTEsMzAgQEAgZWJfdW5yZXNlcnZlX3Zt
YShzdHJ1Y3QgZWJfdm1hICpldikKPiA+ID4gPiAgCWV2LT5mbGFncyAmPSB+X19FWEVDX09CSkVD
VF9SRVNFUlZFRDsKPiA+ID4gPiAgfQo+ID4gPiA+ICAKPiA+ID4gPiArc3RhdGljIGJvb2wgcGxh
dGZvcm1faGFzX3JlbG9jc19lbmFibGVkKGNvbnN0IHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmVi
KQo+ID4gPiA+ICt7Cj4gPiA+ID4gKwkvKgo+ID4gPiA+ICsJICogUmVsb2NhdGlvbnMgYXJlIGRp
c2FsbG93ZWQgc3RhcnRpbmcgZnJvbSBnZW4xMiB3aXRoIFRpZ2VybGFrZQo+ID4gPiA+ICsJICog
YXMgYW4gZXhjZXB0aW9uLiBXZSBhbGxvdyB0ZW1wb3JhcmlseSB1c2UgcmVsb2NhdGlvbnMgZm9y
IFJvY2tldGxha2UKPiA+ID4gPiArCSAqIGFuZCBBbGRlcmxha2Ugd2hlbiByZXF1aXJlX2ZvcmNl
X3Byb2JlIGZsYWcgaXMgc2V0Lgo+ID4gPiA+ICsJICovCj4gPiA+ID4gKwlpZiAoR1JBUEhJQ1Nf
VkVSKGViLT5pOTE1KSA8IDEyIHx8IElTX1RJR0VSTEFLRShlYi0+aTkxNSkpCj4gPiA+ID4gKwkJ
cmV0dXJuIHRydWU7Cj4gPiA+ID4gKwo+ID4gPiA+ICsJaWYgKElOVEVMX0lORk8oZWItPmk5MTUp
LT5yZXF1aXJlX2ZvcmNlX3Byb2JlICYmCj4gPiA+ID4gKwkgICAgKElTX1JPQ0tFVExBS0UoZWIt
Pmk5MTUpCj4gPiA+IAo+ID4gPiBUaGlzIHNoaXAgaGFzIHNhaWxlZC4uLiBSS0wgaXMgbm90IHBy
b3RlY3RlZCBieSB0aGlzIGZsYWcgYW55IGxvbmdlci4KPiA+ID4gU2hvdWxkIHRoaXMgYmUgb24g
dGhlIFRHTCBzaWRlIG5vdz8KPiA+IAo+ID4gK0x1Y2FzCj4gPiAKPiA+IEkgdGhpbmsgbm8sIFJL
TCBoYXMgcmVsb2NhdGlvbnMgZGlzYWJsZWQgc28gd2UgY2Fubm90IHB1dCBpdCB0byBUR0wgc2lk
ZS4KPiA+IFNvIGlmIFJLTCBpcyBhbHJlYWR5IHJlbGVhc2VkIHRoZW4gcHV0dGluZyBpdCB1bmRl
ciByZXF1aXJlX2ZvcmNlX3Byb2JlIAo+ID4gZmxhZyBpcyB3cm9uZyBhbmQgb25seSBJIGNhbiBk
byBpcyB0byByZW1vdmUgaXQgZnJvbSB0aGF0IGNvbmRpdGlvbi4gCj4gPiBUaGVyZSdzIG5vIG9w
dGlvbiB0byB1bmJsb2NrIFJLTCBvbiBJR1QgQ0kgdW50aWwgd2UgcmV3cml0ZSBhbGwgdGhlIHRl
c3RzLgo+ID4gV2UgaGF2ZSB0byByZWx5IHRoZW4gb24gQURMKiB3aXRoIHJlcXVpcmVfZm9yY2Vf
cHJvYmUgZmxhZyB0byBjaGVjayBob3cKPiA+IEFETCB3aWxsIHdvcmsgd2l0aCByZWxvY2F0aW9u
cy4gCj4gCj4gU28uLi4gSSdtIGNvbmZ1c2VkIG5vdy4gSSdtIG1pc3NpbmcgdGhlIHBvaW50IG9m
IHRoaXMgcGF0Y2ggdGhlbi4KPiBJIHRob3VnaHQgdGhlIHJlYXNvbiB3YXMgdG8gcHJvdGVjdCBm
cm9tIGFueSB1c2VyIHNwYWNlIHRvIGF0dGVtcHQgdG8KPiB1c2UgdGhlIHJlbG9jYXRpb24sIHVu
bGVzcyB1c2luZyB0aGUgZm9yY2VfcHJvYmUgdGVtcG9yYXJpbHkgb25seSBmb3IKPiB0aGVzZSBw
bGF0Zm9ybXMuCj4gQnV0IGlmIEknbSB1bmRlcnN0YW5kaW5nIGNvcnJlY3RseSBub3cgaXQgaXMg
b25seSB0byBzaWxlbmNlIENJPyEKPiBJcyB0aGF0IHRoZSBjYXNlPwo+IElzIHRoZSBDSSBub2lz
ZSBzbyBiYWQ/CgpUaGUgcG9pbnQgb2YgdGhlIHBhdGNoIGlzIHRvIHZlcmlmeSBkcml2ZXIgb24g
QURMLiBJR1Qgc3RpbGwgdXNlcyAKcmVsb2NhdGlvbnMgKHdlJ3JlIHJld3JpdGluZyB0aGVtIG5v
dyBidXQgaXQgdGFrZXMgdGltZSkgc28gZXhlY2J1ZgpvbiBBREwganVzdCBleGl0cyB3aXRoIGZh
aWx1cmUuIFdlJ3JlIGJsaW5kIHJpZ2h0IG5vdyBhYm91dCBkcml2ZXIKYmVoYXZpb3IgYW5kIHdl
IHdhbnQgdG8gYWRkcmVzcyB0aGlzIC0gdGVtcG9yYXJ5IGVuYWJsZSByZWxvY2F0aW9ucwpvbiBB
REwgKHVuZGVyIGZsYWcpIHRvIHNlZSBpZiBkcml2ZXIgd29ya3MgcHJvcGVybHkgb24gdGhhdCBw
bGF0Zm9ybS4KCj4gCj4gPiAKPiA+ID4gCj4gPiA+ID4gIHx8IElTX0FMREVSTEFLRV9TKGViLT5p
OTE1KSB8fAo+ID4gPiA+ICsJICAgICBJU19BTERFUkxBS0VfUChlYi0+aTkxNSkpKQo+ID4gPiAK
PiA+ID4gSG93IHRvIGVuc3VyZSB0aGF0IHdlIHdpbGwgZWFzaWx5IGNhdGNoIHRoaXMgd2hlbiBy
ZW1vdmluZyB0aGUKPiA+ID4gZmxhZz8KPiA+ID4gCj4gPiA+IEkgbWVhbiwgc2hvdWxkIHdlIGhh
dmUgYSBHRU1fQlVHIG9yIGRybV9lcnIgbWVzc2FnZSB3aGVuIHRoZXNlCj4gPiA+IHBsYXRmb3Jt
cyBpbiB0aGlzIGxpc3QgaGFzIG5vdCB0aGUgcmVxdWlyZWRfZm9yY2VfcHJvYmU/Cj4gPiAKPiA+
IEkgZG9uJ3QgdGhpbmsgd2UgbmVlZCBHRU1fQlVHKCkvZHJtX2VycigpIC0gd2hlbiBJR1QgdGVz
dHMgd2lsbCBzdXBwb3J0Cj4gPiBib3RoIC0gcmVsb2MgKyBuby1yZWxvYyAtIHRoZW4gY29uZGl0
aW9uIHdpbGwgYmUgbGltaXRlZCB0bzoKPiA+IAo+ID4gICAgICAgICBpZiAoR1JBUEhJQ1NfVkVS
KGViLT5pOTE1KSA8IDEyIHx8IElTX1RJR0VSTEFLRShlYi0+aTkxNSkpCj4gPiAgICAgICAgICAg
ICAgICAgcmV0dXJuIHRydWU7Cj4gPiAgCj4gPiAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+IAo+
ID4gc28gcmVxdWlyZV9mb3JjZV9wcm9iZSBjb25kaXRpb24gd2lsbCBiZSBkZWxldGVkIGFuZCB3
ZSB3b24ndCBuZWVkIGl0Cj4gPiBhbnltb3JlIChJR1RzIHdpbGwgYmUgcmVhZHkpLgo+IAo+IHll
cy4uLgo+IGJ1dCB0aGVuLCB3aGVuIHdlIHJlbW92ZSB0aGUgZmxhZyB3ZSB3aWxsIGZvcmdldCB0
byBjb21lIGhlcmUgYW5kIHJlbW92ZQo+IHRoaXMgY2hlY2suCgpJIHRoaW5rIHdlIHdvbid0IGZv
cmdldCAtIHRoaXMgaXMgY2hlcnJ5IG9uIHRvcCBvZiByZXdyaXRpbmcgSUdUIC0KdG8gc3dpdGNo
IHRvIG5vLXJlbG9jIG9uIEFETCwgc28gdGhhdCBjb25kaXRpb24gZGlzYXBwZWFyLgoKPiAKPiBP
aCwgYW5kIEkganVzdCB0aG91Z2h0IHRoYXQgd2UgbWlnaHQgbmVlZCBkcm1fZXJyb3Igd2hlbiB0
aGUgcHJvdGVjdGlvbgo+IGRvZXNuJ3QgZXhpc3QgZm9yIHRoZSBwbGF0Zm9ybSwgYnV0IGFsc28g
YSBkcm1faW5mbyB0byB0aGUgdXNlciB0byB0ZWxsCj4gdGhpcyBpcyBhIHRlbXBvcmFyeSBhY2Nl
cHRlZCBiZWhhdmlvciwgYnV0IHRoYXQgd2lsbCBiZSByZW1vdmVkIGxhdGVyCj4gCj4gVGhlIGNv
bmNlcm4gaXMgaWYgYW55IG90aGVyIHVzZXJzcGFjZSB3YXMgdXNpbmcgdGhlIGZsYWcgYW5kIHN1
ZGRlbnRseSBtb3ZlIHRvIGEKPiB2ZXJzaW9uIHdpdGhvdXQgdGhlIGZsYWcsIGl0IHdvdWxkIGJl
IGNvbnNpZGVyZWQgYSByZWdyZXNzaW9uLi4uCgpUaGF0IG1lYW5zIEkgZG9uJ3QgdW5kZXJzdGFu
ZCB0aGUgbWVhbmluZyBvZiB0aGF0IGZsYWcuIEkgdGhvdWdodCBpdCBpcwp0byBlbmZvcmNlIHBy
b2JlIG9mIGRyaXZlciBvbiBwbGF0Zm9ybSB3aGljaCBiZWhhdmlvciBpcyBub3QgYWxyZWFkeSAK
d2VsbCBkZWZpbmVkIGFuZCB3ZSB3YW50IHRvICJ0cnkiIGRyaXZlciBvbiBpdC4gCgotLQpaYmln
bmlldwoKPiAKPiA+IAo+ID4gLS0KPiA+IFpiaWduaWV3Cj4gPiAKPiA+ID4gCj4gPiA+ID4gKwkJ
cmV0dXJuIHRydWU7Cj4gPiA+ID4gKwo+ID4gPiA+ICsJcmV0dXJuIGZhbHNlOwo+ID4gPiA+ICt9
Cj4gPiA+ID4gKwo+ID4gPiA+ICBzdGF0aWMgaW50Cj4gPiA+ID4gIGViX3ZhbGlkYXRlX3ZtYShz
dHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKPiA+ID4gPiAgCQlzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X2V4ZWNfb2JqZWN0MiAqZW50cnksCj4gPiA+ID4gIAkJc3RydWN0IGk5MTVfdm1hICp2bWEpCj4g
PiA+ID4gIHsKPiA+ID4gPiAtCS8qIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIGZvciBhbGwg
cGxhdGZvcm1zIGFmdGVyIFRHTC1MUC4gIFRoaXMKPiA+ID4gPiAtCSAqIGFsc28gY292ZXJzIGFs
bCBwbGF0Zm9ybXMgd2l0aCBsb2NhbCBtZW1vcnkuCj4gPiA+ID4gLQkgKi8KPiA+ID4gPiAtCWlm
IChlbnRyeS0+cmVsb2NhdGlvbl9jb3VudCAmJgo+ID4gPiA+IC0JICAgIEdSQVBISUNTX1ZFUihl
Yi0+aTkxNSkgPj0gMTIgJiYgIUlTX1RJR0VSTEFLRShlYi0+aTkxNSkpCj4gPiA+ID4gKwlpZiAo
ZW50cnktPnJlbG9jYXRpb25fY291bnQgJiYgIXBsYXRmb3JtX2hhc19yZWxvY3NfZW5hYmxlZChl
YikpCj4gPiA+ID4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gIAo+ID4gPiA+ICAJaWYgKHVu
bGlrZWx5KGVudHJ5LT5mbGFncyAmIGViLT5pbnZhbGlkX2ZsYWdzKSkKPiA+ID4gPiAtLSAKPiA+
ID4gPiAyLjI2LjAKPiA+ID4gPiAKPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+ID4g
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+ID4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
