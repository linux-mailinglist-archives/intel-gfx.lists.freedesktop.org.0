Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 231F917413F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 22:02:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5657F6F4D0;
	Fri, 28 Feb 2020 21:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2916F4D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 21:02:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 13:02:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="238874306"
Received: from hauptmaj-mobl.ger.corp.intel.com (HELO [10.252.51.176])
 ([10.252.51.176])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2020 13:02:08 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200228160229.1683087-1-lionel.g.landwerlin@intel.com>
 <158290829314.24106.1112142885915634527@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <cb3c1e78-2303-55cd-6496-c2afe42036c9@intel.com>
Date: Fri, 28 Feb 2020 23:02:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <158290829314.24106.1112142885915634527@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: introduce global sseu pinning
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjgvMDIvMjAyMCAxODo0NCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMjAtMDItMjggMTY6MDI6MjkpCj4+IE9uIEdlbjExIHBvd2VyZ2F0aW5n
IGhhbGYgdGhlIGV4ZWN1dGlvbiB1bml0cyBpcyBhIGZ1bmN0aW9uYWwKPj4gcmVxdWlyZW1lbnQg
d2hlbiB1c2luZyB0aGUgVk1FIHNhbXBsZXJzLiBOb3QgZnVsbGZpbGxpbmcgdGhpcwo+PiByZXF1
aXJlbWVudCBjYW4gbGVhZCB0byBoYW5ncy4KPj4KPj4gVGhpcyB1bmZvcnR1bmF0ZWx5IHBsYXlz
IGZhaXJseSBwb29ybHkgd2l0aCB0aGUgTk9BIHJlcXVpcmVtZW50cy4gTk9BCj4+IHJlcXVpcmVz
IGEgc3RhYmxlIHBvd2VyIGNvbmZpZ3VyYXRpb24gdG8gbWFpbnRhaW4gaXRzIGNvbmZpZ3VyYXRp
b24uCj4+Cj4+IEFzIGEgcmVzdWx0IHVzaW5nIE9BIChhbmQgTk9BIGZlZWRpbmcgaW50byBpdCkg
c28gZmFyIGhhcyByZXF1aXJlZCB1cwo+PiB0byB1c2UgYSBwb3dlciBjb25maWd1cmF0aW9uIHRo
YXQgY2FuIHdvcmsgZm9yIGFsbCBjb250ZXh0cy4gVGhlIG9ubHkKPj4gcG93ZXIgY29uZmlndXJh
dGlvbiBmdWxsZmlsbGluZyB0aGlzIGlzIHBvd2VyZ2F0aW5nIGhhbGYgdGhlIGV4ZWN1dGlvbgo+
PiB1bml0cy4KPj4KPj4gVGhpcyBtYWtlcyBwZXJmb3JtYW5jZSBhbmFseXNpcyBmb3IgM0Qgd29y
a2xvYWRzIHNvbWV3aGF0IHBvaW50bGVzcy4KPj4KPj4gRmFpbGluZyB0byBmaW5kIGEgc29sdXRp
b24gdGhhdCB3b3VsZCB3b3JrIGZvciBldmVyeWJvZHksIHRoaXMgY2hhbmdlCj4+IGludHJvZHVj
ZXMgYSBuZXcgaTkxNS1wZXJmIHN0cmVhbSBvcGVuIHBhcmFtZXRlciB0aGF0IHB1bnRzIHRoZQo+
PiBkZWNpc2lvbiBvZmYgdG8gdXNlcnNwYWNlLiBJZiB0aGlzIHBhcmFtZXRlciBpcyBvbWl0dGVk
LCB0aGUgZXhpc3RpbmcKPj4gR2VuMTEgYmVoYXZpb3IgcmVtYWlucyAoaGFsZiBFVSBhcnJheSBw
b3dlcmdhdGluZykuCj4+Cj4+IFRoaXMgY2hhbmdlIHRha2VzIHRoZSBpbml0aWF0aXZlIHRvIG1v
dmUgYWxsIHBlcmYgcmVsYXRlZCBzc2V1Cj4+IGNvbmZpZ3VyYXRpb24gaW50byBpOTE1X3BlcmYu
Ywo+IFRoZSBjb2RlIGxvb2tzIGZpbmUsIHlvdXIgYXJndW1lbnQgaXMgc291bmQuIE15IG9ubHkg
cmVzZXJ2YXRpb24gaXMgdGhlCj4gZGFuZ2VyIG9mIHRoaXMgYmVjb21pbmcgdGhlIGRlZmFjdG8g
ZGVmYXVsdCBhbmQgc28gY2F0Y2hpbmcgdXNlcnMncwo+IHByb2ZpbGluZyB0aGVpciBzeXN0ZW0g
Ynkgc3VycHJpc2UuCgoKQXMgZmFyIGFzIEkgY2FuIHNlZSwgdGhpcyB3aWxsIG9ubHkgYmUgdXNp
bmcgbm9uIGRlZmF1bHQgKGRlZmF1bHQgPSBmdWxsIApFVSBhcnJheSBvbiAhZ2VuMTEsIGRlZmF1
bHQgPSBoYWxmIEVVIGFycmF5IG9uIGdlbjExKSBvbiBHZW4xMS4KCkV4Y2VwdCBHZW4xMSB3ZSBk
b24ndCBoYXZlIHRob3NlIGFzeW1ldHJpYyBzdWJzbGljZXMgKHJlbWVtYmVyIGdlbjEyIGhhcyAK
ZHVhbCBzbGljZXMgb2YgMTYgRVVzKS4KCgpJdCBhbGwgYmFkIGNob2ljZXMgOgoKIMKgwqAgLSBs
ZXQgZXZlcnlib2R5IGRvIHdoYXQgdGhleSB3YW50IGJ1dCByaXNrIGludmFsaWQgT0EgZGF0YSB3
aXRoIG5vIAp3YXJuaW5nCgogwqDCoCAtIGZvcmNlIGV2ZXJ5Ym9keSB0byB0aGUgc2FtZSBjb25m
aWcgYW5kIG9ubHkgb24gZ2VuMTEgcmlzayBhIGhhbmcgCmlmIFZNRSBzYW1wbGVycyBlbmQgdXAg
YmVpbmcgdXNlZCAod2hpY2ggaXMgYSBzdWJzZXQgb2YgYWxsIG1lZGlhIHdvcmtsb2FkcykKCgo+
Cj4+IEBAIC0zNjI4LDYgKzM2NzgsMTYgQEAgc3RhdGljIGludCByZWFkX3Byb3BlcnRpZXNfdW5s
b2NrZWQoc3RydWN0IGk5MTVfcGVyZiAqcGVyZiwKPj4gICAgICAgICAgICAgICAgICBjYXNlIERS
TV9JOTE1X1BFUkZfUFJPUF9IT0xEX1BSRUVNUFRJT046Cj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICBwcm9wcy0+aG9sZF9wcmVlbXB0aW9uID0gISF2YWx1ZTsKPj4gICAgICAgICAgICAgICAg
ICAgICAgICAgIGJyZWFrOwo+PiArICAgICAgICAgICAgICAgY2FzZSBEUk1fSTkxNV9QRVJGX1BS
T1BfR0xPQkFMX1NTRVU6IHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKGNvcHlfZnJv
bV91c2VyKCZwcm9wcy0+dXNlcl9zc2V1LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdTY0X3RvX3VzZXJfcHRyKHZhbHVlKSwKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZihwcm9wcy0+dXNlcl9zc2V1KSkpIHsK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fREVCVUcoIlVuYWJsZSB0byBj
b3B5IGdsb2JhbCBzc2V1IHBhcmFtZXRlclxuIik7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIC1FRkFVTFQ7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiBT
aW5jZSB0aGlzIGFmZmVjdHMgc3lzdGVtIHN0YXRlIGZvciBvdGhlciB1c2VycywgSSB3b3VsZCBz
dWdnZXN0IHRoaXMKPiBoYXMgYSBwcml2aWxlZ2UgY2hlY2sKPgo+PiArICAgICAgICAgICAgICAg
ICAgICAgICBwcm9wcy0+dXNlcl9zc2V1X3ByZXNlbnQgPSB0cnVlOwo+PiArICAgICAgICAgICAg
ICAgICAgICAgICBicmVhazsKPiBpOTE1X3BlcmZfaW9jdGxfb3Blbl9sb2NrZWQ6Cj4gCWlmIChw
cm9wcy0+dXNlcl9zc2V1X3ByZXNlbnQgJiYgSVNfR0VOKDExKSkKPiAJCXByaXZpbGVnZWRfb3Ag
PSB0cnVlOwo+ID8KCgpJJ20gZ29pbmcgdG8gZ28gd2l0aCBwcml2aWxpZ2VkIGZvciBhbGwgZ2Vu
cyBleGNlcHQgaWYgdXNlciByZXF1ZXN0ID09IApkZWZhdWx0LgoKClRoYW5rcyBhIGxvdCwKCgot
TGlvbmVsCgoKPiAtQ2hyaXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
