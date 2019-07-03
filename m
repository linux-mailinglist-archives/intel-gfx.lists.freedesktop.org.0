Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 312165E25F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 12:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843C66E11A;
	Wed,  3 Jul 2019 10:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7552F6E120
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 10:54:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 03:54:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="190996541"
Received: from cdsmith6-mobl2.ger.corp.intel.com (HELO [10.252.3.86])
 ([10.252.3.86])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2019 03:54:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
 <20190703091726.11690-8-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <6a173448-8353-4e01-506a-a08b783bd882@intel.com>
Date: Wed, 3 Jul 2019 11:53:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190703091726.11690-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/15] drm/i915: Mark up vma->active as safe
 for use inside shrinkers
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

T24gMDMvMDcvMjAxOSAxMDoxNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFNpbmNlIGEgc2hyaW5r
ZXIgbWF5IGJlIGZvcmNlZCB0byB3YWl0IG9uIEdQVSBhY3Rpdml0eSwKPiBpOTE1X2FjdGl2ZV93
YWl0KCZ2bWEtPmFjdGl2ZSkgbXVzdCBiZSBzYWZlIGZvciB1c2UgaW5zaWRlIGEgc2hyaW5rZXIs
Cj4gYW5kIHNvIGxldCdzIG1hcmsgdXAgdGhlIGxvY2sgYXMgYmVpbmcgYWNxdWlyZWQgYnkgdGhl
IHNocmlua2VyIHRvIGF2b2lkCj4gYW55IG5hc3R5IHN1cnByaXNlcyBjcmVlcGluZyBpbi4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
UmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
