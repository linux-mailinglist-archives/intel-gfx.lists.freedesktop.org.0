Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2496B016
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 21:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68E86E181;
	Tue, 16 Jul 2019 19:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87A66E0EB;
 Tue, 16 Jul 2019 19:52:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17351699-1500050 for multiple; Tue, 16 Jul 2019 20:52:32 +0100
MIME-Version: 1.0
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190716174331.7371-2-robdclark@gmail.com>
References: <20190716174331.7371-1-robdclark@gmail.com>
 <20190716174331.7371-2-robdclark@gmail.com>
Message-ID: <156330674940.9436.18083089508232951941@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 16 Jul 2019 20:52:29 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm: plumb attaching dev thru to
 prime_pin/unpin
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
Cc: Eric Biggers <ebiggers@google.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, Gerd Hoffmann <kraxel@redhat.com>,
 Emil Velikov <emil.velikov@collabora.com>, Rob Clark <robdclark@chromium.org>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>, amd-gfx@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Ben Skeggs <bskeggs@redhat.com>,
 Russell King <linux+etnaviv@armlinux.org.uk>, Dave Airlie <airlied@redhat.com>,
 Laura Abbott <labbott@redhat.com>, Deepak Sharma <deepak.sharma@amd.com>,
 linux-arm-msm@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 etnaviv@lists.freedesktop.org, spice-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSb2IgQ2xhcmsgKDIwMTktMDctMTYgMTg6NDM6MjIpCj4gRnJvbTogUm9iIENsYXJr
IDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPgo+IAo+IE5lZWRlZCBpbiB0aGUgZm9sbG93aW5nIHBh
dGNoIGZvciBjYWNoZSBvcGVyYXRpb25zLgoKV2hhdCdzIHRoZSBiYXNlIGZvciB0aGlzIHBhdGNo
PyAoSSdtIG1pc3NpbmcgdGhlIGFuY2VzdG9yIGZvciBkcm1fZ2VtLmMpCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
