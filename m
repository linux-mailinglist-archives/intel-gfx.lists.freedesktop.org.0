Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1859E10B58D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 19:22:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E562A6E4D7;
	Wed, 27 Nov 2019 18:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 760A96E580
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 18:22:15 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id l17so8155507wmh.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 10:22:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=t2/xCCoyQtmnHZvdo53/fp0uALFrbef3Xoi/I02wqMA=;
 b=o/re9h47W2cA1JVmgLC7nimV57CKknQqq66QmZk4RCQLByvMqDx/Uooe1R85LRXVfe
 wiPr00M3FmxR0kD65RTUkwacsWkgTak0+8VmXjY+C93H6QmB2O3/M5lwd4hhDIXDKQUl
 V6LFufxNdiJevkHh5zPh/8/qJZ9KWV2LZQqFTLeMm0fbc0nMp7D/+HMTMrQlDc1plOPO
 4bnn5LLVs4rQhCrM17eeVkR05++vf5zTio34+uBvMOkw0in4YPzXVZw8+qhKNaSY3tw0
 rFVfcQn7YQYbg0h/3AoDmIHMaQERempsfqiXtTtNoWqU0hA/BPAzKL7b3e3oK/TZKpmm
 NJGA==
X-Gm-Message-State: APjAAAUXPSMHDJ0cJiqQcN+7OEY7T3o5mCZoY1TRJeFrqcNalLUSz1HK
 ZxJuUABzw3fOukbBk/uQNjnfHa9O18E=
X-Google-Smtp-Source: APXvYqz6QN9409WR8t/G5F9+f2Hh6KT2FZYYp1yfg/s/+uyqMiwzAIyCKqz6/FyWAf5m96OL9S/3wA==
X-Received: by 2002:a7b:cc8b:: with SMTP id p11mr5762761wma.38.1574878934100; 
 Wed, 27 Nov 2019 10:22:14 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id u14sm20345977wrm.51.2019.11.27.10.22.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 10:22:12 -0800 (PST)
Date: Wed, 27 Nov 2019 19:22:10 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191127182210.GK406127@phenom.ffwll.local>
References: <cover.1574871797.git.jani.nikula@intel.com>
 <21cc1f07daffeddf4d59f2b444796c0216274c87.1574871797.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21cc1f07daffeddf4d59f2b444796c0216274c87.1574871797.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=t2/xCCoyQtmnHZvdo53/fp0uALFrbef3Xoi/I02wqMA=;
 b=M2FE4b6aum5dszCRzLjRm3HvBZAW0NkC4cVm23SswbLGywvtKwVCULrQxsZSDYS8yE
 0SSPMXXVHfnvLA/oT49Qa3neQmWDzpNUwU0E6plEL/5cBITed5Ccs6zRw//E4bFCOSEJ
 8BbsBXASPiZDDeHi3bIKhHGzJlaTMusq5uDnU=
Subject: Re: [Intel-gfx] [PATCH 04/13] video: udlfb: don't restore fb_mmap
 after deferred IO cleanup
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
 dri-devel@lists.freedesktop.org, Bernie Thompson <bernie@plugable.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMDY6MzI6MDBQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gRGVmZXJyZWQgSU8gbm93IHByZXNlcnZlcyB0aGUgZmJfb3BzLgo+IAo+IENjOiBCZXJu
aWUgVGhvbXBzb24gPGJlcm5pZUBwbHVnYWJsZS5jb20+Cj4gQ2M6IGxpbnV4LWZiZGV2QHZnZXIu
a2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+CgpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4KCkFzaWRlOiBJIHdvbmRlciB3aGV0aGVyIHdlIHNob3VsZCBzdGFydCByZXRpcmluZyBhbGwg
dGhlIGZiZGV2IGRyaXZlcnMKd2hpY2ggaGF2ZSBrbXMgZHJpdmVycyBhbHJlYWR5IC4uLiB5b3Ug
Z2V0IGZiZGV2IGZvciBmcmVlIHdpdGggdGhlIGxhdHRlci4KLURhbmllbAoKPiAtLS0KPiAgZHJp
dmVycy92aWRlby9mYmRldi91ZGxmYi5jIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvdWRsZmIuYyBiL2Ry
aXZlcnMvdmlkZW8vZmJkZXYvdWRsZmIuYwo+IGluZGV4IGZlMzczYjYzZGRkNi4uMDc5MDVkMzg1
OTQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvdWRsZmIuYwo+ICsrKyBiL2Ry
aXZlcnMvdmlkZW8vZmJkZXYvdWRsZmIuYwo+IEBAIC0xMDM3LDcgKzEwMzcsNiBAQCBzdGF0aWMg
aW50IGRsZmJfb3BzX3JlbGVhc2Uoc3RydWN0IGZiX2luZm8gKmluZm8sIGludCB1c2VyKQo+ICAJ
CWZiX2RlZmVycmVkX2lvX2NsZWFudXAoaW5mbyk7Cj4gIAkJa2ZyZWUoaW5mby0+ZmJkZWZpbyk7
Cj4gIAkJaW5mby0+ZmJkZWZpbyA9IE5VTEw7Cj4gLQkJaW5mby0+ZmJvcHMtPmZiX21tYXAgPSBk
bGZiX29wc19tbWFwOwo+ICAJfQo+ICAKPiAgCWRldl9kYmcoaW5mby0+ZGV2LCAicmVsZWFzZSwg
dXNlcj0lZCBjb3VudD0lZFxuIiwgdXNlciwgZGxmYi0+ZmJfY291bnQpOwo+IC0tIAo+IDIuMjAu
MQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
ZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZl
bAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9u
Cmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
