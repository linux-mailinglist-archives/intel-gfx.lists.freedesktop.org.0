Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D676527841
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 10:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81EA89D5E;
	Thu, 23 May 2019 08:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D6A89D5C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 08:41:45 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id g57so8038726edc.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 01:41:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=Ns88pAn7/IWetOg5MtXGXGQXmtsXYCZFJetjuoYpSOU=;
 b=pSLHk4lxk255snlLZ8R83xCYbbLhtofoWVfrieLStG9eQa2QqSJYcBtNu3dlIVfw2I
 k4DgHWKMumH1mQ32GZrmWSWT8B/CvLmbvK4DEOdtGM1Wq7qYPyroGYzBHFs3jioz/zy3
 57K+Sbn8DN00U+t0MKUJShrd5eCEudLNLdtACLWcpywbSQGPyQJntif/FaiwIeZ7xGw0
 0v3bb2xp3AFLMK8FKnI0DHcxMnMaQhYNVUYPt9MqA7fTloZExQ5dn5/RqnvN1ABDdfMs
 Ukqb2YSLpcaSvI3WSI9qlmD3mmDZOSWuubTqPZZNgAWn7IY8JmS4ZD6xxOs6H6/SkJdf
 7wrg==
X-Gm-Message-State: APjAAAXl8akf/BvZ13fDwfQd+YVgUYvQOwUoQCsM9NZht1nqJehqvYvt
 Fw7Ixu91axEPNoXo1Q8WOnTt6A==
X-Google-Smtp-Source: APXvYqyXWXKTbMyKaSmS1kmm+UHAoAKlMA9LlTI0oYs14EYNwqFdoe1e7evlTJVPmcpu34zWrsM/XQ==
X-Received: by 2002:a17:906:6c1:: with SMTP id
 v1mr19067801ejb.266.1558600904037; 
 Thu, 23 May 2019 01:41:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id y8sm2535512ejq.24.2019.05.23.01.41.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 01:41:42 -0700 (PDT)
Date: Thu, 23 May 2019 10:41:40 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20190523084140.GX21222@phenom.ffwll.local>
References: <1558015817-12025-1-git-send-email-uma.shankar@intel.com>
 <20190522204522.GC6464@intel.com> <87d0k97fsq.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d0k97fsq.fsf@intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=Ns88pAn7/IWetOg5MtXGXGQXmtsXYCZFJetjuoYpSOU=;
 b=W8b6UqWx+G99/jU1tTH+412YA8ar5ml41JVzGy2VnJqPnG1SSN5Gf1H/nm7VCNFeU4
 LleKKMcM0douEG7zFuJhx08plouzQznkfvYvxXEfiptcihz79U2iM5w3eQzy3G6yAadr
 Ea6Koe6mNj/J5cdgdwSdasbRD4Qdp6fShklJI=
Subject: Re: [Intel-gfx] [v11 00/12] Add HDR Metadata Parsing and handling
 in DRM layer
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTE6MDk6NDFBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gV2VkLCAyMiBNYXkgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPiBQdXNoZWQgdGhlIGNvcmUvZXRjLiBiaXRzIHRv
IGRybS1taXNjLW5leHQgc28gdGhhdCBvdGhlciBkcml2ZXJzCj4gPiBjYW4gYmFzZSB0aGVpciB3
b3JrIG9uIHRoYXQuIFdlJ2xsIG5lZWQgYSBiYWNrbWVyZ2UgdG8gZ2V0IHRoZQo+ID4gaTkxNSBz
dHVmZiBpbiB2aWEgZGlucS4KPiAKPiBUbyBhdm9pZCBhbnkgY29uZnVzaW9uLCBkcm0tbWlzYy1u
ZXh0IG5lZWRzIHRvIGdldCBtZXJnZWQgdG8gZHJtLW5leHQsCj4gd2hpY2ggdGhlbiBuZWVkcyB0
byBiZSBiYWNrbWVyZ2VkIHRvIGRybS1pbnRlbC1uZXh0LXF1ZXVlZC4gV2UgZG9uJ3QgZG8KPiBt
ZXJnZXMgZnJvbSBkcm0tbWlzYy1uZXh0IHRvIGRybS1pbnRlbC1uZXh0LXF1ZXVlZCBkaXJlY3Rs
eS4KClllYWgsIEkgbWVudGlvbmVkIHRoaXMgYWxzbyBvbiBzb21lIGludGVybmFsIHRocmVhZCBm
b3IgY2xhcmlmaWNhdGlvbiwKanVzdCB0byBtYWtlIGl0IGNsZWFyIHRoYXQgYmFja21lcmdlcyBh
cmVuJ3QgaW5zdGFudC4KClRoZXJlJ3MgYXBwYXJlbnRseSBhbHNvIGNvbmZ1c2luZyBhYm91dCBk
cm0tdGlwLCBzZWVtcyBsaWtlIHBlb3BsZSBkaWRuJ3QKa25vdyB0aGF0IGRybS10aXAgIT0gZHJt
LWludGVsLmdpdCBhbmQgdGhhdCBzdHVmZiBmcm9tbSBkcm0tbWlzYwppbW1lZGlhdGVseSBzaG93
cyB1cCBpbiBkcm0tdGlwIC4uLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
