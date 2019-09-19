Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4BDB7BB4
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B83A6F86E;
	Thu, 19 Sep 2019 14:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E42C6F86B;
 Thu, 19 Sep 2019 14:09:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="186811793"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga008.fm.intel.com with ESMTP; 19 Sep 2019 07:09:14 -0700
Date: Thu, 19 Sep 2019 17:09:16 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190919140916.GC3723@intel.intel>
References: <20190911101501.7182-1-chris@chris-wilson.co.uk>
 <20190911101501.7182-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911101501.7182-3-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/3] kms_busy: Replace
 fiddling with hangcheck modparam with explicit fence
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBXZWQsIFNlcCAxMSwgMjAxOSBhdCAxMToxNTowMUFNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gVXNlIGFuIGV4cGxpY2l0IGZlbmNlIHRvIGNpcmN1bXZlbnQgdGhl
IFtpOTE1XSBHUFUgaGFuZyBkZXRlY3Rpb24gcmF0aGVyCj4gdGhhbiB0d2VhayB0aGUgaTkxNSBz
cGVjaWZpYyBtb2RwYXJhbSAoYW5kIHJlbW92ZSB0aGUgYXNzZXJ0aW9uIHRoYXQKPiBzdWNoIGEg
cGFyYW0gZXhpc3RzKS4gTm90ZSwgdGhhdCB3aXRoIGEgYml0IG1vcmUgd29yaywgdGhlIGZlbmNl
IGNvdWxkCj4gYmUgdXNlZCBiZSBkaXJlY3RseSByYXRoZXIgdGhhbiB2aWEgZGlydHlpbmcgdGhl
IGZiIHdpdGggYSBkdW1teWxvYWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cgpsb29rcyBPSywKClJldmlld2VkLWJ5OiBBbmRpIFNo
eXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KCkFuZGkKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
