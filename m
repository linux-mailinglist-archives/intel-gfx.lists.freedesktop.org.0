Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D2D634C4
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 13:10:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6CF89C1B;
	Tue,  9 Jul 2019 11:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 981EB89C1B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 11:10:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 04:10:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170563468"
Received: from unknown (HELO [10.252.37.9]) ([10.252.37.9])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 04:10:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-10-lionel.g.landwerlin@intel.com>
 <156266630516.9375.14447795535063304479@skylake-alporthouse-com>
 <e6c65a05-69f4-310c-b17a-dedf92dfed72@intel.com>
 <156267036848.9375.15530105811228075516@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <42748add-30ba-5e7f-e278-8f78df791b3f@intel.com>
Date: Tue, 9 Jul 2019 14:10:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156267036848.9375.15530105811228075516@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 09/12] drm/i915: add a new perf
 configuration execbuf parameter
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

T24gMDkvMDcvMjAxOSAxNDowNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDkgMTE6NTk6MzEpCj4+IE9uIDA5LzA3LzIwMTkgMTI6NTgs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDctMDkgMTA6MzI6MDUpCj4+Pj4gK3N0YXRpYyBpbnQgZWJfb2FfY29uZmlnKHN0cnVjdCBpOTE1
X2V4ZWNidWZmZXIgKmViKQo+Pj4+ICt7Cj4+Pj4gKyAgICAgICBpbnQgZXJyOwo+Pj4+ICsKPj4+
PiArICAgICAgIGlmICghZWItPm9hX2NvbmZpZykKPj4+PiArICAgICAgICAgICAgICAgcmV0dXJu
IDA7Cj4+Pj4gKwo+Pj4+ICsgICAgICAgZXJyID0gaTkxNV9hY3RpdmVfcmVxdWVzdF9zZXQoJmVi
LT5lbmdpbmUtPmxhc3Rfb2FfY29uZmlnLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZWItPnJlcXVlc3QpOwo+Pj4gVGhpcyBpcyBvdXRzaWRlIG9mIHRoZSBlYi0+
cmVxdWVzdC0+dGltZWxpbmUtPm11dGV4IGFuZCBuZWVkcyBhIG11dGV4Lgo+Pgo+PiBDYW4gSSBk
byB0aGlzIGluc2lkZSBpOTE1X3JlcXVlc3RfYWRkKCkgd2hlbiBycS0+ZmxhZ3MgJgo+PiBJOTE1
X1JFUVVFU1RfRkxBR1NfUEVSRiA/Cj4gTm8uIEJlY2F1c2UgaXQgaXMgc3RpbGwgYmVpbmcgYWNj
ZXNzZWQgd2l0aG91dCB0aGUgYXBwcm9wcmlhdGUgbG9ja3MuCj4gKE11bHRpcGxlIGNhbGxlcnMg
dHJ5aW5nIHRvIG1vZGlmeSBlYi0+ZW5naW5lLT5sYXN0X29hX2NvbmZpZyBhbGwgdXNpbmcKPiB0
aGVpciBvd24gdGltZWxpbmUtPm11dGV4LikgWW91IGFscmVhZHkgbmVlZCBhIGxvY2sgdG8gc2Vy
aWFsaXNlCj4gb2FfY29uZmlnLCB0aGF0IHNlZW1zIGFkZXF1YXRlIHRvIGNvdmVyIGxhc3Rfb2Ff
Y29uZmlnIGFzIHdlbGwuCj4KPiBPaCwgZG9uJ3QgY2FsbCB0aGUgZmxhZyBfUEVSRiBidXQgc29t
ZXRoaW5nIGxpa2UgRkxBR1NfTk9QUkVFTVBUIHNvCj4gaXQgaW5kaWNhdGVzIHRoZSBtZWNoYW5p
c20uIENvbWUgdG8gdGhpbmsgb2YgdGhpcyBkb24ndCBpbmNsdWRlIF9GTEFHU18KPiBhcyB3ZSBk
b24ndCBuZWVkIHRvIGRpc2FtYmlndWF0ZSB5ZXQgOikKPiAtQ2hyaXMKPgpBbGlnbnMgcGVyZmVj
dGx5IDspCgoKLUxpb25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
