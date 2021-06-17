Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B83483AB0F3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 12:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F46A6E8D9;
	Thu, 17 Jun 2021 10:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC146E8D6;
 Thu, 17 Jun 2021 10:07:35 +0000 (UTC)
IronPort-SDR: iP3uqxULu0vd8Nwh47IwzaxDC6yOIap6cUnzwOgVs7ZpQCJFB6MtGT1c0GAIbprWfYEpX/FzLr
 7Zio126ShvMw==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="186718326"
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="186718326"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 03:07:35 -0700
IronPort-SDR: yv6V61+V0GiwDP6Y60tb+NhiQ3lS34yWi8CuEBGdk8gqSQCKUaeEPCF2HAIQnwwVwkSoqYkujF
 dTd5PDEz3ciQ==
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="404892497"
Received: from vanderss-mobl.ger.corp.intel.com (HELO [10.249.254.193])
 ([10.249.254.193])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 03:07:34 -0700
To: Ramalingam C <ramalingam.c@intel.com>
References: <20210615113600.30660-1-thomas.hellstrom@linux.intel.com>
 <20210617095620.GA15664@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <ee87e13a-4025-5745-28cb-dfc3d170ec64@linux.intel.com>
Date: Thu, 17 Jun 2021 12:07:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210617095620.GA15664@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Perform execbuffer object locking
 as a separate step
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMTcvMjEgMTE6NTYgQU0sIFJhbWFsaW5nYW0gQyB3cm90ZToKPiBPbiAyMDIxLTA2LTE1
IGF0IDEzOjM2OjAwICswMjAwLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4gVG8gaGVscCBh
dm9pZCBldmljdGluZyBhbHJlYWR5IHJlc2lkZW50IGJ1ZmZlcnMgZnJvbSB0aGUgYmF0Y2ggd2Un
cmUKPj4gcHJvY2Vzc2luZywgcGVyZm9ybSBsb2NraW5nIGFzIGEgc2VwYXJhdGUgc3RlcC4KPj4K
PiBMb29rcyByZWFzb25hYmxlIHRvIG1lLgo+Cj4gUmV2aWV3ZWQtYnk6IFJhbWFsaW5nYW0gQyA8
cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPgo+ClRoYW5rcyBmb3IgcmV2aWV3aW5nIQoKL1Rob21h
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
