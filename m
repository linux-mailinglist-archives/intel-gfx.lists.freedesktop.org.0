Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2892BCFD0C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 17:03:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43FD56E824;
	Tue,  8 Oct 2019 15:03:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com
 [IPv6:2607:f8b0:4864:20::b41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C52E6E823
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 15:02:59 +0000 (UTC)
Received: by mail-yb1-xb41.google.com with SMTP id q143so4744074ybg.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Oct 2019 08:02:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nZTSIKqLe1Xh/tE/i1buAM4aJM5s7zBbM3sshp8Umhc=;
 b=r8mzupT0vqATs8hI/MF33SA6ftvjelcIsDdaLOxPzSZcuksMZt5MWCqjFeTSitsICO
 8h2M2E+3gNuyUOE/zpimqwoRBOYiL7d4gajUDJdznsauxnlrdtE55uoFDuijuetPKvm/
 0lId/w+VS3H1BGwCdQMfXhznz9pnN4A1VjixQSbp2ds8LqLsHqmvHSzJyXvPf81L3inj
 wR6sGH/0kr3HPjuTQ04T3ve1LafW85YjiAzaQkoqwAroaCbgu7aYk2bV9nWIIt9oiv6V
 X2Far3PkSZ87vJkVBc9iZc+GUB9+SbjZss9903UPLKnA0yXzIrzU2o8WoLkfdKSBafbV
 H1PA==
X-Gm-Message-State: APjAAAVRHKo/2E+UMk6k4JAuCVNIhKhiNwRHg3jxgZ+4I+qflBODrwpd
 g2tZ3zr3xe/X4Bz2s3wqVt0IDQ==
X-Google-Smtp-Source: APXvYqy39p5S3WFZZT7NiYaub1fXy7Bu93rQKzD9kNuqH+MdsdnurfzRi4Ts2yLz/4adcpC4DJClcA==
X-Received: by 2002:a25:c504:: with SMTP id v4mr14307259ybe.375.1570546978393; 
 Tue, 08 Oct 2019 08:02:58 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id g20sm4699956ywe.98.2019.10.08.08.02.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:02:57 -0700 (PDT)
Date: Tue, 8 Oct 2019 11:02:57 -0400
From: Sean Paul <sean@poorly.run>
To: "dbasehore ." <dbasehore@chromium.org>
Message-ID: <20191008150257.GB85762@art_vandelay>
References: <20190925225833.7310-3-dbasehore@chromium.org>
 <20190929052307.GA28304@jamwan02-TSP300>
 <CAGAzgspEA0mcEHwgxyWWh3Gn-iC+a21g5GUrhsRJrTHQ_OAYqQ@mail.gmail.com>
 <20191007164441.GB126146@art_vandelay>
 <CAGAzgsoGNNTeYTmRyC5YNGDHL+SBB2oCFaHFubYa=dnPst=f8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGAzgsoGNNTeYTmRyC5YNGDHL+SBB2oCFaHFubYa=dnPst=f8Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nZTSIKqLe1Xh/tE/i1buAM4aJM5s7zBbM3sshp8Umhc=;
 b=dhhnvkQgwFWhCMKQ+XWonnecZzsSaVFVBPrCxe2TMcLGkg5PNZb0wW8wLsONDEKG/Q
 rWf9Ir2IRavbsOX42BgmynaM/qEn8Yc2zJputvpdjVW9LWkzzHYFFfirCWRbAopX8LR3
 o3ugcF8CWEoDnsZPD0YhgVQyISOrfeIXK3IPVnVGgbrqr8CEv15mHvpjHW4yG6IDped1
 kBKP4vmgM+mwB+FUgy5nEQRmPz1iGWJMYeCW9q4MW9WqXOrPbXO2tdQjUSS7XpZZFI2m
 u4c5UPYbjez2vEFAV0S81/W069RicABkUfiH9j5Ce9Y9XC1138v0KD83LSj/NpnHXOOu
 Wk6w==
Subject: Re: [Intel-gfx] [v8,
 2/4] drm/panel: set display info in panel attach
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sam Ravnborg <sam@ravnborg.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>,
 "james qian wang \(Arm Technology China\)" <james.qian.wang@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

L3NuaXAKCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmggYi9p
bmNsdWRlL2RybS9kcm1fcGFuZWwuaAo+ID4gPiA+ID4gaW5kZXggZDE2MTU4ZGVhY2RjLi5mMzU4
N2E1NGI4YWMgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fcGFuZWwuaAo+
ID4gPiA+ID4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX3BhbmVsLmgKPiA+ID4gPiA+IEBAIC0xNDEs
NiArMTQxLDU2IEBAIHN0cnVjdCBkcm1fcGFuZWwgewo+ID4gPiA+ID4gICAgICAgICovCj4gPiA+
ID4gPiAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX3BhbmVsX2Z1bmNzICpmdW5jczsKPiA+ID4gPiA+
Cj4gPiA+ID4KPiA+ID4gPiBBbGwgdGhlc2UgbmV3IGFkZGVkIG1lbWJlcnMgc2VlbXMgZHVwbGlh
dGVkIHdpdGggZHJtX2Rpc3BsYXlfaW5mbywKPiA+ID4gPiBTbyBJIHRoaW5rLCBjYW4gd2UgYWRk
IGEgbmV3IGRybV9wbGFuZV9mdW5jcyBmdW5jOgo+ID4gPiA+Cj4gPiA+ID4gaW50ICgqc2V0X2Rp
c3BsYXlfaW5mbykoc3RydWN0IGRybV9wYW5lbCAqcGFuZWwsCj4gPiA+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGRybV9kaXNwbGF5X2luZm8gKmluZm8pOwo+ID4gPgo+ID4gPiBJ
IGRvbid0IGRpc2FncmVlIHBlcnNvbmFsbHksIHNpbmNlIEkgb3JpZ2luYWxseSB3cm90ZSBpdCB0
aGlzIHdheSwgYnV0Cj4gPiA+IDIgbWFpbnRhaW5lcnMsIERhbmllbCBWZXR0ZXIgYW5kIFRoaWVy
cnkgUmVkaW5nLCByZXF1ZXN0ZWQgdGhhdCBpdCBiZQo+ID4gPiBjaGFuZ2VkLiBVbmxlc3MgdGhh
dCBkZWNpc2lvbiBpcyByZXZlcnNlZCwgSSB3b24ndCBiZSBjaGFuZ2luZyB0aGlzLgo+ID4gPgo+
ID4KPiA+IFJlYWRpbmcgYmFjayB0aGUgZmVlZGJhY2sgb24gdjEsIEkgZG9uJ3QgdGhpbmsgYW55
b25lIHNhaWQgdGhleSB3ZXJlIGFnYWluc3QKPiA+IHN0b3JpbmcgYSBkcm1fZGlzcGxheV9pbmZv
IHN0cnVjdCBpbiBkcm1fcGFuZWwgKG5vIG9uZSByZWFsbHkgd2VpZ2hlZCBpbiBvbgo+ID4gaXQg
b25lIHdheSBvciBhbm90aGVyKS4gSU1PIGR1cGxpY2F0aW5nIGEgYnVuY2ggb2YgZmllbGRzIGZl
ZWxzIHByZXR0eSBpY2t5Lgo+IAo+IFRoYW5rcyBmb3IgdGhlIHJldmlldy4gU2hvdWxkIHdlIGR1
cGxpY2F0ZSB0aGUgZW50aXJlIHN0cnVjdCwgb3IganVzdAo+IGNyZWF0ZSBhIHN1Yi1zdHJ1Y3Qs
IHNheSwgcGh5c2ljYWxfcHJvcGVydGllcyB0aGF0IHdpbGwgYmUgcGFydCBvZgo+IGRybV9kaXNw
bGF5X2luZm8gYW5kIGRybV9wYW5lbD8KClRoYXQncyBhIGdvb2QgaWRlYSwgYnV0IEkgdGhpbmsg
eW91IGNhbiB1c2UgdGhlIGVudGlyZSBzdHJ1Y3QuIEV2ZXJ5dGhpbmcgaGFzCnJlYXNvbmFibGUg
ZGVmYXVsdCB2YWx1ZXMgYW5kIEkgdGhpbmsgaXQgbWlnaHQgYmUgZGlmZmljdWx0IHRvIGRyYXcg
YSBsaW5lIGluCnRoZSBzYW5kIGFzIHRvIHdoaWNoIGZpZWxkcyB3aWxsIG9yIHdvbid0IGJlIHVz
ZWZ1bCBmb3IgcGFuZWxzIGdvaW5nIGZvcndhcmQuCkJlc3QgZm9yIGRyaXZlcnMgdG8ganVzdCB0
cmVhdCB0aGUgaW5mbyBpbiBkcm1fZGlzcGxheV9pbmZvIGFzIGJlc3QgZWZmb3J0IGFuZApoYXZl
IGdvb2QgZGVmYXVsdHMgSU1PLgoKU2VhbgoKPiAKPiA+Cj4gPiBJIHRoaW5rIG1vc3QgZmllbGRz
IGluIGRybV9kaXNwbGF5X2luZm8gaGF2ZSBwcmV0dHkgcmVhc29uYWJsZSBkZWZhdWx0cywgc28g
SSdkCj4gPiByZWNvbW1lbmQganVzdCBzdG9yaW5nIGEgY29weSBpbiBkcm1fcGFuZWwuIEFzIFRo
aWVycnkgc3VnZ2VzdHMsIHdlIGNhbgo+ID4gcG9wdWxhdGUgdGhlIGR0IHBhcnRzIGluIHByb2Jl
IChvcmllbnRhdGlvbikgYW5kIHRoZW4gY29weSBvdmVyIGFsbCBvciBhIHN1YnNldAo+ID4gb2Yg
dGhlIHN0cnVjdCB0byBjb25uZWN0b3Igb24gYXR0YWNoLgo+ID4KPiA+IFNlYW4KPiA+Cj4gPiA+
ID4KPiA+ID4gPiBUaGVuIGluIGRybV9wYW5lbF9hdHRhY2goKSwgdmlhIHRoaXMgaW50ZXJmYWNl
IHRoZSBzcGVjaWZpYyBwYW5lbAo+ID4gPiA+IGRyaXZlciBjYW4gZGlyZWN0bHkgc2V0IGNvbm5l
Y3Rvci0+ZGlzcGxheV9pbmZvLiBsaWtlCj4gPiA+ID4KPiA+ID4gPiAgICAuLi4KPiA+ID4gPiAg
ICBpZiAocGFuZWwtPmZ1bmNzICYmIHBhbmVsLT5mdW5jcy0+c2V0X2Rpc3BsYXlfaW5mbykKPiA+
ID4gPiAgICAgICAgICAgICAgICAgcGFuZWwtPmZ1bmNzLT51bnByZXBhcmUocGFuZWwsIGNvbm5l
Y3Rvci0+ZGlzcGxheV9pbmZvKTsKPiA+ID4gPiAgICAuLi4KPiA+ID4gPgo+ID4gPiA+IFRoYW5r
cwo+ID4gPiA+IEphbWVzCj4gPiA+ID4KPiA+ID4gPiA+ICsgICAgIC8qKgo+ID4gPiA+ID4gKyAg
ICAgICogQHdpZHRoX21tOgo+ID4gPiA+ID4gKyAgICAgICoKPiA+ID4gPiA+ICsgICAgICAqIFBo
eXNpY2FsIHdpZHRoIGluIG1tLgo+ID4gPiA+ID4gKyAgICAgICovCj4gPiA+ID4gPiArICAgICB1
bnNpZ25lZCBpbnQgd2lkdGhfbW07Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAvKioKPiA+
ID4gPiA+ICsgICAgICAqIEBoZWlnaHRfbW06Cj4gPiA+ID4gPiArICAgICAgKgo+ID4gPiA+ID4g
KyAgICAgICogUGh5c2ljYWwgaGVpZ2h0IGluIG1tLgo+ID4gPiA+ID4gKyAgICAgICovCj4gPiA+
ID4gPiArICAgICB1bnNpZ25lZCBpbnQgaGVpZ2h0X21tOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
KyAgICAgLyoqCj4gPiA+ID4gPiArICAgICAgKiBAYnBjOgo+ID4gPiA+ID4gKyAgICAgICoKPiA+
ID4gPiA+ICsgICAgICAqIE1heGltdW0gYml0cyBwZXIgY29sb3IgY2hhbm5lbC4gVXNlZCBieSBI
RE1JIGFuZCBEUCBvdXRwdXRzLgo+ID4gPiA+ID4gKyAgICAgICovCj4gPiA+ID4gPiArICAgICB1
bnNpZ25lZCBpbnQgYnBjOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgLyoqCj4gPiA+ID4g
PiArICAgICAgKiBAb3JpZW50YXRpb24KPiA+ID4gPiA+ICsgICAgICAqCj4gPiA+ID4gPiArICAg
ICAgKiBJbnN0YWxsYXRpb24gb3JpZW50YXRpb24gb2YgdGhlIHBhbmVsIHdpdGggcmVzcGVjdCB0
byB0aGUgY2hhc3Npcy4KPiA+ID4gPiA+ICsgICAgICAqLwo+ID4gPiA+ID4gKyAgICAgaW50IG9y
aWVudGF0aW9uOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgLyoqCj4gPiA+ID4gPiArICAg
ICAgKiBAYnVzX2Zvcm1hdHMKPiA+ID4gPiA+ICsgICAgICAqCj4gPiA+ID4gPiArICAgICAgKiBQ
aXhlbCBkYXRhIGZvcm1hdCBvbiB0aGUgd2lyZS4KPiA+ID4gPiA+ICsgICAgICAqLwo+ID4gPiA+
ID4gKyAgICAgY29uc3QgdTMyICpidXNfZm9ybWF0czsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsg
ICAgIC8qKgo+ID4gPiA+ID4gKyAgICAgICogQG51bV9idXNfZm9ybWF0czoKPiA+ID4gPiA+ICsg
ICAgICAqCj4gPiA+ID4gPiArICAgICAgKiBOdW1iZXIgb2YgZWxlbWVudHMgcG9pbnRlZCB0byBi
eSBAYnVzX2Zvcm1hdHMKPiA+ID4gPiA+ICsgICAgICAqLwo+ID4gPiA+ID4gKyAgICAgdW5zaWdu
ZWQgaW50IG51bV9idXNfZm9ybWF0czsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgIC8qKgo+
ID4gPiA+ID4gKyAgICAgICogQGJ1c19mbGFnczoKPiA+ID4gPiA+ICsgICAgICAqCj4gPiA+ID4g
PiArICAgICAgKiBBZGRpdGlvbmFsIGluZm9ybWF0aW9uIChsaWtlIHBpeGVsIHNpZ25hbCBwb2xh
cml0eSkgZm9yIHRoZSBwaXhlbAo+ID4gPiA+ID4gKyAgICAgICogZGF0YSBvbiB0aGUgYnVzLgo+
ID4gPiA+ID4gKyAgICAgICovCj4gPiA+ID4gPiArICAgICB1MzIgYnVzX2ZsYWdzOwo+ID4gPiA+
ID4gKwo+ID4gPiA+ID4gICAgICAgLyoqCj4gPiA+ID4gPiAgICAgICAgKiBAbGlzdDoKPiA+ID4g
PiA+ICAgICAgICAqCj4gPiA+Cj4gPiA+IFRoYW5rcyBmb3IgdGhlIHJldmlldwo+ID4KPiA+IC0t
Cj4gPiBTZWFuIFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVyLCBHb29nbGUgLyBDaHJvbWl1bSBPUwoK
LS0gClNlYW4gUGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
