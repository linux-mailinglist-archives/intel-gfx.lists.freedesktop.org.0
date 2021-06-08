Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A45E939F683
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 14:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D01D6E87F;
	Tue,  8 Jun 2021 12:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09A7B6E270;
 Tue,  8 Jun 2021 12:25:28 +0000 (UTC)
IronPort-SDR: GZGDE5ec6G2bWo7Faa5N2hnB3AySIs3yKtB28MuybSo64Oqg+mNyziSXziUcF4dQuJ0mOBmAZj
 oyGfwECtwy/Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="201812209"
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="201812209"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 05:25:23 -0700
IronPort-SDR: fL2z5j/mpwBU3+gEKQ9nBh6YSL4Ul0rPcQr1myqsJ4jkVjW3nvCICV5wggktbUGPoxHXvOlxnH
 jeumqi0vpA8Q==
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="485195612"
Received: from skallurr-mobl.ger.corp.intel.com (HELO [10.249.254.100])
 ([10.249.254.100])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 05:25:21 -0700
Message-ID: <d86d0a9749fe71aa91e80c8c83db65eebae6fe2b.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 08 Jun 2021 14:25:18 +0200
In-Reply-To: <20210608110254.169357-6-matthew.auld@intel.com>
References: <20210608110254.169357-1-matthew.auld@intel.com>
 <20210608110254.169357-6-matthew.auld@intel.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 5/7] drm/i915/ttm: remove node usage in
 our naming
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

T24gVHVlLCAyMDIxLTA2LTA4IGF0IDEyOjAyICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
Tm93IHRoYXQgdHRtX3Jlc291cmNlX21hbmFnZXIganVzdCByZXR1cm5zIGEgZ2VuZXJpYyB0dG1f
cmVzb3VyY2Ugd2UKPiBkb24ndCBuZWVkIHRvIHJlZmVyZW5jZSB0aGUgbW1fbm9kZSBzdHVmZiBh
bnltb3JlIHdoaWNoIG1vc3RseSBvbmx5Cj4gbWFrZXMgc2Vuc2UgZm9yIGRybV9tbV9ub2RlLiBJ
biB0aGUgbmV4dCBmZXcgcGF0Y2hlcyB3ZSB3YW50IHN3aXRjaAo+IG92ZXIKPiB0byB0aGUgdHRt
X2J1ZGR5X21hbiB3aGljaCBpcyBqdXN0IGFub3RoZXIgdHlwZSBvZiB0dG1fcmVzb3VyY2Ugc28K
PiByZWZsZWN0IHRoYXQgaW4gdGhlIG5hbWluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0
aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBUaG9tYXMgSGVs
bHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
