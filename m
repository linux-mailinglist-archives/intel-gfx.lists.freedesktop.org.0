Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F50636D3F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 09:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D44589829;
	Thu,  6 Jun 2019 07:21:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE748982F;
 Thu,  6 Jun 2019 07:21:45 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 00:21:44 -0700
X-ExtLoop1: 1
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jun 2019 00:21:43 -0700
Received: from ahiler-desk1.fi.intel.com (10.237.68.151) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 6 Jun 2019 08:21:42 +0100
Date: Thu, 6 Jun 2019 10:21:40 +0300
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <20190606072140.rgmp6twpi4z5mvjk@ahiler-desk1.fi.intel.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
 <11db9a1438142d413ad228e6d1953463dfbb9236.1559562608.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11db9a1438142d413ad228e6d1953463dfbb9236.1559562608.git.guillaume.tucker@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
User-Agent: NeoMutt/20180716
X-Originating-IP: [10.237.68.151]
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/4] gitlab-ci: add libatomic to
 Fedora docker image
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

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMTI6NTQ6NDhQTSArMDEwMCwgR3VpbGxhdW1lIFR1Y2tl
ciB3cm90ZToKPiBBZGQgbGliYXRvbWljIHRvIHRoZSBGZWRvcmEgZG9ja2VyIGltYWdlIHNvIGl0
IGNhbiBsaW5rIGJpbmFyaWVzIHRoYXQKPiB1c2UgX19hdG9taWNfKiBmdW5jdGlvbnMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIFR1Y2tlciA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJv
cmEuY29tPgo+IC0tLQo+ICBEb2NrZXJmaWxlLmZlZG9yYSB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0RvY2tl
cmZpbGUuZmVkb3JhIGIvRG9ja2VyZmlsZS5mZWRvcmEKPiBpbmRleCA2Njg2ZTU4NzYxM2QuLmM4
NGI0MTJiMDcyMyAxMDA2NDQKPiAtLS0gYS9Eb2NrZXJmaWxlLmZlZG9yYQo+ICsrKyBiL0RvY2tl
cmZpbGUuZmVkb3JhCj4gQEAgLTEsNyArMSw3IEBACj4gIEZST00gZmVkb3JhOjMwCj4gIAo+ICBS
VU4gZG5mIGluc3RhbGwgLXkgXAo+IC0JZ2NjIGZsZXggYmlzb24gbWVzb24gbmluamEtYnVpbGQg
eGRvdG9vbCBcCj4gKwlnY2MgZmxleCBiaXNvbiBsaWJhdG9taWMgbWVzb24gbmluamEtYnVpbGQg
eGRvdG9vbCBcCj4gIAkncGtnY29uZmlnKGxpYmRybSknIFwKPiAgCSdwa2djb25maWcocGNpYWNj
ZXNzKScgXAo+ICAJJ3BrZ2NvbmZpZyhsaWJrbW9kKScgXAoKUmV2aWV3ZWQtYnk6IEFya2FkaXVz
eiBIaWxlciA8YXJrYWRpdXN6LmhpbGVyQGludGVsLmNvbT4KCkkgd29uZGVyIGhvdyBkb2VzIHRo
ZSBsaWJhdG9taWMgZ2V0cyBpbnN0YWxsZWQgaW1wbGljaXRseSBpbiBEZWJpYW4uCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
