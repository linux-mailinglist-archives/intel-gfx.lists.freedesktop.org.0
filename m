Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C40C23851F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 09:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC2E899EA;
	Fri,  7 Jun 2019 07:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E065B899EA
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 07:34:59 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id p26so1647867edr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jun 2019 00:34:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=jS58mmJTY5I7PXAvctEFeIpM7K0K7qQukKixQVW0/nA=;
 b=tkA8Z3cvLCtWbpgCHI38UZoVCrICFF0b0IPxWYA/H4aLVvboS9KLME4E+BI8RKnZc0
 A7L/9+2B4Ftf+u/zuPh/wymszQvibPt5M1HXNGtRLEcXly0yL+TiRHm4BMBx4UdRPKv2
 p60nrDMSwm60bJ513XUpT5jmidvBavm11Jn7xdJTllZAZCBugPseV+kiZ+JN7VOciwFJ
 kOItQo9sa3Uw5zNFcmc0UQymOzoysOvBJLtwOSk0PmYZtKemiaUDXnf3fsugBNQAZEO7
 ol1QkJz5GZHBRQSJHQ4QAEs4GJfc5xbBGNjBTj5TuGir2bMp8SoX457tkzlreyofQCv2
 /JYQ==
X-Gm-Message-State: APjAAAWTHt3bbxULzQDQMrMtEK8/f0I4uZ4n0WHYXExBZq5GJAqHULsR
 +BzAmuMCOCg6tr+6flYdj68Itw==
X-Google-Smtp-Source: APXvYqxDoJmol97F1WuvoCFnTCwQvHf4KX6AEdU4X1U42cBxozCTefF2tO2I5HuwEYnBtYk70WdLSw==
X-Received: by 2002:aa7:c991:: with SMTP id c17mr23597762edt.282.1559892898579; 
 Fri, 07 Jun 2019 00:34:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id gw2sm222882ejb.82.2019.06.07.00.34.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:34:57 -0700 (PDT)
Date: Fri, 7 Jun 2019 09:34:55 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Emil Velikov <emil.l.velikov@gmail.com>
Message-ID: <20190607073455.GA21222@phenom.ffwll.local>
References: <20190522154702.16269-1-emil.l.velikov@gmail.com>
 <20190522154702.16269-3-emil.l.velikov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522154702.16269-3-emil.l.velikov@gmail.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jS58mmJTY5I7PXAvctEFeIpM7K0K7qQukKixQVW0/nA=;
 b=DAFivv8TS5N7bN/k65bf4+3nqQnfazrBurG/NKjYaOIuJOt5wdzD+0Wocv1fChsCTx
 zgZsjmhqwzKoxvcMwyxo7E1NqbjZm1LBfnIqctRtvoydk6XKC3Z9Vy4ZHGXO7AkOoqH9
 pkL9VRlq87GC0pDTFNx9x7hjHa/DfWFsB34DI=
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: remove irrelevant
 DRM_UNLOCKED flag
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
Cc: intel-gfx@lists.freedesktop.org, kernel@collabora.com,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMDQ6NDc6MDFQTSArMDEwMCwgRW1pbCBWZWxpa292IHdy
b3RlOgo+IEZyb206IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4g
Cj4gRFJNX1VOTE9DS0VEIGRvZXNuJ3QgZG8gYW55dGhpbmcgZm9yIG5vbi1sZWdhY3kgZHJpdmVy
cy4gUmVtb3ZlIGl0Lgo+IAo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
Q2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBTaWduZWQtb2ZmLWJ5OiBFbWls
IFZlbGlrb3YgPGVtaWwudmVsaWtvdkBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jIHwgNiArKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBpbmRl
eCAxYWQ4OGU2ZDdjMDQuLmExOGMxNTVjZmY4OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+IEBAIC0zMTQ1LDkgKzMxNDUsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pb2N0bF9k
ZXNjIGk5MTVfaW9jdGxzW10gPSB7Cj4gIAlEUk1fSU9DVExfREVGX0RSVihJOTE1X0dFTV9DT05U
RVhUX0dFVFBBUkFNLCBpOTE1X2dlbV9jb250ZXh0X2dldHBhcmFtX2lvY3RsLCBEUk1fUkVOREVS
X0FMTE9XKSwKPiAgCURSTV9JT0NUTF9ERUZfRFJWKEk5MTVfR0VNX0NPTlRFWFRfU0VUUEFSQU0s
IGk5MTVfZ2VtX2NvbnRleHRfc2V0cGFyYW1faW9jdGwsIERSTV9SRU5ERVJfQUxMT1cpLAo+ICAJ
RFJNX0lPQ1RMX0RFRl9EUlYoSTkxNV9QRVJGX09QRU4sIGk5MTVfcGVyZl9vcGVuX2lvY3RsLCBE
Uk1fUkVOREVSX0FMTE9XKSwKPiAtCURSTV9JT0NUTF9ERUZfRFJWKEk5MTVfUEVSRl9BRERfQ09O
RklHLCBpOTE1X3BlcmZfYWRkX2NvbmZpZ19pb2N0bCwgRFJNX1VOTE9DS0VEfERSTV9SRU5ERVJf
QUxMT1cpLAo+IC0JRFJNX0lPQ1RMX0RFRl9EUlYoSTkxNV9QRVJGX1JFTU9WRV9DT05GSUcsIGk5
MTVfcGVyZl9yZW1vdmVfY29uZmlnX2lvY3RsLCBEUk1fVU5MT0NLRUR8RFJNX1JFTkRFUl9BTExP
VyksCj4gLQlEUk1fSU9DVExfREVGX0RSVihJOTE1X1FVRVJZLCBpOTE1X3F1ZXJ5X2lvY3RsLCBE
Uk1fVU5MT0NLRUR8RFJNX1JFTkRFUl9BTExPVyksCj4gKwlEUk1fSU9DVExfREVGX0RSVihJOTE1
X1BFUkZfQUREX0NPTkZJRywgaTkxNV9wZXJmX2FkZF9jb25maWdfaW9jdGwsIERSTV9SRU5ERVJf
QUxMT1cpLAo+ICsJRFJNX0lPQ1RMX0RFRl9EUlYoSTkxNV9QRVJGX1JFTU9WRV9DT05GSUcsIGk5
MTVfcGVyZl9yZW1vdmVfY29uZmlnX2lvY3RsLCBEUk1fUkVOREVSX0FMTE9XKSwKPiArCURSTV9J
T0NUTF9ERUZfRFJWKEk5MTVfUVVFUlksIGk5MTVfcXVlcnlfaW9jdGwsIERSTV9SRU5ERVJfQUxM
T1cpLAo+ICB9Owo+ICAKPiAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGRyaXZlciA9IHsKPiAt
LSAKPiAyLjIxLjAKPiAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
