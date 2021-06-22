Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C02EA3B0D94
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 21:21:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 328796E873;
	Tue, 22 Jun 2021 19:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA7B6E873
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 19:21:22 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 j11-20020a9d738b0000b02903ea3c02ded8so22304468otk.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 12:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NLND4Ku01kSAPaPQnJOp1FH7Yq9QVSRTNQQ4RbCxk0w=;
 b=e5CaOZBOftVhbkEerPYPtaLJCTi7dkW17rRGwPvuHPJJoz1+U4machk4c/sWYYds9F
 ix+7YOv/rHYeIbZ5mOBktSK7y1oi02liHSKSjMkzWSsFNHipPhBp/d7g5CMC1O/Zq8dO
 aKmYXEe0vLST278s3JBJERKtZVE+IDiO8pDyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NLND4Ku01kSAPaPQnJOp1FH7Yq9QVSRTNQQ4RbCxk0w=;
 b=Cl1zsnZYqZYvrF8PKY1IbBjGKRWhyBYB+IJ1XgB1hiFUqjPMzDnhp8aKl0FDDMYmhX
 kPhJ90tk5y8E4qySskGp4mmhfl88U5xEbICg8Z7kpFebf6aPYWlWB8R9wovlUYigpyU4
 kYb5V5Oc57q9FTcPJpVIf6i6cybZarmUE0hUDPN615sNMTEEnYmxp3gjJRYXrKqee8NM
 ur91iYXSBGy0cTeY0cg1z2vaHaAgpI5L0vJKfNulhmiVx04ON0oHxdwcd0AmkeqnA3xF
 1nNJAzwz3ngkax1vI96JdsNFX3YpDehHSGc+h+eN8JbclXBYWiF0DJUv0kBtUxyVhMXZ
 pCvA==
X-Gm-Message-State: AOAM533aQXwwf15t5N2Da2zJgYgInzZ+/Ptan4mBopQoZXld2bUuJd2O
 rZTYl13R19rtPLytAldTdBzhNNdnalK+ARWwDSJlAA==
X-Google-Smtp-Source: ABdhPJxEjFo8oIALPvZRWajZYHHD9+zYYML42DA/uD7PRo7j950Ok3AXzR/g8ARzZSUBUYI2JILIZh+XPK5Vw12qP60=
X-Received: by 2002:a9d:12eb:: with SMTP id g98mr4360330otg.303.1624389681754; 
 Tue, 22 Jun 2021 12:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-3-daniel.vetter@ffwll.ch>
 <YNIzkSg5kwp9gdCR@ravnborg.org>
In-Reply-To: <YNIzkSg5kwp9gdCR@ravnborg.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 22 Jun 2021 21:21:10 +0200
Message-ID: <CAKMK7uHSade-GobvwXXP2ArNPFr0qOA+2-V1W36MqHYk0wj_+g@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [Intel-gfx] [PATCH 02/15] dma-buf: Switch to inline kerneldoc
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
Cc: Deepak R Varma <mh12gx2825@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Nirmoy Das <nirmoy.das@amd.com>, Chen Li <chenli@uniontech.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, Dave Airlie <airlied@redhat.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgOTowMSBQTSBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+IHdyb3RlOgo+Cj4gSGkgRGFuaWVsLgo+Cj4gT24gVHVlLCBKdW4gMjIsIDIwMjEgYXQg
MDY6NTQ6NThQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IEFsc28gcmV2aWV3ICYg
dXBkYXRlIGV2ZXJ5dGhpbmcgd2hpbGUgd2UncmUgYXQgaXQuCj4gPgo+ID4gVGhpcyBpcyBwcmVw
IHdvcmsgdG8gc21hc2ggYSB0b24gb2Ygc3R1ZmYgaW50byB0aGUga2VybmVsZG9jIGZvcgo+ID4g
QHJlc3YuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBpbnRlbC5jb20+Cj4gPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9y
Zz4KPiA+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
PiA+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gPiBDYzog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiA+IENjOiBEYXZlIEFpcmxp
ZSA8YWlybGllZEByZWRoYXQuY29tPgo+ID4gQ2M6IE5pcm1veSBEYXMgPG5pcm1veS5kYXNAYW1k
LmNvbT4KPiA+IENjOiBEZWVwYWsgUiBWYXJtYSA8bWgxMmd4MjgyNUBnbWFpbC5jb20+Cj4gPiBD
YzogQ2hlbiBMaSA8Y2hlbmxpQHVuaW9udGVjaC5jb20+Cj4gPiBDYzogS2V2aW4gV2FuZyA8a2V2
aW4xLndhbmdAYW1kLmNvbT4KPiA+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiA+
IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiA+IC0tLQo+ID4gIGluY2x1ZGUv
bGludXgvZG1hLWJ1Zi5oIHwgMTA3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0t
LS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgODMgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25z
KC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmgKPiA+IGluZGV4IDkyZWVjMzhhMDNhYS4uNmQxOGI5ZTQ0OGI5IDEw
MDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiA+ICsrKyBiL2luY2x1ZGUv
bGludXgvZG1hLWJ1Zi5oCj4gPiBAQCAtMjg5LDI4ICsyODksNiBAQCBzdHJ1Y3QgZG1hX2J1Zl9v
cHMgewo+ID4KPiA+ICAvKioKPiA+ICAgKiBzdHJ1Y3QgZG1hX2J1ZiAtIHNoYXJlZCBidWZmZXIg
b2JqZWN0Cj4gPiAtICogQHNpemU6IHNpemUgb2YgdGhlIGJ1ZmZlcjsgaW52YXJpYW50IG92ZXIg
dGhlIGxpZmV0aW1lIG9mIHRoZSBidWZmZXIuCj4gPiAtICogQGZpbGU6IGZpbGUgcG9pbnRlciB1
c2VkIGZvciBzaGFyaW5nIGJ1ZmZlcnMgYWNyb3NzLCBhbmQgZm9yIHJlZmNvdW50aW5nLgo+ID4g
LSAqIEBhdHRhY2htZW50czogbGlzdCBvZiBkbWFfYnVmX2F0dGFjaG1lbnQgdGhhdCBkZW5vdGVz
IGFsbCBkZXZpY2VzIGF0dGFjaGVkLAo+ID4gLSAqICAgICAgICAgICAgICAgcHJvdGVjdGVkIGJ5
IGRtYV9yZXN2IGxvY2suCj4gPiAtICogQG9wczogZG1hX2J1Zl9vcHMgYXNzb2NpYXRlZCB3aXRo
IHRoaXMgYnVmZmVyIG9iamVjdC4KPiA+IC0gKiBAbG9jazogdXNlZCBpbnRlcm5hbGx5IHRvIHNl
cmlhbGl6ZSBsaXN0IG1hbmlwdWxhdGlvbiwgYXR0YWNoL2RldGFjaCBhbmQKPiA+IC0gKiAgICAg
ICAgdm1hcC91bm1hcAo+ID4gLSAqIEB2bWFwcGluZ19jb3VudGVyOiB1c2VkIGludGVybmFsbHkg
dG8gcmVmY250IHRoZSB2bWFwcwo+ID4gLSAqIEB2bWFwX3B0cjogdGhlIGN1cnJlbnQgdm1hcCBw
dHIgaWYgdm1hcHBpbmdfY291bnRlciA+IDAKPiA+IC0gKiBAZXhwX25hbWU6IG5hbWUgb2YgdGhl
IGV4cG9ydGVyOyB1c2VmdWwgZm9yIGRlYnVnZ2luZy4KPiA+IC0gKiBAbmFtZTogdXNlcnNwYWNl
LXByb3ZpZGVkIG5hbWU7IHVzZWZ1bCBmb3IgYWNjb3VudGluZyBhbmQgZGVidWdnaW5nLAo+ID4g
LSAqICAgICAgICBwcm90ZWN0ZWQgYnkgQHJlc3YuCj4gPiAtICogQG5hbWVfbG9jazogc3Bpbmxv
Y2sgdG8gcHJvdGVjdCBuYW1lIGFjY2Vzcwo+ID4gLSAqIEBvd25lcjogcG9pbnRlciB0byBleHBv
cnRlciBtb2R1bGU7IHVzZWQgZm9yIHJlZmNvdW50aW5nIHdoZW4gZXhwb3J0ZXIgaXMgYQo+ID4g
LSAqICAgICAgICAga2VybmVsIG1vZHVsZS4KPiA+IC0gKiBAbGlzdF9ub2RlOiBub2RlIGZvciBk
bWFfYnVmIGFjY291bnRpbmcgYW5kIGRlYnVnZ2luZy4KPiA+IC0gKiBAcHJpdjogZXhwb3J0ZXIg
c3BlY2lmaWMgcHJpdmF0ZSBkYXRhIGZvciB0aGlzIGJ1ZmZlciBvYmplY3QuCj4gPiAtICogQHJl
c3Y6IHJlc2VydmF0aW9uIG9iamVjdCBsaW5rZWQgdG8gdGhpcyBkbWEtYnVmCj4gPiAtICogQHBv
bGw6IGZvciB1c2Vyc3BhY2UgcG9sbCBzdXBwb3J0Cj4gPiAtICogQGNiX2V4Y2w6IGZvciB1c2Vy
c3BhY2UgcG9sbCBzdXBwb3J0Cj4gPiAtICogQGNiX3NoYXJlZDogZm9yIHVzZXJzcGFjZSBwb2xs
IHN1cHBvcnQKPiA+IC0gKiBAc3lzZnNfZW50cnk6IGZvciBleHBvc2luZyBpbmZvcm1hdGlvbiBh
Ym91dCB0aGlzIGJ1ZmZlciBpbiBzeXNmcy4KPgo+IFRoaXMgc2VudGVuY2UKPiA+ICAgKiBUaGUg
YXR0YWNobWVudF91aWQgbWVtYmVyIG9mIEBzeXNmc19lbnRyeSBpcyBwcm90ZWN0ZWQgYnkgZG1h
X3Jlc3YgbG9jawo+ID4gICAqIGFuZCBpcyBpbmNyZW1lbnRlZCBvbiBlYWNoIGF0dGFjaC4KPiBi
ZWxvbmdzIHRvIHRoZSBwYXJhZ3JhcGggZGVzY3JpYmluZyBzeXNmc19lbnRyeSBhbmQgc2hvdWxk
IGJlIG1vdmVkIHRvby4KPiBPciBtYXliZSByZXdvcmRlZCBhbmQgdGhlbiBkb2N1bWVudCBhbGwg
ZmllbGRzIGluIGRtYV9idWZfc3lzZnNfZW50cnk/CgpVbmZvcnR1bmF0ZWx5IGtlcm5lbGRvYyBs
b3N0IHRoZSBhYmlsaXR5IHRvIGRvY3VtZW50IGVtYmVkZGVkCnN0cnVjdHMvdW5pb25zLiBBdCBs
ZWFzdCBsYXN0IHRpbWUgSSBjaGVja2VkLCBpdCdzIGEgYml0IGEgYmlrZXNoZWQuClNvIEknZCBu
ZWVkIHRvIHB1bGwgdGhlIGVudGlyZSBzdHJ1Y3Qgb3V0LiBJJ2xsIGp1c3QgbW92ZSBpdCBzaW5j
ZQppdCdzIGluZGVlZCBtaXNwbGFjZWQuCgo+IFdpdGggdGhpcyBmaXhlZDoKPiBBY2tlZC1ieTog
U2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgoKVGhhbmtzIGZvciB0YWtpbmcgYSBsb29r
LgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jw
b3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
