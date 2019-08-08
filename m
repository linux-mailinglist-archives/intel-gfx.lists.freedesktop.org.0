Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9509A867CA
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 19:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138836E027;
	Thu,  8 Aug 2019 17:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F4C06E027
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 17:16:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 10:16:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="169053623"
Received: from jmath3-mobl1.ger.corp.intel.com (HELO [10.252.5.86])
 ([10.252.5.86])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2019 10:16:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190808165325.23298-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <6a7a7845-c826-b73d-2693-64cea67e6a5f@intel.com>
Date: Thu, 8 Aug 2019 18:16:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190808165325.23298-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fixup a missing
 legacy_idx
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

T24gMDgvMDgvMjAxOSAxNzo1MywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEdyciwgbWlzc2VkIG9u
ZS4gRm9yIHVzaW5nIHRoZSBsZWdhY3kgZW5naW5lIG1hcCwgd2Ugc2hvdWxkIHVzZQo+IGVuZ2lu
ZS0+bGVnYWN5X2lkeC4gSWRlYWxseSwgd2Ugc2hvdWxkIGtub3cgdGhlIGludGVsX2NvbnRleHQg
aW4gdGhlCj4gc2VsZnRlc3QgYW5kIGF2b2lkIGFsbCB0aGUgZmlkZGxpbmcgYXJvdW5kIHdpdGgg
dW53YW50ZWQgR0VNIGNvbnRleHRzLgo+IAo+IEZpeGVzOiBmMWM0ZDE1N2FiOWIgKCJkcm0vaTkx
NTogRml4IHVwIHRoZSBpbnZlcnNlIG1hcHBpbmcgZm9yIGRlZmF1bHQgY3R4LT5lbmdpbmVzW10i
KQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
