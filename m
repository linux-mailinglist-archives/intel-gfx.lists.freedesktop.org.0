Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AF3C0263
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 11:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A98A6EED7;
	Fri, 27 Sep 2019 09:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67FE6EED2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 09:30:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 02:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,554,1559545200"; d="scan'208";a="190264452"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga007.fm.intel.com with ESMTP; 27 Sep 2019 02:30:36 -0700
Date: Fri, 27 Sep 2019 15:00:27 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190927093026.GC16255@intel.com>
References: <20190926052135.29911-1-ramalingam.c@intel.com>
 <20190926052135.29911-3-ramalingam.c@intel.com>
 <1d52529c-9ecf-6525-43f5-1d2bd5f506a2@linux.intel.com>
 <156948920849.4979.66777122380313478@skylake-alporthouse-com>
 <20190927091256.GA16255@intel.com>
 <156957637765.32596.12482435949580328098@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156957637765.32596.12482435949580328098@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: FB backing gem obj should
 reside in LMEM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOS0yNyBhdCAxMDoyNjoxNyArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1
b3RpbmcgUmFtYWxpbmdhbSBDICgyMDE5LTA5LTI3IDEwOjEyOjU3KQo+ID4gT24gMjAxOS0wOS0y
NiBhdCAxMDoxMzoyOCArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBUaGlzIHdvdWxk
IGJlIGEgcGFydCBvZiBwaW5fdG9fZGlzcGxheT8gVGhhdCdzIHdoZXJlIHdlIGRvIHRoZSBvdGhl
cgo+ID4gPiBjb252ZXJzaW9ucyByZXF1aXJlZCBmb3Igc2Nhbm91dCBvYmplY3RzLgo+ID4gCj4g
PiBJIHdpbGwgcmVsb29rIHRocm91Z2ggaXQgY2hyaXMuIEJ1dCBJIGFtIGp1c3Qgd29uZGVyaW5n
IHdoZW4gdGhlIEZCIGlzCj4gPiBjcmVhdGVkL2Rlc3Ryb3llZCBpdHNlbGYgY291bGQgd2UgZml4
L3JlbGVhc2UgdGhlIG1lbW9yeSByZWdpb24gcmVxdWlyZWQ/Cj4gCj4gVGhhdCB3b3VsZCBiZSBh
dHlwaWNhbDsgd2UgZ2VuZXJhbGx5IG9ubHkgcmVzdHJpY3QgdGhlIHVzZXIgb3B0aW9ucyB3aGls
ZQo+IGl0IGlzIGF0dGFjaGVkIHRvIEhXLCBhbmQgZXJyIG9uIHRoZSBzaWRlIG9mIGxhemluZXNz
LgpJIHdpbGwgZXhwbG9yZSB0aGUgcGluX3RvX2RpcGxheSBwYXRoLiBUaGFua3MgQ2hyaXMhCgot
UmFtCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
