Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80731A2893
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 23:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADF06E1CF;
	Thu, 29 Aug 2019 21:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A06D6E1CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 21:02:08 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08C7722CEA;
 Thu, 29 Aug 2019 21:02:07 +0000 (UTC)
Date: Thu, 29 Aug 2019 17:02:07 -0400
From: Sasha Levin <sashal@kernel.org>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20190829210207.GM5281@sasha-vm>
References: <20190828210209.10541-1-rodrigo.vivi@intel.com>
 <d7faaa1c-362f-ce9e-bbc9-adb5a7400b1f@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7faaa1c-362f-ce9e-bbc9-adb5a7400b1f@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1567112528;
 bh=ftJZBzA6hYRVIkis6C2CaXGLjNl+htDkPqdlkxxwW04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QKWteuAUv7UjTp3m1u0QHzl6mjKI0adY6Y1bBi2Anv2A9q4GPyv/fhPi1jE42rpdl
 0yTVQXMB34/is1oq83yqDG3/e9kwpJ//F6TKMlb8iG+EedNdXCTqgheg1+t/nbTvwe
 LByASt7PukW2C4v15TLMjiahDlejK78UTisqWU6M=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix broadwell EU computation
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMTI6MjI6MjdBTSArMDMwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj5PbiAyOS8wOC8yMDE5IDAwOjAyLCBSb2RyaWdvIFZpdmkgd3JvdGU6Cj4+RnJv
bTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+Pgo+
PmNvbW1pdCA2YTY3YTIwMzY2Zjg5NGMxNzI3MzRmMjhjNTY0NmJkYmU0OGE0NmUzIHVwc3RyZWFt
Lgo+Pgo+PnN1YnNsaWNlX21hc2sgaXMgYW4gYXJyYXkgaW5kZXhlZCBieSBzbGljZSwgbm90IHN1
YnNsaWNlLgo+Pgo+PlNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5s
YW5kd2VybGluQGludGVsLmNvbT4KPj5GaXhlczogOGNjNzY2OTM1NTEzNmYgKCJkcm0vaTkxNTog
c3RvcmUgYWxsIHN1YnNsaWNlIG1hc2tzIikKPj5CdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4NzEyCj4+UmV2aWV3ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PlJldmlld2VkLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pkxpbms6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE4MTExMjEyMzkzMS4yODE1LTEtbGlvbmVs
LmcubGFuZHdlcmxpbkBpbnRlbC5jb20KPj4oY2hlcnJ5IHBpY2tlZCBmcm9tIGNvbW1pdCA2M2Fj
MzMyOGYwZDFkMzdmMjg2ZTM5N2IxNGQ5NTk2ZWQwOWQ3Y2E1KQo+PlNpZ25lZC1vZmYtYnk6IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPj5DYzogPHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgNC4xNwo+Cj4KPlJvZHJpZ28gcG9pbnRlZCBvdXQgSSBm
b3Jnb3QgdGhlIENjOiB0YWcgd2hpY2ggaXMgd2h5IHRoaXMgZGlkbid0IG1ha2UgCj5pdCB0byBz
dGFibGUuCj4KPlRoZSBzYW1lIGJ1ZyBzaG93ZWQgdXAgb24gYSBDZW50T1Mga2VybmVsIDogCj5o
dHRwczovL2dpdGh1Yi5jb20vaW50ZWwvY29tcHV0ZS1ydW50aW1lL2lzc3Vlcy8yMDAKCkkganVz
dCBxdWV1ZWQgdGhlIHVwc3RyZWFtIHBhdGNoIGZvciA0LjE5LCB0aGFua3MhCgotLQpUaGFua3Ms
ClNhc2hhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
