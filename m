Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 139CA3D0BB3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 12:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F032C6E903;
	Wed, 21 Jul 2021 10:06:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E496E8D0;
 Wed, 21 Jul 2021 08:30:20 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id c15so1224977wrs.5;
 Wed, 21 Jul 2021 01:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=yUJHVWQTlhcEWMO4DydR2xNVcklNcrzSF7aJbrXgfvg=;
 b=GwdmBlYvKMUbfBL/G94R3vphXcZlpRXLWB5bF6QGSKL6pV85wsV22JWa094sGOGZ7g
 P7qZ2LHJQBo4PwG/TNgCHOaSgH2i2SjcyzRNDuX20bIJxYhvzaR4zaGWcHvYfz7FosQ1
 +yN7E9DcdXpiJYZyNTefp+5fVA6/p0Iih4ldiljoRyOGgUM/UJfxsJv02X3wzob4Rndq
 IFXhZkCFEChrGwQ0t0RNvLKWhe0VX5MuIqQGR6jl1KGLr0E0wvw3SXlB/oyfvLUR0i77
 BLKvwGfPp8i9fxGt49K+cQN7ANcz5BjuZM8eJYMmSGGv2iBwzBMt/VngBYxrBWcVPqtB
 SFaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=yUJHVWQTlhcEWMO4DydR2xNVcklNcrzSF7aJbrXgfvg=;
 b=QVG+z32ihdZiZyAC+TXXqgHdxQgCwvLrvO48rlX3wa1s3W9Nmvsz0AxyTDlBuqMpFE
 /TSVz9EOTiTOm1zK0y5HNRNlBdtgDbyie591cQJekHBo8tBIMAPY6CWGgB31azywLS+e
 X6T722oETBip0oLgJSa4LZ5YnB5o58s882RTbjYUPsWJ1rLgYXrrMkSQP+8wVe7DjqkQ
 iGQEzR2R7nDNaX53QhBsjc1+0mCUtTDpCtYZKgM2+Cz4qrFxun5O/dw8iybgWqBQ4JlV
 wkaemjzw52WdVtsFLk3FZe/ohTsNNhanQngsJen1UyZBVD0SPW7CK9IauZqR0j1rr/D8
 ao3w==
X-Gm-Message-State: AOAM531SPMlzgTmo03pzs0LXmA6z9BrDEl1CPSmd4Q7MuF5/s4G2bet2
 w9/4D+UeuBq2Kx/mGlrhcdw=
X-Google-Smtp-Source: ABdhPJw/bXojKZq/3rBVxc6LypfZ1k0EVFJuDmJugmtJ7S6ZqIPs+VTOFVKLsKXR1S8VTaSs6Vqj4A==
X-Received: by 2002:adf:b605:: with SMTP id f5mr41299570wre.419.1626856219104; 
 Wed, 21 Jul 2021 01:30:19 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:9bcf:837a:d18c:dc66?
 ([2a02:908:1252:fb60:9bcf:837a:d18c:dc66])
 by smtp.gmail.com with ESMTPSA id w3sm26068057wrt.55.2021.07.21.01.30.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Jul 2021 01:30:18 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210716061634.2446357-1-hch@lst.de>
 <20210716061634.2446357-2-hch@lst.de>
 <f171831b-3281-5a5a-04d3-2d69cb77f1a2@amd.com>
 <YPbUvIYmu3WfyM2C@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <81094b7d-1846-9d43-dc58-44ff9bd60995@gmail.com>
Date: Wed, 21 Jul 2021 10:30:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YPbUvIYmu3WfyM2C@phenom.ffwll.local>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 21 Jul 2021 10:06:19 +0000
Subject: Re: [Intel-gfx] [PATCH 1/7] vgaarb: remove VGA_DEFAULT_DEVICE
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
Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@lst.de>, Ben Skeggs <bskeggs@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpBbSAyMC4wNy4yMSB1bSAxNTo1MCBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gT24gRnJpLCBK
dWwgMTYsIDIwMjEgYXQgMDk6MTQ6MDJBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gQW0gMTYuMDcuMjEgdW0gMDg6MTYgc2NocmllYiBDaHJpc3RvcGggSGVsbHdpZzoKPj4+IFRo
ZSBkZWZpbmUgaXMgZW50aXJlbHkgdW51c2VkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
dG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgo+PiBJJ20gbm90IGFuIGV4cGVydCBmb3IgdGhpcyBw
YXJ0aWN1bGFyIGNvZGUsIGJ1dCBhdCBsZWFzdCBvZiBoYW5kIGV2ZXJ5dGhpbmcKPj4geW91IGRv
IGhlcmUgbWFrZXMgdG90YWxseSBzZW5zZS4KPj4KPj4gV2hvbGUgc2VyaWVzIGlzIEFja2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2FyZSB0byBh
bHNvIHB1c2ggdGhpcyBpbnRvIGRybS1taXNjLW5leHQgc2luY2UgeW91IGxvb2tlZCBhbHJlYWR5
PwoKRG9uZS4KCkNocmlzdGlhbi4KCj4gLURhbmllbAo+Cj4+IFJlZ2FyZHMsCj4+IENocmlzdGlh
bi4KPj4KPj4+IC0tLQo+Pj4gICAgaW5jbHVkZS9saW51eC92Z2FhcmIuaCB8IDYgLS0tLS0tCj4+
PiAgICAxIGZpbGUgY2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC92Z2FhcmIuaCBiL2luY2x1ZGUvbGludXgvdmdhYXJiLmgKPj4+IGluZGV4
IGRjNmRkY2U5MjA2Ni4uMjZlYzhhMDU3ZDJhIDEwMDY0NAo+Pj4gLS0tIGEvaW5jbHVkZS9saW51
eC92Z2FhcmIuaAo+Pj4gKysrIGIvaW5jbHVkZS9saW51eC92Z2FhcmIuaAo+Pj4gQEAgLTQyLDEy
ICs0Miw2IEBACj4+PiAgICAjZGVmaW5lIFZHQV9SU1JDX05PUk1BTF9JTyAgICAgMHgwNAo+Pj4g
ICAgI2RlZmluZSBWR0FfUlNSQ19OT1JNQUxfTUVNICAgIDB4MDgKPj4+IC0vKiBQYXNzaW5nIHRo
YXQgaW5zdGVhZCBvZiBhIHBjaV9kZXYgdG8gdXNlIHRoZSBzeXN0ZW0gImRlZmF1bHQiCj4+PiAt
ICogZGV2aWNlLCB0aGF0IGlzIHRoZSBvbmUgdXNlZCBieSB2Z2Fjb24uIEFyY2hzIHdpbGwgcHJv
YmFibHkKPj4+IC0gKiBoYXZlIHRvIHByb3ZpZGUgdGhlaXIgb3duIHZnYV9kZWZhdWx0X2Rldmlj
ZSgpOwo+Pj4gLSAqLwo+Pj4gLSNkZWZpbmUgVkdBX0RFRkFVTFRfREVWSUNFICAgICAoTlVMTCkK
Pj4+IC0KPj4+ICAgIHN0cnVjdCBwY2lfZGV2Owo+Pj4gICAgLyogRm9yIHVzZSBieSBjbGllbnRz
ICovCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
