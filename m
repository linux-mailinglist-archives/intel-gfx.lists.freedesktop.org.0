Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3686FCE9C6
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 18:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618A56E250;
	Mon,  7 Oct 2019 16:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com
 [IPv6:2607:f8b0:4864:20::c43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560DF6E250
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 16:48:04 +0000 (UTC)
Received: by mail-yw1-xc43.google.com with SMTP id x64so5372781ywg.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Oct 2019 09:48:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bQ7t0YfEyUi6/XxzSzzzJPgkBy/Y1npqi1QHUBdAdjs=;
 b=a74H0l2cH5foE7Am5cocB5UjRMWBr1Fc/ZgI+TcfUEMjKvvlme6UOJS8EVcvUx199a
 L9QaYDaDbdI2o5FkUufyD3fCCKAvGUJUaIcYOaV3DtqzdH6WnWIbwb0XZ/BqanJOvRDo
 WgspyoMAwLBBhP56ZqykEOqoPHhZoWFqhaJZJThqeRUYjo+U7BYldQ+QsuQkCFq7kbbC
 KPCePQj1S7hZsrAhqZxH5+04Uhu3IaE7823yE7/RaSKOEi4mNrXsBDx0SpBkCbbBzSee
 JwQjT9VVsoqa4X8X4YsYJsT8+/AolB0cxjJfqUvbK0Z2hXUp+/Swzw6z7DLcLEgce7Rs
 heOA==
X-Gm-Message-State: APjAAAUdjIuBpmcSfW2D2KRXyQJCb8G/PMfi/V0wXMvYlrWavlnrPSdk
 hskIQWgnEXF85sv/RMwuYS1WQg==
X-Google-Smtp-Source: APXvYqzqFE/kG9F8NYrqeqGMnEJIHroH1DGoJ5wHOm/YlpjWwk8tZNWrYg1M2OA9pEzzh3ILFWBkWg==
X-Received: by 2002:a81:7b05:: with SMTP id w5mr20591060ywc.15.1570466883457; 
 Mon, 07 Oct 2019 09:48:03 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id y129sm4181437ywy.41.2019.10.07.09.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 09:48:02 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:48:02 -0400
From: Sean Paul <sean@poorly.run>
To: Derek Basehore <dbasehore@chromium.org>
Message-ID: <20191007164802.GD126146@art_vandelay>
References: <20190925225833.7310-1-dbasehore@chromium.org>
 <20190925225833.7310-5-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925225833.7310-5-dbasehore@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bQ7t0YfEyUi6/XxzSzzzJPgkBy/Y1npqi1QHUBdAdjs=;
 b=W3fLoSUrj8yJnZCMtZp+3Z2XubKePSGiIXKCTJtf8NgGqe6YfhNrC9bveRjZw6wpmF
 v9jzQ5j1VQP3GRAx44r0Jhgc8TJPiEB7XTnjchviKgXZI8nD3yG7I/WgoHu3YEtryVvz
 fG4rdsgZxIXFthOSjMaybVSlmOow3T3ljx0qxNCFJpkpmiiGPJBCNNOiY057IySo7EGV
 2yf1Zh1r/t+Q8vdPk8hNVF6FtTOalBTihx2aE1PTwc4qPBruNr0J8+YNM4KwX9C1BzCc
 g8jWzB0LOr31wuXEGyYlQ9E7EGPr+FHjDYwtdXdDlFUFtbYFK+7Ic2bLdoPaPMQMlzMz
 oOCg==
Subject: Re: [Intel-gfx] [PATCH v8 4/4] drm/mtk: add panel orientation
 property
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel@lists.freedesktop.org, CK Hu <ck.hu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMDM6NTg6MzNQTSAtMDcwMCwgRGVyZWsgQmFzZWhvcmUg
d3JvdGU6Cj4gVGhpcyBpbml0cyB0aGUgcGFuZWwgb3JpZW50YXRpb24gcHJvcGVydHkgZm9yIHRo
ZSBtZWRpYXRlayBkc2kgZHJpdmVyCj4gaWYgdGhlIHBhbmVsIG9yaWVudGF0aW9uIChjb25uZWN0
b3IuZGlzcGxheV9pbmZvLnBhbmVsX29yaWVudGF0aW9uKSBpcwo+IG5vdCBEUk1fTU9ERV9QQU5F
TF9PUklFTlRBVElPTl9VTktOT1dOLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERlcmVrIEJhc2Vob3Jl
IDxkYmFzZWhvcmVAY2hyb21pdW0ub3JnPgo+IEFja2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUBy
YXZuYm9yZy5vcmc+Cj4gUmV2aWV3ZWQtYnk6IENLIEh1IDxjay5odUBtZWRpYXRlay5jb20+CgpS
ZXZpZXdlZC1ieTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+Cgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIHwgOCArKysrKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5j
Cj4gaW5kZXggMjI0YWZiNjY2ODgxLi4yOTM2OTMyMzQ0ZWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHNpLmMKPiBAQCAtNzkyLDEwICs3OTIsMTggQEAgc3RhdGljIGludCBtdGtfZHNp
X2NyZWF0ZV9jb25uZWN0b3Ioc3RydWN0IGRybV9kZXZpY2UgKmRybSwgc3RydWN0IG10a19kc2kg
KmRzaSkKPiAgCQkJRFJNX0VSUk9SKCJGYWlsZWQgdG8gYXR0YWNoIHBhbmVsIHRvIGRybVxuIik7
Cj4gIAkJCWdvdG8gZXJyX2Nvbm5lY3Rvcl9jbGVhbnVwOwo+ICAJCX0KPiArCj4gKwkJcmV0ID0g
ZHJtX2Nvbm5lY3Rvcl9pbml0X3BhbmVsX29yaWVudGF0aW9uX3Byb3BlcnR5KCZkc2ktPmNvbm4p
Owo+ICsJCWlmIChyZXQpIHsKPiArCQkJRFJNX0VSUk9SKCJGYWlsZWQgdG8gaW5pdCBwYW5lbCBv
cmllbnRhdGlvblxuIik7Cj4gKwkJCWdvdG8gZXJyX3BhbmVsX2RldGFjaDsKPiArCQl9Cj4gIAl9
Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIAo+ICtlcnJfcGFuZWxfZGV0YWNoOgo+ICsJZHJtX3BhbmVs
X2RldGFjaChkc2ktPnBhbmVsKTsKPiAgZXJyX2Nvbm5lY3Rvcl9jbGVhbnVwOgo+ICAJZHJtX2Nv
bm5lY3Rvcl9jbGVhbnVwKCZkc2ktPmNvbm4pOwo+ICAJcmV0dXJuIHJldDsKPiAtLSAKPiAyLjIz
LjAuMzUxLmdjNDMxNzAzMmU2LWdvb2cKPiAKCi0tIApTZWFuIFBhdWwsIFNvZnR3YXJlIEVuZ2lu
ZWVyLCBHb29nbGUgLyBDaHJvbWl1bSBPUwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
