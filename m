Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C57885440
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 22:05:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D47A6E768;
	Wed,  7 Aug 2019 20:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE72D6E768
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 20:05:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 13:05:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="182382665"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Aug 2019 13:05:20 -0700
Date: Wed, 7 Aug 2019 16:21:29 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20190807202129.GD3842@intel.com>
References: <20190807170034.8440-1-michal.wajdeczko@intel.com>
 <20190807170034.8440-3-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807170034.8440-3-michal.wajdeczko@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/uc: HuC firmware can't be
 supported without GuC
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

T24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMDU6MDA6MjlQTSArMDAwMCwgTWljaGFsIFdhamRlY3pr
byB3cm90ZToKPiBUaGVyZSBpcyBubyBwb2ludCBpbiBzZWxlY3RpbmcgSHVDIGZpcm13YXJlIGlm
IEd1QyBpcyB1bnN1cHBvcnRlZAo+IG9yIGl0IHdhcyBhbHJlYWR5IGRpc2FibGVkLCBhcyB3ZSBu
ZWVkIEd1QyB0byBhdXRoZW50aWNhdGUgSHVDLgo+IAoKV2UgYXJlIGNhbGxpbmcgIGludGVsX3Vj
X2luaXQoKSBpcnJlc3BjdGl2ZSBvZiBpbnRlbF91Y19mZXRjaF9maXJtd2FyZXMoKSBpcwpzdWNj
ZXNzZnVsLiBJcyB0aGlzIG9rPwoKVGhhbmtzLApQcmF0aGFwCj4gV2hpbGUgYXJvdW5kLCBtYWtl
IHVjX2Z3X2luaXRfZWFybHkgd29yayB3aXRob3V0IGRpcmVjdCBhY2Nlc3MKPiB0byB3aG9sZSBp
OTE1LCBwYXNzIG9ubHkgbmVlZGVkIHBsYXRmb3JtL3JldiBpbmZvLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+
IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
