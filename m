Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC90278F24
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 17:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B7A289CF3;
	Mon, 29 Jul 2019 15:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEA5989CF3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 15:25:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 07:32:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="370523873"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jul 2019 07:32:03 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6TEW2L2000905; Mon, 29 Jul 2019 15:32:02 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190729110449.23053-1-chris@chris-wilson.co.uk>
Date: Mon, 29 Jul 2019 16:32:02 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5o1boi5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190729110449.23053-1-chris@chris-wilson.co.uk>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use drm_i915_private directly
 from drv_get_drvdata()
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyOSBKdWwgMjAxOSAxMzowNDo0OSArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IEFzIHdlIHN0b3JlIGEgcG9pbnRlciB0byBp
OTE1IGluIHRoZSBkcnZkYXRhIGZpZWxkIChhcyB0aGUgcG9pbnRlciBpcyAgCj4gYm90aAo+IGFu
IGFsaWFzIHRvIHRoZSBkcm1fZGV2aWNlIGFuZCBkcm1faTkxNV9wcml2YXRlKSwgd2UgY2FuIHVz
ZSB0aGUgc3RvcmVkCj4gcG9pbnRlciBkaXJlY3RseSBhcyB0aGUgaTkxNSBkZXZpY2UuCj4KCmFz
IHdlIHN0b3JlIGRybV9kZXZpY2UqIHRoZXJlLCBsZXQncyBhbHdheXMgdHJlYXQgaXQgYXMgZHJt
X2RldmljZSoKd2UgYWxyZWFkeSBoYXZlIHByb3BlciBtYWdpYyB0aGF0IGRvZXMgcnVudGltZSBj
b252ZXJzaW9uIGF0IG5vIGNvc3QKCk1pY2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
