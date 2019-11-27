Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2153410B595
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 19:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E0D6E580;
	Wed, 27 Nov 2019 18:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86356E580
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 18:23:27 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id s14so1906694wmh.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 10:23:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BoN2Froyrpa4sxf6wnRpIvsjPMH3RI1f+q3b2fgGrcI=;
 b=pdFXtae4TBRLeZw09ffHFzCzJboQaDVyJpO/BM8I9rS3U1U4Zg7T1BEw7IicRWcTET
 MaaUpnhsl2I4JUFjg0bv7dM82w57jiPrS5sJJA4NNTa5as+k0Vn6GAU+GzsNnGyRnHbq
 GEGTiX4ZLNwUww3mRZkExStGkfj2IukphuDRGRa1kS0QqeK0s323z0xoTyloPXQY1I07
 frBpA4EPBsiJtBpioNYzJQ/MZFlcUSBbA5NIp/K0kPPaG/5dzgEGaYNtJuBgdXSBM7Ed
 43ioTz06uS0LMap/ADWjMwInahfx/2ZL+Mu/O4gnxCF60jIE0W9hGPfrXBm3t/pnKiq8
 ngnw==
X-Gm-Message-State: APjAAAXIs6PmuvxnO3f95XQBHp5zM2QhzQsmDZcozRMY/fD6JiKT4jFC
 KVNHgGVGRcKAgg5vzzJLQ5G9MQ==
X-Google-Smtp-Source: APXvYqxzsCzv1nhGm1H97WAOm+Dvp+mv4P55Sd7pXBymVVe4tv430CMYzsqgPYjIsD+5A81a970+iw==
X-Received: by 2002:a05:600c:212:: with SMTP id
 18mr5894529wmi.93.1574879006513; 
 Wed, 27 Nov 2019 10:23:26 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id h97sm21858031wrh.56.2019.11.27.10.23.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 10:23:25 -0800 (PST)
Date: Wed, 27 Nov 2019 19:23:24 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191127182324.GL406127@phenom.ffwll.local>
References: <cover.1574871797.git.jani.nikula@intel.com>
 <07acc8c8ef93f36103c7a13dc98e12790c2847df.1574871797.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <07acc8c8ef93f36103c7a13dc98e12790c2847df.1574871797.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BoN2Froyrpa4sxf6wnRpIvsjPMH3RI1f+q3b2fgGrcI=;
 b=Q4n5w2UlBh9LmNW/h6AN4cdgcTyD77m+ytmTFE8P69Q5XFUKkXy1LwWcrr7XD0cK3x
 DbyBRILi4PfM/BHwym7CvWhs0nV98UNfUUUBGMZ9pj98qUX1gtB5EZPB9caFH+5VuPjd
 Zj0CzIkRHnBKjxic0dYeSSnGH/Ue9uZF1O0ZQ=
Subject: Re: [Intel-gfx] [PATCH 05/13] video: fbdev: vesafb: modify the
 static fb_ops directly
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
Cc: linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMDY6MzI6MDFQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gQXZvaWQgbW9kaWZ5aW5nIHRoZSBmYl9vcHMgdmlhIGluZm8tPmZib3BzIHRvIGxldCB1
cyBtYWtlIHRoZSBwb2ludGVyCj4gY29uc3QgaW4gdGhlIGZ1dHVyZS4KPiAKPiBDYzogbGludXgt
ZmJkZXZAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy92aWRlby9mYmRldi92ZXNhZmIuYyB8
IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvdmVzYWZiLmMgYi9kcml2
ZXJzL3ZpZGVvL2ZiZGV2L3Zlc2FmYi5jCj4gaW5kZXggZDljMDhmNmMyMTU1Li5hMWZlMjRlYTg2
OWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy92aWRlby9mYmRldi92ZXNhZmIuYwo+ICsrKyBiL2Ry
aXZlcnMvdmlkZW8vZmJkZXYvdmVzYWZiLmMKPiBAQCAtNDQ3LDE1ICs0NDcsMTUgQEAgc3RhdGlj
IGludCB2ZXNhZmJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqZGV2KQo+ICAJICAgICAg
IHZlc2FmYl9maXguc21lbV9zdGFydCwgaW5mby0+c2NyZWVuX2Jhc2UsCj4gIAkgICAgICAgc2l6
ZV9yZW1hcC8xMDI0LCBzaXplX3RvdGFsLzEwMjQpOwo+ICAKPiArCWlmICgheXBhbikKPiArCQl2
ZXNhZmJfb3BzLmZiX3Bhbl9kaXNwbGF5ID0gTlVMTDsKCnZlc2FmYiBhdCBsZWFzdCBoYXMgYSBn
dWFyYW50ZWUgdGhhdCB0aGVyZSdzIG9ubHkgZXZlciBvbmUgLi4uCgpSZXZpZXdlZC1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiArCj4gIAlpbmZvLT5mYm9wcyA9
ICZ2ZXNhZmJfb3BzOwo+ICAJaW5mby0+dmFyID0gdmVzYWZiX2RlZmluZWQ7Cj4gIAlpbmZvLT5m
aXggPSB2ZXNhZmJfZml4Owo+ICAJaW5mby0+ZmxhZ3MgPSBGQklORk9fRkxBR19ERUZBVUxUIHwg
RkJJTkZPX01JU0NfRklSTVdBUkUgfAo+ICAJCSh5cGFuID8gRkJJTkZPX0hXQUNDRUxfWVBBTiA6
IDApOwo+ICAKPiAtCWlmICgheXBhbikKPiAtCQlpbmZvLT5mYm9wcy0+ZmJfcGFuX2Rpc3BsYXkg
PSBOVUxMOwo+IC0KPiAgCWlmIChmYl9hbGxvY19jbWFwKCZpbmZvLT5jbWFwLCAyNTYsIDApIDwg
MCkgewo+ICAJCWVyciA9IC1FTk9NRU07Cj4gIAkJZ290byBlcnI7Cj4gLS0gCj4gMi4yMC4xCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmkt
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgot
LSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
