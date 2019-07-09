Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D53F6363C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4864589701;
	Tue,  9 Jul 2019 12:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19FF689701
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:53:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:53:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="188818082"
Received: from khraibi-mobl.ger.corp.intel.com (HELO [10.249.33.51])
 ([10.249.33.51])
 by fmsmga004.fm.intel.com with ESMTP; 09 Jul 2019 05:53:39 -0700
To: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
References: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
 <20190709123351.5645-10-lionel.g.landwerlin@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <069bb157-9efe-a55a-9ee6-23efd6bea8d6@intel.com>
Date: Tue, 9 Jul 2019 15:53:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709123351.5645-10-lionel.g.landwerlin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 09/13] drm/i915: add a new perf
 configuration execbuf parameter
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

T24gMDkvMDcvMjAxOSAxNTozMywgTGlvbmVsIExhbmR3ZXJsaW4gd3JvdGU6Cj4gICAKPiArc3Rh
dGljIGludCBlYl9vYV9jb25maWcoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gK3sKPiAr
CWludCByZXQ7Cj4gKwo+ICsJaWYgKCFlYi0+b2FfY29uZmlnKQo+ICsJCXJldHVybiAwOwo+ICsK
PiArCXJldCA9IGk5MTVfbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZlYi0+aTkxNS0+ZHJtKTsK
PiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKClRoaXMgaXMgYXNzdW1pbmcgdGhlIGxvY2sg
aXMgZHJvcHBlZCBmcm9tIHRoZSBjYWxsaW5nIGZ1bmN0aW9uLgoKSXQncyBub3QgYXQgdGhlIG1v
bWVudCwgYnV0IEkgZXhwZWN0IHlvdSdsbCBiZSBkb2luZyB0aGF0IHNvb24/CgoKLUxpb25lbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
