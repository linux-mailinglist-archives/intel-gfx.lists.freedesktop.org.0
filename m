Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF342D1A71
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 23:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28A86E146;
	Wed,  9 Oct 2019 21:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A43986E146
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 21:03:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 14:03:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="395149686"
Received: from jprisaca-mobl1.ger.corp.intel.com (HELO [10.252.54.254])
 ([10.252.54.254])
 by fmsmga006.fm.intel.com with ESMTP; 09 Oct 2019 14:03:49 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009203641.15477-1-chris@chris-wilson.co.uk>
 <c105543d-f396-cac7-2627-f5ca0ba664c3@intel.com>
 <157065432327.18808.4785516359627975462@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <2c818bdc-c83f-bd4d-7741-15f530be457c@intel.com>
Date: Thu, 10 Oct 2019 00:03:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157065432327.18808.4785516359627975462@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/perf: Disable rc6 only while
 OA is enabled
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

T24gMDkvMTAvMjAxOSAyMzo1MiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTAtMDkgMjE6NDY6NTYpCj4+IEhtbS4uLiBub3BlLCBzb3JyeS4K
Pj4KPj4gV2UnbGwgbG9vc2UgTk9BIGNvbmZpZ3VyYXRpb24gaWYgeW91IGRvIHRoYXQuCj4+IEFu
ZCB5b3UnbGwgaGF2ZSB0byByZXJ1biB0aGUgb2EgY29uZmlnIEJPIHByaW9yIHRvIGVuYWJsaW5n
Lgo+IElzIHRoYXQgbm90IHdvcnRoIGl0PyBNb3ZlIHRoZSBlbmFibGVfbWV0cmljX3NldC9kaXNh
YmxlX21ldHJpY19zZXQgdG8KPiBpOTE1X3BlcmZfZW5hYmxlX2xvY2tlZCBhcyB3ZWxsPwo+IC1D
aHJpcwo+Ckl0IHRha2VzIHNvbWUgdGltZSB0byBhcHBseSB0aGUgY29uZmlndXJhdGlvbiBzbyBu
b3QgcmVhbGx5IHdvcnRoIGl0LgpQbHVzIGVpdGhlciB5b3UgZG8gcGVyZiBxdWVyaWVzIGFuZCBh
cyBzb29uIGFzIHlvdSdyZSBmaW5pc2hlZCB5b3UgCnNodXRkb3duIE9BLCBvciB5b3UgbW9uaXRv
ciB0aGUgd2hvbGUgc3lzdGVtIGFuZCB0aGVuIHlvdSBqdXN0IGNhbid0IApoYXZlIFJDNiBraWNr
IGluLgoKVGhlIG9ubHkgcmVhbCB1c2UgY2FzZSBvZiB0aG9zZSBlbmFibGUvZGlzYWJsZSBpb2N0
bCBpcyB0byByZXNldCB0aGUgCmhlYWQvdGFpbCByZWdpc3RlciBvZiB0aGUgT0EgYnVmZmVyIGJl
Y2F1c2UgZGF0YSBoZWFkIHN0YXJ0ZWQgCm92ZXJ3cml0aW5nIHRoZSB0YWlsLgoKLUxpb25lbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
