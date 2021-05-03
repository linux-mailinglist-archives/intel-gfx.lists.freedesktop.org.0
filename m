Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1551371F04
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 19:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 820F96E153;
	Mon,  3 May 2021 17:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC076E153
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 17:55:56 +0000 (UTC)
IronPort-SDR: NxGac5fGqaIIFhVOVHQb26XIjBpIMaigVCy59qGy9mhf6/cJCuXo8/i0rDciugrH9uvzGNcg/H
 D+1iCm2NwXNQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="184939218"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="184939218"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:55:55 -0700
IronPort-SDR: hZm1/JRNKBALkkP1xQ9gokKsEr/0/uZ+WmEaNBn+bDg6IjpZWhQrlFr0ps1hESfs78A/BQyk+z
 YPQVhR7e4Huw==
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="432855150"
Received: from tbashir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:55:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210430153444.29270-1-ville.syrjala@linux.intel.com>
Date: Mon, 03 May 2021 20:55:51 +0300
Message-ID: <87tunjzopk.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915: cdclk cleanups
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAzMCBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBBIGZldyBlYXN5IGNsZWFudXBzIHRvIHRoZSBjZGNsayBjb2Rl
LgoKT24gdGhlIHNlcmllcywKClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgoKCj4KPiBWaWxsZSBTeXJqw6Rsw6QgKDUpOgo+ICAgZHJtL2k5MTU6IEV4dHJh
Y3Qgc29tZSBoZWxwZXJzIHRvIGNvbXB1dGUgY2RjbGsgcmVnaXN0ZXIgdmFsdWVzCj4gICBkcm0v
aTkxNTogVXNlIGludGVsX2RlX3JtdygpIGluIGJkdyBjZGNsayBwcm9ncmFtbWluZwo+ICAgZHJt
L2k5MTU6IFVzZSBpbnRlbF9kZV9ybXcoKSBpbiBza2wgY2RjbGsgcHJvZ3JhbW1pbmcKPiAgIGRy
bS9pOTE1OiBVc2UgaW50ZWxfZGVfcm13KCkgaW4gYnh0L2dsay9jbmwrIGNkY2xrIHByb2dyYW1t
aW5nCj4gICBkcm0vaTkxNTogVXNlIGludGVsX2RlX3dhaXRfZm9yXyooKSBpbiBjbmwrIGNkY2xr
IHByb2dyYW1taW5nCj4KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5jIHwgMjM4ICsrKysrKysrKy0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTA2IGlu
c2VydGlvbnMoKyksIDEzMiBkZWxldGlvbnMoLSkKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3Bl
biBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
