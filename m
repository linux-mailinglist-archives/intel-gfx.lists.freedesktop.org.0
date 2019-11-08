Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB044F434F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 10:31:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 571796F8E5;
	Fri,  8 Nov 2019 09:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70EC56F8E5
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 09:31:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 01:31:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,280,1569308400"; d="scan'208";a="196851146"
Received: from robinyou-mobl.amr.corp.intel.com (HELO [10.255.230.200])
 ([10.255.230.200])
 by orsmga008.jf.intel.com with ESMTP; 08 Nov 2019 01:31:01 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191107213929.23286-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <0c0171c6-a2cd-cb6e-bcd0-6d954dfd0728@intel.com>
Date: Fri, 8 Nov 2019 09:31:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191107213929.23286-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Complete transition to
 a real struct file mock
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

T24gMDcvMTEvMjAxOSAyMTozOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFNpbmNlIGRybSBwcm92
aWRlZCB1cyB3aXRoIGEgcmVhbCBzdHJ1Y3QgZmlsZSB3ZSBjYW4gdXNlIGZvciBvdXIKPiBhbm9u
eW1vdXMgaW50ZXJuYWwgY2xpZW50cyAobW9ja19maWxlKSwgY29tcGxldGUgb3VyIHRyYW5zaXRp
b24gdG8gdXNpbmcKPiB0aGF0IGFzIHRoZSBwcmltYXJ5IGludGVyZmFjZSAoYW5kIG5vdCB0aGUg
bW9ja2VkIHVwIHN0cnVjdCBkcm1fZmlsZSB3ZQo+IHByZXZpb3VzIHdlcmUgdXNpbmcpLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
