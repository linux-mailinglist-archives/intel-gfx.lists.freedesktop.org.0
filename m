Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 855C3109F60
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C54946E0D1;
	Tue, 26 Nov 2019 13:40:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3A86E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:40:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:40:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="202721002"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.158])
 by orsmga008.jf.intel.com with ESMTP; 26 Nov 2019 05:40:56 -0800
Date: Tue, 26 Nov 2019 15:40:56 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191126134056.GA1578@intel.intel>
References: <20191126100435.2636304-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126100435.2636304-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Manual rc6 entry upon parking
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBUdWUsIE5vdiAyNiwgMjAxOSBhdCAxMDowNDozNUFNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gTm93IHRoYXQgd2UgcmFwaWRseSBwYXJrIHRoZSBHVCB3aGVuIHRo
ZSBHUFUgaWRsZXMsIHdlIG9mdGVuIGZpbmQKPiBvdXJzZWx2ZXMgaWRsaW5nIGZhc3RlciB0aGFu
IHRoZSBSQzYgcHJvbW90aW9uIHRpbWVyLiBUaHVzIGlmIHdlIHRlbGwKPiB0aGUgR1BVIHRvIGVu
dGVyIFJDNiBtYW51YWxseSBhcyB3ZSBwYXJrLCB3ZSBjYW4gZG8gc28gcXVpY2tlciAoYnkKPiBh
cm91bmQgNTBtcywgaGFsZiBhbiBFSSBvbiBhdmVyYWdlKSBhbmQgbWFyZ2luYWxseSBpbmNyZWFz
ZSBvdXIKPiBwb3dlcnNhdmluZyBhY3Jvc3MgYWxsIGV4ZWNsaXN0cyBwbGF0Zm9ybXMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
Q2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgo+IENjOiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgoKbG9va3MgZ29vZCB0byBtZSwKClJldmVpd2VkLWJ5OiBBbmRpIFNoeXRp
IDxhbmRpLnNoeXRpQGludGVsLmNvbT4KClRoYW5rcywKQW5kaQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
