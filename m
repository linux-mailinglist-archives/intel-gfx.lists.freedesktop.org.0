Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B3846B83
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 23:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 972C489948;
	Fri, 14 Jun 2019 21:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD5C689930;
 Fri, 14 Jun 2019 21:06:08 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 86716217F9;
 Fri, 14 Jun 2019 21:06:08 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id n11so4116885qtl.5;
 Fri, 14 Jun 2019 14:06:08 -0700 (PDT)
X-Gm-Message-State: APjAAAW3lQ5ZV5faSJnYVpvAztorbAJnPGl7N+zTcAI6jO8U1PV0GhLH
 ILFe9vGraicqH3Ds9qhcmVz0FZHHflSrsfF7pg==
X-Google-Smtp-Source: APXvYqwy2NNo6CwE2swz0rW45p92IB5Ql3oENYRi5zNXD2TKEthGk0fO+oZigz0nj5cRhrMB+uKizNIW0kGqke1ixxQ=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr411277qtc.143.1560546367853; 
 Fri, 14 Jun 2019 14:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-47-daniel.vetter@ffwll.ch>
In-Reply-To: <20190614203615.12639-47-daniel.vetter@ffwll.ch>
From: Rob Herring <robh@kernel.org>
Date: Fri, 14 Jun 2019 15:05:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLNFdLVp_378hX4kMqBYTthSO4j9SimeQG_sdz+Pc=+oA@mail.gmail.com>
Message-ID: <CAL_JsqLNFdLVp_378hX4kMqBYTthSO4j9SimeQG_sdz+Pc=+oA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1560546368;
 bh=Zxio6GqWyZNn9HjpLE0P6sNfhMh7wNWAVjONZCUOQwg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T6/kjNGkWd0MVoVRdelAkK9PahPNvs8diN2mC1xvTv71B3UEWuFPhwu41J+Qb+c+B
 PFLwVZ/61CGW2mrztPQMHIRH02gHlpc4bl5YCXj8WULmhrL0Uk3sDTZCUndQbRmofp
 99WkbtA3z1tldTulr//n304ki2ho+5HkLQJQKEz8=
Subject: Re: [Intel-gfx] [PATCH 46/59] drm/panfrost: don't set gem_obj->resv
 for prime import anymore
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMjozNyBQTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPiB3cm90ZToKPgo+IFRoaXMgaXMgbm93IGRvbmUgaW4gZHJtX3ByaW1lLmMK
Pgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
Pgo+IENjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IENjOiBUb21ldSBWaXpvc28g
PHRvbWV1LnZpem9zb0Bjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcGFu
ZnJvc3QvcGFuZnJvc3RfZ2VtLmMgfCAyIC0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9u
cygtKQoKQWNrZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
