Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A376D330
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 19:51:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 703756E45B;
	Thu, 18 Jul 2019 17:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F97E6E457
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 17:51:48 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id a14so11570026ybm.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 10:51:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=54ISCPh3k3SUs+5FdfI6KvwQ1Id9kdGWoRZ1Spsr+ls=;
 b=Zu62glH7SSr0phx2hVKTXx3OPGjmRSw64C60hBQxb4crKGTkvGGP/G/ZARFC8I/JSG
 j3aygVbISy2iXuvuTghOW/RP6Cw1AZ0wOMafJd9Ql1LEXv7mAsDWtUzgtek/AI82Xdgs
 2da2qQkLkj26J/HZN75x1zikncaMLls5Nx+bj/kqXBUrSQoZVPMfqZVzQ+7pC+X0J6AT
 EvL+Yyro5LRYoIe+CH//osMunslTsXZlnwLJ/9iSSnJgAUra3wodiunVhUAEN/goY9KX
 Itf36CNQbTYGpL3BvxqDUXoAlVOWZLidolwI3R8H44uHILpiqRMswRHEryko33Ig8BLr
 HiUw==
X-Gm-Message-State: APjAAAU2ITFnlZsU8VGFrCiG0lydcdK5GdU34SGhi+5cka6WkjJ4pkFL
 slgvJEYzXYVXaJ2T1gG9jUF2zg==
X-Google-Smtp-Source: APXvYqwriywGParEUult+Nn3tYrbq2xB8U4bR7esM0/Bqo29nmAIWodN6W0SDyfIGK8YXoAWISkutg==
X-Received: by 2002:a25:1d02:: with SMTP id d2mr29012730ybd.311.1563472307859; 
 Thu, 18 Jul 2019 10:51:47 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 82sm6791584ywr.52.2019.07.18.10.51.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:51:47 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:51:47 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190718175147.GL31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-10-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-10-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=54ISCPh3k3SUs+5FdfI6KvwQ1Id9kdGWoRZ1Spsr+ls=;
 b=W4A30FAznhmdJU8pXe6EsfiaP1RyvKu6XSBCEBVQWldz2S8BHvUHw9Vmr5fLdrGEUK
 XJgF6G/UYXEe+Ymt7+Wp6yysRLhxy8uv7cDZwY/+jELEnbv2GsPK3XoS9tFAM4AII++c
 2w+/NP1KdvbPLfD9ay9P96cqSsT5894vJaGudaqSqeI7z/M0mduo/yxUhC+pWynVPuY/
 OuxminUzPuPv/8AT5aVCmyrxTyD8Wf/9xGzk86/UTBhLZD2R71BWqt5VK2uspcSihcdG
 XgyB3zNnZUbCMZgTqpIbCYuEYscvjuHYYT9mSg2B56fmVPwsLIBlZHgPgp0WVt2NuzpD
 KTwg==
Subject: Re: [Intel-gfx] [PATCH v1 09/11] drm: direct include of drm.h in
 drm_syncobj.c
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Rob Herring <robh@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTU6MDVQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IERvIG5vdCByZWx5IG9uIGluY2x1ZGluZyBkcm0uaCBmcm9tIGRybV9maWxlLmgsCj4g
YXMgdGhlIGluY2x1ZGUgaW4gZHJtX2ZpbGUuaCB3aWxsIGJlIGRyb3BwZWQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgoKUmV2aWV3ZWQtYnk6IFNl
YW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgoKPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1l
LnJpcGFyZEBib290bGluLmNvbT4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4g
Q2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdl
cmxpbkBpbnRlbC5jb20+Cj4gQ2M6IENodW5taW5nIFpob3UgPGRhdmlkMS56aG91QGFtZC5jb20+
Cj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYyB8IDEgKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2RybV9zeW5jb2JqLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYwo+IGluZGV4IGEx
OTljOGQ1NmI5NS4uNzVjYjRiYjc2MTllIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fc3luY29iai5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMKPiBAQCAt
NTMsNiArNTMsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvc3luY19maWxlLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC91YWNjZXNzLmg+Cj4gIAo+ICsjaW5jbHVkZSA8ZHJtL2RybS5oPgo+ICAjaW5jbHVk
ZSA8ZHJtL2RybV9kcnYuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fZmlsZS5oPgo+ICAjaW5jbHVk
ZSA8ZHJtL2RybV9nZW0uaD4KPiAtLSAKPiAyLjIwLjEKPiAKCi0tIApTZWFuIFBhdWwsIFNvZnR3
YXJlIEVuZ2luZWVyLCBHb29nbGUgLyBDaHJvbWl1bSBPUwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
