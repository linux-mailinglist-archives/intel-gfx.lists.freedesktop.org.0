Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEA03B1A8B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 14:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C737A6E8D4;
	Wed, 23 Jun 2021 12:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 640096E114;
 Wed, 23 Jun 2021 12:54:54 +0000 (UTC)
IronPort-SDR: x8oNyxZFcaVLo95d/ZDi0POEWpQZx26zP0LaLpCygeTjPzIThSxNh1VuPbE/Mah0FMtjxBId60
 aAKcve+JoQCw==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="292880355"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="292880355"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 05:54:53 -0700
IronPort-SDR: 006c96UoGGBg3gLBQ2fTS0KJArGTyPmhFwPIBLlnlCtlIAPyTKSBhQVfOVpTErCsEgtb7BHUdf
 KKCQaNkSODsw==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="417716448"
Received: from asortkjx-mobl.ger.corp.intel.com (HELO [10.249.254.136])
 ([10.249.254.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 05:54:52 -0700
Message-ID: <a6682e3bad8e71a2e92a8e6694844e35b5133b04.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 14:54:50 +0200
In-Reply-To: <20210623112637.266855-2-matthew.auld@intel.com>
References: <20210623112637.266855-1-matthew.auld@intel.com>
 <20210623112637.266855-2-matthew.auld@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: support forcing the page size
 with lmem
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA2LTIzIGF0IDEyOjI2ICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
Rm9yIHNvbWUgc3BlY2lhbGlzZWQgb2JqZWN0cyB3ZSBtaWdodCBuZWVkIHNvbWV0aGluZyBsYXJn
ZXIgdGhhbiB0aGUKPiByZWdpb25zIG1pbl9wYWdlX3NpemUgZHVlIHRvIHNvbWUgaHcgcmVzdHJp
Y3Rpb24sIGFuZCBzbGlnaHRseSBtb3JlCj4gaGFpcnkgaXMgbmVlZGluZyBzb21ldGhpbmcgc21h
bGxlciB3aXRoIHRoZSBndWFyYW50ZWUgdGhhdCBzdWNoCj4gb2JqZWN0cwo+IHdpbGwgbmV2ZXIg
YmUgaW5zZXJ0ZWQgaW50byBhbnkgR1RULCB3aGljaCBpcyB0aGUgY2FzZSBmb3IgdGhlIHBhZ2lu
Zwo+IHN0cnVjdHVyZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgo+IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21h
cy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
