Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C380A45091
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 02:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D00892EA;
	Fri, 14 Jun 2019 00:32:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1383892ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 00:32:33 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id 190so666312vsf.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 17:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5o5a2UNvqnt2IqG/d30r1Z1PI+lkRFVIZCDDvP3GRa4=;
 b=CIh1a+78Rf1d+pccNJlUmUee/SPhCoLGlYaZHUi7ox1nYEuWsRZhPKav7mTjCmq0oj
 ayYwlzyHe6ryrmYRn+KGm2Q4FcoQMDKNVHl6qmp7xPqcPYlGNpjMWeb/X5h90RsGJCVj
 Ipa34xi5tDoTVFm9rHD20inv9RWbTBVwq+/fJNa/H7HTvTfAA/wwmzL63swYiMFakvVc
 p2gnixf/2KhJ39+0O3RsNRrJZcLBKX3Ju6KLGk6W3kEOg8GIBHYpMJ67lc83i5MJUhAb
 GMxHBYRI/supN+P4BlKE/SQ/+8C8wRkvM0oxRzKM6qmmxz9DgWJ6kFk0XHgoqwmg4jFl
 kA4A==
X-Gm-Message-State: APjAAAWl1hQiDojf/bAyod12iPRMPeLGaZX2kNOk+woFr9ikQu7RASqP
 Hkw3Nl8WoGJE1tBpk5pmQDsjKC4+wXPqIHmVT+y//w==
X-Google-Smtp-Source: APXvYqyFuFyDZEX0VGqPH3v35EIiUK6ftc8JlgTdYuQL9iHMbG0bt8E4uHg/PoKRrVKv16C9BEZM1mqeIvYNB77SyX0=
X-Received: by 2002:a67:d384:: with SMTP id b4mr18708468vsj.152.1560472352531; 
 Thu, 13 Jun 2019 17:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-2-dbasehore@chromium.org>
 <20190612212054.GB13155@ravnborg.org>
In-Reply-To: <20190612212054.GB13155@ravnborg.org>
From: "dbasehore ." <dbasehore@chromium.org>
Date: Thu, 13 Jun 2019 17:32:21 -0700
Message-ID: <CAGAzgspS_cSDYDUTgApK4R814r3gZk63oe+CdtqDuiXrTG5JdA@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=5o5a2UNvqnt2IqG/d30r1Z1PI+lkRFVIZCDDvP3GRa4=;
 b=QSPL5o2oBNVzptcEqAin35G0xLo0WWvgdOOO2+lJQerKfjKIYK/6oBSgxbDxGyOeXK
 xc1Z2RyR8khlsHj7h/56FHn401h/hL1ihSqJACQe/klR228W7RgTufBtib0cQQpfqY5/
 S4NO2rnjTaZdsxN6OkMcnGXhGm9ft7LyISYAE=
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/panel: Add helper for reading DT
 rotation
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMjoyMCBQTSBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+IHdyb3RlOgo+Cj4gSGkgRGVyZWsuCj4KPiBPbiBNb24sIEp1biAxMCwgMjAxOSBhdCAw
OTowMzo0NlBNIC0wNzAwLCBEZXJlayBCYXNlaG9yZSB3cm90ZToKPiA+IFRoaXMgYWRkcyBhIGhl
bHBlciBmdW5jdGlvbiBmb3IgcmVhZGluZyB0aGUgcm90YXRpb24gKHBhbmVsCj4gPiBvcmllbnRh
dGlvbikgZnJvbSB0aGUgZGV2aWNlIHRyZWUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRGVyZWsg
QmFzZWhvcmUgPGRiYXNlaG9yZUBjaHJvbWl1bS5vcmc+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vZHJtX3BhbmVsLmMgfCA0MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCj4gPiAgaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggICAgIHwgIDcgKysrKysrKwo+ID4gIDIg
ZmlsZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMKPiA+
IGluZGV4IGRiZDViODczZThmMi4uM2I2ODljZTRhNTFhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9wYW5lbC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVs
LmMKPiA+IEBAIC0xNzIsNiArMTcyLDQ3IEBAIHN0cnVjdCBkcm1fcGFuZWwgKm9mX2RybV9maW5k
X3BhbmVsKGNvbnN0IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4gPiAgICAgICByZXR1cm4gRVJS
X1BUUigtRVBST0JFX0RFRkVSKTsKPiA+ICB9Cj4gPiAgRVhQT1JUX1NZTUJPTChvZl9kcm1fZmlu
ZF9wYW5lbCk7Cj4gPiArCj4gPiArLyoqCj4gPiArICogb2ZfZHJtX2dldF9wYW5lbF9vcmllbnRh
dGlvbiAtIGxvb2sgdXAgdGhlIHJvdGF0aW9uIG9mIHRoZSBwYW5lbCB1c2luZyBhCj4gPiArICog
ZGV2aWNlIHRyZWUgbm9kZQo+ID4gKyAqIEBucDogZGV2aWNlIHRyZWUgbm9kZSBvZiB0aGUgcGFu
ZWwKPiA+ICsgKiBAb3JpZW50YXRpb246IG9yaWVudGF0aW9uIGVudW0gdG8gYmUgZmlsbGVkIGlu
Cj4gPiArICoKPiA+ICsgKiBMb29rcyB1cCB0aGUgcm90YXRpb24gb2YgYSBwYW5lbCBpbiB0aGUg
ZGV2aWNlIHRyZWUuIFRoZSByb3RhdGlvbiBpbiB0aGUKPiA+ICsgKiBkZXZpY2UgdHJlZSBpcyBj
b3VudGVyIGNsb2Nrd2lzZS4KPiA+ICsgKgo+ID4gKyAqIFJldHVybjogMCB3aGVuIGEgdmFsaWQg
cm90YXRpb24gdmFsdWUgKDAsIDkwLCAxODAsIG9yIDI3MCkgaXMgcmVhZCBvciB0aGUKPiA+ICsg
KiByb3RhdGlvbiBwcm9wZXJ0eSBkb2Vzbid0IGV4aXN0LiAtRUVSUk9SIG90aGVyd2lzZS4KPiA+
ICsgKi8KPiA+ICtpbnQgb2ZfZHJtX2dldF9wYW5lbF9vcmllbnRhdGlvbihjb25zdCBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wLCBpbnQgKm9yaWVudGF0aW9uKQo+ID4gK3sKPiA+ICsgICAgIGludCBy
b3RhdGlvbiwgcmV0Owo+ID4gKwo+ID4gKyAgICAgcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91MzIo
bnAsICJyb3RhdGlvbiIsICZyb3RhdGlvbik7Cj4KPiBJIGp1c3Qgbm90aWNlZCB0aGF0IGV2ZXJ5
d2hlcmUgdGhpcyBjb2RlIHRhbGtzIGFib3V0IG9yaWVudGF0aW9uLAo+IGJ1dCB0aGUgcHJvcGVy
dHkgdGhhdCBpdCByZWFkcyBhcmUgcm90YXRpb24uCj4gVG8gbXkgYmVzdCB1bmRlcnN0YW5kaW5n
IHRoZXNlIGFyZSBub3QgdGhlIHNhbWUuCgpUaGlzIGlzIGJlY2F1c2UgYm90aCB3ZXJlIHByZXZp
b3VzbHkgZGVmaW5lZCBpbiB0aGUga2VybmVsLiBSb3RhdGlvbgp3YXMgZGVmaW5lZCBhcyBhIGJp
bmRpbmcgaW4gdGhlIGRldmljZXRyZWUgZm9yIHBhbmVscyAod2hpY2ggaXMgd2hlcmUKd2Ugd2Fu
dGVkIHRvIHB1dCB0aGlzIHByb3BlcnR5KSBhbmQgb3JpZW50YXRpb24gYWxyZWFkeSBleGlzdHMg
YXMgYQpEUk0gcHJvcGVydHkuCgpJZiB3ZSB3YW50IHRvIGNoYW5nZSBvbmUsIEkgd291bGQgc3Vn
Z2VzdCB0aGUgcm90YXRpb24gYmluZGluZyBzaW5jZQppdCBkb2Vzbid0IGhhdmUgYW55IHVwc3Ry
ZWFtIHVzZXJzIHlldC4KCj4KPiAgICAgICAgIFNhbQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
