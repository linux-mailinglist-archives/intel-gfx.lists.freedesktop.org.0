Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D8ADC6C8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 16:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9026EB5C;
	Fri, 18 Oct 2019 14:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E47DF6EB5C
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 14:03:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 07:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; d="scan'208";a="202709921"
Received: from alinamex-mobl3.ger.corp.intel.com (HELO [10.252.56.163])
 ([10.252.56.163])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Oct 2019 07:03:06 -0700
To: intel-gfx@lists.freedesktop.org
References: <20191017132105.15528-1-maarten.lankhorst@linux.intel.com>
 <20191018105722.27987.22769@emeril.freedesktop.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <a635cd9a-85d8-811d-f6e8-4063dd19090e@linux.intel.com>
Date: Fri, 18 Oct 2019 16:03:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018105722.27987.22769@emeril.freedesktop.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/14=5D_drm/i915=3A_Rework_watermark_read?=
 =?utf-8?q?out_to_use_plane_api_=28rev2=29?=
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

T3AgMTgtMTAtMjAxOSBvbSAxMjo1NyBzY2hyZWVmIFBhdGNod29yazoKPiA9PSBTZXJpZXMgRGV0
YWlscyA9PQo+Cj4gU2VyaWVzOiBzZXJpZXMgc3RhcnRpbmcgd2l0aCBbMDEvMTRdIGRybS9pOTE1
OiBSZXdvcmsgd2F0ZXJtYXJrIHJlYWRvdXQgdG8gdXNlIHBsYW5lIGFwaSAocmV2MikKPiBVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjgxNTQvCj4gU3Rh
dGUgOiBmYWlsdXJlCj4KPiA9PSBTdW1tYXJ5ID09Cj4KPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBm
cm9tIENJX0RSTV83MTI1X2Z1bGwgLT4gUGF0Y2h3b3JrXzE0ODc0X2Z1bGwKPiA9PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4KPiBTdW1tYXJ5Cj4g
LS0tLS0tLQo+Cj4gICAqKkZBSUxVUkUqKgo+Cj4gICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBj
b21pbmcgd2l0aCBQYXRjaHdvcmtfMTQ4NzRfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKPiAg
IHZlcmlmaWVkIG1hbnVhbGx5Lgo+ICAgCj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNo
YW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMKPiAgIGludHJvZHVjZWQg
aW4gUGF0Y2h3b3JrXzE0ODc0X2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBh
bGxvdyB0aGVtCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdp
bGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4KPgo+ICAgCj4KPiBQb3NzaWJsZSBuZXcg
aXNzdWVzCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQo+Cj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBj
aGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDg3NF9m
dWxsOgo+Cj4gIyMjIElHVCBjaGFuZ2VzICMjIwo+Cj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9u
cyAjIyMjCj4KPiAgICogaWd0QGdlbV9jdHhfc3dpdGNoQHF1ZXVlLWxpZ2h0Ogo+ICAgICAtIHNo
YXJkLWdsazogICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsyXQo+ICAgIFsxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzEyNS9zaGFy
ZC1nbGs2L2lndEBnZW1fY3R4X3N3aXRjaEBxdWV1ZS1saWdodC5odG1sCj4gICAgWzJdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDg3NC9zaGFy
ZC1nbGs3L2lndEBnZW1fY3R4X3N3aXRjaEBxdWV1ZS1saWdodC5odG1sCj4KPiAgICogaWd0QGtt
c19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1iLXBsYW5lczoKPiAgICAgLSBzaGFyZC1rYmw6ICAg
ICAgICAgIFtQQVNTXVszXSAtPiBbRkFJTF1bNF0gKzMgc2ltaWxhciBpc3N1ZXMKPiAgICBbM106
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzcxMjUvc2hh
cmQta2JsMy9pZ3RAa21zX3BsYW5lQHBpeGVsLWZvcm1hdC1waXBlLWItcGxhbmVzLmh0bWwKPiAg
ICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3Jr
XzE0ODc0L3NoYXJkLWtibDMvaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1iLXBsYW5l
cy5odG1sCj4KPiAgICogaWd0QGttc19wbGFuZUBwaXhlbC1mb3JtYXQtcGlwZS1jLXBsYW5lczoK
PiAgICAgLSBzaGFyZC1nbGs6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRkFJTF1bNl0gKzUgc2lt
aWxhciBpc3N1ZXMKPiAgICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzcxMjUvc2hhcmQtZ2xrNC9pZ3RAa21zX3BsYW5lQHBpeGVsLWZvcm1hdC1w
aXBlLWMtcGxhbmVzLmh0bWwKPiAgICBbNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0ODc0L3NoYXJkLWdsazgvaWd0QGttc19wbGFuZUBwaXhl
bC1mb3JtYXQtcGlwZS1jLXBsYW5lcy5odG1sCj4KR3Vlc3NpbmcgdGhpcyBjb21lcyBmcm9tIHRo
ZSBsYXN0IHBhdGNoLiBXaWxsIGxvb2sgYXQgaXQuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
