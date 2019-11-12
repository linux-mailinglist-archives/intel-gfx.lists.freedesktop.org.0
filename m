Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF482F9407
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 16:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3186EB59;
	Tue, 12 Nov 2019 15:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com
 [IPv6:2607:f8b0:4864:20::c41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B6D6EB59
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 15:21:36 +0000 (UTC)
Received: by mail-yw1-xc41.google.com with SMTP id q140so6556073ywg.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 07:21:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KnyfkrQ6W9gFBlT143CIffTwTGBEZnopWrAl1Uz5ZO0=;
 b=pxHmBNPGbZMpW9PtFkbi7RZlQU0O9FaOrn7MM77y77ojjPTD/JVglUgb1WsdPyy/r7
 EWOA9aN7B5IyiR3BlMA4IYqE9fTsu9N2nU01a3sCyy+kl0vZ5VbeLcCqdzCsE+gTBBbt
 7mpZUX7NNScIoDECJAjok6bAvV9Cgixt7X6vIbQ4s0aGz5mnsM+b4iOQ1AT3zr9Y6FB9
 R6APCv7ip23bqnWK07NNAWQkwhAPRrrpngjz37aIh036SPJVS1wwQCIUL3bErfdjT0W3
 DPZqxjlGRsWSehPtxKlJhutub9A1rNBvvAhgorqKPXUuZmCwoPRV6M5jaVkZllmRW+9L
 3sEA==
X-Gm-Message-State: APjAAAXTybykDvEKKi7NWciU9fFzYJpIuP8dpNJ3bs/DGkHPKcJrHwlC
 YjMyyCm+CvbE7M35WsVf/Pewrkg9pxU=
X-Google-Smtp-Source: APXvYqyxBajcKnAb7jh9CLluY/tZ4Wq1x+xGnMjwDeum476x/aRdE3Y/ZKVwxdvJeJ0l95Emz6KtLQ==
X-Received: by 2002:a81:7917:: with SMTP id u23mr20310139ywc.405.1573572095831; 
 Tue, 12 Nov 2019 07:21:35 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id b204sm10599183ywe.106.2019.11.12.07.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 07:21:35 -0800 (PST)
Date: Tue, 12 Nov 2019 10:21:34 -0500
From: Sean Paul <sean@poorly.run>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191112152134.GA25787@art_vandelay>
References: <cover.1572258935.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572258935.git.jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KnyfkrQ6W9gFBlT143CIffTwTGBEZnopWrAl1Uz5ZO0=;
 b=ZCjijuCLHBI/IhurFFDsHIVEvSDMAG0aeKz/s9Rm4iBcs+ZrfyHHFXT4V5288ti/Yp
 DvSBr2cVn/EjpaLOYCym/ILtmtiTH5iIAbAcBfQJ6qjoU2VGji39GypYmzPvdIsNCL8l
 OpwVLGYDWKTgNYQPlxPdqUN6iEMWOcS+Pxm17VeCHEw7b6/fG2wMimTzXG8BrbuTfHrO
 bdCr/3+MbZ0c8lX2ujLLg2SZP2f6i0uRPrO2x2WHEgl8xNwRV41nu65OB7qX+dYQU48K
 J2z3edcfGRIhMuvvriI0Uy7TooPsUv8uKMJL5ura3Nzwj9+FrV+6jL7nYFia5HO/F0qV
 KmUQ==
Subject: Re: [Intel-gfx] [PATCH RESEND 0/8] drm/print: cleanup and new
 drm_device based logging
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMTI6Mzg6MTRQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gUmVzZW5kIG9mIFsxXTsgSSBtYXkgaGF2ZSByZWJhc2VkIGJ1dCBJJ20gbm90IHN1cmUg
YW55bW9yZS4uLgo+IAo+IEZvciBzdGFydGVycyBzb21lIGZhaXJseSBiZW5pZ24gY2xlYW51cCwg
YW5kIGEgcHJvcG9zYWwgZm9yIG5ldyBzdHJ1Y3QKPiBkcm1fZGV2aWNlIGJhc2VkIGRybSBsb2dn
aW5nIG1hY3JvcyBhbmFsb2d1b3VzIHRvIGNvcmUga2VybmVsIHN0cnVjdAo+IGRldmljZSBiYXNl
ZCBtYWNyb3MuCj4gCj4gUGxlYXNlIGxldCdzIGF0IGxlYXN0IGdldCB0aGUgZmlyc3QgNyByZXZp
ZXdlZC9hY2tlZC9tZXJnZWQsIHNoYWxsIHdlPwo+IAoKQWNrZWQtYnk6IFNlYW4gUGF1bCA8c2Vh
bkBwb29ybHkucnVuPgoKPiAKPiBCUiwKPiBKYW5pLgo+IAo+IAo+IFsxXSBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3Nzk1Lwo+IAo+IAo+IEphbmkgTmlrdWxhICg4
KToKPiAgIGRybS9pOTE1OiB1c2UgZHJtX2RlYnVnX2VuYWJsZWQoKSB0byBjaGVjayBmb3IgZGVi
dWcgY2F0ZWdvcmllcwo+ICAgZHJtL25vdXZlYXU6IHVzZSBkcm1fZGVidWdfZW5hYmxlZCgpIHRv
IGNoZWNrIGZvciBkZWJ1ZyBjYXRlZ29yaWVzCj4gICBkcm0vYW1kZ3B1OiB1c2UgZHJtX2RlYnVn
X2VuYWJsZWQoKSB0byBjaGVjayBmb3IgZGVidWcgY2F0ZWdvcmllcwo+ICAgZHJtL3ByaW50OiBy
ZW5hbWUgZHJtX2RlYnVnIHRvIF9fZHJtX2RlYnVnIHRvIGRpc2NvdXJhZ2UgdXNlCj4gICBkcm0v
cHJpbnQ6IHVuZGVyc2NvcmUgcHJlZml4IGZ1bmN0aW9ucyB0aGF0IHNob3VsZCBiZSBwcml2YXRl
IHRvIHByaW50Cj4gICBkcm0vcHJpbnQ6IGNvbnZlcnQgZGVidWcgY2F0ZWdvcnkgbWFjcm9zIGlu
dG8gYW4gZW51bQo+ICAgZHJtL3ByaW50OiBncm91cCBsb2dnaW5nIGZ1bmN0aW9ucyBieSBwcmlu
ayBvciBkZXZpY2UgYmFzZWQKPiAgIGRybS9wcmludDogaW50cm9kdWNlIG5ldyBzdHJ1Y3QgZHJt
X2RldmljZSBiYXNlZCBsb2dnaW5nIG1hY3Jvcwo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9zbXVfdjExXzBfaTJjLmMgICB8ICAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3By
aW50LmMgICAgICAgICAgICAgICAgICB8ICAxOCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5oICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3V0aWxzLmMgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vbm91dmVh
dS9kaXNwbnY1MC9kaXNwLmggICAgICB8ICAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vbm91dmVh
dS9ub3V2ZWF1X2Rydi5oICAgICAgICB8ICAgNCArLQo+ICBpbmNsdWRlL2RybS9kcm1fcHJpbnQu
aCAgICAgICAgICAgICAgICAgICAgICB8IDMwNCArKysrKysrKysrKystLS0tLS0tCj4gIDExIGZp
bGVzIGNoYW5nZWQsIDIyNCBpbnNlcnRpb25zKCspLCAxMjQgZGVsZXRpb25zKC0pCj4gCj4gLS0g
Cj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpLWRldmVsCgotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hy
b21pdW0gT1MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
