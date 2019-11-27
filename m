Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5AC10B57E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 19:20:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C6E6E566;
	Wed, 27 Nov 2019 18:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F2D6E573
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 18:20:31 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id s5so27827204wrw.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 10:20:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eXTXSAUEbQk9IiSeFQa+bKrNSgH/hPW+P/zlbRoXNHg=;
 b=eWm8799I4P1lGPDcq006/eBz7EmkPnzmBROveHQRPjtQEnSftBHiyPDdZgEnXkqlVT
 ZD+m9WnvBKasTna82z4etGk/Ctcwn2rdUSkMSfuKywHc2EXw3aOWFGDZOIS1RX2ryKzo
 TfXbElG1h0w2CA/fNLK2zp23T4WzIfo14bSVx+aTR9gNRotBKvYG/4706wvUx3QH1ewy
 rz9ilDRNJWYTyJoX4RIGLKeM/rtbjMFWu6qdzUzTVusfedKU3TZPA2gFAv8l0a+ERqHb
 2I/OvQkrF8IC1eZDM9YnLJ1sTwNBnwvzNYZy3eghLqXH0qYT4WsQvguCnUD/hngR5hSX
 DPGQ==
X-Gm-Message-State: APjAAAWrv7bMTbd/K6rP+Z6Ai3Bt5dSVaaeToFwFRJ5hEcaqvjLwF1Aa
 WCgg+OcyOJDZi6fUU4F8w79oFQ==
X-Google-Smtp-Source: APXvYqzGv99B481epxis71lcp1CrYsoF2Wr9YAkZU7cTnOcFdRc927zUakh3cWaGdYzvUzguevXghw==
X-Received: by 2002:adf:ec8f:: with SMTP id z15mr26656161wrn.128.1574878830622; 
 Wed, 27 Nov 2019 10:20:30 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id m15sm20002427wrq.97.2019.11.27.10.20.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 10:20:30 -0800 (PST)
Date: Wed, 27 Nov 2019 19:20:28 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191127182028.GI406127@phenom.ffwll.local>
References: <cover.1574871797.git.jani.nikula@intel.com>
 <5c25b31242a3ae2326ccf163e5be5ae401b04b49.1574871797.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c25b31242a3ae2326ccf163e5be5ae401b04b49.1574871797.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eXTXSAUEbQk9IiSeFQa+bKrNSgH/hPW+P/zlbRoXNHg=;
 b=MlJM2o/jW8BZ6yhAcd/hDinX7nc4Fsi3NDOg241xx55lGHWVEU9aH/DoipxSzAM76f
 hzPdMq9bH7c/jURyU5DBBwuByOZtQ+8r7x7zKaitiGRmBRpb3F83VFcOtomEHDN8RJSZ
 uA2ZNLVE+Hwwi5SRgKGmBKo6+sD1MSNlYvuHI=
Subject: Re: [Intel-gfx] [PATCH 03/13] video: smscufx: don't restore fb_mmap
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
Cc: Steve Glendinning <steve.glendinning@shawell.net>,
 linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMDY6MzE6NTlQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gRGVmZXJyZWQgSU8gbm93IHByZXNlcnZlcyB0aGUgZmJfb3BzLgo+IAo+IENjOiBTdGV2
ZSBHbGVuZGlubmluZyA8c3RldmUuZ2xlbmRpbm5pbmdAc2hhd2VsbC5uZXQ+Cj4gQ2M6IGxpbnV4
LWZiZGV2QHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvdmlkZW8vZmJkZXYvc21zY3VmeC5j
IHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdmlkZW8vZmJkZXYvc21zY3VmeC5jIGIvZHJpdmVycy92aWRlby9mYmRldi9zbXNj
dWZ4LmMKPiBpbmRleCAwZTBmNWJiZmM1ZWYuLmUzNjJkN2RhODdmYyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3ZpZGVvL2ZiZGV2L3Ntc2N1ZnguYwo+ICsrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYv
c21zY3VmeC5jCj4gQEAgLTExNzAsNyArMTE3MCw2IEBAIHN0YXRpYyBpbnQgdWZ4X29wc19yZWxl
YXNlKHN0cnVjdCBmYl9pbmZvICppbmZvLCBpbnQgdXNlcikKPiAgCQlmYl9kZWZlcnJlZF9pb19j
bGVhbnVwKGluZm8pOwo+ICAJCWtmcmVlKGluZm8tPmZiZGVmaW8pOwo+ICAJCWluZm8tPmZiZGVm
aW8gPSBOVUxMOwo+IC0JCWluZm8tPmZib3BzLT5mYl9tbWFwID0gdWZ4X29wc19tbWFwOwoKQWxz
byB0b3RhbGx5IHBvaW50bGVzcyB0byByZXN0b3JlIHRoaXMgaGVyZSwgc2luY2UgaWYgeW91IGhh
dmUgaW5kZWVkCmxvYWRlZCB0aGUgZHJpdmVyIHR3aWNlIHNoaXQgaGFzIGhpdCB0aGUgZmFuIGFs
cmVhZHkuIEkgZ3Vlc3MgdGhhdCB3YXMgZm9yCnRoZSBtb2R1bGUgb3B0aW9uIC4uLi4gd3RmLgoK
UmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cgo+ICAJ
fQo+ICAKPiAgCXByX2RlYnVnKCJyZWxlYXNlZCAvZGV2L2ZiJWQgdXNlcj0lZCBjb3VudD0lZCIs
Cj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4CgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50
ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
