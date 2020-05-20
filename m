Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F04231DBC3A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 20:03:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A57146E87C;
	Wed, 20 May 2020 18:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99C9389C27
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 18:03:38 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id i15so4065754wrx.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 11:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=/pzNIw5NMKlF1N9TSGtP2POLjyaFra4+alsVvEVR4Qo=;
 b=RVbzbeZJwQKn0fQJxBC+d3QQf+4Jc9ERELRrF6QN95Jy6i+oa32iKhFYYJLi4vMvIs
 v33khe4x4YGuIGCNzTToI+mqqNtkrtcxGbva5kt1BUX5731/nDwW0mhyJNyPVVSOIDLx
 3Lk9f5cOp7RmhmE3nLJT9TFSaP34iblyoCoAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=/pzNIw5NMKlF1N9TSGtP2POLjyaFra4+alsVvEVR4Qo=;
 b=OArQXltchB3joBTHKz/7cmW3eFsv0aDH0Aw20fL3ldJXKcg3TY2qPKVofdocgrBErV
 gUXYwm6gNt7dSKoAwIFnRI6xuTDq7ofa0yH7sGvIu+tma5WrPIioUlig4E8ZuJsTDIBR
 fYqBJmEYK3VzMoR/iMSChgrDAaFcoKWbh3NdBkYIT9Zzge6vfiURjlUzVAEskCuCAHaF
 rHdJ2mLfDhzOP/BW2QMMuDrvCV7TeEXNQDRMZq09DxohXF3ENn7aJo33unh8nTvwCYeA
 UzYptT0WPSZCRsykDsbGQOGMbDE0n7h8xqabNqRbbDVrIoZ86hMeNk+0LHVcNwzE9CAq
 iDJA==
X-Gm-Message-State: AOAM533LaSPNFK29PesRCOecHpy72Gll5UBqvu2X+Js2AwSyLGDnkqSz
 rcHdPGkjs9L3Gzv3q6H+yz7dFg==
X-Google-Smtp-Source: ABdhPJxnsEvkukkCUZ+pGF+Xtq0q8Edmwd/+xQRwa/22eS6mkMjcbznb681Tz/hdxqAdzYaJBNcsRg==
X-Received: by 2002:a5d:69c3:: with SMTP id s3mr4974085wrw.305.1589997817336; 
 Wed, 20 May 2020 11:03:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d9sm3869848wmd.10.2020.05.20.11.03.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 11:03:36 -0700 (PDT)
Date: Wed, 20 May 2020 20:03:34 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Message-ID: <20200520180334.GB206103@phenom.ffwll.local>
Mail-Followup-To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 "Vetter, Daniel" <daniel.vetter@intel.com>
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
 <14063C7AD467DE4B82DEDB5C278E8663010E20F82D@FMSMSX108.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E8663010E20F82D@FMSMSX108.amr.corp.intel.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/writeback: don't set fence->ops to
 default
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, "Vetter,
 Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMTEsIDIwMjAgYXQgMDY6MTI6MzJQTSArMDAwMCwgUnVobCwgTWljaGFlbCBK
IHdyb3RlOgo+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID5Gcm9tOiBkcmktZGV2ZWwg
PGRyaS1kZXZlbC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mCj4g
PkRhbmllbCBWZXR0ZXIKPiA+U2VudDogTW9uZGF5LCBNYXkgMTEsIDIwMjAgNToxMiBBTQo+ID5U
bzogTEtNTCA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4KPiA+Q2M6IERhdmlkIEFpcmxp
ZSA8YWlybGllZEBsaW51eC5pZT47IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwu
Y2g+Owo+ID5JbnRlbCBHcmFwaGljcyBEZXZlbG9wbWVudCA8aW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZz47IERSSQo+ID5EZXZlbG9wbWVudCA8ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZz47IFRob21hcyBaaW1tZXJtYW5uCj4gPjx0emltbWVybWFubkBzdXNlLmRlPjsgVmV0
dGVyLCBEYW5pZWwgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID5TdWJqZWN0OiBbUEFUQ0gg
MS8zXSBkcm0vd3JpdGViYWNrOiBkb24ndCBzZXQgZmVuY2UtPm9wcyB0byBkZWZhdWx0Cj4gPgo+
ID5JdCdzIHRoZSBkZWZhdWx0Lgo+IAo+IEkgY2FuIGdldCBiZWhpbmQgdGhhdC4g8J+Yigo+IAo+
IFJldmlld2VkLWJ5OiBNaWNoYWVsIEouIFJ1aGwgPG1pY2hhZWwuai5ydWhsQGludGVsLmNvbT4K
CkFwcGxpZWQgdG8gZHJtLW1pc2MtbmV4dCwgdGhhbmtzIGZvciByZXZpZXdpbmcuCi1EYW5pZWwK
Cj4gCj4gPlNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwu
Y29tPgo+ID5DYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4Lmlu
dGVsLmNvbT4KPiA+Q2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPiA+Q2M6
IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgo+ID5DYzogRGF2aWQgQWly
bGllIDxhaXJsaWVkQGxpbnV4LmllPgo+ID5DYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPgo+ID4tLS0KPiA+IGRyaXZlcnMvZ3B1L2RybS9kcm1fd3JpdGViYWNrLmMgfCAxIC0KPiA+
IDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID5kaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV93cml0ZWJhY2suYwo+ID5iL2RyaXZlcnMvZ3B1L2RybS9kcm1fd3JpdGVi
YWNrLmMKPiA+aW5kZXggNDNkOWUzYmIzYTk0Li5kY2NmNDUwNGYxYmIgMTAwNjQ0Cj4gPi0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fd3JpdGViYWNrLmMKPiA+KysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV93cml0ZWJhY2suYwo+ID5AQCAtMTA4LDcgKzEwOCw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZG1hX2ZlbmNlX29wcwo+ID5kcm1fd3JpdGViYWNrX2ZlbmNlX29wcyA9IHsKPiA+IAkuZ2V0
X2RyaXZlcl9uYW1lID0gZHJtX3dyaXRlYmFja19mZW5jZV9nZXRfZHJpdmVyX25hbWUsCj4gPiAJ
LmdldF90aW1lbGluZV9uYW1lID0gZHJtX3dyaXRlYmFja19mZW5jZV9nZXRfdGltZWxpbmVfbmFt
ZSwKPiA+IAkuZW5hYmxlX3NpZ25hbGluZyA9IGRybV93cml0ZWJhY2tfZmVuY2VfZW5hYmxlX3Np
Z25hbGluZywKPiA+LQkud2FpdCA9IGRtYV9mZW5jZV9kZWZhdWx0X3dhaXQsCj4gPiB9Owo+ID4K
PiA+IHN0YXRpYyBpbnQgY3JlYXRlX3dyaXRlYmFja19wcm9wZXJ0aWVzKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYpCj4gPi0tCj4gPjIuMjYuMgo+ID4KPiA+X19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiA+ZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+ID5kcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2Fy
ZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
