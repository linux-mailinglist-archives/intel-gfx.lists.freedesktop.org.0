Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 092FDAE126
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 00:43:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E072389533;
	Mon,  9 Sep 2019 22:43:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05CF889533
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 22:43:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 15:43:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="185329215"
Received: from ssauty-mobl.ger.corp.intel.com (HELO [10.252.54.102])
 ([10.252.54.102])
 by fmsmga007.fm.intel.com with ESMTP; 09 Sep 2019 15:43:39 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190909093116.7747-1-lionel.g.landwerlin@intel.com>
 <20190909093116.7747-3-lionel.g.landwerlin@intel.com>
 <156806318637.28420.3737329524077129939@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <85754e89-d240-e406-1df1-e1da32e2d50f@intel.com>
Date: Tue, 10 Sep 2019 01:43:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156806318637.28420.3737329524077129939@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v16 02/13] drm/i915: add syncobj timeline
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

T24gMTAvMDkvMjAxOSAwMDowNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDktMDkgMTA6MzE6MDUpCj4+IHY5OiBBZnRlciBleHBsYW5hdGlv
bnMgb24KPj4gICAgICBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmkt
ZGV2ZWwvMjAxOS1BdWd1c3QvMjI5Mjg3Lmh0bWwKPj4gICAgICBkcm9wIHRoZSBvcmRlcmluZyBj
aGVjayBmcm9tIHY4IChMaW9uZWwpCj4gRGVzaWduaW5nIGFuIGludGVyZmFjZSB0byBiZSBhbnRp
cm9idXN0LiBVc2Vyc3BhY2Ugc2hvb3RpbmcgaXRzZWxmIGluCj4gdGhlIGZvb3QgaXMgZmluZTsg
dXNlcnNwYWNlIGJyZWFraW5nIHRoZSBrZXJuZWwgaW4gdGhlIHByb2Nlc3MsIG5vLgo+IC1DaHJp
cwo+CkhvdyBpcyB0aGF0IGJyZWFraW5nIHRoZSBrZXJuZWw/CgpBZGRpbmcgcG9pbnRzIG91dCBv
ZiBvcmRlciB0byB0aGUgdGltZWxpbmUganVzdCBsZWFkcyB0byBtb3JlIHdhaXRpbmcuCgoKLUxp
b25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
