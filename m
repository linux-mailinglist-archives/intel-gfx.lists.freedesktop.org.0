Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 779D627C49
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 13:58:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B49989C3F;
	Thu, 23 May 2019 11:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93B4289C3F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 11:58:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 04:58:03 -0700
X-ExtLoop1: 1
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 23 May 2019 04:58:03 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 23 May 2019 04:58:03 -0700
Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
 fmsmsx115.amr.corp.intel.com (10.18.116.19) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 23 May 2019 04:58:03 -0700
Received: from shsmsx103.ccr.corp.intel.com ([169.254.4.70]) by
 shsmsx102.ccr.corp.intel.com ([169.254.2.249]) with mapi id 14.03.0415.000;
 Thu, 23 May 2019 19:58:01 +0800
From: "Ye, Tony" <tony.ye@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH 2/3] drm/i915/huc: Check HuC firmware status only once
Thread-Index: AQHVENDEIsv2FCZy0k6bnoTfDrTgDKZ3DfaAgAGN87s=
Date: Thu, 23 May 2019 11:58:01 +0000
Message-ID: <D6DFF214-15DC-459F-A23B-16D934136900@intel.com>
References: <20190522190057.848-1-michal.wajdeczko@intel.com>
 <20190522190057.848-3-michal.wajdeczko@intel.com>,
 <155855602378.28319.14504255049114851811@skylake-alporthouse-com>
In-Reply-To: <155855602378.28319.14504255049114851811@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/huc: Check HuC firmware status
 only once
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IOWcqCAyMDE55bm0NeaciDIz5pel77yM5LiK5Y2INDoxNO+8jENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPiDlhpnpgZPvvJoKPiAKPiBRdW90aW5nIE1pY2hhbCBXYWpk
ZWN6a28gKDIwMTktMDUtMjIgMjA6MDA6NTYpCj4+IER1cmluZyBkcml2ZXIgbG9hZCB3ZSBjaGVj
a2VkIHRoYXQgSHVDIGZpcm13YXJlIHdhcyB2ZXJpZmllZCwgYW5kIG9uY2UKPj4gdmVyaWZpZWQg
aXQgc3RheXMgdmVyaWZpZWQsIHNvIHRoZXJlIGlzIG5vIG5lZWQgdG8gY2hlY2sgdGhhdCBhZ2Fp
bi4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6
a29AaW50ZWwuY29tPgo+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4+IENjOiBUb255IFllIDx0b255LnllQGludGVsLmNvbT4KPiAKPiBNYWtlcyBzZW5zZSB0
byBtZSBhcyBwdXJlbHkgYSBjb2RlIG1vbmtleS4KPiAKPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gSSB3b3VsZCBsaWtlIGEgc2Vjb25k
IG9waW5pb24gZnJvbSBzb21lb25lIHdobyBrbm93cyB0aGUgaW5uYXJkcyBvZiB0aGUKPiBIdUMg
dG8gY29uZmlybSB0aGF0IGluZGVlZCBvbmNlIHZlcmlmaWVkLCBpdCByZW1haW5zIHZlcmlmaWVk
LiBBbmQgaWYgaXQKPiBjYW4gY2hhbmdlLCB3ZSBuZWVkIHRvIHJlcG9ydCB0aGUgY2hhbmdlIGlu
IHN0YXR1cyB0byB1c2Vyc3BhY2UgKG9yIHRoZXkKPiBqdXN0IGhhbmcgYW5kIHRoZSBncHUgKyBo
dWMgZ2V0cyByZXNldCkuCj4gLUNocmlzClVNRCBkb2VzbuKAmXQgYXV0aGVudGljYXRlIEh1Qy4g
SXQgb25seSByZWFkcyB0aGUgYXV0aGVudGljYXRpb24gc3RhdHVzLiBTbyBhcyBsb25nIGFzIEtN
RC9HdUMgdmVyaWZpZWQgaXQsIGl0IGtlZXBzIHZlcmlmaWVkLgpSZWdhcmRzLCAtVG9ueQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
