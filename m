Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 669BB2783E9
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 11:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6327B6EC84;
	Fri, 25 Sep 2020 09:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3E96EC83;
 Fri, 25 Sep 2020 09:25:34 +0000 (UTC)
IronPort-SDR: QaaoZKOykxukKuSy0QUOB+rGxXLjyhSLu5jjwtalqnaOqO+O/FHkMaB8D1GdaBO3WFDVVlIBDF
 kbreCEjQBcjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="140894587"
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="140894587"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 02:25:34 -0700
IronPort-SDR: xEsRrprn87w6fr6MLb9ZVkmHlH94C3vApTY8esWOV6xQzhcZARbxrJpFAuIQymygYr0lYkSpJC
 6+7wuIzpqrAw==
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="512758054"
Received: from lewando-mobl2.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.27.118])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 02:25:33 -0700
Date: Fri, 25 Sep 2020 11:25:29 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200925092529.GA55357@zkempczy-mobl2>
References: <20200925084148.351563-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200925084148.351563-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib: Only avoid relocations with
 full-ppgtt
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMjUsIDIwMjAgYXQgMDk6NDE6NDhBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFdlIGNhbiBvbmx5IGFzc2lnbmVkIHJhbmRvbSBhZGRyZXNzZXMgd2l0aCBpbXB1bml0
eSBpZiB3ZSBrbm93IHdlIGhhdmUKPiBjb21wbGV0ZSBjb250cm9sIG92ZXIgdGhlIHBwR1RULiBJ
ZiB0aGUgcHBHVFQgaXMgc2hhcmVkLCBlaXRoZXIgYWxpYXNlZAo+IHdpdGggdGhlIGdsb2JhbCBH
VFQgb3Igc2ltcGx5IHRoZSBnbG9iYWwgR1RUIG9uIGFuY2llbnQgSFcsIHRoZW4gd2UgaGF2ZQo+
IHRvIGJlIGNhcmVmdWwgaW4gY2FzZSB0aGV5IGFyZSBvYmplY3RzIGFscmVhZHkgZml4ZWQgaW4g
cGxhY2UgaW5zaWRlIHRoZQo+IEdUVCwgZS5nLiBhY3RpdmUgZnJhbWVidWZmZXJzLiBBcyB0aGUg
cmVsb2NhdGlvbiBjb2RlIGlzIHN0aWxsCj4gYXZhaWxhYmxlLCBvbmx5IGVuZm9yY2Ugbm8tcmVs
b2NhdGlvbnMgYnkgZGVmYXVsdCB3aGVuIHRoZSBjb250ZXh0IGhhcwo+IGl0cyBvd24gcHBHVFQu
Cj4gCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0v
aXNzdWVzLzI0OTEKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiBDYzogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5
bnNraUBpbnRlbC5jb20+Cj4gLS0tCj4gIGxpYi9pbnRlbF9iYXRjaGJ1ZmZlci5jIHwgMiArLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvbGliL2ludGVsX2JhdGNoYnVmZmVyLmMgYi9saWIvaW50ZWxfYmF0Y2hidWZmZXIu
Ywo+IGluZGV4IGJlNzY0NjQ2ZS4uNDJkN2NkMjUxIDEwMDY0NAo+IC0tLSBhL2xpYi9pbnRlbF9i
YXRjaGJ1ZmZlci5jCj4gKysrIGIvbGliL2ludGVsX2JhdGNoYnVmZmVyLmMKPiBAQCAtMTMwNiw3
ICsxMzA2LDcgQEAgX19pbnRlbF9iYl9jcmVhdGUoaW50IGk5MTUsIHVpbnQzMl90IHNpemUsIGJv
b2wgZG9fcmVsb2NzKQo+ICAgKi8KPiAgc3RydWN0IGludGVsX2JiICppbnRlbF9iYl9jcmVhdGUo
aW50IGk5MTUsIHVpbnQzMl90IHNpemUpCj4gIHsKPiAtCXJldHVybiBfX2ludGVsX2JiX2NyZWF0
ZShpOTE1LCBzaXplLCBmYWxzZSk7Cj4gKwlyZXR1cm4gX19pbnRlbF9iYl9jcmVhdGUoaTkxNSwg
c2l6ZSwgIWdlbV91c2VzX2Z1bGxfcHBndHQoaTkxNSkpOwo+ICB9Cj4gIAo+ICAvKioKPiAtLSAK
PiAyLjI4LjAKCklmIHdlIHdvbid0IGVuZm9yY2UgRVhFQ19PQkpFQ1RfUElOTkVEIGFuZCBzZXQg
STkxNV9FWEVDX05PX1JFTE9DIGZvciBleGVjYnVmCnN0aWxsIGRyaXZlciB3aWxsIHRyeSB0byB1
c2Ugb2Zmc2V0cyBjb25maWd1cmVkIGluIHRoZSBvYmplY3RzIGFycmF5PyBJIHRob3VnaHQKTk9f
UkVMT0MgKyAhUElOTkVEIHdpbGwgcmVsb2NhdGUgbm90IHByb3Blcmx5IGNvbmZpZ3VyZWQgb2Jq
ZWN0cyBidXQgSSdtIGxpa2VseQp3cm9uZy4gSSBkb24ndCBoYXZlIG11Y2ggZXhwZXJpZW5jZSB3
aXRoICFwcGd0dCB0YWJsZXMgYnV0IGlmIHRoZXkgYXJlIHNoYXJlZApJIGd1ZXNzIHdlIGNhbiBy
ZWx5IG9uIGtlcm5lbCByZWxvY2F0aW9ucyBvbmx5LiBTbwoKUmV2aWV3ZWQtYnk6IFpiaWduaWV3
IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
