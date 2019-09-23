Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7FFBB4F9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 15:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7516E8F0;
	Mon, 23 Sep 2019 13:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F32A6E8F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 13:08:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 06:08:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="193088335"
Received: from hodel-mobl1.ger.corp.intel.com (HELO [10.252.37.116])
 ([10.252.37.116])
 by orsmga006.jf.intel.com with ESMTP; 23 Sep 2019 06:08:13 -0700
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-2-maarten.lankhorst@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <1849818d-8e5d-48d3-2e59-a6c494ad6d70@linux.intel.com>
Date: Mon, 23 Sep 2019 15:08:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190920114235.22411-2-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/23] HAX drm/i915: Disable FEC entirely
 for now
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

T3AgMjAtMDktMjAxOSBvbSAxMzo0MiBzY2hyZWVmIE1hYXJ0ZW4gTGFua2hvcnN0Ogo+IEkgZ2V0
IGEgcGVybWFuZW50IEZJRk8gdW5kZXJydW4gd2hlbiBlbmFibGluZyBGRUMgd2l0aCBiaWcgam9p
bmVyLAo+IHNvIGZvciBub3cgZGlzYWJsZSBpdC4KPgo+IEl0IHNlZW1zIHRoYXQgZXZlbiBhdCAx
MDI0eDc2OCByZXNvbHV0aW9uIHdpdGhvdXQgYmlnam9pbmVyIHdlIGRvbid0Cj4gZ2V0IGEgd29y
a2luZyBjb25maWd1cmF0aW9uLiBGbGFnIGlzIHNldCBidXQgdmJsYW5rIHRpbWluZyBzaG93cyB0
aGF0Cj4gdmJsYW5rcyBhcmUgZGVsaXZlcmVkIHNsaWdodGx5IGZhc3Rlciwgc28gdGhlIGV4dHJh
IG92ZXJoZWFkIHdlCj4gY2FsY3VsYXRlZCBmb3IgZGF0YSBNL04gZ29lcyB1bnVzZWQuCj4KPiBO
b3QtU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxp
bnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jIHwgNiArKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBp
bmRleCA0ZGZiNzhkYzdmYTIuLjAyMjQyYTE2NjQwYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAtMTg3Nyw3ICsxODc3LDggQEAgc3RhdGljIGJvb2wg
aW50ZWxfZHBfc291cmNlX3N1cHBvcnRzX2RzYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
ICBzdGF0aWMgYm9vbCBpbnRlbF9kcF9zdXBwb3J0c19kc2Moc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwKPiAgCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmln
KQo+ICB7Cj4gLQlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYgIXBpcGVfY29uZmln
LT5mZWNfZW5hYmxlKQo+ICsJLyogSEFDSzogRGlzYWJsZSBGRUMgdW50aWwgd2Ugc29sdmVkIEZJ
Rk8gdW5kZXJydW5zICovCj4gKwlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYgIXBp
cGVfY29uZmlnLT5mZWNfZW5hYmxlICYmIDApCj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAKPiAgCXJl
dHVybiBpbnRlbF9kcF9zb3VyY2Vfc3VwcG9ydHNfZHNjKGludGVsX2RwLCBwaXBlX2NvbmZpZykg
JiYKPiBAQCAtMjAyNCw4ICsyMDI1LDkgQEAgc3RhdGljIGludCBpbnRlbF9kcF9kc2NfY29tcHV0
ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgCWludCBwaXBlX2JwcDsKPiAg
CWludCByZXQ7Cj4gIAo+ICsJLyogSEFDSzogRGlzYWJsZSBGRUMgdW50aWwgd2Ugc29sdmVkIEZJ
Rk8gdW5kZXJydW5zICovCj4gIAlwaXBlX2NvbmZpZy0+ZmVjX2VuYWJsZSA9ICFpbnRlbF9kcF9p
c19lZHAoaW50ZWxfZHApICYmCj4gLQkJaW50ZWxfZHBfc3VwcG9ydHNfZmVjKGludGVsX2RwLCBw
aXBlX2NvbmZpZyk7Cj4gKwkJaW50ZWxfZHBfc3VwcG9ydHNfZmVjKGludGVsX2RwLCBwaXBlX2Nv
bmZpZykgJiYgMDsKPiAgCj4gIAlpZiAoIWludGVsX2RwX3N1cHBvcnRzX2RzYyhpbnRlbF9kcCwg
cGlwZV9jb25maWcpKQo+ICAJCXJldHVybiAtRUlOVkFMOwoKV2l0aCB2MyBvZiB0aGUgcHJldmlv
dXMgcGF0Y2gsIHRoaXMgaXMgbm93IG9ic29sZXRlIGFuZCBjb25maXJtZWQgd29ya2luZyBvbiBJ
Q0wuCgpTbyB0aGlzIGNhbiBmaW5hbGx5IGJlIGRyb3BwZWQuIDopCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
