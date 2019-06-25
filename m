Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9B554F30
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 14:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A535A89DFB;
	Tue, 25 Jun 2019 12:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C5A389DFB
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 12:46:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 05:46:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="169767088"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 25 Jun 2019 05:46:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Jun 2019 15:46:49 +0300
Date: Tue, 25 Jun 2019 15:46:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190625124649.GZ5942@intel.com>
References: <20190621020132.1164-5-matthew.d.roper@intel.com>
 <20190621140839.21448-1-matthew.d.roper@intel.com>
 <4e548ac938458d8e5a21817584272f6d10b843b8.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e548ac938458d8e5a21817584272f6d10b843b8.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gen11: Start distinguishing
 'phy' from 'port'
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBKdW4gMjIsIDIwMTkgYXQgMTI6MjQ6MTBBTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gRnJpLCAyMDE5LTA2LTIxIGF0IDA3OjA4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3Rl
Ogo+ID4gQEAgLTI5MTIsMTggKzI5MjAsMTkgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Nsa19k
aXNhYmxlKHN0cnVjdAo+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiA+ICB7Cj4gPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5k
ZXYpOwo+ID4gIAllbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7Cj4gPiArCWVudW0gcGh5
IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBwb3J0KTsKPiA+ICAKPiA+ICAJaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKPiA+IC0JCWlmICghaW50ZWxfcG9ydF9pc19j
b21ib3BoeShkZXZfcHJpdiwgcG9ydCkpCj4gPiAtCQkJSTkxNV9XUklURShERElfQ0xLX1NFTChw
b3J0KSwKPiA+IERESV9DTEtfU0VMX05PTkUpOwo+ID4gKwkJaWYgKCFpbnRlbF9waHlfaXNfY29t
Ym8oZGV2X3ByaXYsIHBoeSkpCj4gPiArCQkJSTkxNV9XUklURShERElfQ0xLX1NFTChwaHkpLCBE
RElfQ0xLX1NFTF9OT05FKTsKPiAKPiAKPiBERElfQ0xLX1NFTCgpIHNldHMgdGhlIGNsb2NrIHRv
IERESSBzbyBpdCBzaG91bGQgYmUgcG9ydC4KPiAKPiBTYW1lIGZvciB0aGUgcmVnaXN0ZXJzIGJl
bGxvdwoKSSBndWVzcyB0aGUgcm91Z2h0IGd1aWRlbGluZSBzaG91bGQgYmUgdGhlIHJlZ2lzdGVy
IG9mZnNldDoKCjB4NkN4eHggLyAweDE2eHh4eCAtPiBwaHkKZXZlcnl0aGluZyBlbHNlIC0+IHBv
cnQKCm9yIGF0IGxlYXN0IHRoYXQncyB0aGUgaW1wcmVzc2lvbiBJIGdvdCBmcm9tIHRoZSBxdWlj
ayByZWFkCm9mIHRoZSBzcGVjLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
