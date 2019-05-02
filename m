Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA5D11BDB
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51068896A5;
	Thu,  2 May 2019 14:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D98896A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:56:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 07:56:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="169962258"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 07:56:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Summers\, Stuart" <stuart.summers@intel.com>, "Ceraolo Spurio\,
 Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <4da88cb6088b36a51a05f55d9417f7d9700e0af1.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190501153450.30494-1-stuart.summers@intel.com>
 <20190501153450.30494-6-stuart.summers@intel.com>
 <c317779d-6a9e-1959-4aa4-bac720eb8ef2@intel.com>
 <4991fb9bebabff1f1abd194e4fe688fad35feb7b.camel@intel.com>
 <7584219d-2cea-14c1-abec-555d49910c91@intel.com>
 <970d6582f0c5a02c73fabd11631ebfec192b387e.camel@intel.com>
 <87muk5pbs0.fsf@intel.com>
 <4da88cb6088b36a51a05f55d9417f7d9700e0af1.camel@intel.com>
Date: Thu, 02 May 2019 17:58:42 +0300
Message-ID: <87v9ysoqcd.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Remove inline from sseu
 helper functions
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwMiBNYXkgMjAxOSwgIlN1bW1lcnMsIFN0dWFydCIgPHN0dWFydC5zdW1tZXJzQGlu
dGVsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCAyMDE5LTA1LTAyIGF0IDEwOjE1ICswMzAwLCBKYW5p
IE5pa3VsYSB3cm90ZToKPj4gQWNrZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4KPiBKYW5pLCBiYXNlZCBvbiBEYW5pZWxlJ3MgZmVlZGJhY2ssIEknbSBwbGFubmlu
ZyBvbiBzcXVhc2hpbmcgdGhpcyBwYXRjaAo+IHdpdGggdGhlIHBhdGNoIHRoYXQgbW92ZXMgdGhl
c2UgaGVscGVyIGZ1bmN0aW9ucyB0byBpbnRlbF9zc2V1LmguIEFueQo+IGlzc3VlIGtlZXBpbmcg
eW91ciBBY2sgaGVyZT8KCk5vbmUuCgpCUiwKSmFuaS4KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwg
T3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
