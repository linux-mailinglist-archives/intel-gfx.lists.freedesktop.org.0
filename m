Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D61B232455E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 21:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17DB489308;
	Wed, 24 Feb 2021 20:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DCE892CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 20:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614199261;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U7JhP8C4oLti0vEHJOVUtSnACjioBGJI4iBhkiQX78s=;
 b=O18ojUyEvNdkTSEDGW9SRlUBoN45O82zdaXsEPb0n7JlnRuwiZFihHZyblLyxBrs4wejQL
 r0clERt0mwfhvC/KfmEjima3Bd2F/LxiEMB+1DeVxmb6lae4Nnq7on1J2HYQncQleLgedO
 DZYaya/RAAMnVUac546G8XuvjDqKamg=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-460-XQE27VGzOV2YVje4GOKI-w-1; Wed, 24 Feb 2021 15:40:45 -0500
X-MC-Unique: XQE27VGzOV2YVje4GOKI-w-1
Received: by mail-qv1-f71.google.com with SMTP id er16so2439350qvb.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 12:40:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=U7JhP8C4oLti0vEHJOVUtSnACjioBGJI4iBhkiQX78s=;
 b=IpSQ2Q8WBmRZH9AMpjvZSPC5YiysVbWPCzBxWVaizkaZIHJsBdhyJmVREbG1QPp6zk
 kFyC2KkW33RPMS5yOR4PltfZmPM/toaYXWRc4pZBsn8LYSaoZord6oVoHM6offpnKfhH
 WnlxrkUxThjlAsYXNoZ/gOC6jYsn4fFNEgjwRGmTWVRW7sJnAV5AHTGwrjwsQZUJUOIr
 csr0tD2RCMpHjbRk8jag4MPxcSUHXdCoHU1GAPJ07+mfSO0UZpEm/onpCgRuJqMfmHaf
 lpODss3xZgLKG3BD+SkbWCpdKOZZELUYovhB9IwU6gS1uSaTOUieF2IVr0g/qsDO7Yqp
 c8cA==
X-Gm-Message-State: AOAM532B8E03DVLVbDZn0LpISI+ggbE7YYxOMaXIs2xdEclGvTDib+uQ
 rkqNkkywmUHKN3fFuZegr0r8bmO0BLiqNHjaWcPUF2ODbrswFwZ8hFgZP0Q5OdKspjVTOvHZvVO
 zw0SKgE01ZiPty9cQsG2LhxROuvBK
X-Received: by 2002:ac8:67cc:: with SMTP id r12mr19754474qtp.300.1614199245027; 
 Wed, 24 Feb 2021 12:40:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx27Wk/0v1cDvZrr3SoOQL6gJtcN7hRh/20qPLR6tErLfS/Nj+0D2dM9ZaWAWrGAAExWQUqiQ==
X-Received: by 2002:ac8:67cc:: with SMTP id r12mr19754419qtp.300.1614199244687; 
 Wed, 24 Feb 2021 12:40:44 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id q204sm2417104qka.84.2021.02.24.12.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Feb 2021 12:40:44 -0800 (PST)
Message-ID: <29f0cd8a739adb977ddde99af975738329cbee83.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Wed, 24 Feb 2021 15:40:41 -0500
In-Reply-To: <YDKklI3grZjn3dde@pendragon.ideasonboard.com>
References: <20210219215326.2227596-1-lyude@redhat.com>
 <20210219215326.2227596-16-lyude@redhat.com>
 <YDKklI3grZjn3dde@pendragon.ideasonboard.com>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 15/30] drm/dp: Add backpointer to drm_device
 in drm_dp_aux
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
Reply-To: lyude@redhat.com
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, Oleg Vasilev <oleg.vasilev@intel.com>,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Michal Simek <michal.simek@xilinx.com>,
 amd-gfx@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 "Jerry \(Fangzhi\) Zuo" <Jerry.Zuo@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Ben Skeggs <bskeggs@redhat.com>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Harry Wentland <harry.wentland@amd.com>, Icenowy Zheng <icenowy@aosc.io>,
 Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Yuti Amonkar <yamonkar@cadence.com>,
 "open list:DRM DRIVERS FOR NVIDIA TEGRA" <linux-tegra@vger.kernel.org>,
 Mikita Lipski <mikita.lipski@amd.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Chris Park <Chris.Park@amd.com>,
 Eryk Brol <eryk.brol@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>,
 open list <linux-kernel@vger.kernel.org>, Julia Lawall <Julia.Lawall@inria.fr>,
 Torsten Duwe <duwe@lst.de>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Joe Perches <joe@perches.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAyMDIxLTAyLTIxIGF0IDIwOjIxICswMjAwLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3Rl
Ogo+IEhpIEx5dWRlLAo+IAo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+IAo+IE9uIEZyaSwg
RmViIDE5LCAyMDIxIGF0IDA0OjUzOjExUE0gLTA1MDAsIEx5dWRlIFBhdWwgd3JvdGU6Cj4gPiBU
aGlzIGlzIHNvbWV0aGluZyB0aGF0IHdlJ3ZlIHdhbnRlZCBmb3IgYSB3aGlsZSBub3c6IHRoZSBh
YmlsaXR5IHRvCj4gPiBhY3R1YWxseSBsb29rIHVwIHRoZSByZXNwZWN0aXZlIGRybV9kZXZpY2Ug
Zm9yIGEgZ2l2ZW4gZHJtX2RwX2F1eCBzdHJ1Y3QuCj4gPiBUaGlzIHdpbGwgYWxzbyBhbGxvdyB1
cyB0byB0cmFuc2l0aW9uIG92ZXIgdG8gdXNpbmcgdGhlIGRybV9kYmdfKigpIGhlbHBlcnMKPiA+
IGZvciBkZWJ1ZyBtZXNzYWdlIHByaW50aW5nLCBhcyB3ZSdsbCBmaW5hbGx5IGhhdmUgYSBkcm1f
ZGV2aWNlIHRvIHJlZmVyZW5jZQo+ID4gZm9yIGRvaW5nIHNvLgo+IAo+IElzbid0IGl0IGJldHRl
ciB0byB1c2UgdGhlIGV4aXN0aW5nIGRldiBmaWVsZCA/IElmIHlvdSBoYXZlIG11bHRpcGxlIERQ
Cj4gb3V0cHV0cyBmb3Igb25lIERSTSBkZXZpY2UsIHVzaW5nIHRoZSBEUk0gZGV2aWNlIG5hbWUg
aW4gZGVidWcgbWVzc2FnZXMKPiB3b24ndCB0ZWxsIHdoaWNoIG91dHB1dCB0aGUgbWVzc2FnZSBj
b3JyZXNwb25kcyB0by4KCldlbGwgdGhlIHRoaW5nIGlzIGRldiB3b24ndCB0ZWxsIHlvdSB0aGF0
IGVpdGhlciAtIG9uIG1vc3QgU29DcyB0aGUgRFAgQVVYCmFkYXB0ZXIgaXMgaXQncyBvd24gcGxh
dGZvcm0gZGV2aWNlIHRoYXQgaXNuJ3QgYSBjaGlsZCBvZiB0aGUgRFJNIGRldmljZS4gQWxzbywK
dGhhdCdzIHdoYXQgdGhlIGFiaWxpdHkgdG8gbmFtZSBBVVggY2hhbm5lbHMgaXMgc3VwcG9zZWQg
dG8gYmUgdGhlcmUgZm9yLgoKPiA+IE5vdGUgdGhhdCB0aGVyZSBpcyBvbmUgbGltaXRhdGlvbiB3
aXRoIHRoaXMgLSBiZWNhdXNlIHNvbWUgRFAgQVVYIGFkYXB0ZXJzCj4gPiBleGlzdCBhcyBwbGF0
Zm9ybSBkZXZpY2VzIHdoaWNoIGFyZSBpbml0aWFsaXplZCBpbmRlcGVuZGVudGx5IG9mIHRoZWly
Cj4gPiByZXNwZWN0aXZlIERSTSBkZXZpY2VzLCBvbmUgY2Fubm90IHJlbHkgb24gZHJtX2RwX2F1
eC0+ZHJtX2RldiB0byBhbHdheXMgYmUKPiA+IG5vbi1OVUxMIHVudGlsIGRybV9kcF9hdXhfcmVn
aXN0ZXIoKSBoYXMgYmVlbiBjYWxsZWQuIFdlIG1ha2Ugc3VyZSB0byBwb2ludAo+ID4gdGhpcyBv
dXQgaW4gdGhlIGRvY3VtZW50YXRpb24gZm9yIHN0cnVjdCBkcm1fZHBfYXV4Lgo+ID4gCj4gPiBT
aWduZWQtb2ZmLWJ5OiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2F0b21iaW9zX2RwLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8IDEgKwo+ID4gwqAuLi4vZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRn
cHVfZG0vYW1kZ3B1X2RtX21zdF90eXBlcy5jwqAgfCAxICsKPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1hbng2MzQ1LmPCoMKgwqDCoMKgwqAgfCAxICsKPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1hbng3OHh4LmPCoMKg
wqDCoMKgwqAgfCAxICsKPiA+IMKgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFs
b2dpeF9kcF9jb3JlLmPCoMKgwqDCoMKgwqAgfCAxICsKPiA+IMKgZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9jYWRlbmNlL2NkbnMtbWhkcDg1NDYtY29yZS5jwqDCoMKgwqDCoCB8IDEgKwo+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3RjMzU4NzY3LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMSArCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
dGktc242NWRzaTg2LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEg
Kwo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2F1eF9kZXYuY8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDYgKysrKysrCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8IDEgKwo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2F1eC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxICsKPiA+IMKgZHJpdmVycy9n
cHUvZHJtL21zbS9lZHAvZWRwLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfCAzICstLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vbXNtL2VkcC9l
ZHBfYXV4LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwg
NSArKystLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vbXNtL2VkcC9lZHBfY3RybC5jwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyICstCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfY29ubmVjdG9yLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8IDEgKwo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2F0b21iaW9zX2RwLmPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMSArCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS90ZWdyYS9kcGF1eC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHwgMSArCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS94bG54L3p5bnFt
cF9kcC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwg
MSArCj4gPiDCoGluY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA5ICsrKysrKysrLQo+ID4g
wqAxOSBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbWJpb3NfZHAu
Ywo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hdG9tYmlvc19kcC5jCj4gPiBpbmRl
eCBhM2JhOWNhMTFlOTguLjZkMzVkYTY1ZTA5ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2F0b21iaW9zX2RwLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2F0b21iaW9zX2RwLmMKPiA+IEBAIC0xODgsNiArMTg4LDcgQEAgdm9pZCBhbWRn
cHVfYXRvbWJpb3NfZHBfYXV4X2luaXQoc3RydWN0IGFtZGdwdV9jb25uZWN0b3IKPiA+ICphbWRn
cHVfY29ubmVjdG9yKQo+ID4gwqB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYW1kZ3B1X2Nvbm5lY3Rv
ci0+ZGRjX2J1cy0+cmVjLmhwZCA9IGFtZGdwdV9jb25uZWN0b3ItPmhwZC5ocGQ7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgYW1kZ3B1X2Nvbm5lY3Rvci0+ZGRjX2J1cy0+YXV4LnRyYW5zZmVyID0KPiA+
IGFtZGdwdV9hdG9tYmlvc19kcF9hdXhfdHJhbnNmZXI7Cj4gPiArwqDCoMKgwqDCoMKgwqBhbWRn
cHVfY29ubmVjdG9yLT5kZGNfYnVzLT5hdXguZHJtX2RldiA9IGFtZGdwdV9jb25uZWN0b3ItPmJh
c2UuZGV2Owo+ID4gwqDCoMKgwqDCoMKgwqDCoGRybV9kcF9hdXhfaW5pdCgmYW1kZ3B1X2Nvbm5l
Y3Rvci0+ZGRjX2J1cy0+YXV4KTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBhbWRncHVfY29ubmVjdG9y
LT5kZGNfYnVzLT5oYXNfYXV4ID0gdHJ1ZTsKPiA+IMKgfQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtX21zdF90eXBlcy5jCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtX21zdF90
eXBlcy5jCj4gPiBpbmRleCA0MWIwOWFiMjIyMzMuLjE2MzY0MWI0NDMzOSAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtX21zdF90
eXBlcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2Ft
ZGdwdV9kbV9tc3RfdHlwZXMuYwo+ID4gQEAgLTQzMSw2ICs0MzEsNyBAQCB2b2lkIGFtZGdwdV9k
bV9pbml0aWFsaXplX2RwX2Nvbm5lY3RvcihzdHJ1Y3QKPiA+IGFtZGdwdV9kaXNwbGF5X21hbmFn
ZXIgKmRtLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbGlua19pbmRleCk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYWNvbm5lY3Rvci0+ZG1fZHBf
YXV4LmF1eC50cmFuc2ZlciA9IGRtX2RwX2F1eF90cmFuc2ZlcjsKPiA+IMKgwqDCoMKgwqDCoMKg
wqBhY29ubmVjdG9yLT5kbV9kcF9hdXguZGRjX3NlcnZpY2UgPSBhY29ubmVjdG9yLT5kY19saW5r
LT5kZGM7Cj4gPiArwqDCoMKgwqDCoMKgwqBhY29ubmVjdG9yLT5kbV9kcF9hdXguYXV4LmRybV9k
ZXYgPSBkbS0+ZGRldjsKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2RwX2F1eF9pbml0
KCZhY29ubmVjdG9yLT5kbV9kcF9hdXguYXV4KTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZHBf
Y2VjX3JlZ2lzdGVyX2Nvbm5lY3RvcigmYWNvbm5lY3Rvci0+ZG1fZHBfYXV4LmF1eCwKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4LWFueDYz
NDUuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4LWFueDYz
NDUuYwo+ID4gaW5kZXggYWE2Y2RhNDU4ZWI5Li5lMzNjZDA3NzU5NWEgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4LWFueDYzNDUuYwo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1hbng2MzQ1LmMK
PiA+IEBAIC01MzcsNiArNTM3LDcgQEAgc3RhdGljIGludCBhbng2MzQ1X2JyaWRnZV9hdHRhY2go
c3RydWN0IGRybV9icmlkZ2UKPiA+ICpicmlkZ2UsCj4gPiDCoMKgwqDCoMKgwqDCoMKgLyogUmVn
aXN0ZXIgYXV4IGNoYW5uZWwgKi8KPiA+IMKgwqDCoMKgwqDCoMKgwqBhbng2MzQ1LT5hdXgubmFt
ZSA9ICJEUC1BVVgiOwo+ID4gwqDCoMKgwqDCoMKgwqDCoGFueDYzNDUtPmF1eC5kZXYgPSAmYW54
NjM0NS0+Y2xpZW50LT5kZXY7Cj4gPiArwqDCoMKgwqDCoMKgwqBhbng2MzQ1LT5hdXguZHJtX2Rl
diA9IGJyaWRnZS0+ZGV2Owo+ID4gwqDCoMKgwqDCoMKgwqDCoGFueDYzNDUtPmF1eC50cmFuc2Zl
ciA9IGFueDYzNDVfYXV4X3RyYW5zZmVyOwo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqBlcnIg
PSBkcm1fZHBfYXV4X3JlZ2lzdGVyKCZhbng2MzQ1LT5hdXgpOwo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXgtYW54Nzh4eC5jCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXgtYW54Nzh4eC5jCj4gPiBpbmRl
eCBmMjA1NTg2MTgyMjAuLjVlNmEwZWQzOTE5OSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXgtYW54Nzh4eC5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4LWFueDc4eHguYwo+ID4gQEAgLTkwNSw2
ICs5MDUsNyBAQCBzdGF0aWMgaW50IGFueDc4eHhfYnJpZGdlX2F0dGFjaChzdHJ1Y3QgZHJtX2Jy
aWRnZQo+ID4gKmJyaWRnZSwKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBSZWdpc3RlciBhdXggY2hh
bm5lbCAqLwo+ID4gwqDCoMKgwqDCoMKgwqDCoGFueDc4eHgtPmF1eC5uYW1lID0gIkRQLUFVWCI7
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYW54Nzh4eC0+YXV4LmRldiA9ICZhbng3OHh4LT5jbGllbnQt
PmRldjsKPiA+ICvCoMKgwqDCoMKgwqDCoGFueDc4eHgtPmF1eC5kcm1fZGV2ID0gYnJpZGdlLT5k
ZXY7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYW54Nzh4eC0+YXV4LnRyYW5zZmVyID0gYW54Nzh4eF9h
dXhfdHJhbnNmZXI7Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoGVyciA9IGRybV9kcF9hdXhf
cmVnaXN0ZXIoJmFueDc4eHgtPmF1eCk7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiA+IGluZGV4IGYxMTUyMzNiMWNi
OS4uNTUwODE0Y2EyMTM5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9h
bmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4gPiBAQCAtMTc2NSw2ICsxNzY1LDcgQEAg
aW50IGFuYWxvZ2l4X2RwX2JpbmQoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAsCj4gPiBz
dHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldikKPiA+IMKgwqDCoMKgwqDCoMKgwqBkcC0+YXV4Lm5h
bWUgPSAiRFAtQVVYIjsKPiA+IMKgwqDCoMKgwqDCoMKgwqBkcC0+YXV4LnRyYW5zZmVyID0gYW5h
bG9naXhfZHBhdXhfdHJhbnNmZXI7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgZHAtPmF1eC5kZXYgPSBk
cC0+ZGV2Owo+ID4gK8KgwqDCoMKgwqDCoMKgZHAtPmF1eC5kcm1fZGV2ID0gZHJtX2RldjsKPiA+
IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gZHJtX2RwX2F1eF9yZWdpc3RlcigmZHAtPmF1
eCk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL2NhZGVuY2UvY2Rucy1taGRwODU0Ni1jb3JlLmMKPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtbWhkcDg1NDYtY29yZS5jCj4gPiBpbmRleCBk
OTY2YTMzNzQzYjUuLmZlODIxYWQ2MjhlYyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2UvY2FkZW5jZS9jZG5zLW1oZHA4NTQ2LWNvcmUuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtbWhkcDg1NDYtY29yZS5jCj4gPiBAQCAtMTY3NCw2
ICsxNjc0LDcgQEAgc3RhdGljIGludCBjZG5zX21oZHBfYXR0YWNoKHN0cnVjdCBkcm1fYnJpZGdl
ICpicmlkZ2UsCj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoGRldl9kYmcobWhkcC0+ZGV2LCAi
JXNcbiIsIF9fZnVuY19fKTsKPiA+IMKgCj4gPiArwqDCoMKgwqDCoMKgwqBtaGRwLT5hdXguZHJt
X2RldiA9IGJyaWRnZS0+ZGV2Owo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldCA9IGRybV9kcF9hdXhf
cmVnaXN0ZXIoJm1oZHAtPmF1eCk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCA8IDApCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7Cj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS90YzM1ODc2Ny5jCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9icmlkZ2UvdGMzNTg3NjcuYwo+ID4gaW5kZXggZGE4OTkyMjcyMWVkLi4yM2E2ZjkwYjY5
NGIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3RjMzU4NzY3LmMKPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGMzNTg3NjcuYwo+ID4gQEAgLTE0MTQsNiAr
MTQxNCw3IEBAIHN0YXRpYyBpbnQgdGNfYnJpZGdlX2F0dGFjaChzdHJ1Y3QgZHJtX2JyaWRnZSAq
YnJpZGdlLAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChmbGFncyAmIERSTV9CUklER0VfQVRUQUNI
X05PX0NPTk5FQ1RPUikKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IDA7Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgdGMtPmF1eC5kcm1fZGV2ID0gZHJtOwo+ID4g
wqDCoMKgwqDCoMKgwqDCoHJldCA9IGRybV9kcF9hdXhfcmVnaXN0ZXIoJnRjLT5hdXgpOwo+ID4g
wqDCoMKgwqDCoMKgwqDCoGlmIChyZXQgPCAwKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm4gcmV0Owo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvdGktc242NWRzaTg2LmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS90aS1zbjY1ZHNp
ODYuYwo+ID4gaW5kZXggODhkZjRkZDBmMzlkLi44ZTI0MjcyYmJmMDAgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3RpLXNuNjVkc2k4Ni5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL3RpLXNuNjVkc2k4Ni5jCj4gPiBAQCAtMzYyLDYgKzM2Miw3IEBAIHN0
YXRpYyBpbnQgdGlfc25fYnJpZGdlX2F0dGFjaChzdHJ1Y3QgZHJtX2JyaWRnZQo+ID4gKmJyaWRn
ZSwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7Cj4g
PiDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gwqAKPiA+ICvCoMKgwqDCoMKgwqDCoHBkYXRhLT5hdXgu
ZHJtX2RldiA9IGJyaWRnZS0+ZGV2Owo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldCA9IGRybV9kcF9h
dXhfcmVnaXN0ZXIoJnBkYXRhLT5hdXgpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQgPCAw
KSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9lcnIoYnJpZGdlLT5k
ZXYsICJGYWlsZWQgdG8gcmVnaXN0ZXIgRFAgQVVYIGNoYW5uZWw6Cj4gPiAlZFxuIiwgcmV0KTsK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2F1eF9kZXYuYwo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2RwX2F1eF9kZXYuYwo+ID4gaW5kZXggZTI1MTgxYmYyYzQ4Li4w
NmIzNzRjYWU5NTYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2F1eF9k
ZXYuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9hdXhfZGV2LmMKPiA+IEBAIC0y
NzgsNiArMjc4LDEyIEBAIHZvaWQgZHJtX2RwX2F1eF91bnJlZ2lzdGVyX2Rldm5vZGUoc3RydWN0
IGRybV9kcF9hdXgKPiA+ICphdXgpCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCFhdXhfZGV2KSAv
KiBhdHRhY2ggbXVzdCBoYXZlIGZhaWxlZCAqLwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm47Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgLyoKPiA+ICvCoMKgwqDC
oMKgwqDCoCAqIEFzIHNvbWUgQVVYIGFkYXB0ZXJzIG1heSBleGlzdCBhcyBwbGF0Zm9ybSBkZXZp
Y2VzIHdoaWNoIG91dGxpdmUKPiA+IHRoZWlyIHJlc3BlY3RpdmUgRFJNCj4gPiArwqDCoMKgwqDC
oMKgwqAgKiBkZXZpY2VzLCB3ZSBjbGVhciBkcm1fZGV2IHRvIGVuc3VyZSB0aGF0IHdlIG5ldmVy
IGFjY2lkZW50YWxseQo+ID4gcmVmZXJlbmNlIGEgc3RhbGUgcG9pbnRlcgo+ID4gK8KgwqDCoMKg
wqDCoMKgICovCj4gPiArwqDCoMKgwqDCoMKgwqBhdXgtPmRybV9kZXYgPSBOVUxMOwo+ID4gKwo+
ID4gwqDCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJmF1eF9pZHJfbXV0ZXgpOwo+ID4gwqDCoMKg
wqDCoMKgwqDCoGlkcl9yZW1vdmUoJmF1eF9pZHIsIGF1eF9kZXYtPmluZGV4KTsKPiA+IMKgwqDC
oMKgwqDCoMKgwqBtdXRleF91bmxvY2soJmF1eF9pZHJfbXV0ZXgpOwo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+ID4gaW5kZXggOTMyYzQ2NDFlYzNlLi5jZjRmMmY4
NTcxMWUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9n
eS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gPiBA
QCAtMjM0OSw2ICsyMzQ5LDcgQEAgZHJtX2RwX21zdF9hZGRfcG9ydChzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LAo+ID4gwqDCoMKgwqDCoMKgwqDCoHBvcnQtPmF1eC5pc19yZW1vdGUgPSB0cnVlOwo+
ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBpbml0aWFsaXplIHRoZSBNU1QgZG93bnN0cmVh
bSBwb3J0J3MgQVVYIGNyYyB3b3JrIHF1ZXVlICovCj4gPiArwqDCoMKgwqDCoMKgwqBwb3J0LT5h
dXguZHJtX2RldiA9IGRldjsKPiA+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZHBfcmVtb3RlX2F1eF9p
bml0KCZwb3J0LT5hdXgpOwo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMKPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYwo+ID4gaW5kZXggZWFl
YmYxMjMzMTBhLi4wNTcxYzA3OTQyMjYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jCj4gPiBAQCAtNjc1LDYgKzY3NSw3IEBAIHZvaWQgaW50
ZWxfZHBfYXV4X2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiA+IMKgwqDCoMKgwqDC
oMKgwqBlbHNlCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5n
ZXRfYXV4X3NlbmRfY3RsID0gZzR4X2dldF9hdXhfc2VuZF9jdGw7Cj4gPiDCoAo+ID4gK8KgwqDC
oMKgwqDCoMKgaW50ZWxfZHAtPmF1eC5kcm1fZGV2ID0gJmRldl9wcml2LT5kcm07Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgZHJtX2RwX2F1eF9pbml0KCZpbnRlbF9kcC0+YXV4KTsKPiA+IMKgCj4gPiDC
oMKgwqDCoMKgwqDCoMKgLyogRmFpbHVyZSB0byBhbGxvY2F0ZSBvdXIgcHJlZmVycmVkIG5hbWUg
aXMgbm90IGNyaXRpY2FsICovCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9l
ZHAvZWRwLmggYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2VkcC9lZHAuaAo+ID4gaW5kZXggZWIzNDI0
M2RhZDUzLi44NTkwZjJjZTI3NGQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNt
L2VkcC9lZHAuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9lZHAvZWRwLmgKPiA+IEBA
IC00Niw4ICs0Niw3IEBAIHZvaWQgZWRwX2JyaWRnZV9kZXN0cm95KHN0cnVjdCBkcm1fYnJpZGdl
ICpicmlkZ2UpOwo+ID4gwqBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqbXNtX2VkcF9jb25uZWN0b3Jf
aW5pdChzdHJ1Y3QgbXNtX2VkcCAqZWRwKTsKPiA+IMKgCj4gPiDCoC8qIEFVWCAqLwo+ID4gLXZv
aWQgKm1zbV9lZHBfYXV4X2luaXQoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkIF9faW9tZW0gKnJl
Z2Jhc2UsCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHN0cnVjdCBkcm1fZHBfYXV4ICoqZHJtX2F1eCk7Cj4gPiArdm9pZCAqbXNtX2VkcF9hdXhfaW5p
dChzdHJ1Y3QgbXNtX2VkcCAqZWRwLCB2b2lkIF9faW9tZW0gKnJlZ2Jhc2UsIHN0cnVjdAo+ID4g
ZHJtX2RwX2F1eCAqKmRybV9hdXgpOwo+ID4gwqB2b2lkIG1zbV9lZHBfYXV4X2Rlc3Ryb3koc3Ry
dWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZWRwX2F1eCAqYXV4KTsKPiA+IMKgaXJxcmV0dXJuX3Qg
bXNtX2VkcF9hdXhfaXJxKHN0cnVjdCBlZHBfYXV4ICphdXgsIHUzMiBpc3IpOwo+ID4gwqB2b2lk
IG1zbV9lZHBfYXV4X2N0cmwoc3RydWN0IGVkcF9hdXggKmF1eCwgaW50IGVuYWJsZSk7Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9lZHAvZWRwX2F1eC5jCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9tc20vZWRwL2VkcF9hdXguYwo+ID4gaW5kZXggZGYxMGEwMTk2ZDk0Li5lM2Q4
NWM2MjJjZmIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2VkcC9lZHBfYXV4
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZWRwL2VkcF9hdXguYwo+ID4gQEAgLTE4
NCw5ICsxODQsOSBAQCBzdGF0aWMgc3NpemVfdCBlZHBfYXV4X3RyYW5zZmVyKHN0cnVjdCBkcm1f
ZHBfYXV4Cj4gPiAqZHJtX2F1eCwKPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Owo+ID4g
wqB9Cj4gPiDCoAo+ID4gLXZvaWQgKm1zbV9lZHBfYXV4X2luaXQoc3RydWN0IGRldmljZSAqZGV2
LCB2b2lkIF9faW9tZW0gKnJlZ2Jhc2UsCj4gPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2Rw
X2F1eCAqKmRybV9hdXgpCj4gPiArdm9pZCAqbXNtX2VkcF9hdXhfaW5pdChzdHJ1Y3QgbXNtX2Vk
cCAqZWRwLCB2b2lkIF9faW9tZW0gKnJlZ2Jhc2UsIHN0cnVjdAo+ID4gZHJtX2RwX2F1eCAqKmRy
bV9hdXgpCj4gPiDCoHsKPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkZXZpY2UgKmRldiA9ICZl
ZHAtPnBkZXYtPmRldjsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZWRwX2F1eCAqYXV4ID0g
TlVMTDsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0Owo+ID4gwqAKPiA+IEBAIC0yMDEsNiAr
MjAxLDcgQEAgdm9pZCAqbXNtX2VkcF9hdXhfaW5pdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQg
X19pb21lbQo+ID4gKnJlZ2Jhc2UsCj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoGF1eC0+ZHJt
X2F1eC5uYW1lID0gIm1zbV9lZHBfYXV4IjsKPiA+IMKgwqDCoMKgwqDCoMKgwqBhdXgtPmRybV9h
dXguZGV2ID0gZGV2Owo+ID4gK8KgwqDCoMKgwqDCoMKgYXV4LT5kcm1fYXV4LmRybV9kZXYgPSBl
ZHAtPmRldjsKPiA+IMKgwqDCoMKgwqDCoMKgwqBhdXgtPmRybV9hdXgudHJhbnNmZXIgPSBlZHBf
YXV4X3RyYW5zZmVyOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldCA9IGRybV9kcF9hdXhfcmVnaXN0
ZXIoJmF1eC0+ZHJtX2F1eCk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCkgewo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vZWRwL2VkcF9jdHJsLmMKPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL21zbS9lZHAvZWRwX2N0cmwuYwo+ID4gaW5kZXggMGQ5NjU3Y2M3MGRiLi41N2Fm
M2Q4YjY2OTkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2VkcC9lZHBfY3Ry
bC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2VkcC9lZHBfY3RybC5jCj4gPiBAQCAt
MTE1Myw3ICsxMTUzLDcgQEAgaW50IG1zbV9lZHBfY3RybF9pbml0KHN0cnVjdCBtc21fZWRwICpl
ZHApCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBJ
bml0IGF1eCBhbmQgcGh5ICovCj4gPiAtwqDCoMKgwqDCoMKgwqBjdHJsLT5hdXggPSBtc21fZWRw
X2F1eF9pbml0KGRldiwgY3RybC0+YmFzZSwgJmN0cmwtPmRybV9hdXgpOwo+ID4gK8KgwqDCoMKg
wqDCoMKgY3RybC0+YXV4ID0gbXNtX2VkcF9hdXhfaW5pdChlZHAsIGN0cmwtPmJhc2UsICZjdHJs
LT5kcm1fYXV4KTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIWN0cmwtPmF1eCB8fCAhY3RybC0+
ZHJtX2F1eCkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwcl9lcnIoIiVz
OmZhaWxlZCB0byBpbml0IGF1eFxuIiwgX19mdW5jX18pOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gLUVOT01FTTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vbm91dmVhdS9ub3V2ZWF1X2Nvbm5lY3Rvci5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L25vdXZlYXVfY29ubmVjdG9yLmMKPiA+IGluZGV4IGJmY2U3NjJhZGNmMC4uZDFiNDk1
MDhlY2I5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9j
b25uZWN0b3IuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9jb25u
ZWN0b3IuYwo+ID4gQEAgLTEzNTUsNiArMTM1NSw3IEBAIG5vdXZlYXVfY29ubmVjdG9yX2NyZWF0
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ID4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgRFJNX01P
REVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0Ogo+ID4gwqDCoMKgwqDCoMKgwqDCoGNhc2UgRFJNX01P
REVfQ09OTkVDVE9SX2VEUDoKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbnZf
Y29ubmVjdG9yLT5hdXguZGV2ID0gY29ubmVjdG9yLT5rZGV2Owo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoG52X2Nvbm5lY3Rvci0+YXV4LmRybV9kZXYgPSBkZXY7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG52X2Nvbm5lY3Rvci0+YXV4LnRyYW5zZmVyID0g
bm91dmVhdV9jb25uZWN0b3JfYXV4X3hmZXI7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHNucHJpbnRmKGF1eF9uYW1lLCBzaXplb2YoYXV4X25hbWUpLCAic29yLSUwNHgtJTA0
eCIsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZGNiZS0+aGFzaHQsIGRjYmUtPmhhc2htKTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL2F0b21iaW9zX2RwLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9hdG9t
Ymlvc19kcC5jCj4gPiBpbmRleCAxNWIwMGEzNDc1NjAuLmM1MGM1MDRiYWQ1MCAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vYXRvbWJpb3NfZHAuYwo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JhZGVvbi9hdG9tYmlvc19kcC5jCj4gPiBAQCAtMjMyLDYgKzIzMiw3IEBA
IHZvaWQgcmFkZW9uX2RwX2F1eF9pbml0KHN0cnVjdCByYWRlb25fY29ubmVjdG9yCj4gPiAqcmFk
ZW9uX2Nvbm5lY3RvcikKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmFkZW9uX2Nvbm5lY3Rv
ci0+ZGRjX2J1cy0+cmVjLmhwZCA9IHJhZGVvbl9jb25uZWN0b3ItPmhwZC5ocGQ7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgcmFkZW9uX2Nvbm5lY3Rvci0+ZGRjX2J1cy0+YXV4LmRldiA9IHJhZGVvbl9j
b25uZWN0b3ItPmJhc2Uua2RldjsKPiA+ICvCoMKgwqDCoMKgwqDCoHJhZGVvbl9jb25uZWN0b3It
PmRkY19idXMtPmF1eC5kcm1fZGV2ID0gcmFkZW9uX2Nvbm5lY3Rvci0+YmFzZS5kZXY7Cj4gPiDC
oMKgwqDCoMKgwqDCoMKgaWYgKEFTSUNfSVNfRENFNShyZGV2KSkgewo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAocmFkZW9uX2F1eGNoKQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmFkZW9uX2Nvbm5lY3Rvci0+ZGRjX2J1
cy0+YXV4LnRyYW5zZmVyID0KPiA+IHJhZGVvbl9kcF9hdXhfdHJhbnNmZXJfbmF0aXZlOwo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90ZWdyYS9kcGF1eC5jIGIvZHJpdmVycy9ncHUv
ZHJtL3RlZ3JhL2RwYXV4LmMKPiA+IGluZGV4IGVhNTZjNmVjMjVlNC4uN2Q3Y2M5MGI2ZmM5IDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2RwYXV4LmMKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS90ZWdyYS9kcGF1eC5jCj4gPiBAQCAtNzE5LDYgKzcxOSw3IEBAIGludCBk
cm1fZHBfYXV4X2F0dGFjaChzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCBzdHJ1Y3QKPiA+IHRlZ3Jh
X291dHB1dCAqb3V0cHV0KQo+ID4gwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkIGxvbmcgdGltZW91
dDsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgZXJyOwo+ID4gwqAKPiA+ICvCoMKgwqDCoMKgwqDC
oGF1eC0+ZHJtX2RldiA9IG91dHB1dC0+Y29ubmVjdG9yLmRldjsKPiA+IMKgwqDCoMKgwqDCoMKg
wqBlcnIgPSBkcm1fZHBfYXV4X3JlZ2lzdGVyKGF1eCk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KGVyciA8IDApCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBlcnI7
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hsbngvenlucW1wX2RwLmMKPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL3hsbngvenlucW1wX2RwLmMKPiA+IGluZGV4IDk5MTU4ZWU2N2QwMi4u
ODI3MmVlZTAzYWRjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hsbngvenlucW1w
X2RwLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94bG54L3p5bnFtcF9kcC5jCj4gPiBAQCAt
MTA2OSw2ICsxMDY5LDcgQEAgc3RhdGljIGludCB6eW5xbXBfZHBfYXV4X2luaXQoc3RydWN0IHp5
bnFtcF9kcCAqZHApCj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoGRwLT5hdXgubmFtZSA9ICJa
eW5xTVAgRFAgQVVYIjsKPiA+IMKgwqDCoMKgwqDCoMKgwqBkcC0+YXV4LmRldiA9IGRwLT5kZXY7
Cj4gPiArwqDCoMKgwqDCoMKgwqBkcC0+YXV4LmRybV9kZXYgPSBkcC0+ZHJtOwo+ID4gwqDCoMKg
wqDCoMKgwqDCoGRwLT5hdXgudHJhbnNmZXIgPSB6eW5xbXBfZHBfYXV4X3RyYW5zZmVyOwo+ID4g
wqAKPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZHJtX2RwX2F1eF9yZWdpc3RlcigmZHAtPmF1
eCk7Cj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oIGIvaW5jbHVk
ZS9kcm0vZHJtX2RwX2hlbHBlci5oCj4gPiBpbmRleCBiMzVhMWMxMzM5ZTguLjQ1ZWM3NDg2MjIx
MiAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAo+ID4gKysrIGIv
aW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCj4gPiBAQCAtMTgzMywxMyArMTgzMywxOSBAQCBz
dHJ1Y3QgZHJtX2RwX2F1eF9jZWMgewo+ID4gwqAgKiBAbmFtZTogdXNlci12aXNpYmxlIG5hbWUg
b2YgdGhpcyBBVVggY2hhbm5lbCBhbmQgdGhlIEkyQy1vdmVyLUFVWAo+ID4gYWRhcHRlcgo+ID4g
wqAgKiBAZGRjOiBJMkMgYWRhcHRlciB0aGF0IGNhbiBiZSB1c2VkIGZvciBJMkMtb3Zlci1BVVgg
Y29tbXVuaWNhdGlvbgo+ID4gwqAgKiBAZGV2OiBwb2ludGVyIHRvIHN0cnVjdCBkZXZpY2UgdGhh
dCBpcyB0aGUgcGFyZW50IGZvciB0aGlzIEFVWCBjaGFubmVsCj4gPiArICogQGRybV9kZXY6IHBv
aW50ZXIgdG8gdGhlICZkcm1fZGV2aWNlIHRoYXQgb3ducyB0aGlzIEFVWCBjaGFubmVsLiBCZXdh
cmUsCj4gPiB0aGlzIG1heSBiZSAlTlVMTAo+ID4gKyAqIGJlZm9yZSBkcm1fZHBfYXV4X3JlZ2lz
dGVyKCkgaGFzIGJlZW4gY2FsbGVkLgo+ID4gwqAgKiBAY3J0YzogYmFja3BvaW50ZXIgdG8gdGhl
IGNydGMgdGhhdCBpcyBjdXJyZW50bHkgdXNpbmcgdGhpcyBBVVggY2hhbm5lbAo+ID4gwqAgKiBA
aHdfbXV0ZXg6IGludGVybmFsIG11dGV4IHVzZWQgZm9yIGxvY2tpbmcgdHJhbnNmZXJzCj4gPiDC
oCAqIEBjcmNfd29yazogd29ya2VyIHRoYXQgY2FwdHVyZXMgQ1JDcyBmb3IgZWFjaCBmcmFtZQo+
ID4gwqAgKiBAY3JjX2NvdW50OiBjb3VudGVyIG9mIGNhcHR1cmVkIGZyYW1lIENSQ3MKPiA+IMKg
ICogQHRyYW5zZmVyOiB0cmFuc2ZlcnMgYSBtZXNzYWdlIHJlcHJlc2VudGluZyBhIHNpbmdsZSBB
VVggdHJhbnNhY3Rpb24KPiA+IMKgICoKPiA+IC0gKiBUaGUgQGRldiBmaWVsZCBzaG91bGQgYmUg
c2V0IHRvIGEgcG9pbnRlciB0byB0aGUgZGV2aWNlIHRoYXQgaW1wbGVtZW50cwo+ID4gdGhlIEFV
WCBjaGFubmVsLgo+ID4gKyAqIFRoZSBAZGV2IGZpZWxkIHNob3VsZCBiZSBzZXQgdG8gYSBwb2lu
dGVyIHRvIHRoZSBkZXZpY2UgdGhhdCBpbXBsZW1lbnRzCj4gPiB0aGUgQVVYIGNoYW5uZWwuIEFz
IHdlbGwsCj4gPiArICogdGhlIEBkcm1fZGV2IGZpZWxkIHNob3VsZCBiZSBzZXQgdG8gdGhlICZk
cm1fZGV2aWNlIHRoYXQgd2lsbCBiZSB1c2luZwo+ID4gdGhpcyBBVVggY2hhbm5lbCBhcyBlYXJs
eQo+ID4gKyAqIGFzIHBvc3NpYmxlLiBGb3IgbWFueSBncmFwaGljcyBkcml2ZXJzIHRoaXMgc2hv
dWxkIGhhcHBlbiBiZWZvcmUKPiA+IGRybV9kcF9hdXhfaW5pdCgpLCBob3dldmVyIGl0J3MKPiA+
ICsgKiBwZXJmZWN0bHkgZmluZSB0byBzZXQgdGhpcyBmaWVsZCBsYXRlciBzbyBsb25nIGFzIGl0
J3MgYXNzaWduZWQgYmVmb3JlCj4gPiBjYWxsaW5nCj4gPiArICogZHJtX2RwX2F1eF9yZWdpc3Rl
cigpLgo+ID4gwqAgKgo+ID4gwqAgKiBUaGUgQG5hbWUgZmllbGQgbWF5IGJlIHVzZWQgdG8gc3Bl
Y2lmeSB0aGUgbmFtZSBvZiB0aGUgSTJDIGFkYXB0ZXIuIElmCj4gPiBzZXQgdG8gJU5VTEwsIGRl
dl9uYW1lKCkKPiA+IMKgICogb2YgQGRldiB3aWxsIGJlIHVzZWQuCj4gPiBAQCAtMTg2Niw2ICsx
ODcyLDcgQEAgc3RydWN0IGRybV9kcF9hdXggewo+ID4gwqDCoMKgwqDCoMKgwqDCoGNvbnN0IGNo
YXIgKm5hbWU7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGkyY19hZGFwdGVyIGRkYzsKPiA+
IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gPiArwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgZHJtX2RldmljZSAqZHJtX2RldjsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJt
X2NydGMgKmNydGM7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IG11dGV4IGh3X211dGV4Owo+
ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCB3b3JrX3N0cnVjdCBjcmNfd29yazsKPiAKCi0tIApT
aW5jZXJlbHksCiAgIEx5dWRlIFBhdWwgKHNoZS9oZXIpCiAgIFNvZnR3YXJlIEVuZ2luZWVyIGF0
IFJlZCBIYXQKICAgCk5vdGU6IEkgZGVhbCB3aXRoIGEgbG90IG9mIGVtYWlscyBhbmQgaGF2ZSBh
IGxvdCBvZiBidWdzIG9uIG15IHBsYXRlLiBJZiB5b3UndmUKYXNrZWQgbWUgYSBxdWVzdGlvbiwg
YXJlIHdhaXRpbmcgZm9yIGEgcmV2aWV3L21lcmdlIG9uIGEgcGF0Y2gsIGV0Yy4gYW5kIEkKaGF2
ZW4ndCByZXNwb25kZWQgaW4gYSB3aGlsZSwgcGxlYXNlIGZlZWwgZnJlZSB0byBzZW5kIG1lIGFu
b3RoZXIgZW1haWwgdG8gY2hlY2sKb24gbXkgc3RhdHVzLiBJIGRvbid0IGJpdGUhCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
