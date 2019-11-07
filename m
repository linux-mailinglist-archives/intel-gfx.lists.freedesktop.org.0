Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2012F29B8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 09:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4F06F38E;
	Thu,  7 Nov 2019 08:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E4806F38D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 08:50:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 00:50:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,277,1569308400"; d="scan'208";a="233189839"
Received: from thijsmet-mobl2.ger.corp.intel.com ([10.249.254.168])
 by fmsmga002.fm.intel.com with ESMTP; 07 Nov 2019 00:50:28 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191106011748.14419-1-chris@chris-wilson.co.uk>
 <20191106082633.5359-1-chris@chris-wilson.co.uk>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <41e06dc5-10f8-87ee-938f-c2916768c884@linux.intel.com>
Date: Thu, 7 Nov 2019 10:50:26 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191106082633.5359-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Wrap vm_mmap() around
 GEM objects
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAwNi8xMS8yMDE5IDEwLjI2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUHJvdmlkZSBhIHV0
aWxpdHkgZnVuY3Rpb24gdG8gY3JlYXRlIGEgdm1hIGNvcnJlc3BvbmRpbmcgdG8gYW4gbW1hcCgp
IG9mCj4gb3VyIGRldmljZS4gQW5kIHVzZSBpdCB0byBleGVyY2lzZSB0aGUgZXF1aXZhbGVudCBv
ZiB1c2Vyc3BhY2UKPiBwZXJmb3JtaW5nIGEgR1RUIG1tYXAgb2Ygb3VyIG9iamVjdHMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
Q2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KClJl
dmlld2VkLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5j
b20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
