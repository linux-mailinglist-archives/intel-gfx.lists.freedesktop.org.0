Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D558E4FE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 08:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79FEF6E89D;
	Thu, 15 Aug 2019 06:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F2D6E8A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 06:47:11 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id s49so1318887edb.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 23:47:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=/idpduwU3yD5MGOQLN6gjyI1d75hHNv0VgVkPg7YETw=;
 b=GMDE9zI1j+WuNXVBjhEdVskEZlvVb/EU7oqG/ewi/oDK0GtqYkpamF7p21Zk5znIL1
 5pwRgTs37jJqi0aY60TO8IU4UMGGJfnZodvGO9Qzh5Ef2y7ykbMJFutSs6TJBfnC5X7+
 Y7N4uLsmNZLjL2wucxyizcKp8C4OaM/qo3sP1zIMiTT6fUOtatXQoA1Mr8sNl2HYbfT3
 mpQSiVln1jIiqhge/ZKEi5aqsFECJ1Mf2g9zyRbW0ifCVCcscB11oP1Ym2jIviQ8YVLl
 ZCqOXr1whC7X9OVujZoaOJL03IwOZJYBKqx7noymPmYXm4FjcLEypMiYBKMxjj+IcHfK
 bUlw==
X-Gm-Message-State: APjAAAVc9Twdvt9mqFv9pBeZ6VXe2M+SybCvCoVv6tsnrfcGqjP7MEfI
 J7oOVwSykaHzkOk1lDZ20E/pHw==
X-Google-Smtp-Source: APXvYqxFGwsM+EcdAlO9gCHLw0NIpBqHxiER+gQMaHy6Yf4506bh6Wm4Tl54o4hXSHxdHPO5jattrg==
X-Received: by 2002:a17:906:2401:: with SMTP id
 z1mr2992716eja.292.1565851630285; 
 Wed, 14 Aug 2019 23:47:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n42sm386177edd.31.2019.08.14.23.47.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 23:47:09 -0700 (PDT)
Date: Thu, 15 Aug 2019 08:47:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20190815064707.GY7444@phenom.ffwll.local>
References: <20190812154247.20508-1-chris@chris-wilson.co.uk>
 <20190812190548.450CF20684@mail.kernel.org>
 <20190814172415.GN7444@phenom.ffwll.local>
 <20190815014641.GB31807@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815014641.GB31807@sasha-vm>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/idpduwU3yD5MGOQLN6gjyI1d75hHNv0VgVkPg7YETw=;
 b=J207I9Z4SslLflfMR/XiSnmlB6tzNPwaIxRnAOejLFSgUOLlPVWp6OcNlR0KgTa6sl
 XpDlTYDrRFtA2pIH74aPdRnMYr6xzb8D2UK/ph4kKHAhmSq+1Kqwjq0PJ+93XyFy87x0
 tN+6091XBib5jq+ZtSPvgSp0zWTJ9Jhs3Ih/A=
Subject: Re: [Intel-gfx] [PATCH] dma-buf/sw_sync: Synchronize signal vs
 syncpt free
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
Cc: Gustavo Padovan <gustavo@padovan.org>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org, Sean Paul <seanpaul@chromium.org>,
 dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMDk6NDY6NDFQTSAtMDQwMCwgU2FzaGEgTGV2aW4gd3Jv
dGU6Cj4gT24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMDc6MjQ6MTVQTSArMDIwMCwgRGFuaWVsIFZl
dHRlciB3cm90ZToKPiA+IEhpIFNhc2hhLAo+ID4gCj4gPiBPbiBNb24sIEF1ZyAxMiwgMjAxOSBh
dCAwNzowNTo0N1BNICswMDAwLCBTYXNoYSBMZXZpbiB3cm90ZToKPiA+ID4gSGksCj4gPiA+IAo+
ID4gPiBbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCj4gPiA+IAo+ID4gPiBUaGlzIGNvbW1p
dCBoYXMgYmVlbiBwcm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhICJGaXhlczoiIHRhZywK
PiA+ID4gZml4aW5nIGNvbW1pdDogZDM4NjJlNDRkYWE3IGRtYS1idWYvc3ctc3luYzogRml4IGxv
Y2tpbmcgYXJvdW5kIHN5bmNfdGltZWxpbmUgbGlzdHMuCj4gPiA+IAo+ID4gPiBUaGUgYm90IGhh
cyB0ZXN0ZWQgdGhlIGZvbGxvd2luZyB0cmVlczogdjUuMi44LCB2NC4xOS42NiwgdjQuMTQuMTM4
LCB2NC45LjE4OS4KPiA+ID4gCj4gPiA+IHY1LjIuODogQnVpbGQgT0shCj4gPiA+IHY0LjE5LjY2
OiBCdWlsZCBPSyEKPiA+ID4gdjQuMTQuMTM4OiBCdWlsZCBPSyEKPiA+ID4gdjQuOS4xODk6IEZh
aWxlZCB0byBhcHBseSEgUG9zc2libGUgZGVwZW5kZW5jaWVzOgo+ID4gPiAgICAgVW5hYmxlIHRv
IGNhbGN1bGF0ZQo+ID4gPiAKPiA+ID4gCj4gPiA+IE5PVEU6IFRoZSBwYXRjaCB3aWxsIG5vdCBi
ZSBxdWV1ZWQgdG8gc3RhYmxlIHRyZWVzIHVudGlsIGl0IGlzIHVwc3RyZWFtLgo+ID4gPiAKPiA+
ID4gSG93IHNob3VsZCB3ZSBwcm9jZWVkIHdpdGggdGhpcyBwYXRjaD8KPiA+IAo+ID4gVGhlIGJh
Y2twb3J0aW5nIGluc3RydWN0aW9uIGhhcyBhbiBleHBsaWNpdCAjIHY0LjE0KyBpbiB0aGVyZSwg
c28gZmFpbHVyZQo+ID4gdG8gYXBwbHkgdG8gb2xkZXIga2VybmVscyBpcyBleHBlY3RlZC4KPiA+
IAo+ID4gQ2FuIHlvdSBwZXJoYXBzIHRlYWNoIHRoaXMgdHJpY2sgdG8geW91ciBzY3JpcHQgcGVy
aGFwcz8gSWlyYyB3ZSdyZSB1c2luZwo+ID4gdGhlIG9mZmljaWFsIGZvcm1hdCBldmVuLgo+IAo+
IEhleSBEYW5pZWwsCj4gCj4gVGhlIHNjcmlwdCBrbm93cyBob3cgdG8gcmVhZCBzdGFibGUgdGFn
cyA6KQo+IAo+IEl0IHRlc3RlZCBvdXQgNC45IGJlY2F1c2UgdGhlIGNvbW1pdCBhbHNvIGhhcyBh
IGZpeGVzIHRhZyBwb2ludGluZyB0bwo+IGQzODYyZTQ0ZGFhNyAoImRtYS1idWYvc3ctc3luYzog
Rml4IGxvY2tpbmcgYXJvdW5kIHN5bmNfdGltZWxpbmUKPiBsaXN0cy4iKSwgd2hpY2ggd2FzIGJh
Y2twb3J0ZWQgdG8gNC45LgoKQWggbWFrZXMgc2Vuc2UsIG1pZ2h0IGJlIGdvb2QgdG8gYWRkIGEg
Yml0IG9mIG91dHB1dCBleHBsYWluaW5nIHRoYXQuCgo+IFNob3VsZCB0aGlzIG5vdCBiZSBiYWNr
cG9ydGVkIHRvIDQuOSwgZXZlbiB0aG91Z2ggdGhlIGNvbW1pdCBpdCBmaXhlcyBpcwo+IHRoZXJl
PwoKSSBndWVzcyBpdCBtaWdodCBhY3R1YWxseSBiZSBuZWVkZWQgdGhlcmUuCi1EYW5pZWwKLS0g
CkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6
Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
