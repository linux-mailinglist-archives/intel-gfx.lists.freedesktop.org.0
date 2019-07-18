Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B63FE6D324
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 19:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D9E6E44E;
	Thu, 18 Jul 2019 17:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com
 [IPv6:2607:f8b0:4864:20::c42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25EB46E44E
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 17:51:00 +0000 (UTC)
Received: by mail-yw1-xc42.google.com with SMTP id l79so12525875ywe.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 10:51:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QQ8jJ1h1Snanwd8TvBGLmAI2GMlwl3iAL1taWT0sP4E=;
 b=gTV0nKceiUzru0A2b6ewUrmLBNmeZgHkQTF1/41U/pNMaPGJS666upVrbHfwoQho+n
 TeydmCcgHgaxduDp57Met3Xcnr3ZtP3x0bpVxcTSsGaueNOKsYbhNG4i0pkpSiS0Ctz0
 eHjL8nlUEADDEAWKXmlrPdxcDZF0Xwd3E7YEYxZJktMPECdipt6q7e4o+gmQIF5CWRqF
 80I8zAVHKQ+eVsp45mQDMidY6C3z+YUxAbpX4DP5Wd8sRaCUD0dOymrP1W9Es78rYKwn
 kLP9g7Fa/UepjGLh87hgrNgUGqKOez+z93eVDurEhq96LKVi3ZcBFQ7RfdzjzUQIMEAv
 96+w==
X-Gm-Message-State: APjAAAUzAcB59pQZDy+UCozFeAgxZUprxKLe8UhMjUm1oFelPbyYYEPb
 I41sMo18fFynvTWMYezLPr/9wQ==
X-Google-Smtp-Source: APXvYqzlBIY7jasoBtGNQmGxbVmXlBgz58CHxJFEnCz2UlyQgKK93zt9xQq1k7ZFSQo3M+6EG2QpGA==
X-Received: by 2002:a81:b60c:: with SMTP id u12mr27070377ywh.79.1563472259335; 
 Thu, 18 Jul 2019 10:50:59 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id z6sm6964745ywg.40.2019.07.18.10.50.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 10:50:58 -0700 (PDT)
Date: Thu, 18 Jul 2019 13:50:58 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190718175058.GH31819@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-6-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718161507.2047-6-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QQ8jJ1h1Snanwd8TvBGLmAI2GMlwl3iAL1taWT0sP4E=;
 b=cxxwTkoRHbPr8y5tYuJ0j466+9eTcLCTqihDg6tBsZXX30kIUIYlGBYRUt6fYC6CSy
 G1wrGJ4FBaY2zisW+Y4CcpxSBdU51SzivYwochDSgG8hLQ/1LkM/d2iDACoCC7qUoWl+
 rLho3UcVfPOua4SFgZpckC6OV6fnC4HGEuzrlALSPDBEsnmrOcbIk4ZvAaKuBsfWJMD2
 WEqPf6ba5vfKuvtsgOuXbfTY4PiZ65k8g7prl4m6blb2JXkvpbHkOBea9hRmxAIBp6Ou
 GuhOIsT1QalyA+yL1DA4pPh+HME/s7tMxTkxmKulg7V5SLHb3pjzDU/YYsNCnF1/Ktit
 mZpw==
Subject: Re: [Intel-gfx] [PATCH v1 05/11] drm/vblank: drop use of
 DRM_WAIT_ON()
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

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDY6MTU6MDFQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IERSTV9XQUlUX09OKCkgaXMgZnJvbSB0aGUgZGVwcmVjYXRlZCBkcm1fb3NfbGludXgg
aGVhZGVyIGFuZAo+IHRoZSBtb2Rlcm4gcmVwbGFjZW1lbnQgaXMgdGhlIHdhaXRfZXZlbnRfKi4K
PiAKPiBUaGUgcmV0dXJuIHZhbHVlcyBkaWZmZXIsIHNvIGEgY29udmVyc2lvbiBpcyBuZWVkZWQg
dG8KPiBrZWVwIHRoZSBvcmlnaW5hbCBpbnRlcmZhY2UgdG93YXJkcyB1c2Vyc3BhY2UuCj4gSW50
cm9kdWNlZCBhIHN3aXRjaC9jYXNlIHRvIG1ha2UgY29kZSBvYnZpb3VzIGFuZCB0byBhbGxvdwo+
IGRpZmZlcmVudCBkZWJ1ZyBwcmludHMgZGVwZW5kaW5nIG9uIHRoZSByZXN1bHQuCj4gCj4gU2ln
bmVkLW9mZi1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgoKUmV2aWV3ZWQtYnk6
IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgoKPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF4aW1lIFJpcGFyZCA8bWF4
aW1lLnJpcGFyZEBib290bGluLmNvbT4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+
Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsQGZmd2xsLmNoPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5j
IHwgMjkgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIw
IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fdmJsYW5rLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jCj4gaW5k
ZXggNjAzYWIxMDUxMjVkLi44ZTlhYzE4NzUwMGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2RybV92YmxhbmsuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fdmJsYW5rLmMKPiBA
QCAtMzEsNyArMzEsNiBAQAo+ICAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KPiAgI2luY2x1ZGUg
PGRybS9kcm1fZnJhbWVidWZmZXIuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4KPiAt
I2luY2x1ZGUgPGRybS9kcm1fb3NfbGludXguaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fdmJsYW5r
Lmg+Cj4gIAo+ICAjaW5jbHVkZSAiZHJtX2ludGVybmFsLmgiCj4gQEAgLTE2NzIsMTkgKzE2NzEs
MzEgQEAgaW50IGRybV93YWl0X3ZibGFua19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2
b2lkICpkYXRhLAo+ICAJaWYgKHJlcV9zZXEgIT0gc2VxKSB7Cj4gIAkJRFJNX0RFQlVHKCJ3YWl0
aW5nIG9uIHZibGFuayBjb3VudCAlbGx1LCBjcnRjICV1XG4iLAo+ICAJCQkgIHJlcV9zZXEsIHBp
cGUpOwo+IC0JCURSTV9XQUlUX09OKHJldCwgdmJsYW5rLT5xdWV1ZSwgMyAqIEhaLAo+IC0JCQkg
ICAgdmJsYW5rX3Bhc3NlZChkcm1fdmJsYW5rX2NvdW50KGRldiwgcGlwZSksCj4gLQkJCQkJICBy
ZXFfc2VxKSB8fAo+IC0JCQkgICAgIVJFQURfT05DRSh2YmxhbmstPmVuYWJsZWQpKTsKPiArCQly
ZXQgPSB3YWl0X2V2ZW50X2ludGVycnVwdGlibGVfdGltZW91dCh2YmxhbmstPnF1ZXVlLAo+ICsJ
CQl2YmxhbmtfcGFzc2VkKGRybV92YmxhbmtfY291bnQoZGV2LCBwaXBlKSwgcmVxX3NlcSkgfHwK
PiArCQkJCSAgICAgICFSRUFEX09OQ0UodmJsYW5rLT5lbmFibGVkKSwKPiArCQkJbXNlY3NfdG9f
amlmZmllcygzMDAwKSk7Cj4gIAl9Cj4gIAo+IC0JaWYgKHJldCAhPSAtRUlOVFIpIHsKPiArCXN3
aXRjaCAocmV0KSB7Cj4gKwljYXNlIDA6Cj4gKwkJLyogdGltZW91dCAqLwo+ICsJCXJldCA9IC1F
QlVTWTsKPiAgCQlkcm1fd2FpdF92YmxhbmtfcmVwbHkoZGV2LCBwaXBlLCAmdmJsd2FpdC0+cmVw
bHkpOwo+IC0KPiAtCQlEUk1fREVCVUcoImNydGMgJWQgcmV0dXJuaW5nICV1IHRvIGNsaWVudFxu
IiwKPiArCQlEUk1fREVCVUcoInRpbWVvdXQgd2FpdGluZyBmb3IgdmJsYW5rLiBjcnRjICVkIHJl
dHVybmluZyAldSB0byBjbGllbnRcbiIsCj4gIAkJCSAgcGlwZSwgdmJsd2FpdC0+cmVwbHkuc2Vx
dWVuY2UpOwo+IC0JfSBlbHNlIHsKPiArCQlicmVhazsKPiArCWNhc2UgLUVSRVNUQVJUU1lTOgo+
ICsJCS8qIGludGVycnVwdGVkIGJ5IHNpZ25hbCAqLwo+ICsJCXJldCA9IC1FSU5UUjsKPiAgCQlE
Uk1fREVCVUcoImNydGMgJWQgdmJsYW5rIHdhaXQgaW50ZXJydXB0ZWQgYnkgc2lnbmFsXG4iLCBw
aXBlKTsKPiArCQlicmVhazsKPiArCWRlZmF1bHQ6Cj4gKwkJcmV0ID0gMDsKPiArCQlkcm1fd2Fp
dF92YmxhbmtfcmVwbHkoZGV2LCBwaXBlLCAmdmJsd2FpdC0+cmVwbHkpOwo+ICsJCURSTV9ERUJV
RygiY3J0YyAlZCByZXR1cm5pbmcgJXUgdG8gY2xpZW50XG4iLAo+ICsJCQkgIHBpcGUsIHZibHdh
aXQtPnJlcGx5LnNlcXVlbmNlKTsKPiArCQlicmVhazsKPiAgCX0KPiAgCj4gIGRvbmU6Cj4gLS0g
Cj4gMi4yMC4xCj4gCgotLSAKU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwgR29vZ2xlIC8g
Q2hyb21pdW0gT1MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
