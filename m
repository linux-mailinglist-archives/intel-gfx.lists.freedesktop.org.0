Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 607374EB72
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 17:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AFB6E8C5;
	Fri, 21 Jun 2019 15:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36486E8D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 15:01:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 08:01:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,400,1557212400"; d="scan'208";a="335840331"
Received: from tlim24-mobl1.gar.corp.intel.com (HELO [10.252.23.133])
 ([10.252.23.133])
 by orsmga005.jf.intel.com with ESMTP; 21 Jun 2019 08:01:43 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190621130544.24226-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <c9be3e76-9c1b-5eb0-7702-4cbc91556538@intel.com>
Date: Fri, 21 Jun 2019 16:01:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190621130544.24226-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Remove waiting & retiring
 from shrinker paths
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjEvMDYvMjAxOSAxNDowNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IGk5MTVfZ2VtX3dhaXRf
Zm9yX2lkbGUoKSBhbmQgaTkxNV9yZXRpcmVfcmVxdWVzdHMoKSBpbnRyb2R1Y2UgYQo+IGRlcGVu
ZGVuY3kgb24gdGhlIHRpbWVsaW5lLT5tdXRleC4gVGhpcyBpcyBwcm9ibGVtYXRpYyBhcyB3ZSB3
YW50IHRvCj4gbGF0ZXIgcGVyZm9ybSBhbGxvY2F0aW9ucyB1bmRlcm5lYXRoIGk5MTVfYWN0aXZl
Lm11dGV4LCBmb3JtaW5nIGEgbGluawo+IGJldHdlZW4gdGhlIHNocmlua2VyLCB0aGUgdGltZWxp
bmUgYW5kIGFjdGl2ZSBtdXRleGVzLiBOaXAgdGhpcyBjeWNsZSBpbgo+IHRoZSBidWQgYnkgcmVt
b3ZpbmcgdGhlIGFjcXVpc2l0aW9uIG9mIHRoZSB0aW1lbGluZSBtdXRleCAoaS5lLgo+IHJldGly
aW5nKSBmcm9tIGluc2lkZSB0aGUgc2hyaW5rZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+UmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVs
ZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
