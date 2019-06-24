Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6ED518DA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 18:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CE889CE1;
	Mon, 24 Jun 2019 16:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A30C899D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 16:40:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 09:40:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,412,1557212400"; d="scan'208";a="182669566"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 24 Jun 2019 09:40:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2019 19:40:36 +0300
Date: Mon, 24 Jun 2019 19:40:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190624164036.GX5942@intel.com>
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
 <20190619180312.31817-5-ville.syrjala@linux.intel.com>
 <156096850888.664.14223582224163086211@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156096850888.664.14223582224163086211@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/sdvo: Reduce the size of the
 on stack buffers
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgMDc6MjE6NDhQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0wNi0xOSAxOTowMzoxMSkKPiA+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAK
PiA+IFRoZSBzdHJpbmdzIHdlIHdhbnQgdG8gcHJpbnQgdG8gdGhlIG9uIHN0YWNrIGJ1ZmZlcnMg
c2hvdWxkCj4gPiBiZSBubyBtb3JlIHRoYW4KPiA+IDggKiAzICsgc3RybGVuKCIoR0VUX1NDQUxF
RF9IRFRWX1JFU09MVVRJT05fU1VQUE9SVCkiKSArIDEgPSA2MQo+ID4gYnl0ZXMuIFNvIGxldCdz
IHNocmluayB0aGUgYnVmZmVycyBkb3duIHRvIDY0IGJ5dGVzLgo+ID4gCj4gCj4gbWF4IGFyZ3Nf
bGVuIGRvZXMgc2VlbSB0byA4LCBhbmQgaXQgZ2V0cyBwYWRkZWQgb3V0IHRvIDguCj4gCj4gPiBB
bHNvIHN3aXRjaCB0aGUgQlVHX09OKClzIHRvIFdBUk5fT04oKXMgaWYgSSBtYWRlIGEgbWlzdGFr
ZSBpbgo+ID4gbXkgYXJpdGhtZW50aWMuCj4gCj4gV2l0aCB0aGUgY29tbWFuZCBuYW1lIG1hY3Jv
LCBjb3VsZCBpdCBub3QgZG8gc29tZSB0aGluZyBsaWtlCj4gQlVJTERfQlVHX09OKHNpemVvZigj
Y21kKSA+IERCR19MRU4pID8KCkkgY291bGRuJ3QgdGhpbmsgb2YgYSB3YXkgdG8gZG8gdGhhdCB3
aXRoIHRoZSBjdXJyZW50IHN0cnVjdAppbml0aWFsaXphdGlvbiwgYnV0IHdlIGNvdWxkIGJvcnJv
dyB0aGUgSTkxNV9QQVJBTVNfRk9SX0VBQ0goKQp0cmljayBoZXJlLiBOb3Qgc3VyZSBpdCdzIHdv
cnRoIHRoZSBoYXNzbGUgdGhvdWdoLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
