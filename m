Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5165887841
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 13:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7436ED5D;
	Fri,  9 Aug 2019 11:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BC26ED5D
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 11:11:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 04:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="169287379"
Received: from jmath3-mobl1.ger.corp.intel.com (HELO [10.252.5.86])
 ([10.252.5.86])
 by orsmga008.jf.intel.com with ESMTP; 09 Aug 2019 04:11:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190809110752.19763-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <c85dc7cd-770b-90b2-a876-99128512a964@intel.com>
Date: Fri, 9 Aug 2019 12:11:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190809110752.19763-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Free the imported shmemfs file
 for phys objects
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

T24gMDkvMDgvMjAxOSAxMjowNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IE1hdHRoZXcgc3BvdHRl
ZCB0aGF0IHdlIGxvc3QgdGhlIGZwdXQoKSBmb3IgcGh5cyBvYmplY3RzIG5vdyB0aGF0IHdlIGFy
ZQo+IG5vdCByZWx5aW5nIG9uIHRoZSBjb3JlIHRvIGNsZWFudXAgdGhlIEdFTSBvYmplY3QuIChG
b3IgdGhlIHJlY29yZCwgcGh5cwo+IG9iamVjdHMgaW1wb3J0IHRoZSBzaG1lbWZzIGZyb20gdGhl
aXIgb3JpZ2luYWwgc2V0IG9mIHBhZ2VzIGFuZCBrZWVwIGl0Cj4gdG8gcHJvdmlkZSBzd2FwIHNw
YWNlLCBidXQgd2UgbmV2ZXIgdHJhbnNmb3JtIGJhY2sgaW50byBhIHNobWVtIG9iamVjdC4pCj4g
Cj4gUmVwb3J0ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBG
aXhlczogMGMxNTlmZmVmNjI4ICgiZHJtL2k5MTUvZ2VtOiBEZWZlciBvYmotPmJhc2UucmVzdiBm
aW5pIHVudGlsIFJDVSBjYWxsYmFjayIpCj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
