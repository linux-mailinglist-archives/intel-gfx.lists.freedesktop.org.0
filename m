Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0122436085C
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 13:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0215C6EA3D;
	Thu, 15 Apr 2021 11:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3E726E1B4;
 Thu, 15 Apr 2021 11:35:42 +0000 (UTC)
IronPort-SDR: s10c9YrVV4u+eNLhSbprhvf/XkavzCegtVLIvbXfKYNB9cHwCQLkkN0C5zTDB1hUzh7MkIHKeF
 wLVzVfMci0bQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="181959210"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="181959210"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 04:35:38 -0700
IronPort-SDR: m5DYHwcPxxTzC5HeI5oz9IdVfO2OppR1lOhEtXHeM2GBGpZng+I9icn9WQWLStVAowqlX8NoTU
 9IJkCX65MurQ==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="418712572"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.19.111])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 04:35:37 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>
Date: Thu, 15 Apr 2021 13:35:34 +0200
Message-ID: <4392350.LvFx2qVVIh@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <8be9557312e7cfb27738766dcfbc498d1e0e10b5.camel@linux.intel.com>
References: <20210408083157.23014-1-janusz.krzysztofik@linux.intel.com>
 <8be9557312e7cfb27738766dcfbc498d1e0e10b5.camel@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] tests/core_hotunplug: Add perf
 health check
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gxZtyb2RhLCAxNCBrd2lldG5pYSAyMDIxIDExOjUwOjEwIENFU1QgTWFyY2luIEJlcm5hdG93
aWN6IHdyb3RlOgo+IE9uIFRodSwgMjAyMS0wNC0wOCBhdCAxMDozMSArMDIwMCwgSmFudXN6IEty
enlzenRvZmlrIHdyb3RlOgo+ID4gU29tZXRpbWVzIENJIHJlcG9ydHMgc2tpcHMgb2YgcGVyZiBz
dWJ0ZXN0cyB3aGVuIHJ1biBzdWJzZXF1ZW50bHkKPiA+IGFmdGVyCj4gPiBjb3JlX2hvdHVucGx1
Zy4gIFRoYXQgbWF5IGJlIGFuIGluZGljYXRpb24gb2YgaXNzdWVzIHdpdGggcmVzdG9yaW5nCj4g
PiBkZXZpY2UgcGVyZiBmZWF0dXJlcyBvbiBkcml2ZXIgKGhvdClyZWJpbmQuCj4gPiAKPiA+IERl
dGVjdCBkZXZpY2UgcGVyZiBzdXBwb3J0IGF0IHRlc3Qgc3RhcnQgYW5kIGNoZWNrIGlmIHN0aWxs
IGF2YWlsYWJsZQo+ID4gYWZ0ZXIgZHJpdmVyIHJlYmluZC4gIElmIHRoYXQgZmFpbHMsIGEgcG9z
dC1zdWJ0ZXN0IGRldmljZSByZWNvdmVyeQo+ID4gc3RlcCByZXN0b3JlcyB0aGUgZGV2aWNlIHBl
cmYgc3VwcG9ydCBzbyBubyBzdWJzZXF1ZW50bHkgZXhlY3V0ZWQKPiA+IHRlc3RzCj4gPiBhcmUg
YWZmZWN0ZWQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFu
dXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbQouLi4KPiBMR1RNLAo+IEFja2VkLWJ5OiBN
YXJjaW4gQmVybmF0b3dpY3ogPG1hcmNpbi5iZXJuYXRvd2ljekBsaW51eC5pbnRlbC5jb20+CgpU
aGFuayB5b3UgTWFyY2luLCBwdXNoZWQuCgpKYW51c3oKCj4gCj4gCj4gCgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
