Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ACE3508FC
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Mar 2021 23:15:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A896E2B8;
	Wed, 31 Mar 2021 21:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A226E2B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Mar 2021 21:15:37 +0000 (UTC)
IronPort-SDR: Jl+FmZEpDVAjVL2qO1sr4GRLr49G87mFz2oelH/Q8/L2MDEZUpZ5qjgnnqwJ+3MPEQKj0x8DvG
 s0godUp6WOvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192195341"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192195341"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:15:36 -0700
IronPort-SDR: OcHd12DLKNtBp1qb/vZ7MnidmpRX8UomENvTUJeXAKfAtrCG6AeRMMdL67XhjRX9rmYI1SQHEH
 aGWYXqgDADJw==
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="418860649"
Received: from ebaker-desk.ch.intel.com (HELO [10.2.3.134]) ([10.2.3.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:15:35 -0700
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210311144529.3059024-1-imre.deak@intel.com>
From: Ed Baker <edward.baker@intel.com>
Message-ID: <891c2e20-08d8-6615-e939-64d910af84e0@intel.com>
Date: Wed, 31 Mar 2021 14:15:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210311144529.3059024-1-imre.deak@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Uninit the DMC FW loader state
 during shutdown
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
Cc: kernel test robot <oliver.sang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMy8xMS8yMSA3OjQ1IEFNLCBJbXJlIERlYWsgd3JvdGU6Cj4gV2UgbmVlZCB0byB3YWl0IGZv
ciB0aGUgRE1DIEZXIGxvYWRlciB3b3JrIHRvIGNvbXBsZXRlIGR1cmluZyBzaHV0ZG93biwKPiBl
dmVuIGlmIGl0J3MgdW5saWtlbHkgdG8gYmUgc3RpbGwgcGVuZGluZyBieSB0aGF0IHRpbWUsIGZp
eCB0aGlzLgo+IAo+IFRoaXMgYWxzbyBmaXhlcyB0aGUgd2FrZXJlZiB0cmFja2luZyBXQVJOIGR1
cmluZyBzaHV0ZG93biBhYm91dCB0aGUKPiBsZWFrZWQgcmVmZXJlbmNlIHdlIGhvbGQgZHVlIHRv
IGEgbWlzc2luZyBETUMgZmlybXdhcmUuCj4gCj4gV2hpbGUgYXQgaXQgYWRkIGEgVE9ETyBjb21t
ZW50IGFib3V0IHVuaWZ5aW5nIHRoZSBzaHV0ZG93biBhbmQgUE0KPiBwb3dlci1vZmYgc2VxdWVu
Y2VzIGFuZCBsYXRlciB0aGVzZSBzZXF1ZW5jZXMgd2l0aCB0aGUgZHJpdmVyIHJlbW92ZSBhbmQK
PiBzeXN0ZW0vcnVudGltZSBzdXNwZW5kIHNlcXVlbmNlcy4KPiAKPiBDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBSZWZlcmVuY2VzOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjEwMzAzMDU1NTE3LkdCMjcwOEB4c2FuZy1PcHRpUGxl
eC05MDIwCj4gUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxvbGl2ZXIuc2FuZ0BpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTAgKysrKysrKysrLQo+
ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggM2VkZDVlNDdhZDY4Li40YTBlNDkxZTk2OTIgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtMTAzOCwxMCArMTAzOCwxOCBAQCB2b2lk
IGk5MTVfZHJpdmVyX3NodXRkb3duKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAJ
aW50ZWxfc3VzcGVuZF9lbmNvZGVycyhpOTE1KTsKPiAgCWludGVsX3NodXRkb3duX2VuY29kZXJz
KGk5MTUpOwo+ICAKPiArCWludGVsX2Nzcl91Y29kZV9zdXNwZW5kKGk5MTUpOwo+ICsKPiAgCS8q
Cj4gIAkgKiBUaGUgb25seSByZXF1aXJlbWVudCBpcyB0byByZWJvb3Qgd2l0aCBkaXNwbGF5IERD
IHN0YXRlcyBkaXNhYmxlZCwKPiAgCSAqIGZvciBub3cgbGVhdmluZyBhbGwgZGlzcGxheSBwb3dl
ciB3ZWxscyBpbiB0aGUgSU5JVCBwb3dlciBkb21haW4KPiAtCSAqIGVuYWJsZWQgbWF0Y2hpbmcg
dGhlIGRyaXZlciByZWxvYWQgc2VxdWVuY2UuCj4gKwkgKiBlbmFibGVkLgo+ICsJICoKPiArCSAq
IFRPRE86Cj4gKwkgKiAtIHVuaWZ5IHRoZSBwY2lfZHJpdmVyOjpzaHV0ZG93biBzZXF1ZW5jZSBo
ZXJlIHdpdGggdGhlCj4gKwkgKiAgIHBjaV9kcml2ZXIuZHJpdmVyLnBtLnBvd2Vyb2ZmLHBvd2Vy
b2ZmX2xhdGUgc2VxdWVuY2UuCj4gKwkgKiAtIHVuaWZ5IHRoZSBkcml2ZXIgcmVtb3ZlIGFuZCBz
eXN0ZW0vcnVudGltZSBzdXNwZW5kIHNlcXVlbmNlcyB3aXRoCj4gKwkgKiAgIHRoZSBhYm92ZSB1
bmlmaWVkIHNodXRkb3duL3Bvd2Vyb2ZmIHNlcXVlbmNlLgo+ICAJICovCj4gIAlpbnRlbF9wb3dl
cl9kb21haW5zX2RyaXZlcl9yZW1vdmUoaTkxNSk7Cj4gIAllbmFibGVfcnBtX3dha2VyZWZfYXNz
ZXJ0cygmaTkxNS0+cnVudGltZV9wbSk7Cj4gCgpWZXJpZmllZCBvbiBhIFRHTCBpNSBzeXN0ZW0u
IFRoaXMgcGF0Y2ggd2FzIGFwcGxpZWQgb24gdG9wIG9mIEdvb2dsZSdzIDUuNCBrZXJuZWwgZm9y
IENocm9tZSBPUyAoaHR0cHM6Ly9jaHJvbWl1bS5nb29nbGVzb3VyY2UuY29tL2Nocm9taXVtb3Mv
dGhpcmRfcGFydHkva2VybmVsLysvNjJhNzAxNjIxOSBzcGVjaWZpY2FsbHkpLgoKVGVzdGVkLWJ5
OiBFZHdhcmQgQmFrZXIgPGVkd2FyZC5iYWtlckBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
