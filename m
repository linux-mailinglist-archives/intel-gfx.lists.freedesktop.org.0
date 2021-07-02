Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BEF3BA1FA
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 16:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7DE89F47;
	Fri,  2 Jul 2021 14:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B6B089DC9;
 Fri,  2 Jul 2021 14:08:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10033"; a="206912978"
X-IronPort-AV: E=Sophos;i="5.83,317,1616482800"; d="scan'208";a="206912978"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 07:08:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,317,1616482800"; d="scan'208";a="409322413"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 02 Jul 2021 07:08:38 -0700
Received: from [10.249.132.69] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.132.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 162E8bWs017763; Fri, 2 Jul 2021 15:08:37 +0100
To: Martin Peres <martin.peres@free.fr>,
 Matthew Brost <matthew.brost@intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-48-matthew.brost@intel.com>
 <88cbe963-7188-f4ae-5acf-01a80bd2fe25@free.fr>
 <20210630180052.GA8283@sdutt-i7>
 <7c3e1d46-74eb-6f2d-53ca-d73ce9e61c03@free.fr>
 <d9e31651-dd97-fb39-0045-7cd62650bd03@free.fr>
 <2d649c1a-82fc-cced-4020-f7d9d96c3bc4@intel.com>
 <040272cf-cbd5-73ef-c763-71948474be82@free.fr>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <9a9dbff8-6d92-fc92-4cf3-26679f2cb27c@intel.com>
Date: Fri, 2 Jul 2021 16:08:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <040272cf-cbd5-73ef-c763-71948474be82@free.fr>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 47/47] drm/i915/guc: Unblock GuC submission
 on Gen11+
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAwMi4wNy4yMDIxIDE1OjEyLCBNYXJ0aW4gUGVyZXMgd3JvdGU6Cj4gT24gMDIvMDcvMjAy
MSAxNjowNiwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPj4KPj4KPj4gT24gMDIuMDcuMjAyMSAx
MDoxMywgTWFydGluIFBlcmVzIHdyb3RlOgo+Pj4gT24gMDEvMDcvMjAyMSAyMToyNCwgTWFydGlu
IFBlcmVzIHdyb3RlOgo+Pj4gWy4uLl0KPj4+Pj4KPj4+Pj4+Cj4+Pj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIGk5MTUtPnBhcmFtcy5lbmFibGVfZ3VjID0gRU5BQkxFX0dVQ19MT0FEX0hVQzsKPj4+Pj4+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+Pj4+Pj4+ICvCoMKgwqAgfQo+Pj4+Pj4+ICsKPj4+
Pj4+PiArwqDCoMKgIC8qIERlZmF1bHQ6IGVuYWJsZSBIdUMgYXV0aGVudGljYXRpb24gYW5kIEd1
QyBzdWJtaXNzaW9uICovCj4+Pj4+Pj4gK8KgwqDCoCBpOTE1LT5wYXJhbXMuZW5hYmxlX2d1YyA9
IEVOQUJMRV9HVUNfTE9BRF9IVUMgfAo+Pj4+Pj4+IEVOQUJMRV9HVUNfU1VCTUlTU0lPTjsKPj4+
Pj4+Cj4+Pj4+PiBUaGlzIHNlZW1zIHRvIGJlIGluIGNvbnRyYWRpY3Rpb24gd2l0aCB0aGUgR3VD
IHN1Ym1pc3Npb24gcGxhbiB3aGljaAo+Pj4+Pj4gc3RhdGVzOgo+Pj4+Pj4KPj4+Pj4+ICJOb3Qg
ZW5hYmxlZCBieSBkZWZhdWx0IG9uIGFueSBjdXJyZW50IHBsYXRmb3JtcyBidXQgY2FuIGJlCj4+
Pj4+PiBlbmFibGVkIHZpYQo+Pj4+Pj4gbW9kcGFyYW0gZW5hYmxlX2d1YyIuCj4+Pj4+Pgo+Pj4+
Pgo+Pj4+PiBJIGRvbid0IGJlbGlldmUgYW55IGN1cnJlbnQgcGxhdGZvcm0gZ2V0cyB0aGlzIHBv
aW50IHdoZXJlIEd1Qwo+Pj4+PiBzdWJtaXNzaW9uIHdvdWxkIGJlIGVuYWJsZWQgYnkgZGVmYXVs
dC4gVGhlIGZpcnN0IHdvdWxkIGJlIEFETC1QIHdoaWNoCj4+Pj4+IGlzbid0IG91dCB5ZXQuCj4+
Pj4KPj4+PiBJc24ndCB0aGF0IGV4YWN0bHkgd2hhdCB0aGUgbGluZSBhYm92ZSBkb2VzPwo+Pj4K
Pj4+IEluIGNhc2UgeW91IG1pc3NlZCB0aGlzIGNydWNpYWwgcGFydCBvZiB0aGUgcmV2aWV3LiBQ
bGVhc2UgYW5zd2VyIHRoZQo+Pj4gYWJvdmUgcXVlc3Rpb24uCj4+Cj4+IEkgZ3Vlc3MgdGhlcmUg
aXMgc29tZSBtaXN1bmRlcnN0YW5kaW5nIGhlcmUsIGFuZCBJIG11c3QgYWRtaXQgSSBoYWQKPj4g
c2ltaWxhciBkb3VidCwgYnV0IGlmIHlvdSBsb29rIGJleW9uZCBwYXRjaCBkaWZmIGFuZCBjaGVj
ayBmdW5jdGlvbiBjb2RlCj4+IHlvdSB3aWxsIGZpbmQgdGhhdCB0aGUgdmVyeSBjb25kaXRpb24g
aXM6Cj4+Cj4+IMKgwqDCoMKgLyogRG9uJ3QgZW5hYmxlIEd1Qy9IdUMgb24gcHJlLUdlbjEyICov
Cj4+IMKgwqDCoMKgaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA8IDEyKSB7Cj4+IMKgwqDCoMKgwqDC
oMKgIGk5MTUtPnBhcmFtcy5lbmFibGVfZ3VjID0gMDsKPj4gwqDCoMKgwqDCoMKgwqAgcmV0dXJu
Owo+PiDCoMKgwqDCoH0KPj4KPj4gc28gYWxsIHByZS1HZW4xMiBwbGF0Zm9ybXMgd2lsbCBjb250
aW51ZSB0byBoYXZlIEd1Qy9IdUMgZGlzYWJsZWQuCj4gCj4gVGhhbmtzIE1pY2hhbCwgYnV0IHRo
ZW4gdGhlIHByb2JsZW0gaXMgdGhlIG90aGVyIHdheTogaG93IGNhbiBvbmUgZW5hYmxlCj4gaXQg
b24gZ2VuMTE/Cgp0aGlzIGNvZGUgaGVyZSBjb252ZXJ0cyBkZWZhdWx0IEd1QyBhdXRvIG1vZGUg
KGVuYWJsZV9ndWM9LTEpIGludG8gcGVyCnBsYXRmb3JtIGRlc2lyZWQgKHRlc3RlZCkgR3VDL0h1
QyBlbmFibGVzLgoKdG8gb3ZlcnJpZGUgdGhhdCBkZWZhdWx0LCB5b3UgbWF5IHN0aWxsIHVzZSBl
bmFibGVfZ3VjPTEgdG8gZXhwbGljaXRseQplbmFibGUgR3VDIHN1Ym1pc3Npb24gYW5kIHNpbmNl
IHdlIGFsc28gaGF2ZSB0aGlzIGNvZGU6Cgorc3RhdGljIGJvb2wgX19ndWNfc3VibWlzc2lvbl9z
dXBwb3J0ZWQoc3RydWN0IGludGVsX2d1YyAqZ3VjKQoreworCS8qIEd1QyBzdWJtaXNzaW9uIGlz
IHVuYXZhaWxhYmxlIGZvciBwcmUtR2VuMTEgKi8KKwlyZXR1cm4gaW50ZWxfZ3VjX2lzX3N1cHBv
cnRlZChndWMpICYmCisJICAgICAgIElOVEVMX0dFTihndWNfdG9fZ3QoZ3VjKS0+aTkxNSkgPj0g
MTE7Cit9CgppdCBzaG91bGQgd29yayBvbiBhbnkgR2VuMTErLgoKTWljaGFsCgo+IAo+IEkgbGlr
ZSB3aGF0IERhbmllbGUgd2FzIGdvaW5nIGZvciBoZXJlOiBzZXBhcmF0aW5nIHRoZSBjYXBhYmls
aXR5IGZyb20KPiB0aGUgdXNlci1yZXF1ZXN0ZWQgdmFsdWUsIGJ1dCB0aGVuIGl0IHNlZW1zIHRo
ZSBwYXRjaCBzdG9wcGVkIGhhbGYgd2F5Lgo+IEhvdyBhYm91dCBuZXZlciB0b3VjaGluZyB0aGUg
cGFyYW1ldGVyLCBhbmQgaGF2aW5nIGEgQU5EIGJldHdlZW4gdGhlIHR3bwo+IHZhbHVlcyB0byBn
ZXQgdGhlIGVmZmVjdGl2ZSBlbmFibGVfZ3VjPwo+IAo+IFJpZ2h0IG5vdywgdGhlIGNvZGUgaXMg
cmVhbGx5IGNvbmZ1c2luZyA6cwo+IAo+IFRoYW5rcywKPiBNYXJ0aW4KPiAKPj4KPj4gVGhhbmtz
LAo+PiBNaWNoYWwKPj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
