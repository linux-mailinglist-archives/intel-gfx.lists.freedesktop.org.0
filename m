Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C92BFB7B0
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 19:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9A56EDEC;
	Wed, 13 Nov 2019 18:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 412596EDF1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 18:34:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 10:34:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="355555930"
Received: from tblumens-mobl1.ger.corp.intel.com (HELO [10.249.42.201])
 ([10.249.42.201])
 by orsmga004.jf.intel.com with ESMTP; 13 Nov 2019 10:34:00 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191113154639.27144-1-lionel.g.landwerlin@intel.com>
 <157366294079.22201.646622427460368767@skylake-alporthouse-com>
 <6e487e55-43a7-8c95-7c31-e21318f9b2e3@intel.com>
 <157366862280.22201.16217684567729253191@skylake-alporthouse-com>
 <157366869842.22201.18027341286789264574@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <bd7bb135-af6a-ed60-5f56-86d136bb5cde@intel.com>
Date: Wed, 13 Nov 2019 20:33:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <157366869842.22201.18027341286789264574@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: don't forget noa wait after
 oa config
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTMvMTEvMjAxOSAyMDoxMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgQ2hyaXMg
V2lsc29uICgyMDE5LTExLTEzIDE4OjEwOjIyKQo+PiBRdW90aW5nIExpb25lbCBMYW5kd2VybGlu
ICgyMDE5LTExLTEzIDE4OjA3OjU5KQo+Pj4gT24gMTMvMTEvMjAxOSAxODozNSwgQ2hyaXMgV2ls
c29uIHdyb3RlOgo+Pj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTktMTEtMTMgMTU6
NDY6MzkpCj4+Pj4+IEknbSBvYnNlcnZpbmcgaW5jb2hlcmVuY2UgbWV0cmljIHZhbHVlcywgY2hh
bmdpbmcgZnJvbSBydW4gdG8gcnVuLgo+Pj4+Pgo+Pj4+PiBJdCBhcHBlYXJzIHRoZSBwYXRjaGVz
IGludHJvZHVjaW5nIG5vYSB3YWl0ICYgcmVjb25maWd1cmF0aW9uIGZyb20KPj4+Pj4gY29tbWFu
ZCBzdHJlYW0gc3dpdGNoZWQgcGxhY2VzIGluIHRoZSBzZXJpZXMgbXVsdGlwbGUgdGltZXMgZHVy
aW5nIHRoZQo+Pj4+PiByZXZpZXcuIFRoaXMgbGVhZCB0byB0aGUgZGVwZW5kZW5jeSBvZiBvbmUg
b250byB0aGUgb3JkZXIgdG8gZ28KPj4+Pj4gbWlzc2luZy4uLgo+Pj4+IEkgZG9uJ3QgdGhpbmsg
SSBkcm9wcGVkIGl0OyBpZiBJIGRpZCBteSBhcG9sb2dpZXMuIEkgZG8gZmVlbCB0aGUKPj4+PiBl
Z2ctb24tZmFjZSBmb3Igd3JpdGluZyBhIHNlbGZ0ZXN0IHRvIHZlcmlmeSB0aGF0IG5vYV93YWl0
IGRvZXMgd2hhdCB5b3UKPj4+PiBzYWlkIGl0IGRpZCwgYnV0IGNvbXBsZXRlbHkgbWlzc2luZyB0
aGF0IGl0IHdlbnQgdW51c2VkIDopCgoKSXQgd2FzIHByb2JhYmx5IG15IG1pc3Rha2UgOikKCgo+
Pj4+ICAgIAo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcu
bGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4+Pj4+IEZpeGVzOiAxNWQwYWNlMWY4NzYgKCJkcm0vaTkx
NS9wZXJmOiBleGVjdXRlIE9BIGNvbmZpZ3VyYXRpb24gZnJvbSBjb21tYW5kIHN0cmVhbSIpCj4+
Pj4+IC0tLQo+Pj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDkgKysr
KysrKy0tCj4+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+Pj4+IGluZGV4IDUw
NzIzNmJkNDFhZS4uMzFlNDdlZTIzMzU3IDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYwo+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYwo+Pj4+PiBAQCAtMTg3MCw3ICsxODcwLDcgQEAgYWxsb2Nfb2FfY29uZmlnX2J1ZmZl
cihzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAo+Pj4+PiAgICAgICAgICAgY29uZmln
X2xlbmd0aCArPSBudW1fbHJpX2R3b3JkcyhvYV9jb25maWctPm11eF9yZWdzX2xlbik7Cj4+Pj4+
ICAgICAgICAgICBjb25maWdfbGVuZ3RoICs9IG51bV9scmlfZHdvcmRzKG9hX2NvbmZpZy0+Yl9j
b3VudGVyX3JlZ3NfbGVuKTsKPj4+Pj4gICAgICAgICAgIGNvbmZpZ19sZW5ndGggKz0gbnVtX2xy
aV9kd29yZHMob2FfY29uZmlnLT5mbGV4X3JlZ3NfbGVuKTsKPj4+Pj4gLSAgICAgICBjb25maWdf
bGVuZ3RoKys7IC8qIE1JX0JBVENIX0JVRkZFUl9FTkQgKi8KPj4+Pj4gKyAgICAgICBjb25maWdf
bGVuZ3RoICs9IDM7IC8qIE1JX0JBVENIX0JVRkZFUl9TVEFSVCAqLwo+Pj4+PiAgICAgICAgICAg
Y29uZmlnX2xlbmd0aCA9IEFMSUdOKHNpemVvZih1MzIpICogY29uZmlnX2xlbmd0aCwgSTkxNV9H
VFRfUEFHRV9TSVpFKTsKPj4+Pj4gICAgCj4+Pj4+ICAgICAgICAgICBvYmogPSBpOTE1X2dlbV9v
YmplY3RfY3JlYXRlX3NobWVtKHN0cmVhbS0+cGVyZi0+aTkxNSwgY29uZmlnX2xlbmd0aCk7Cj4+
Pj4+IEBAIC0xODk1LDcgKzE4OTUsMTIgQEAgYWxsb2Nfb2FfY29uZmlnX2J1ZmZlcihzdHJ1Y3Qg
aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAo+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgb2FfY29uZmlnLT5mbGV4X3JlZ3MsCj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBvYV9jb25maWctPmZsZXhfcmVnc19sZW4pOwo+Pj4+PiAgICAKPj4+Pj4gLSAgICAg
ICAqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7Cj4+Pj4+ICsgICAgICAgLyogSnVtcCBpbnRv
IHRoZSBhY3RpdmUgd2FpdC4gKi8KPj4+Pj4gKyAgICAgICAqY3MrKyA9IChJTlRFTF9HRU4oc3Ry
ZWFtLT5wZXJmLT5pOTE1KSA8IDggPwo+Pj4+PiArICAgICAgICAgICAgICAgIE1JX0JBVENIX0JV
RkZFUl9TVEFSVCA6Cj4+Pj4+ICsgICAgICAgICAgICAgICAgTUlfQkFUQ0hfQlVGRkVSX1NUQVJU
X0dFTjgpOwo+Pj4+PiArICAgICAgICpjcysrID0gaTkxNV9nZ3R0X29mZnNldChzdHJlYW0tPm5v
YV93YWl0KTsKPj4+Pj4gKyAgICAgICAqY3MrKyA9IDA7Cj4+Pj4gWWlrZXMsIHN0cmVhbS0+bm9h
X3dhaXQgaXMgdW51c2VkLgo+Pj4+Cj4+Pj4gSG1tLCB0aGUgbm9hX3dhaXQgZG9lc24ndCBoYXZl
IGFueSBhcmJpdHJhdGlvbiBwb2ludHMgaW50ZXJuYWxseSwgc28gd2UKPj4+PiBwcm9iYWJseSBk
byBuZWVkIHRvIG1ha2UgaXQgbm9uLXByZWVtcHRhYmxlIGFzIHdlbGw/Cj4+Pj4KPj4+PiBXaXRo
IGEgcnEtPmZsYWdzIHw9IEk5MTVfUkVRVUVTVF9OT1BSRUVNUFQgaW4gZW1pdF9vYV9jb25maWcs
Cj4+Pj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+Pj4+Cj4+Pj4gV2UgbmVlZCB0byB3cmFwIGVtaXRfb2FfY29uZmlnKCkgaW4gYSBzaW1pbGFy
IHNlbGZ0ZXN0IGFuZCB2ZXJpZnkKPj4+PiB0aGF0IGEgcmVhZCBvZiB0aGUgb2EgcmVncyBhcmUg
Y29ycmVjdCBhbmQgdGhhdCB0aGUgVElNRVNUQU1QIGluZGljYXRlcwo+Pj4+IHRoZSBhcHByb3By
aWF0ZSBkZWxheSBiZWZvcmUgdGhlIHJlYWQuIElmIHlvdSBmZWVsIGJvcmVkLgo+Pj4+IC1DaHJp
cwo+Pj4KPj4+IEFzIGxvbmcgYXMgd2Ugd2FpdCBsb25nIGVub3VnaCwgaXQgc2hvdWxkIGJlIG9r
YXkuCj4+Pgo+Pj4gV2h5IG1ha2luZyBpdCBub3ByZWVtcHQ/Cj4+IEFpdWksIHRoZSBiYXRjaCBi
dWZmZXIgaGFzIG5vIGFyYml0cmF0aW9uIHBvaW50cyBzbyB0aGUgZGVsYXkgbWF5IGluY3VyCj4+
IHRoZSB3cmF0aCBvZiB0aGUgZm9yY2VkIHByZWVtcHRpb24uIFRoYXQgaXMgYW5vdGhlciByZXF1
ZXN0IChvZiBoaWdoZXIKPj4gcHJpb3JpdHkpIHdpc2hpbmcgdG8gcnVuLCBidXQgbm90IGJlaW5n
IGFibGUgdG8uCj4gVGhlIGFsdGVybmF0aXZlIHdvdWxkIGJlIGFkZGluZyBhIE1JX0FSQl9DSEVD
SyBhdCB0aGUgc3RhcnQgb2YgdGhlIGxvb3AKPiBpZiB5b3UgaGFwcHkgd2l0aCBiZWluZyBwcmVl
bXB0ZWQgb3V0Lgo+IC1DaHJpcwoKSSBndWVzcyBJJ2xsIGRvIHRoYXQgOikKCgotTGlvbmVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
