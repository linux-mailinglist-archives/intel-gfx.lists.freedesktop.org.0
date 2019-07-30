Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2E17B53D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 23:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 505386E623;
	Tue, 30 Jul 2019 21:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08ED56E623
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 21:48:53 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A644C206E0;
 Tue, 30 Jul 2019 21:48:52 +0000 (UTC)
Date: Tue, 30 Jul 2019 17:48:51 -0400
From: Sasha Levin <sashal@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Message-ID: <20190730214851.GF29162@sasha-vm>
References: <20190717223451.2595-1-dhinakaran.pandiyan@intel.com>
 <20190719004526.B0CC521850@mail.kernel.org>
 <CABVU7+sbS8mw+4O1Ct8EY_5cj+fnmNFzyd6_=v2_RmCgBRA13g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABVU7+sbS8mw+4O1Ct8EY_5cj+fnmNFzyd6_=v2_RmCgBRA13g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1564523332;
 bh=Gkgsgkc+pagnnDyvApbeJ+bgOv+hO1UoqiR4qAYPhkU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kvKmYr04b4/dk0cI4cZDA34aJY67y7difyG6hWeCjteBWGdG27tBrq/Af/GHFWHAa
 3XV7KGD8ymJ8JzhGEpYbjTQ40ilfnlUyUwxPdFUYj36j9R0rn+bnI4WGEMSvyFsedw
 zmgowBbkcs6/Vts+ugiVY+dvua54Sx0wH9eTUiiw=
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>, stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDE6NDI6NDVQTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+SGkgU2FzaGEsCgpIZWxsbyEKCj5PbiBUaHUsIEp1bCAxOCwgMjAxOSBhdCA1OjQ1IFBN
IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4+Cj4+IEhpLAo+Pgo+PiBb
VGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCj4KPldoZXJlIGRpZCB5b3UgZ2V0IHRoaXMgcGF0
Y2ggZnJvbT8gU2luY2Ugc3RhYmxlIG5lZWRzIHBhdGNoZXMgbWVyZ2VkCgpUaGlzIGJvdCBncmFi
cyB0aGVtIGZyb20gdmFyaW91cyBtYWlsaW5nIGxpc3RzLgoKPm9uIExpbnVzIHRyZWUsCj5zaG91
bGRuJ3QgeW91ciBzY3JpcHRzIHJ1biB0byB0cnkgYmFja3BvcnRpbmcgb25seSBwYXRjaGVzIGZy
b20gdGhlcmU/CgpUaGVyZSdzIGEgbm90ZSBhIGZldyBsaW5lcyBkb3duIHRoYXQgc2F5czoKCiAg
ICAiTk9URTogVGhlIHBhdGNoIHdpbGwgbm90IGJlIHF1ZXVlZCB0byBzdGFibGUgdHJlZXMgdW50
aWwgaXQgaXMgdXBzdHJlYW0uIgoKT3RoZXJ3aXNlLCBubywgdGhlcmUncyBubyBydWxlIHRoYXQg
c2F5cyB3ZSBjYW4ndCBsb29rIGF0IHBhdGNoZXMgYmVmb3JlCnRoZXkgYXJlIHVwc3RyZWFtLiBX
ZSBjYW4ndCBxdWV1ZSB0aGVtIHVwLCBidXQgd2Ugc3VyZSBjYW4gcG9rZSB0aGVtLgoKVGhlIHJl
YXNvbmluZyBiZWhpbmQgdGhpcyBpcyB0aGF0IGl0J3MgZWFzaWVyIHRvIGdldCByZXBsaWVzIChh
bmQKYmFja3BvcnRzKSBmcm9tIGZvbGtzIHdobyBhcmUgYWN0aXZlbHkgd29ya2luZyBvbiB0aGUg
cGF0Y2ggbm93LCByYXRoZXIKdGhhbiBhIGZldyB3ZWVrcyBsYXRlciB3aGVuIEdyZWcgc2VuZHMg
aGlzICJGQUlMRUQ6IiBtYWlscyBhbmQgZ2V0cwppZ25vcmVkIGJlY2F1c2Ugc2FpZCBmb2xrcyBo
YXZlIG1vdmVkIG9uLgoKLS0KVGhhbmtzLApTYXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
