Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D6D8BB57
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 16:21:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8976E154;
	Tue, 13 Aug 2019 14:21:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A3F6E154;
 Tue, 13 Aug 2019 14:21:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 07:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,381,1559545200"; d="scan'208";a="178683674"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by orsmga003.jf.intel.com with ESMTP; 13 Aug 2019 07:20:59 -0700
Date: Tue, 13 Aug 2019 17:20:59 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190813142059.GA32007@intel.intel>
References: <20190813062016.7870-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813062016.7870-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/9] i915/gem_exec_schedule:
 Limit the plug to fit small rings
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

SGkgQ2hyaXMsCgpPbiBUdWUsIEF1ZyAxMywgMjAxOSBhdCAwNzoyMDowOEFNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gSWYgd2UgYXJlIG5vdCBydW5uaW5nIHdpdGggYSBzY2hlZHVsZXIs
IHdlIGFyZSB1c2luZyBhIGdsb2JhbCByaW5nYnVmZmVyCj4gd2hpY2ggbWF5IG5vdCBhY2NvbW1v
ZGF0ZSAxNiBleHRyYSBiYXRjaGVzLiBGb3J0dW5hdGVseSwgd2Ugb25seSBuZWVkCj4gb25lIHN1
Y2ggYmF0Y2ggdG8gYmxvY2sgdGhlIHN1Ym1pc3Npb24gcXVldWUgYXMgd2l0aG91dCBhIHNjaGVk
dWxlciwgaXQKPiBpcyBpbiBvcmRlciBzdWJtaXNzaW9uIChhbmQgc28gdGhlIGJhdGNoIGlzIGFm
dGVyIHRoZSBtYWluIHNldHVwCj4gYW55d2F5ISkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cgpsb29rcyBzdHJhaWdodCBmb3J3YXJk
IHRvIG1lLgoKUmV2aWV3ZWQtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgoK
QW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
