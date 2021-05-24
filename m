Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7522838E0FF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 08:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94FBE8961E;
	Mon, 24 May 2021 06:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E99E8961E;
 Mon, 24 May 2021 06:32:23 +0000 (UTC)
IronPort-SDR: FpeZX8BLzaX/khcHxbgBoQpCKanxLcWnTHieL6P2UTP96vxa155+ck7A160AgRGKUtboTbLnEA
 PSwAueD4FsqA==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="201608204"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="201608204"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2021 23:32:23 -0700
IronPort-SDR: 6ynnOcRZ9CccaMGscheJXUHsZk4zEVZ82xjG461QOSqVxW5FjloPPoq72PvSvofj4g4CK9O0En
 yiXT1AdnCJ4w==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="441893480"
Received: from wrykacze-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.4.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2021 23:32:20 -0700
Date: Mon, 24 May 2021 08:32:17 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210524063217.GC3715@zkempczy-mobl2>
References: <20210519145337.255167-1-matthew.auld@intel.com>
 <20210519145337.255167-5-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519145337.255167-5-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 4/9] tests/gem_gpgpu_fill:
 Convert from simple to standard igt_main
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?=
 <zbigniew.kempczynski@linux.intel.com>, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMTksIDIwMjEgYXQgMDM6NTM6MzJQTSArMDEwMCwgTWF0dGhldyBBdWxkIHdy
b3RlOgo+IEZyb206IERvbWluaWsgR3J6ZWdvcnplayA8ZG9taW5pay5ncnplZ29yemVrQGludGVs
LmNvbT4KPiAKPiBBcyB3ZSBuZWVkIHRvIGFkZCBuZXcgdGVzdCB2YXJpYW50cywgY29udmVydCB0
aGUgY29kZSB0byBzdGFuZGFyZAo+IGlndF9tYWluIGZvcm1hdCBzbyB0aG9zZSB2YXJpYW50cyBj
YW4gYmUgZWFzaWx5IGFjY29tbW9kYXRlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6
eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBsaW51eC5p
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50
ZWwuY29tPgoKSSdtIG5vdCBzdXJlIGJ1dCBKYW51c3ogbGlrZWx5IHN0YXJ0ZWQgbWlncmF0aW9u
IHNvIHlvdSBjYW4gcmVtb3ZlCm1lIGZyb20gU29CLiBUaGVuIEkgY2FuIGdpdmU6CgpSZXZpZXdl
ZC1ieTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5j
b20+CgotLQpaYmlnbmlldwoKPiAtLS0KPiAgdGVzdHMvaTkxNS9nZW1fZ3BncHVfZmlsbC5jIHwg
MjUgKysrKysrKysrKysrKysrKy0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0
aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1f
Z3BncHVfZmlsbC5jIGIvdGVzdHMvaTkxNS9nZW1fZ3BncHVfZmlsbC5jCj4gaW5kZXggYzYwNTYy
OWYuLjViMTFmYjM1IDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2dwZ3B1X2ZpbGwuYwo+
ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2dwZ3B1X2ZpbGwuYwo+IEBAIC0xMjMsMjAgKzEyMywyNyBA
QCBzdGF0aWMgdm9pZCBncGdwdV9maWxsKGRhdGFfdCAqZGF0YSwgaWd0X2ZpbGxmdW5jX3QgZmls
bCkKPiAgCj4gIAltdW5tYXAocHRyLCBidWYtPnN1cmZhY2VbMF0uc2l6ZSk7Cj4gIH0KPiAtCj4g
LWlndF9zaW1wbGVfbWFpbgo+ICtpZ3RfbWFpbgo+ICB7Cj4gIAlkYXRhX3QgZGF0YSA9IHswLCB9
Owo+ICAJaWd0X2ZpbGxmdW5jX3QgZmlsbF9mbiA9IE5VTEw7Cj4gIAo+IC0JZGF0YS5kcm1fZmQg
PSBkcm1fb3Blbl9kcml2ZXJfcmVuZGVyKERSSVZFUl9JTlRFTCk7Cj4gLQlkYXRhLmRldmlkID0g
aW50ZWxfZ2V0X2RybV9kZXZpZChkYXRhLmRybV9mZCk7Cj4gLQlpZ3RfcmVxdWlyZV9nZW0oZGF0
YS5kcm1fZmQpOwo+IC0JZGF0YS5ib3BzID0gYnVmX29wc19jcmVhdGUoZGF0YS5kcm1fZmQpOwo+
ICsJaWd0X2ZpeHR1cmUgewo+ICsJCWRhdGEuZHJtX2ZkID0gZHJtX29wZW5fZHJpdmVyX3JlbmRl
cihEUklWRVJfSU5URUwpOwo+ICsJCWRhdGEuZGV2aWQgPSBpbnRlbF9nZXRfZHJtX2RldmlkKGRh
dGEuZHJtX2ZkKTsKPiArCQlpZ3RfcmVxdWlyZV9nZW0oZGF0YS5kcm1fZmQpOwo+ICsJCWRhdGEu
Ym9wcyA9IGJ1Zl9vcHNfY3JlYXRlKGRhdGEuZHJtX2ZkKTsKPiArCj4gKwkJZmlsbF9mbiA9IGln
dF9nZXRfZ3BncHVfZmlsbGZ1bmMoZGF0YS5kZXZpZCk7Cj4gKwo+ICsJCWlndF9yZXF1aXJlX2Yo
ZmlsbF9mbiwgIm5vIGdwZ3B1LWZpbGwgZnVuY3Rpb25cbiIpOwo+ICAKPiAtCWZpbGxfZm4gPSBp
Z3RfZ2V0X2dwZ3B1X2ZpbGxmdW5jKGRhdGEuZGV2aWQpOwo+ICsJfQo+ICAKPiAtCWlndF9yZXF1
aXJlX2YoZmlsbF9mbiwgIm5vIGdwZ3B1LWZpbGwgZnVuY3Rpb25cbiIpOwo+ICsJaWd0X3N1YnRl
c3QoImJhc2ljIikKPiArCQlncGdwdV9maWxsKCZkYXRhLCBmaWxsX2ZuKTsKPiAgCj4gLQlncGdw
dV9maWxsKCZkYXRhLCBmaWxsX2ZuKTsKPiArCWlndF9maXh0dXJlIHsKPiArCQlidWZfb3BzX2Rl
c3Ryb3koZGF0YS5ib3BzKTsKPiArCX0KPiAgfQo+IC0tIAo+IDIuMjYuMwo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gaWd0LWRldiBtYWlsaW5n
IGxpc3QKPiBpZ3QtZGV2QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaWd0LWRldgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
