Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB79839F2CA
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 11:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8406EB8B;
	Tue,  8 Jun 2021 09:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 533FA6EB8A;
 Tue,  8 Jun 2021 09:48:25 +0000 (UTC)
IronPort-SDR: S/oGorTTDLD0KAoac144tfaR5KFo6X+cO1gFwxZp999zZtoBLLYK3QCvokqN/ijGKczi6PwKiZ
 sFOMdgaHLKFg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204778353"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204778353"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:48:24 -0700
IronPort-SDR: Db7BuuBv0ADafWu6YacLv14ugtwDctbhZ0lYhUVbCJa/UJ/pKmb4OvXuJf94PDXaFepzgUsbNc
 QLfdzYN5l8ag==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="447836635"
Received: from mkayyal-mobl.ger.corp.intel.com (HELO [10.249.254.115])
 ([10.249.254.115])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:48:23 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210608084428.142676-1-matthew.auld@intel.com>
 <20210608084428.142676-5-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <c940d31b-8ad7-9cb3-5931-6cee1ae26526@linux.intel.com>
Date: Tue, 8 Jun 2021 11:48:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210608084428.142676-5-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915/ttm: pass along the
 I915_BO_ALLOC_CONTIGUOUS
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvOC8yMSAxMDo0NCBBTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IEN1cnJlbnRseSB3ZSBq
dXN0IGlnbm9yZSB0aGUgSTkxNV9CT19BTExPQ19DT05USUdVT1VTIGZsYWcsIHdoaWNoIGlzCj4g
ZmluZSBzaW5jZSBldmVyeXRoaW5nIGlzIGFscmVhZHkgY29udGlndW91cyB3aXRoIHRoZSB0dG0g
cmFuZ2UgbWFuYWdlci4KPiBIb3dldmVyIGluIHRoZSBuZXh0IHBhdGNoIHdlIHdhbnQgdG8gc3dp
dGNoIG92ZXIgdG8gdGhlIHR0bSBidWRkeQo+IG1hbmFnZXIsIHdoZXJlIGFsbG9jYXRpb25zIGFy
ZSBieSBkZWZhdWx0IG5vdCBjb250aWd1b3VzLgo+Cj4gdjIoVGhvbWFzKToKPiAgICAgIC0gRm9y
d2FyZCBBTExPQ19DT05USUcgZm9yIGFsbCByZWdpb25zCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBUaG9tYXMg
SGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
