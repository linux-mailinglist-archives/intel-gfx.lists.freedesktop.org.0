Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61110EFD24
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 13:30:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8746EA23;
	Tue,  5 Nov 2019 12:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22CF16EA21;
 Tue,  5 Nov 2019 12:30:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 04:30:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="403335439"
Received: from savicrad-mobl.ger.corp.intel.com (HELO [10.249.40.217])
 ([10.249.40.217])
 by fmsmga006.fm.intel.com with ESMTP; 05 Nov 2019 04:30:35 -0800
To: Daniel Vetter <daniel@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20191104173801.2972-1-daniel.vetter@ffwll.ch>
 <20191104173801.2972-2-daniel.vetter@ffwll.ch>
 <20191105110419.GG10326@phenom.ffwll.local>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <0e78e335-a632-4f73-6680-1bae169a7c83@linux.intel.com>
Date: Tue, 5 Nov 2019 13:30:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105110419.GG10326@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/nouveau: slowpath for pushbuf ioctl
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
Cc: nouveau@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ben Skeggs <bskeggs@redhat.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDUtMTEtMjAxOSBvbSAxMjowNCBzY2hyZWVmIERhbmllbCBWZXR0ZXI6Cj4gT24gTW9uLCBO
b3YgMDQsIDIwMTkgYXQgMDY6Mzg6MDBQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPj4g
V2UgY2FuJ3QgY29weV8qX3VzZXIgd2hpbGUgaG9sZGluZyByZXNlcnZhdGlvbnMsIHRoYXQgd2ls
bCAoc29vbiBldmVuCj4+IGZvciBub3V2ZWF1KSBsZWFkIHRvIGRlYWRsb2Nrcy4gQW5kIGl0IGJy
ZWFrcyB0aGUgY3Jvc3MtZHJpdmVyCj4+IGNvbnRyYWN0IGFyb3VuZCBkbWFfcmVzdi4KPj4KPj4g
Rml4IHRoaXMgYnkgYWRkaW5nIGEgc2xvd3BhdGggZm9yIHdoZW4gd2UgbmVlZCByZWxvY2F0aW9u
cywgYW5kIGJ5Cj4+IHB1c2hpbmcgdGhlIHdyaXRlYmFjayBvZiB0aGUgbmV3IHByZXN1bWVkIG9m
ZnNldHMgdG8gdGhlIHZlcnkgZW5kLgo+Pgo+PiBBc2lkZSBmcm9tICJpdCBjb21waWxlcyIgZW50
aXJlbHkgdW50ZXN0ZWQgdW5mb3J0dW5hdGVseS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4+IENjOiBJbGlhIE1pcmtpbiA8aW1p
cmtpbkBhbHVtLm1pdC5lZHU+Cj4+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgo+PiBDYzogQmVuIFNrZWdncyA8YnNrZWdnc0ByZWRoYXQu
Y29tPgo+PiBDYzogbm91dmVhdUBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBQaW5nIGZvciBhY2sv
cmV2aWV3IHNvIEkgY2FuIGxhbmQgdGhpcyBlbnRpcmUgc2VyaWVzLiBpbnRlbC1nZngtY2kgaXMg
YWxsCj4gaGFwcHkgd2l0aCB0aGUgcmViYXNlZCB2ZXJzaW9uLCBzbyBub3V2ZWF1IGFjayBpcyB0
aGUgb25seSBob2xkLXVwIGhlcmUuCgpJIGRvbid0IGZlZWwgY29uZmlkZW50IHJldmlld2luZyB0
aGlzIGFzIEkgbGFjayB0aGUgaHcsIHNvIGFsbCByZXZpZXcgY2F2ZWF0cyByZXBseS4KCkhhdmlu
ZyBzYWlkIHRoYXQsIHRoaXMgbG9va3Mgc2FuZSwgYW5kIGlmIGl0IGJsb3dzIHVwIHdlJ2xsIGZv
dW5kIG91dCBldmVudHVhbGx5LiA6KQoKUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxt
YWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
