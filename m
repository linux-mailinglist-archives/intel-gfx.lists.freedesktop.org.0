Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DF032CF7F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 10:19:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C541E6EA12;
	Thu,  4 Mar 2021 09:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925A86EA15
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 09:19:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24008821-1500050 for multiple; Thu, 04 Mar 2021 09:19:26 +0000
MIME-Version: 1.0
In-Reply-To: <0c8ef2fb-34b0-98ea-12bb-fc300172799c@linux.intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20210302062700.6025-1-cooper.chiou@intel.com>
 <0c8ef2fb-34b0-98ea-12bb-fc300172799c@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Cooper Chiou <cooper.chiou@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 04 Mar 2021 09:19:24 +0000
Message-ID: <161484956454.28586.15932692857365863465@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 William Tseng <william.tseng@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAyMS0wMy0wNCAwOToxMjoyNikKPiAKPiBPbiAwMi8w
My8yMDIxIDA2OjI3LCBDb29wZXIgQ2hpb3Ugd3JvdGU6Cj4gPiBXYVByb2dyYW1NZ3NyRm9yQ29y
cmVjdFNsaWNlU3BlY2lmaWNNbWlvUmVhZHMgYXBwbGllcyBmb3IgR2VuOSB0bwo+ID4gcmVzb2x2
ZSBWUDggaGFyZHdhcmUgZW5jb2Rpbmcgc3lzdGVtIGhhbmcgdXAgb24gR1QxIHNrdSBmb3IKPiA+
IENocm9taXVtT1MgcHJvamVjdHMKPiA+IAo+ID4gU2xpY2Ugc3BlY2lmaWMgTU1JTyByZWFkIGlu
YWNjdXJhdGUgc28gTUdTUiBuZWVkcyB0byBiZSBwcm9ncmFtbWVkCj4gPiBhcHByb3ByaWF0ZWx5
IHRvIGdldCBjb3JyZWN0IHJlYWRzIGZyb20gdGhlc2Ugc2xpY2V0LXJlbGF0ZWQgTU1JT3MuCj4g
PiAKPiA+IEl0IGRpY3RhdGVzIHRoYXQgYmVmb3JlIGFueSBNTUlPIHJlYWQgaW50byBTbGljZS9T
dWJzbGljZSBzcGVjaWZpYwo+ID4gcmVnaXN0ZXJzLCBNQ1IgcGFja2V0IGNvbnRyb2wgcmVnaXN0
ZXIoMHhGREMpIG5lZWRzIHRvIGJlIHByb2dyYW1tZWQKPiA+IHRvIHBvaW50IHRvIGFueSBlbmFi
bGVkIHNsaWNlL3N1YnNsaWNlIHBhaXIsIGVzcGVjaWFsbHkgR1QxIGZ1c2VkIHNrdQo+ID4gc2lu
Y2UgdGhpcyBpc3N1ZSBjYW4gYmUgcmVwcm9kdWNlZCBvbiBWUDggaGFyZHdhcmUgZW5jb2Rpbmcg
dmlhIGZmbXBlZwo+ID4gb24gQ2hyb21pdW1PUyBkZXZpY2VzLgo+ID4gV2hlbiBleGl0IFBDNywg
TUdTUiB3aWxsIHJlc2V0IHNvIHRoYXQgd2UgaGF2ZSB0byBza2lwIGZ1c2VkIHN1YnNsaWNlIElE
Lgo+ID4gCj4gPiBSZWZlcmVuY2U6IEhTRCMxNTA4MDQ1MDE4LDE0MDU1ODY4NDAsIEJTSUQjMDU3
NQo+ID4gCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gPiBD
YzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiA+IENjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFdpbGxpYW0gVHNlbmcgPHdpbGxp
YW0udHNlbmdAaW50ZWwuY29tPgo+ID4gQ2M6IExlZSBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRl
bC5jb20+Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENvb3BlciBDaGlvdSA8Y29vcGVyLmNoaW91
QGludGVsLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIHwgMzggKysrKysrKysrKysrKysrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFu
Z2VkLCAzOCBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gaW5kZXggM2I0YTdkYTYwZjBiLi40YWQ1OThhNzI3YTYg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
Cj4gPiBAQCAtODc4LDkgKzg3OCw0NyBAQCBoc3dfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ID4gICAg
ICAgd2Ffd3JpdGVfY2xyKHdhbCwgR0VON19GRl9USFJFQURfTU9ERSwgR0VON19GRl9WU19SRUZf
Q05UX0ZGTUUpOwo+ID4gICB9Cj4gPiAgIAo+ID4gK3N0YXRpYyB2b2lkCj4gPiArZ2VuOV93YV9p
bml0X21jcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlz
dCAqd2FsKQo+ID4gK3sKPiA+ICsgICAgIGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1
ID0gJmk5MTUtPmd0LmluZm8uc3NldTsKPiA+ICsgICAgIHVuc2lnbmVkIGludCBzbGljZSwgc3Vi
c2xpY2U7Cj4gPiArICAgICB1MzIgbWNyLCBtY3JfbWFzazsKPiA+ICsKPiA+ICsgICAgIEdFTV9C
VUdfT04oSU5URUxfR0VOKGk5MTUpIDwgOSk7Cj4gPiArCj4gPiArICAgICAvKgo+ID4gKyAgICAg
ICogV2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzOmdsayxrYmws
Y21sCj4gPiArICAgICAgKiBCZWZvcmUgYW55IE1NSU8gcmVhZCBpbnRvIHNsaWNlL3N1YnNsaWNl
IHNwZWNpZmljIHJlZ2lzdGVycywgTUNSCj4gPiArICAgICAgKiBwYWNrZXQgY29udHJvbCByZWdp
c3RlciBuZWVkcyB0byBiZSBwcm9ncmFtbWVkIHRvIHBvaW50IHRvIGFueQo+ID4gKyAgICAgICog
ZW5hYmxlZCBzL3NzIHBhaXIuIE90aGVyd2lzZSwgaW5jb3JyZWN0IHZhbHVlcyB3aWxsIGJlIHJl
dHVybmVkLgo+ID4gKyAgICAgICogVGhpcyBtZWFucyBlYWNoIHN1YnNlcXVlbnQgTU1JTyByZWFk
IHdpbGwgYmUgZm9yd2FyZGVkIHRvIGFuCj4gPiArICAgICAgKiBzcGVjaWZpYyBzL3NzIGNvbWJp
bmF0aW9uLCBidXQgdGhpcyBpcyBPSyBzaW5jZSB0aGVzZSByZWdpc3RlcnMKPiA+ICsgICAgICAq
IGFyZSBjb25zaXN0ZW50IGFjcm9zcyBzL3NzIGluIGFsbW9zdCBhbGwgY2FzZXMuIEluIHRoZSBy
YXJlCj4gPiArICAgICAgKiBvY2Nhc2lvbnMsIHN1Y2ggYXMgSU5TVERPTkUsIHdoZXJlIHRoaXMg
dmFsdWUgaXMgZGVwZW5kZW50Cj4gPiArICAgICAgKiBvbiBzL3NzIGNvbWJvLCB0aGUgcmVhZCBz
aG91bGQgYmUgZG9uZSB3aXRoIHJlYWRfc3Vic2xpY2VfcmVnLgo+ID4gKyAgICAgICovCj4gPiAr
ICAgICBzbGljZSA9IGZscyhzc2V1LT5zbGljZV9tYXNrKSAtIDE7Cj4gPiArICAgICBHRU1fQlVH
X09OKHNsaWNlID49IEFSUkFZX1NJWkUoc3NldS0+c3Vic2xpY2VfbWFzaykpOwo+ID4gKyAgICAg
c3Vic2xpY2UgPSBmbHMoaW50ZWxfc3NldV9nZXRfc3Vic2xpY2VzKHNzZXUsIHNsaWNlKSk7Cj4g
PiArICAgICBHRU1fQlVHX09OKCFzdWJzbGljZSk7Cj4gPiArICAgICBzdWJzbGljZS0tOwo+ID4g
Kwo+ID4gKyAgICAgbWNyID0gR0VOOF9NQ1JfU0xJQ0Uoc2xpY2UpIHwgR0VOOF9NQ1JfU1VCU0xJ
Q0Uoc3Vic2xpY2UpOwo+ID4gKyAgICAgbWNyX21hc2sgPSBHRU44X01DUl9TTElDRV9NQVNLIHwg
R0VOOF9NQ1JfU1VCU0xJQ0VfTUFTSzsKPiA+ICsKPiA+ICsgICAgIGRybV9kYmcoJmk5MTUtPmRy
bSwgIk1DUiBzbGljZTolZC9zdWJzbGljZTolZCA9ICV4XG4iLCBzbGljZSwgc3Vic2xpY2UsIG1j
cik7Cj4gPiArCj4gPiArICAgICB3YV93cml0ZV9jbHJfc2V0KHdhbCwgR0VOOF9NQ1JfU0VMRUNU
T1IsIG1jcl9tYXNrLCBtY3IpOwo+ID4gK30KPiAKPiBIYXZlIHlvdSBjb25zaWRlcmVkIHJldXNp
bmcgZXhpc3Rpbmcgd2FfaW5pdF9tY3I/IEp1c3QgbmVlZHMgdGhlIAo+IHRvcC1sZXZlbCBhc3Nl
cnQgY2hhbmdlZCBhbmQgb3RoZXJ3aXNlIGl0IGxvb2tzIGl0IHdvdWxkIGRvIHRoZSByaWdodCAK
PiB0aGluZyBmb3IgR2VuOS4gQWR2YW50YWdlIGJlaW5nIGEgc21hbGxlciBwYXRjaCBhbmQgbGVz
cyBjb2RlIHRvIGNhcnJ5LgoKVGhhdCB3YXMgdGhlIGZpcnN0IHBhdGNoLCBhbmQgZmFpbHMgZm9y
IHRoZSBzYW1lIHJlYXNvbi4gVGhlIHByb2JsZW0Kd291bGQgYXBwZWFyIHRvIGJlIGluIHRoZSBt
Y3JfbWFzayBmb3IgZ3QzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
