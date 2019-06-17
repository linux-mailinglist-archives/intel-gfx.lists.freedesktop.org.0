Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FFE484D4
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 16:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E1B89256;
	Mon, 17 Jun 2019 14:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF0F989256
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 14:03:08 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id e3so16284778edr.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 07:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=9zW5s0bDOkrOaCNiVoAHXNXphf7+nSNxabd2OW9jV54=;
 b=BC6nzc9Kql/Pfo2cHWyj2Ci6J0lFlv+ERqbnzhEV42g7cFRSrRzs/rgEVY52FcEK1w
 8hQVLYGqMMQPQCJQfsby0lMVEhlKiFM70bSBfzJJp2LgQTc9i1nU6eQQl3t8ESxCCa+H
 fFxUVb1YAQ/DuciDsAr/gbGAdOU8eOjgwf7drthzKDpH7Ztl92Dnb6O/h7qm5RBHLhgT
 D0ZWIN+RvSN3MMECWPLyVcLwM0diJSGp+I13LsCyz/gwzoj47wU92YTcxetCn0QJhbrh
 wgTFsoImpW0e+ytVicu0cCLyBJ+qwj6kCHQIeYa+Y8Nc0t/RehAMUZ67oZePsUAmuVs5
 FvhQ==
X-Gm-Message-State: APjAAAW3f7JCzvaLUs7gyWxBEN1G2hVWE7Dt1yV2jIy2InqpzPIMy/vQ
 O9UmdIBu/295J7fdOoVPyWwVWw==
X-Google-Smtp-Source: APXvYqwSdzowjaHLKW/Oy09sUS/X93y7yRkJn0JOO/vruQb/U87GCYjofC4QRUZKj31l/iSh9Ppl1Q==
X-Received: by 2002:a17:906:7541:: with SMTP id
 a1mr95391879ejn.50.1560780187672; 
 Mon, 17 Jun 2019 07:03:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id i5sm3740716edc.20.2019.06.17.07.03.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 07:03:06 -0700 (PDT)
Date: Mon, 17 Jun 2019 16:03:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Eric Anholt <eric@anholt.net>
Message-ID: <20190617140303.GC12905@phenom.ffwll.local>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-2-daniel.vetter@ffwll.ch>
 <87lfy3hj84.fsf@anholt.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lfy3hj84.fsf@anholt.net>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=9zW5s0bDOkrOaCNiVoAHXNXphf7+nSNxabd2OW9jV54=;
 b=kgLbU2uEmzdcUz6oogEzDgP1orFOziQjn5TJCJes0qNj74zSfwIhaipNncO1S4hSX6
 kTQ0u6a6quu/Y9mRPBd0KR3TQ0RJwH6gT7yy1430uejuNt0g9RwVghI3IKXdnfZmhePX
 n1GlnfwjntRBkiG8mum87Lk/gqhcPYEN85Fno=
Subject: Re: [Intel-gfx] [PATCH 01/59] drm/todo: Improve drm_gem_object
 funcs todo
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDM6NTM6MzFQTSAtMDcwMCwgRXJpYyBBbmhvbHQgd3Jv
dGU6Cj4gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JpdGVzOgo+IAo+
ID4gV2UncmUga2luZGEgZ29pbmcgaW4gdGhlIHdyb25nIGRpcmVjdGlvbi4gU3BvdHRlZCB3aGls
ZSB0eXBpbmcgYmV0dGVyCj4gPiBnZW0vcHJpbWUgZG9jcy4KPiA+Cj4gPiBDYzogVGhvbWFzIFpp
bW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4gPiBDYzogR2VyZCBIb2ZmbWFubiA8a3Jh
eGVsQHJlZGhhdC5jb20+Cj4gPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiA+
IENjOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPiA+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IAo+IFRoYXQncyBh
IGJpZyBzZXJpZXMsIGJ1dCBhIGdyZWF0IGNsZWFudXAuICBJIHRvb2sgYSBsb29rIGF0IGEgbG90
IG9mIGl0Lgo+IFBhdGNoIDEtMiwgNC0xMCwgNDEtNDcsIDQ5LTUwLCBhbmQgYWxsIHRoZSBnZW1f
cHJpbWVfaW1wb3J0L2V4cG9ydCBkcm9wCj4gcGF0Y2hlcyBhcmU6Cj4gCj4gUmV2aWV3ZWQtYnk6
IEVyaWMgQW5ob2x0IDxlcmljQGFuaG9sdC5uZXQ+CgpUaGFua3MgYSBsb3QgZm9yIGFsbCB5b3Vy
IHJldmlldy4KCj4gSSBkb24ndCBjdXJyZW50bHkgaGF2ZSBhIHBsYW4gZm9yIHJlYWRpbmcgdGhl
IHNodWZmbGUgaW4gcGF0Y2ggMy4KClllYWggcGF0Y2ggMyBpcyBub3QgY29vbCwgSSBuZWVkIHRv
IHNwbGl0IG91dCB0aGUgc2h1ZmZsZSBmcm9tIHRoZSBkb2MKcmV3b3JrLiBTaG91bGQgaGF2ZSBk
b25lIHRoYXQgZm9yIHYxLCBidXQgZ290IGEgYml0IGxhenkgYmVmb3JlIHRoZSB3L2UKOi0pCgpD
aGVlcnMsIERhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
