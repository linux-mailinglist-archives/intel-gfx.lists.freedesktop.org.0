Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A243CF71B1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07DC6E893;
	Mon, 11 Nov 2019 10:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028A16E893
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:15:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 02:15:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="403766198"
Received: from mbawadek-mobl.ger.corp.intel.com (HELO [10.252.56.53])
 ([10.252.56.53])
 by fmsmga005.fm.intel.com with ESMTP; 11 Nov 2019 02:15:40 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191111095308.2550-1-lionel.g.landwerlin@intel.com>
 <157346673594.28106.4072719539305504906@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <9b85560b-bb22-fb1a-5862-573c75a19063@intel.com>
Date: Mon, 11 Nov 2019 12:15:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <157346673594.28106.4072719539305504906@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: always consider holding
 preemption a privileged op
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

T24gMTEvMTEvMjAxOSAxMjowNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTEtMTEgMDk6NTM6MDgpCj4+IFRoZSBvcmRlcmluZyBvZiB0aGUg
Y2hlY2tzIGluIHRoZSBleGlzdGluZyBjb2RlIGNhbiBsZWFkIHRvIGhvbGRpbmcKPj4gcHJlZW1w
dGlvbiBub3QgYmVpbmcgY29uc2lkZXJlZCBhcyBwcml2aWxlZ2VkIG9wLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+
Cj4+IEZpeGVzOiA5Y2QyMGVmNzgwM2MgKCJkcm0vaTkxNS9wZXJmOiBhbGxvdyBob2xkaW5nIHBy
ZWVtcHRpb24gb24gZmlsdGVyZWQgY3R4IikKPiBPb3BzLCB0aGF0J2xsIHRlYWNoIG1lIGZvciBu
b3QgbG9va2luZyBhdCB0aGUgcmVzdWx0IG1vcmUgY2FyZWZ1bGx5Lgo+IFJldmlld2VkLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtQ2hyaXMKCk15IGJhZC4u
LiBhbmQgdGhhbmtzIQoKClB1c2hlZC4KCgotTGlvbmVsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
