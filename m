Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C153B1D95
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 17:24:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00AE26E935;
	Wed, 23 Jun 2021 15:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8A946E935
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 15:24:25 +0000 (UTC)
IronPort-SDR: KNWRI332NYglKMRgGFtYT2xFZP0UZsjdM4OUyzURDzP1nOpoSLPfRy/JFM3CTWP2lQUccw4oiX
 sKzTtqlHisTA==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="228858527"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="228858527"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 08:24:25 -0700
IronPort-SDR: CZ5FdbsV0+zaBEqcylGRcBrf9JMMhF/bqxD2C/n6WcHkkKC5A0XG0p+mVkH592G/wWhiaxu/oE
 HIVBBQA6Bohg==
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="639487030"
Received: from bkuncer-mobl1.ger.corp.intel.com (HELO [10.249.254.243])
 ([10.249.254.243])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 08:24:24 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210623143411.293630-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <462c50ef-71fb-81fb-8358-d3c79deb493f@linux.intel.com>
Date: Wed, 23 Jun 2021 17:24:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210623143411.293630-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: fix static warning
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjMvMjEgNDozNCBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IHdhcm5pbmc6IHN5bWJv
bCAnaTkxNV9nZW1fdHRtX29ial9vcHMnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBz
dGF0aWM/Cj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+Cj4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0u
YyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+IGluZGV4IGM1ZGVi
OGI3MjI3Yy4uY2Y1NTQwYzE1MzdiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV90dG0uYwo+IEBAIC03MzAsNyArNzMwLDcgQEAgc3RhdGljIHU2NCBpOTE1X3R0bV9tbWFw
X29mZnNldChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ICAgCXJldHVybiBkcm1f
dm1hX25vZGVfb2Zmc2V0X2FkZHIoJm9iai0+YmFzZS52bWFfbm9kZSk7Cj4gICB9Cj4gICAKPiAt
Y29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2VtX3R0bV9vYmpfb3Bz
ID0gewo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVf
Z2VtX3R0bV9vYmpfb3BzID0gewo+ICAgCS5uYW1lID0gImk5MTVfZ2VtX29iamVjdF90dG0iLAo+
ICAgCS5mbGFncyA9IEk5MTVfR0VNX09CSkVDVF9IQVNfSU9NRU0sCj4gICAKClJldmlld2VkLWJ5
OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
