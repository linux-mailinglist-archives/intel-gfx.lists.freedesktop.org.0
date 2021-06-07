Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 904C439DCED
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 14:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED426E8A9;
	Mon,  7 Jun 2021 12:50:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E786E8A9
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 12:50:02 +0000 (UTC)
IronPort-SDR: 7HS5qKUNLux/YVjPhcGSymQurlhPw8zuaRX5Ge9FNvmWvXKtDx5B1deATSGvQoSlzV9M7rDjDA
 Ff+Q7D8fgRgA==
X-IronPort-AV: E=McAfee;i="6200,9189,10007"; a="201591756"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="201591756"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 05:50:00 -0700
IronPort-SDR: CqB8dX0Tt93Cr7OSZE4VIjlHkqj3eCaQZ/MrcTArKmAVVTVsuPjJXOg1RadEV4pe5kTfgZcTca
 UEo+hVbgPs7w==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="401665663"
Received: from unknown (HELO [10.237.72.166]) ([10.237.72.166])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 05:49:59 -0700
To: "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20210514232247.144542-1-jose.souza@intel.com>
 <20210514232247.144542-3-jose.souza@intel.com>
 <a582c5f8912378f8661a1676f8e360cba7924332.camel@intel.com>
 <90f9a60870bdedcd89363b45fff97a4fb57980bd.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <ebec559f-734d-70cb-7cea-ee2a2582eac9@intel.com>
Date: Mon, 7 Jun 2021 15:49:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <90f9a60870bdedcd89363b45fff97a4fb57980bd.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/display: Nuke has_infoframe
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

CgpPbiA1LzIxLzIxIDEwOjU4IFBNLCBTb3V6YSwgSm9zZSB3cm90ZToKPiBPbiBGcmksIDIwMjEt
MDUtMjEgYXQgMTY6MjcgKzAxMDAsIE11biwgR3dhbi1neWVvbmcgd3JvdGU6Cj4+IE9uIEZyaSwg
MjAyMS0wNS0xNCBhdCAxNjoyMiAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToK
Pj4+IFRoaXMgd2FzIG9ubHkgcmVkdW50YW50IGluZm9ybWF0aW9uIGhhc19oZG1pX3NpbmsgY2Fu
IGRvIHRoZSBzYW1lIGpvYi4KPj4+IHNldF9pbmZvZnJhbWVzKCkgaG9va3Mgd2lsbCBjYWxsIGlu
dGVsX3dyaXRlX2luZm9mcmFtZSgpIGZvciB0aGUKPj4+IHN1cHBvcnRlZCBpbmZvZnJhbWVzIHR5
cGVzIGFuZCBpdCB3aWxsIG9ubHkgYmUgZW5hYmxlZCBpZiBnaXZlbiB0eXBlCj4+PiBpcyBzZXQg
aW4gY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5lbmFibGUuCj4+Pgo+Pj4gV2hpbGUgYXQgaXQgYWxz
byBmaXhpbmcgdGhlIHN0eWxlIG9mIGRpZ19wb3J0LT5zZXRfaW5mb2ZyYW1lcygpIGNhbGxzLgo+
Pj4KPj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Cj4+PiAtLS0KPj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9nNHhf
aGRtaS5jICAgICAgIHwgMjIgKysrKysrLS0tLS0tLS0tLS0tLQo+Pj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAxNyArKysrKy0tLS0tLS0tLQo+Pj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgNiArKy0t
LQo+Pj4gICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAg
MyAtLS0KPj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAg
IHwgIDQgKystLQo+Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWku
YyAgICAgfCAxMyArKysrKy0tLS0tLQo+Pj4gICA2IGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlv
bnMoKyksIDQzIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2c0eF9oZG1pLmMKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9nNHhfaGRtaS5jCj4+PiBpbmRleCBiZTM1MmU5ZjBhZmMuLmYzNWRiOTZlNjIzOSAxMDA2
NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvZzR4X2hkbWkuYwo+Pj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9nNHhfaGRtaS5jCj4+PiBAQCAtMTA1
LDkgKzEwNSw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2hkbWlfZ2V0X2NvbmZpZyhzdHJ1Y3QKPj4+
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4+PiAgICAgICAgICBwaXBlX2NvbmZpZy0+aW5mb2Zy
YW1lcy5lbmFibGUgfD0KPj4+ICAgICAgICAgICAgICAgICAgaW50ZWxfaGRtaV9pbmZvZnJhbWVz
X2VuYWJsZWQoZW5jb2RlciwgcGlwZV9jb25maWcpOwo+Pj4gICAKPj4+IC0gICAgICAgaWYgKHBp
cGVfY29uZmlnLT5pbmZvZnJhbWVzLmVuYWJsZSkKPj4+IC0gICAgICAgICAgICAgICBwaXBlX2Nv
bmZpZy0+aGFzX2luZm9mcmFtZSA9IHRydWU7Cj4+PiAtCj4+ICJwaXBlX2NvbmZpZy0+aW5mb2Zy
YW1lcy5lbmFibGUiIGlzIHNldCB3aXRoIGluZm9ybWF0aW9uIGFib3V0IHRoZQo+PiBpbmZvZnJh
bWVzIGN1cnJlbnRseSBhY3RpdmUgaW4gdGhlIGhhcmR3YXJlIHRocm91Z2ggInBpcGVfY29uZmln
LQo+Pj4gaW5mb2ZyYW1lcy5lbmFibGUgfD0gaW50ZWxfaGRtaV9pbmZvZnJhbWVzX2VuYWJsZWQo
ZW5jb2RlciwKPj4gcGlwZV9jb25maWcpOyIuCj4+Cj4+IFRoZXJlZm9yZSwgd2hlbiBjYWxsaW5n
IHNldF9pbmZvZnJhbWVzKCkgc2VtYW50aWNhbGx5LCB0aGUKPj4gaGFzX2luZm9mcmFtZSBpbmZv
cm1hdGlvbiBzZXQgYnkgImlmIChwaXBlX2NvbmZpZy0+aW5mb2ZyYW1lcy5lbmFibGUpCj4+IHBp
cGVfY29uZmlnLT5oYXNfaW5mb2ZyYW1lID0gdHJ1ZTsiIGlzIG1vcmUgY2xlYXIuCj4gCj4gVGhh
dCBkb24ndCB3b3JrIGJlY2F1c2UgdGhlIGZ1bmN0aW9ucyB0aGF0IHdpbGwgY2hlY2sgaWYgYSBp
bmZvZnJhbWUgaXMgbmVlZGVkIGFuZCBzZXQgcGlwZV9jb25maWctPmluZm9mcmFtZXMuZW5hYmxl
IGRlcGVuZHMgb24gcGlwZV9jb25maWctCj4+IGhhc19pbmZvZnJhbWUvY3J0Y19zdGF0ZS0+aGFz
X2hkbWlfc2luay4KPiBUaGF0IGlzIHByb2JhYmx5IGJlY2F1c2UgRFZJIHBvcnRzIGRvbid0IHN1
cHBvcnQgaW5mb2ZyYW1lcyBidXQgaW4gaTkxNSBhcmUgaGFuZGxlIHZlcnkgc2ltaWxhciB0byBI
RE1JLgo+IAo+PgpEUCBhbmQgSERNSSBjYW4gaGF2ZSBpbmZvZnJhbWVzIHRoYXQgZml0IGVhY2gg
c3BlY2lmaWNhdGlvbiBpbiB0aGUgCnNwZWNpZmljYXRpb24uCkFuZCAoYWx0aG91Z2ggbm90IHVz
ZWQgaW4gdGhpcyBzZW5zZSBoZXJlKSB3aGVuIGRwIGhhcyBoZG1pIHNpbmssIGl0IGNhbiAKYmUg
dGhvdWdodCBvZiB1c2luZyBkcCB0byBoZG1pIHByb3RvY29sIGNvbnZlcnRlci4gSSB0aGluayBp
dCBtaWdodCBiZSBhIApsaXR0bGUgdW5jbGVhciwgYnV0IHdoYXQgZG8geW91IHRoaW5rPwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
