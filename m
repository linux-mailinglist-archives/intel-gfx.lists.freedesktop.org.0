Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E24AD3A9A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD5F6E0BE;
	Fri, 11 Oct 2019 08:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8673C6E069
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 08:16:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 01:16:37 -0700
X-IronPort-AV: E=Sophos;i="5.67,283,1566889200"; d="scan'208";a="197513223"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Oct 2019 01:16:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fbda814b-1329-38d2-dd7c-c7c3abdf8a63@linux.intel.com>
Date: Fri, 11 Oct 2019 09:16:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191010071434.31195-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Note the addition of
 timeslicing to the pretend scheduler
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

Ck9uIDEwLzEwLzIwMTkgMDg6MTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSB3cml0aW5n
IHRoZSBjb21tZW50IHRoYXQgdGhlIHNjaGVkdWxlciBpcyBlbnRpcmVseSBwYXNzaXZlLCB3ZSd2
ZQo+IGFkZGVkIG1pbmltYWwgdGltZXNsaWNpbmcgd2hpY2ggYWRkcyB0aGUgbW9zdCBwcmltaXRp
dmUgb2YgYWN0aXZlCj4gZWxlbWVudHMgKGEgdGltZW91dCBhbmQgcmVzY2hlZHVsZSkuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
Q2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6
IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyX3R5cGVzLmggfCA5ICsrKysrKysrKwo+ICAgMSBm
aWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlcl90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zY2hlZHVsZXJfdHlwZXMuaAo+IGluZGV4IGFhZDgxYWNiYTlkYy4uZDE4ZTcwNTUwMDU0
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyX3R5cGVz
LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlcl90eXBlcy5oCj4g
QEAgLTQ5LDYgKzQ5LDE1IEBAIHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgewo+ICAgICogREFHIG9m
IGVhY2ggcmVxdWVzdCwgd2UgYXJlIGFibGUgdG8gaW5zZXJ0IGl0IGludG8gYSBzb3J0ZWQgcXVl
dWUgd2hlbiBpdAo+ICAgICogaXMgcmVhZHksIGFuZCBhcmUgYWJsZSB0byByZW9yZGVyIGl0cyBw
b3J0aW9uIG9mIHRoZSBncmFwaCB0byBhY2NvbW1vZGF0ZQo+ICAgICogZHluYW1pYyBwcmlvcml0
eSBjaGFuZ2VzLgo+ICsgKgo+ICsgKiBPaywgdGhlcmUgaXMgbm93IG9uZSBhY3RpdmUgZWxlbWVu
dCB0byB0aGUgInNjaGVkdWxlciIgaW4gdGhlIGJhY2tlbmRzLgo+ICsgKiBXZSBsZXQgYSBuZXcg
Y29udGV4dCBydW4gZm9yIGEgc21hbGwgYW1vdW50IG9mIHRpbWUgYmVmb3JlIHJlLWV2YWx1YXRp
bmcKPiArICogdGhlIHJ1biBvcmRlci4gQXMgd2UgcmUtZXZhbHVhdGUsIHdlIG1haW50YWluIHRo
ZSBzdHJpY3Qgb3JkZXJpbmcgb2YKPiArICogZGVwZW5kZW5jaWVzLCBidXQgYXR0ZW1wdCB0byBy
b3RhdGUgdGhlIGFjdGl2ZSBjb250ZXh0cyAodGhlIGN1cnJlbnQgY29udGV4dAo+ICsgKiBpcyBw
dXQgdG8gdGhlIGJhY2sgb2YgaXRzIHByaW9yaXR5IHF1ZXVlLCB0aGVuIHJlc2h1ZmZsaW5nIGl0
cyBkZXBlbmRlbnRzKS4KPiArICogVGhpcyBwcm92aWRlcyBtaW5pbWFsIHRpbWVzbGljaW5nIGFu
ZCBwcmV2ZW50cyBhIHVzZXJzcGFjZSBob2cgKGUuZy4KPiArICogc29tZXRoaW5nIHdhaXRpbmcg
b24gYSB1c2VyIHNlbWFwaG9yZSBbVmtFdmVudF0pIGZyb20gZGVueWluZyBzZXJ2aWNlIHRvCj4g
KyAqIG90aGVycy4KPiAgICAqLwo+ICAgc3RydWN0IGk5MTVfc2NoZWRfbm9kZSB7Cj4gICAJc3Ry
dWN0IGxpc3RfaGVhZCBzaWduYWxlcnNfbGlzdDsgLyogdGhvc2UgYmVmb3JlIHVzLCB3ZSBkZXBl
bmQgdXBvbiAqLwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
