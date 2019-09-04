Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E21D8A954A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 23:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD3EF89C96;
	Wed,  4 Sep 2019 21:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C772B89C96
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 21:39:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 14:39:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,468,1559545200"; d="scan'208";a="266796816"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by orsmga001.jf.intel.com with ESMTP; 04 Sep 2019 14:39:14 -0700
Date: Wed, 4 Sep 2019 14:39:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190904213914.GR13677@mdroper-desk.amr.corp.intel.com>
References: <20190904213419.27547-1-jose.souza@intel.com>
 <20190904213419.27547-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904213419.27547-4-jose.souza@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: protect access to DP_TP_* on
 non-dp
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMDQsIDIwMTkgYXQgMDI6MzQ6MTZQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBGcm9tOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KPiAKPiBEUF9UUF97Q1RMLFNUQVRVU30gc2hvdWxkIG9ubHkgYmUgcHJvZ3JhbW1l
ZCB3aGVuIHRoZSBlbmNvZGVyIGlzIGludGVsX2RwLgo+IENoZWNraW5nIGl0cyBjdXJyZW50IHVz
YWdlcyBpbnRlbF9kaXNhYmxlX2RkaV9idWYoKSBpcyB0aGUgb25seQo+IG9mZmVuZGVyLCB3aXRo
IG90aGVyIHBsYWNlcyBiZWluZyBwcm90ZWN0ZWQgYnkgY2hlY2tzIGxpa2UKPiBwaXBlX2NvbmZp
Zy0+ZmVjX2VuYWJsZSB0aGF0IGlzIG9ubHkgc2V0IGJ5IGludGVsX2RwLgo+IAo+IHYzIChKb3PD
qSk6Cj4gLSBVc2luZyBpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKCkgaW5zdGVhZCBvZiBpbnRl
bF9lbmNvZGVyX2lzX2RwKCkKPiAoVmlsbGUpCj4gCj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgfCAxMCArKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jCj4gaW5kZXggMWZlMGJmMDFlNTgwLi5lYzEzMmNkNmFkZDggMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBAQCAtMzQ2NSwxMCArMzQ2NSwxMiBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9kaXNhYmxlX2RkaV9idWYoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCj4gIAkJd2FpdCA9IHRydWU7Cj4gIAl9Cj4gIAo+IC0JdmFsID0gSTkxNV9SRUFE
KERQX1RQX0NUTChwb3J0KSk7Cj4gLQl2YWwgJj0gfihEUF9UUF9DVExfRU5BQkxFIHwgRFBfVFBf
Q1RMX0xJTktfVFJBSU5fTUFTSyk7Cj4gLQl2YWwgfD0gRFBfVFBfQ1RMX0xJTktfVFJBSU5fUEFU
MTsKPiAtCUk5MTVfV1JJVEUoRFBfVFBfQ1RMKHBvcnQpLCB2YWwpOwo+ICsJaWYgKGludGVsX2Ny
dGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpIHsKPiArCQl2YWwgPSBJOTE1X1JFQUQoRFBf
VFBfQ1RMKHBvcnQpKTsKPiArCQl2YWwgJj0gfihEUF9UUF9DVExfRU5BQkxFIHwgRFBfVFBfQ1RM
X0xJTktfVFJBSU5fTUFTSyk7Cj4gKwkJdmFsIHw9IERQX1RQX0NUTF9MSU5LX1RSQUlOX1BBVDE7
Cj4gKwkJSTkxNV9XUklURShEUF9UUF9DVEwocG9ydCksIHZhbCk7Cj4gKwl9Cj4gIAo+ICAJLyog
RGlzYWJsZSBGRUMgaW4gRFAgU2luayAqLwo+ICAJaW50ZWxfZGRpX2Rpc2FibGVfZmVjX3N0YXRl
KGVuY29kZXIsIGNydGNfc3RhdGUpOwo+IC0tIAo+IDIuMjMuMAo+IAoKLS0gCk1hdHQgUm9wZXIK
R3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudApJ
bnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
