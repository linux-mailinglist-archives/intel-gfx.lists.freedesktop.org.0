Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 796AEF702E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 10:11:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4EB6E863;
	Mon, 11 Nov 2019 09:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7E0B6E863
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 09:11:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 01:11:06 -0800
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="207064403"
Received: from cstylian-mobl.ger.corp.intel.com (HELO [10.251.95.7])
 ([10.251.95.7])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Nov 2019 01:11:05 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191109105356.5273-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0285daa4-eeb5-b1e1-8b4d-d7220024d429@linux.intel.com>
Date: Mon, 11 Nov 2019 09:11:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191109105356.5273-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: "Frequency" is reported as
 accumulated cycles
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA5LzExLzIwMTkgMTA6NTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSByZXBvcnQgImZy
ZXF1ZW5jaWVzIiAoYWN0dWFsLWZyZXF1ZW5jeSwgcmVxdWVzdGVkLWZyZXF1ZW5jeSkgYXMgdGhl
Cj4gbnVtYmVyIG9mIGFjY3VtdWxhdGVkIGN5Y2xlcyBzbyB0aGF0IHRoZSBhdmVyYWdlIGZyZXF1
ZW5jeSBvdmVyIHRoYXQKPiBwZXJpb2QgbWF5IGJlIGRldGVybWluZWQgYnkgdGhlIHVzZXIuIFRo
aXMgbWVhbnMgdGhlIHVuaXRzIHdlIHJlcG9ydCB0bwo+IHRoZSB1c2VyIGFyZSBNY3ljbGVzIChv
ciBqdXN0IE0pLCBub3QgTUh6Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gLS0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUu
Ywo+IGluZGV4IDQ4MDQ3NzU2NDRiZi4uOWIwMmJlMGFkNGU2IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BtdS5jCj4gQEAgLTkwOCw4ICs5MDgsOCBAQCBjcmVhdGVfZXZlbnRfYXR0cmlidXRlcyhz
dHJ1Y3QgaTkxNV9wbXUgKnBtdSkKPiAgIAkJY29uc3QgY2hhciAqbmFtZTsKPiAgIAkJY29uc3Qg
Y2hhciAqdW5pdDsKPiAgIAl9IGV2ZW50c1tdID0gewo+IC0JCV9fZXZlbnQoSTkxNV9QTVVfQUNU
VUFMX0ZSRVFVRU5DWSwgImFjdHVhbC1mcmVxdWVuY3kiLCAiTUh6IiksCj4gLQkJX19ldmVudChJ
OTE1X1BNVV9SRVFVRVNURURfRlJFUVVFTkNZLCAicmVxdWVzdGVkLWZyZXF1ZW5jeSIsICJNSHoi
KSwKPiArCQlfX2V2ZW50KEk5MTVfUE1VX0FDVFVBTF9GUkVRVUVOQ1ksICJhY3R1YWwtZnJlcXVl
bmN5IiwgIk0iKSwKPiArCQlfX2V2ZW50KEk5MTVfUE1VX1JFUVVFU1RFRF9GUkVRVUVOQ1ksICJy
ZXF1ZXN0ZWQtZnJlcXVlbmN5IiwgIk0iKSwKPiAgIAkJX19ldmVudChJOTE1X1BNVV9JTlRFUlJV
UFRTLCAiaW50ZXJydXB0cyIsIE5VTEwpLAo+ICAgCQlfX2V2ZW50KEk5MTVfUE1VX1JDNl9SRVNJ
REVOQ1ksICJyYzYtcmVzaWRlbmN5IiwgIm5zIiksCj4gICAJfTsKPiAKCk1IeiB3YXMgd3Jvbmcg
eWVzLiBCdXQgaXMgJ00nIGVzdGFibGlzaGVkIG9yIHdvdWxkICdNY3ljbGVzJyBiZSBiZXR0ZXI/
CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
