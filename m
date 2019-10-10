Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F8BD2D0D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 16:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E026D6EB6B;
	Thu, 10 Oct 2019 14:58:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D24F6EB6B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 14:58:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 07:58:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="207205410"
Received: from creinhar-mobl.ger.corp.intel.com (HELO [10.252.42.40])
 ([10.252.42.40])
 by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2019 07:58:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191010072752.18495-1-chris@chris-wilson.co.uk>
 <20191010072752.18495-2-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <62bdbafd-6cbe-f24a-961a-1b7a61423d33@intel.com>
Date: Thu, 10 Oct 2019 17:58:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010072752.18495-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/perf: Store shortcut to
 intel_uncore
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

T24gMTAvMTAvMjAxOSAxMDoyNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IE5vdyB0aGF0IHdlIGhh
dmUgdGhlIGVuZ2luZSBzdG9yZWQgaW4gaTkxNV9wZXJmLCB3ZSBoYXZlIGEgbWVhbnMgb2YKPiBh
Y2Nlc3NpbmcgaW50ZWxfZ3Qgc2hvdWxkIHdlIHJlcXVpcmUgaXQuIEhvd2V2ZXIsIHdlIGFyZSBj
dXJyZW50bHkgb25seQo+IHVzaW5nIHRoZSBpbnRlbF9ndCB0byBmaW5kIHRoZSByaWdodCBpbnRl
bF91bmNvcmUsIHNvIHJlcGxhY2Ugb3VyCj4gaTkxNV9wZXJmLmd0IHBvaW50ZXIgd2l0aCB0aGUg
bW9yZSB1c2VmdWwgaTkxNV9wZXJmLnVuY29yZS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbjxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IExpb25lbCBMYW5kd2VybGluPGxp
b25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IC0tLQoKUmV2aWV3ZWQtYnk6IExpb25lbCBM
YW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
