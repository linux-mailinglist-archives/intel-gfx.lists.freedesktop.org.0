Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACBE5BCC7
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC5C89B84;
	Mon,  1 Jul 2019 13:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC46189B84
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:22:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 06:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="314883103"
Received: from unknown (HELO [10.249.141.63]) ([10.249.141.63])
 by orsmga004.jf.intel.com with ESMTP; 01 Jul 2019 06:22:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-8-lionel.g.landwerlin@intel.com>
 <156198710761.1583.15878412115953089334@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <4d9b58dc-fb5b-5ae1-b05e-4801bdf54f08@intel.com>
Date: Mon, 1 Jul 2019 16:22:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156198710761.1583.15878412115953089334@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 07/11] drm/i915: add syncobj timeline
 support
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

T24gMDEvMDcvMjAxOSAxNjoxOCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDEgMTI6MzQ6MzMpCj4+ICsgICAgICAgICAgICAgICAvKgo+
PiArICAgICAgICAgICAgICAgICogRm9yIHRpbWVsaW5lIHN5bmNvYmpzIHdlIG5lZWQgdG8gcHJl
YWxsb2NhdGUgY2hhaW5zIGZvcgo+PiArICAgICAgICAgICAgICAgICogbGF0ZXIgc2lnbmFsaW5n
Lgo+PiArICAgICAgICAgICAgICAgICovCj4+ICsgICAgICAgICAgICAgICBpZiAocG9pbnQgIT0g
MCAmJiB1c2VyX2ZlbmNlLmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1NJR05BTCkgewo+PiArICAg
ICAgICAgICAgICAgICAgICAgICBmZW5jZXNbbl0uY2hhaW5fZmVuY2UgPQo+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGttYWxsb2Moc2l6ZW9mKCpmZW5jZXNbbl0uY2hhaW5fZmVu
Y2UpLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0ZQX0tFUk5F
TCk7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICghZmVuY2VzW25dLmNoYWluX2ZlbmNl
KSB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZG1hX2ZlbmNlX3B1dChmZW5j
ZSk7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZHJtX3N5bmNvYmpfcHV0KHN5
bmNvYmopOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IC1FTk9NRU07
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX0RFQlVHKCJVbmFibGUgdG8g
YWxsb2MgY2hhaW5fZmVuY2VcbiIpOwo+IFRoaXMgaXMgbGlrZSB0aHJvd2luZyBhIGdyZW5hZGUs
IHdhaXRpbmcgZm9yIHRoZSBleHBsb3Npb24sIGFuZCB0aGVuCj4gc2F5aW5nICJiYW5nIiB1bmRl
ciB5b3VyIGJyZWF0aC4gOikKPiAtQ2hyaXMKPgpJIGRvbid0IGdldCB5b3VyIHBvaW50IDopCgoK
LUxpb25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
