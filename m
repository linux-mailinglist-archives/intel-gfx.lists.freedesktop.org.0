Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB1FF725D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:40:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B8336E89E;
	Mon, 11 Nov 2019 10:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85E146E89E
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:40:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 02:40:19 -0800
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="197631034"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Nov 2019 02:40:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191109105356.5273-1-chris@chris-wilson.co.uk>
 <0285daa4-eeb5-b1e1-8b4d-d7220024d429@linux.intel.com>
 <157346538997.28106.15260731624402142184@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e6237915-eac0-1339-12b3-bd79c567edad@linux.intel.com>
Date: Mon, 11 Nov 2019 10:40:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157346538997.28106.15260731624402142184@skylake-alporthouse-com>
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

Ck9uIDExLzExLzIwMTkgMDk6NDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTExIDA5OjExOjAzKQo+Pgo+PiBPbiAwOS8xMS8yMDE5IDEwOjUz
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBXZSByZXBvcnQgImZyZXF1ZW5jaWVzIiAoYWN0dWFs
LWZyZXF1ZW5jeSwgcmVxdWVzdGVkLWZyZXF1ZW5jeSkgYXMgdGhlCj4+PiBudW1iZXIgb2YgYWNj
dW11bGF0ZWQgY3ljbGVzIHNvIHRoYXQgdGhlIGF2ZXJhZ2UgZnJlcXVlbmN5IG92ZXIgdGhhdAo+
Pj4gcGVyaW9kIG1heSBiZSBkZXRlcm1pbmVkIGJ5IHRoZSB1c2VyLiBUaGlzIG1lYW5zIHRoZSB1
bml0cyB3ZSByZXBvcnQgdG8KPj4+IHRoZSB1c2VyIGFyZSBNY3ljbGVzIChvciBqdXN0IE0pLCBu
b3QgTUh6Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Cj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+Pj4gLS0tCj4+PiAgICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgNCArKy0tCj4+PiAgICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wbXUuYwo+Pj4gaW5kZXggNDgwNDc3NTY0NGJmLi45YjAyYmUwYWQ0ZTYgMTAwNjQ0Cj4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4+PiBAQCAtOTA4LDggKzkwOCw4IEBAIGNyZWF0ZV9ldmVu
dF9hdHRyaWJ1dGVzKHN0cnVjdCBpOTE1X3BtdSAqcG11KQo+Pj4gICAgICAgICAgICAgICAgY29u
c3QgY2hhciAqbmFtZTsKPj4+ICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKnVuaXQ7Cj4+PiAg
ICAgICAgfSBldmVudHNbXSA9IHsKPj4+IC0gICAgICAgICAgICAgX19ldmVudChJOTE1X1BNVV9B
Q1RVQUxfRlJFUVVFTkNZLCAiYWN0dWFsLWZyZXF1ZW5jeSIsICJNSHoiKSwKPj4+IC0gICAgICAg
ICAgICAgX19ldmVudChJOTE1X1BNVV9SRVFVRVNURURfRlJFUVVFTkNZLCAicmVxdWVzdGVkLWZy
ZXF1ZW5jeSIsICJNSHoiKSwKPj4+ICsgICAgICAgICAgICAgX19ldmVudChJOTE1X1BNVV9BQ1RV
QUxfRlJFUVVFTkNZLCAiYWN0dWFsLWZyZXF1ZW5jeSIsICJNIiksCj4+PiArICAgICAgICAgICAg
IF9fZXZlbnQoSTkxNV9QTVVfUkVRVUVTVEVEX0ZSRVFVRU5DWSwgInJlcXVlc3RlZC1mcmVxdWVu
Y3kiLCAiTSIpLAo+Pj4gICAgICAgICAgICAgICAgX19ldmVudChJOTE1X1BNVV9JTlRFUlJVUFRT
LCAiaW50ZXJydXB0cyIsIE5VTEwpLAo+Pj4gICAgICAgICAgICAgICAgX19ldmVudChJOTE1X1BN
VV9SQzZfUkVTSURFTkNZLCAicmM2LXJlc2lkZW5jeSIsICJucyIpLAo+Pj4gICAgICAgIH07Cj4+
Pgo+Pgo+PiBNSHogd2FzIHdyb25nIHllcy4gQnV0IGlzICdNJyBlc3RhYmxpc2hlZCBvciB3b3Vs
ZCAnTWN5Y2xlcycgYmUgYmV0dGVyPwo+IAo+IFRoZSBvbmx5IHBsYWNlIHdoZXJlICJjeWNsZXMi
IHBvcHMgdXAgaXMgaW4gdGhlIHBlcmYgdWksIHRoZSBvdGhlcgo+IGV2ZW50cyB0aGF0IEkgdGhv
dWdodCB3ZXJlIHNpbWlsYXIgaW4gbmF0dXJlIGFyZSB1bml0bGVzcy4gQXMgdGhlCj4gJ2N5Y2xl
JyBpdHNlbGYgaXMgbm90IGFuIFNJIGJhc2UgdW5pdCBhcyBpdCBpcyBhIG1lcmUgY291bnQuCj4g
Cj4gfm9+IEkgaGF2ZSBubyBpZGVhIH5vfgoKQnV0IGlmIHRoZSBhcmd1bWVudCBpZiB0aGF0ICdj
eWNsZScgaXMgbm90IFNJIHRoZW4gbmVpdGhlciBpcyAnTScuIFNvIEkgCnRoaW5rIEkgd291bGQg
cHJlZmVyICdNY3ljbGVzJy4gTmV2ZXJ0aGVsZXNzLCBJIGd1ZXNzIGEgc3RyYW5nZSAnTScgaXMg
CmJldHRlciB0aGFuIHdyb25nICdNSHonLgoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
