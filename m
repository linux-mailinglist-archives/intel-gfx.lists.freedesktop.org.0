Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B6E48447
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 15:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675FE89255;
	Mon, 17 Jun 2019 13:43:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9634689255
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 13:43:56 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id d4so16223777edr.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 06:43:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=m5k0RU5bcaWkwEV+Uym4n2+YNMeyuDRphPD0cP/0ZDA=;
 b=ruPhZWRH5CMIoWjbe18FHWqNYN6LL79Bk4QZpXAPOmUcxKHT0VmA3xrv4++XETE0+o
 AjcYDW4aiS2pHLPbS8r9DO5WCT1ThwXnJzUzQ79HIXx5kkjBy2r5QGlBlByl8Mqp3Jvq
 Q1majg79r79tPIq40i0bG0gnm98Ju/LQ3ljwIUdOYzYRGoTUyRLu1KWdGwJdCWAbxxkE
 nF/+6ee3fPqo9rJ2ZWfEXkuqBkX3wopWp0inifkgfyuQWFP6sQB/TCNE0KnPMQHmAlmy
 //oF5nQdSJw2OqbCA9OmrKRV+W7PWZrlaIANBt7IGiAkNyU8UtHuS/ym0PyaHkeDLMWD
 ivbw==
X-Gm-Message-State: APjAAAWDv1rWEuGqo2toth2voeTFIn2fqWv1VBNYb1OJSCqJx/LQU2+9
 LUctEeRcReY5jox76SCuJOMF6w==
X-Google-Smtp-Source: APXvYqzA+ZcL98DxFmp0iSoDjj3sco5uxyQ2BFinehLuXy0VdTfAaApfcXh33wwbWatNM+3ey2PPdA==
X-Received: by 2002:a50:9168:: with SMTP id f37mr10792780eda.242.1560779035260; 
 Mon, 17 Jun 2019 06:43:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id b25sm3668523ede.34.2019.06.17.06.43.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 06:43:54 -0700 (PDT)
Date: Mon, 17 Jun 2019 15:43:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "james qian wang (Arm Technology China)" <james.qian.wang@arm.com>
Message-ID: <20190617134345.GA12905@phenom.ffwll.local>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-8-daniel.vetter@ffwll.ch>
 <20190617062602.GA23827@james-ThinkStation-P300>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617062602.GA23827@james-ThinkStation-P300>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=m5k0RU5bcaWkwEV+Uym4n2+YNMeyuDRphPD0cP/0ZDA=;
 b=TskxqUwMhyBBGm5esF10Ra68nLN9FvKqPVn2WoWaTq+gWHCITQhdagNjfUfblwh84L
 B39KqMeZIUZCJnKdzR62GGCUT0sWo0QOMpj/kZ83a6lVdm1V5DhIpteGtj03a6IteIXI
 xsxa1610cbL4Ak9aF6rjmHn/Mnn12BLSwFp4g=
Subject: Re: [Intel-gfx] [PATCH 07/59] drm/arm/komeda: Remove DRIVER_HAVE_IRQ
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
Cc: nd <nd@arm.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Ayan Halder <Ayan.Halder@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMTcsIDIwMTkgYXQgMDY6MjY6MDhBTSArMDAwMCwgamFtZXMgcWlhbiB3YW5n
IChBcm0gVGVjaG5vbG9neSBDaGluYSkgd3JvdGU6Cj4gT24gRnJpLCBKdW4gMTQsIDIwMTkgYXQg
MTA6MzU6MjNQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IFJlYWQgdGhlIGRvY3Ms
IGtvbWVkYSBpcyBub3QgYW4gb2xkIGVub3VnaCBkcml2ZXIgZm9yIHRoaXMgOi0pCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+
ID4gQ2M6ICJKYW1lcyAoUWlhbikgV2FuZyIgPGphbWVzLnFpYW4ud2FuZ0Bhcm0uY29tPgo+ID4g
Q2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21lZGFfa21zLmMgfCAzICstLQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hcm0vZGlzcGxheS9rb21lZGEva29tZWRhX2ttcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21lZGFfa21zLmMKPiA+IGlu
ZGV4IDBjNjM5NmRjMzIzZi4uYjlkNjk5Y2M3YmJmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21lZGFfa21zLmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hcm0vZGlzcGxheS9rb21lZGEva29tZWRhX2ttcy5jCj4gPiBAQCAtNTUsOCArNTUs
NyBAQCBzdGF0aWMgaXJxcmV0dXJuX3Qga29tZWRhX2ttc19pcnFfaGFuZGxlcihpbnQgaXJxLCB2
b2lkICpkYXRhKQo+ID4gIH0KPiA+ICAKPiA+ICBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIga29t
ZWRhX2ttc19kcml2ZXIgPSB7Cj4gPiAtCS5kcml2ZXJfZmVhdHVyZXMgPSBEUklWRVJfR0VNIHwg
RFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDIHwKPiA+IC0JCQkgICBEUklWRVJfSEFWRV9J
UlEsCj4gPiArCS5kcml2ZXJfZmVhdHVyZXMgPSBEUklWRVJfR0VNIHwgRFJJVkVSX01PREVTRVQg
fCBEUklWRVJfQVRPTUlDLAo+ID4gIAkubGFzdGNsb3NlCQkJPSBkcm1fZmJfaGVscGVyX2xhc3Rj
bG9zZSwKPiA+ICAJLmlycV9oYW5kbGVyCQkJPSBrb21lZGFfa21zX2lycV9oYW5kbGVyLAo+IAo+
IEhpIERhbmllbDoKPiAKPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPiAKPiBBbmQgQXlhbiBh
bHNvIHNlbnQgdHdvIHBhdGNoZXMgZm9yIHRoaXMgdG9waWMuIGxpa2U6Cj4gCj4gRm9yIGRyb3Ag
ZHJtX2lycV9pbnN0YWxsOgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjE3NjMvCj4gRm9yIG1hbnVhbGx5IHNldCBkcm0tPmlycV9lbmFibGVkOgo+IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjE3NzYvCj4gCj4gRm9yIGNsZWFyLCBz
ZWVtcyB3ZSdkIGJldHRlciBzcXVhc2ggYWxsIHRoZXNlIHRocmVlIHBhdGNoZXMgaW50byBvbmUK
PiBzaW5nbGUgcGF0Y2guCgpOb3Qgc3VyZSBob3cgdGhlc2Ugb3RoZXIgcGF0Y2hlcyBhcmUgcmVs
YXRlZCB0byBtaW5lIGRpcmVjdGx5LiBUaGlzIGhlcmUKanVzdCByZW1vdmVzIGEgZmxhZyB3aGlj
aCBkb2VzIG5vdGhpbmcsIGJlY2F1c2Uga29tZWRhIGlzIG5vdCBhIGxlZ2FjeQpkcml2ZXIuIEFu
ZCBhY2sgZm9yIG1lcmdpbmcgcmlnaHQgYXdheSB3b3VsZCBiZSBuaWNlLgoKVGhhbmtzLCBEYW5p
ZWwKCj4gCj4gSGkgQXlhbjoKPiBDb3VsZCB5b3UgaGVscCB0aGUgc3F1YXNoIGFsbCB0aGVzZSBw
YXRjaGVzIHRvIGEgc2luZ2xlIG9uZS4KPiAKPiBUaGFua3MKPiBKYW1lcwo+IAo+ID4gIAkuZ2Vt
X2ZyZWVfb2JqZWN0X3VubG9ja2VkCT0gZHJtX2dlbV9jbWFfZnJlZV9vYmplY3QsCj4gPiAtLSAK
PiA+IDIuMjAuMQoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
