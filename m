Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 717CC900AE
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 13:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAE5C89C33;
	Fri, 16 Aug 2019 11:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4387689C33
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 11:24:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 04:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; d="scan'208";a="194976666"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2019 04:24:50 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7GBOnst021719; Fri, 16 Aug 2019 12:24:49 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190816105501.31020-1-michal.wajdeczko@intel.com>
 <20190816105501.31020-3-michal.wajdeczko@intel.com>
 <156595446382.11610.13402376826420583949@skylake-alporthouse-com>
Date: Fri, 16 Aug 2019 13:24:49 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z6l4nnloxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <156595446382.11610.13402376826420583949@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915/wopcm: Check WOPCM layout
 separately from calculations
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNiBBdWcgMjAxOSAxMzoyMTowMyArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wOC0xNiAxMTo1NDo1OCkKPj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBfX2NoZWNrX2xheW91
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyICAKPj4gd29wY21fc2l6ZSwKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiBndWNfd29wY21fYmFzZSwgdTMy
ICAKPj4gZ3VjX3dvcGNtX3NpemUsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB1MzIgZ3VjX2Z3X3NpemUsIHUzMiBodWNfZndfc2l6ZSkKPj4gK3sKPj4gKyAgICAgICBjb25z
dCB1MzIgY3R4X3JzdmQgPSBjb250ZXh0X3Jlc2VydmVkX3NpemUoaTkxNSk7Cj4+ICsgICAgICAg
dTMyIHNpemU7Cj4+ICsKPj4gKyAgICAgICBzaXplID0gd29wY21fc2l6ZSAtIGN0eF9yc3ZkOwo+
Cj4gSSBkaWRuJ3Qgc3BvdCB0aGUgcGFyYW5vaWEgZm9yCj4KPiBpZiAoY3R4X3JzdmQgPiB3b3Bj
bV9zaXplKQo+IAlyZXR1cm4gZmFsc2U7Cj4KPiBJcyB0aGF0IGJ1aWx0IGluIGVhcmxpZXI/IEV2
ZW4gc28sIHByb2JhYmx5IHN0aWxsIHdpc2UgdG8gaW5jbHVkZSBpdCBoZXJlCj4gYXMgd2VsbCB0
byBmaXQgaW4gd2l0aCB0aGUgb3ZlcmZsb3cgY2hlY2tzLgoKd2FzIGFkZGVkIHRvIGludGVsX3dv
cGNtX2luaXQoKSB0aGF0IGNhbGxzIHRoaXMgZnVuY3Rpb24sIGxvb2sgZm9yOgoKKwlHRU1fQlVH
X09OKGN0eF9yc3ZkICsgV09QQ01fUkVTRVJWRURfU0laRSA+PSB3b3BjbS0+c2l6ZSk7Cgo+Cj4+
ICsgICAgICAgaWYgKHVubGlrZWx5KHJhbmdlX292ZXJmbG93cyhndWNfd29wY21fYmFzZSwgZ3Vj
X3dvcGNtX3NpemUsICAKPj4gc2l6ZSkpKSB7Cj4+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGk5
MTUtPmRybS5kZXYsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICJXT1BDTTogaW52YWxpZCBH
dUMgcmVnaW9uIGxheW91dDogJXVLICsgJXVLID4gIAo+PiAldUtcbiIsCj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGd1Y193b3BjbV9iYXNlIC8gU1pfMUssIGd1Y193b3BjbV9zaXplIC8gU1pf
MUssCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHNpemUgLyBTWl8xSyk7Cj4+ICsgICAgICAg
ICAgICAgICByZXR1cm4gZmFsc2U7Cj4+ICsgICAgICAgfQo+PiArCj4+ICsgICAgICAgc2l6ZSA9
IGd1Y19md19zaXplICsgR1VDX1dPUENNX1JFU0VSVkVEICsgIAo+PiBHVUNfV09QQ01fU1RBQ0tf
UkVTRVJWRUQ7Cj4+ICsgICAgICAgaWYgKHVubGlrZWx5KGd1Y193b3BjbV9zaXplIDwgc2l6ZSkp
IHsKPj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoaTkxNS0+ZHJtLmRldiwgIldPUENNOiBubyBz
cGFjZSBmb3IgJXM6ICV1SyA8ICAKPj4gJXVLXG4iLAo+PiArICAgICAgICAgICAgICAgICAgICAg
ICBpbnRlbF91Y19md190eXBlX3JlcHIoSU5URUxfVUNfRldfVFlQRV9HVUMpLAo+PiArICAgICAg
ICAgICAgICAgICAgICAgICBndWNfd29wY21fc2l6ZSAvIFNaXzFLLCBzaXplIC8gU1pfMUspOwo+
PiArICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+PiArICAgICAgIH0KPj4gKwo+PiArICAg
ICAgIHNpemUgPSBodWNfZndfc2l6ZSArIFdPUENNX1JFU0VSVkVEX1NJWkU7Cj4+ICsgICAgICAg
aWYgKHVubGlrZWx5KGd1Y193b3BjbV9iYXNlIDwgc2l6ZSkpIHsKPj4gKyAgICAgICAgICAgICAg
IGRldl9lcnIoaTkxNS0+ZHJtLmRldiwgIldPUENNOiBubyBzcGFjZSBmb3IgJXM6ICV1SyA8ICAK
Pj4gJXVLXG4iLAo+PiArICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF91Y19md190eXBlX3Jl
cHIoSU5URUxfVUNfRldfVFlQRV9IVUMpLAo+PiArICAgICAgICAgICAgICAgICAgICAgICBndWNf
d29wY21fYmFzZSAvIFNaXzFLLCBzaXplIC8gU1pfMUspOwo+PiArICAgICAgICAgICAgICAgcmV0
dXJuIGZhbHNlOwo+PiArICAgICAgIH0KPj4gKwo+PiArICAgICAgIHJldHVybiBjaGVja19od19y
ZXN0cmljdGlvbnMoaTkxNSwgZ3VjX3dvcGNtX2Jhc2UsICAKPj4gZ3VjX3dvcGNtX3NpemUsCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBodWNfZndfc2l6ZSk7Cj4+ICB9
Cj4KPiBMb29rcyBzYWZlbHkgcGFyYW5vaWQgdG8gbWUsCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
