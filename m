Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D1F109A36
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 09:34:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 066D66E27C;
	Tue, 26 Nov 2019 08:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A606E267
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 08:33:59 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id 14so15832655oir.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 00:33:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6BXtF8271OEpAcpMRbpTDh5dRldHuHlwfAVEJleqt1w=;
 b=QwOccMTjNGlZfnKEFXqPtoq0EWj3tFJMYHkR8cN4G0tBTAB2mluqkjLCkxpkO3gJTK
 N9GsYYJ9iodpMyJ6lBqzO366lAktNI3xefxT0MdKVfPDvl7Z6++jgy80yk2Qg3rop2U8
 vXbVjAlJcib+P4h3JnO8scCYZvA09TeY57LlZm1fowlMotBq51Th+cg/qz9GI/0xHeSv
 wVK6oAAK5FgMVT60ilUsuEQkEph9VErsWqJOOu/MT10PfJTcJSyJWUiVKvF9O67GaMrt
 qOWa8neGebY8NTow4+6scj4jeUqNU4ZTO/9NtlQ3oUDrfWHmo+bS4bt8y4HHCT7w81vK
 iSGA==
X-Gm-Message-State: APjAAAUQbQ7SnWQCT+an3hMiaZV0/c7t6/MrmhhMH5uL14SC1BzbnqSr
 jIuBhj5uhP7QVvNH37o+aFlhuLvYVFRNDxNyLL3QsQ==
X-Google-Smtp-Source: APXvYqzNEvhuKVh2k4nT0VfPYt97Uyui5ha6GK+DOmvTEbJzuY46G4kYQFba82rApaxYbQ4yYDtHeigGpu0MvSm2/fU=
X-Received: by 2002:aca:39d7:: with SMTP id g206mr2477040oia.101.1574757239214; 
 Tue, 26 Nov 2019 00:33:59 -0800 (PST)
MIME-Version: 1.0
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
 <20191118103536.17675-6-daniel.vetter@ffwll.ch>
 <20191125214443.GN29965@phenom.ffwll.local>
 <20191126003513.GX25745@shell.armlinux.org.uk>
In-Reply-To: <20191126003513.GX25745@shell.armlinux.org.uk>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 26 Nov 2019 09:33:48 +0100
Message-ID: <CAKMK7uHc9B6AOiAer40pYuLoBZKG5iMKsuM1CASE+yB8HpMiCA@mail.gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=6BXtF8271OEpAcpMRbpTDh5dRldHuHlwfAVEJleqt1w=;
 b=UsFfFMFCnmO0QYg/gV/0K5YoVvHhgvi4ZhDHwEe6w2JXxvbw6dXD8G7uut+1LnpPSu
 A4iiZM0g7lM0Q2cHHXkojN1Oo0whvE54wDroNo5tJITVKxjfix8XBqvKRAYFiO0cYRgw
 kvuVbkB5OUhJ0Rkx1iWavntJqwQ3xE/XQUCyk=
Subject: Re: [Intel-gfx] [PATCH 05/15] drm/armada: Delete dma_buf->k(un)map
 implemenation
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMTozNSBBTSBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXgg
YWRtaW4KPGxpbnV4QGFybWxpbnV4Lm9yZy51az4gd3JvdGU6Cj4gT24gTW9uLCBOb3YgMjUsIDIw
MTkgYXQgMTA6NDQ6NDNQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IE9uIE1vbiwg
Tm92IDE4LCAyMDE5IGF0IDExOjM1OjI2QU0gKzAxMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4g
PiA+IEl0J3MgYSBkdW1teSBhbnl3YXkuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gPiBDYzogUnVzc2VsbCBLaW5n
IDxsaW51eEBhcm1saW51eC5vcmcudWs+Cj4gPgo+ID4gSSBtZXJnZWQgdGhlIGVudGlyZSBzZXJp
ZXMgZXhjZXB0IHRoaXMgb25lIGFuZCB0aGUgZmluYWwgcGF0Y2gsIHNpbGwKPiA+IHdhaXRpbmcg
YSBiaXQgbW9yZSBmb3IgYW4gYWNrIG9uIHRoaXMgcGVyaGFwcy4KPgo+IEFja2VkLWJ5OiBSdXNz
ZWxsIEtpbmcgPHJtaytrZXJuZWxAYXJtbGludXgub3JnLnVrPgoKVGhhbmtzIGZvciB0YWtpbmcg
YSBsb29rLgoKPiBJIHRob3VnaHQgZHJtIHRyZWVzIGNsb3NlZCBhcm91bmQgLXJjNj8KCmRybS5n
aXQgY2xvc2VzIGZvciBwdWxsIHJlcXVlc3QuIEJ1dCBkcm0tbWlzYyBpcyBvcGVuIGFsbCB0aGUg
dGltZSwgc28KdGhhdCBjb21taXR0ZXJzIGNhbiBwdXNoIHBhdGNoZXMgd2hlbmV2ZXIgdGhlIHBh
dGNoZXMgYXJlIHJlYWR5LAppbnN0ZWFkIG9mIGhhdmluZyB0byByZW1lbWJlciB0aGF0IHRoZXJl
J3Mgc29tZXRoaW5nIGluIHRoZSBxdWV1ZS4gVGhlCnNjcmlwdCB1c2VkIGZvciBkcm0tbWlzYyBw
dXNoZXMgdGhlbiBtYWtlcyBzdXJlIHRoYXQgZHJtLW1pc2MtbmV4dApkb2Vzbid0IHNob3cgdXAg
aW4gbGludXgtbmV4dCB1bnRpbCBhZnRlciAtcmMxLiBTbyB0aGlzIGlzIGFsbCBnb2luZwppbnRv
IDUuNi4KLURhbmllbAoKPgo+ID4gLURhbmllbAo+ID4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJz
L2dwdS9kcm0vYXJtYWRhL2FybWFkYV9nZW0uYyB8IDEyIC0tLS0tLS0tLS0tLQo+ID4gPiAgMSBm
aWxlIGNoYW5nZWQsIDEyIGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYXJtYWRh
L2FybWFkYV9nZW0uYwo+ID4gPiBpbmRleCA5M2NmOGI4YmZjZmYuLjk3NjY4NWYyOTM5ZSAxMDA2
NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMKPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2FybWFkYS9hcm1hZGFfZ2VtLmMKPiA+ID4gQEAgLTQ2MSwx
NiArNDYxLDYgQEAgc3RhdGljIHZvaWQgYXJtYWRhX2dlbV9wcmltZV91bm1hcF9kbWFfYnVmKHN0
cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKPiA+ID4gICAgIGtmcmVlKHNndCk7Cj4g
PiA+ICB9Cj4gPiA+Cj4gPiA+IC1zdGF0aWMgdm9pZCAqYXJtYWRhX2dlbV9kbWFidWZfbm9fa21h
cChzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCB1bnNpZ25lZCBsb25nIG4pCj4gPiA+IC17Cj4gPiA+IC0g
ICByZXR1cm4gTlVMTDsKPiA+ID4gLX0KPiA+ID4gLQo+ID4gPiAtc3RhdGljIHZvaWQKPiA+ID4g
LWFybWFkYV9nZW1fZG1hYnVmX25vX2t1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqYnVmLCB1bnNpZ25l
ZCBsb25nIG4sIHZvaWQgKmFkZHIpCj4gPiA+IC17Cj4gPiA+IC19Cj4gPiA+IC0KPiA+ID4gIHN0
YXRpYyBpbnQKPiA+ID4gIGFybWFkYV9nZW1fZG1hYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKmJ1
Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCj4gPiA+ICB7Cj4gPiA+IEBAIC00ODEsOCAr
NDcxLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29wcyBhcm1hZGFfZ2VtX3ByaW1l
X2RtYWJ1Zl9vcHMgPSB7Cj4gPiA+ICAgICAubWFwX2RtYV9idWYgICAgPSBhcm1hZGFfZ2VtX3By
aW1lX21hcF9kbWFfYnVmLAo+ID4gPiAgICAgLnVubWFwX2RtYV9idWYgID0gYXJtYWRhX2dlbV9w
cmltZV91bm1hcF9kbWFfYnVmLAo+ID4gPiAgICAgLnJlbGVhc2UgICAgICAgID0gZHJtX2dlbV9k
bWFidWZfcmVsZWFzZSwKPiA+ID4gLSAgIC5tYXAgICAgICAgICAgICA9IGFybWFkYV9nZW1fZG1h
YnVmX25vX2ttYXAsCj4gPiA+IC0gICAudW5tYXAgICAgICAgICAgPSBhcm1hZGFfZ2VtX2RtYWJ1
Zl9ub19rdW5tYXAsCj4gPiA+ICAgICAubW1hcCAgICAgICAgICAgPSBhcm1hZGFfZ2VtX2RtYWJ1
Zl9tbWFwLAo+ID4gPiAgfTsKPiA+ID4KPiA+ID4gLS0KPiA+ID4gMi4yNC4wCj4gPiA+Cj4gPgo+
ID4gLS0KPiA+IERhbmllbCBWZXR0ZXIKPiA+IFNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jw
b3JhdGlvbgo+ID4gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKPiA+Cj4KPiAtLQo+IFJNSydzIFBhdGNo
IHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwo+
IEZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTIu
MU1icHMgZG93biA2MjJrYnBzIHVwCj4gQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlN
YnBzIGRvd24gNTAwa2JwcyB1cAoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVl
ciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5m
ZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
