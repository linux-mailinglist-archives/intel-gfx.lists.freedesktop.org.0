Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D3C70E53B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 21:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7427010E4A7;
	Tue, 23 May 2023 19:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 968BE10E012;
 Tue, 23 May 2023 19:19:45 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 47909228FB;
 Tue, 23 May 2023 19:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1684869583; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HWKPspVVUKxumUx+cf5/jvvUNRwnfdMLwwI/J5+QSmQ=;
 b=NTajvnGv7eBmugFOe9XM3yTpXytoq+ZaYIyy+/Qk3uYVGcQW6AqQs0L3/LWgZ0wM8Ud9jJ
 MbQYLQ84dD79A7/1ySSeTKWN7m+llmy6wy4LmiaVyD7YgYbrv5rM468aErobKIfY3ADQVo
 cmD6nemewV2VUOSRP5WJSffTw1M//ek=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1684869583;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HWKPspVVUKxumUx+cf5/jvvUNRwnfdMLwwI/J5+QSmQ=;
 b=kYcNmUqpjdnLxtBuqY2A4+4zt1a7nE7KeI3pt7+4AMTqu0dVZOntIRjYTa+p86vB8fnzPw
 06ihkgvnxjtBpUAQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 13DBE13588;
 Tue, 23 May 2023 19:19:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id begNBM8RbWQeXQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Tue, 23 May 2023 19:19:43 +0000
Message-ID: <06c87e76-1302-ba78-49d3-60037a432258@suse.de>
Date: Tue, 23 May 2023 21:19:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20230522122140.30131-1-tzimmermann@suse.de>
 <20230522122140.30131-12-tzimmermann@suse.de>
 <CAA8EJpp4Q0P7JSK=1igsQ4gbLjbW2X670CKQrZSm_epzqusYug@mail.gmail.com>
 <064b6506-27f1-4b4d-60b2-d30d470cc0fa@suse.de>
In-Reply-To: <064b6506-27f1-4b4d-60b2-d30d470cc0fa@suse.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yzIu0wA3zPDMnX5u237phxKj"
Subject: Re: [Intel-gfx] [Freedreno] [PATCH v3 11/12] drm/fbdev-generic:
 Implement dedicated fbdev I/O helpers
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
Cc: linux-samsung-soc@vger.kernel.org, sam@ravnborg.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 javierm@redhat.com, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yzIu0wA3zPDMnX5u237phxKj
Content-Type: multipart/mixed; boundary="------------zX5YRPGvGETBVW08P3jLJzad";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: freedreno@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 javierm@redhat.com, dri-devel@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 sam@ravnborg.org, linux-arm-kernel@lists.infradead.org
Message-ID: <06c87e76-1302-ba78-49d3-60037a432258@suse.de>
Subject: Re: [Freedreno] [PATCH v3 11/12] drm/fbdev-generic: Implement
 dedicated fbdev I/O helpers
References: <20230522122140.30131-1-tzimmermann@suse.de>
 <20230522122140.30131-12-tzimmermann@suse.de>
 <CAA8EJpp4Q0P7JSK=1igsQ4gbLjbW2X670CKQrZSm_epzqusYug@mail.gmail.com>
 <064b6506-27f1-4b4d-60b2-d30d470cc0fa@suse.de>
In-Reply-To: <064b6506-27f1-4b4d-60b2-d30d470cc0fa@suse.de>

--------------zX5YRPGvGETBVW08P3jLJzad
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCkFtIDIyLjA1LjIzIHVtIDIwOjQ2IHNjaHJpZWIgVGhvbWFzIFppbW1lcm1hbm46DQpb
Li4uXQ0KPj4NCj4+IExvb2tpbmcgYXQgdGhpcyBwYXRjaCBtYWtlcyBtZSB3b25kZXIgaWYg
d2Ugc2hvdWxkIGhhdmUgaW1wbGVtZW50ZWQNCj4+IGZiX2RpcnR5IGZvciB0aGUgTVNNIGRy
aXZlci4gV2UgaGF2ZSBkcm1fZnJhbWVidWZmZXJfZnVuY3M6OmRpcnR5KCkNCj4+IGltcGxl
bWVudGVkIChieSB3cmFwcGluZyB0aGUgZHJtX2F0b21pY19oZWxwZXJfZGlydHlmYigpKS4N
Cj4gDQo+IEkgdGhpbmsgc28uIFlvdSdkIG5lZWQgc29tZXRoaW5nIHNpbWlsYXIgdG8gdGhl
IGdlbmVyaWMgZmJkZXYgZW11bGF0aW9uLiANCj4gQnV0IGl0J3MgZm9yIGEgc2VwYXJhdGUg
cGF0Y2hzZXQuIEFwcGFyZW50bHkgbm8gb25lIGhhcyBjb21wbGFpbmVkIHNvIGZhci4NCg0K
SSBoYXZlIGFub3RoZXIgcmV2aXNpb24gb2YgdGhlc2UgcGF0Y2hlcyBpbiB0aGUgd29ya3Mg
YW5kIHdpbGwgYWRkIA0KaW5pdGlhbCBzdXBwb3J0IGZvciBkYW1hZ2UgaGFuZGxpbmcuDQoN
Cj4gDQo+IEJlc3QgcmVnYXJkcw0KPiBUaG9tYXMNCj4gDQo+Pg0KPj4+DQo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL0tjb25m
aWcNCj4+PiBpbmRleCA3N2ZiMTBkZGQ4YTIuLjkyYTc4MjgyN2I3YiAxMDA2NDQNCj4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vS2NvbmZpZw0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9LY29uZmlnDQo+Pj4gQEAgLTk1LDYgKzk1LDcgQEAgY29uZmlnIERSTV9LVU5JVF9URVNU
DQo+Pj4gwqAgY29uZmlnIERSTV9LTVNfSEVMUEVSDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCB0
cmlzdGF0ZQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgZGVwZW5kcyBvbiBEUk0NCj4+PiArwqDC
oMKgwqDCoMKgIHNlbGVjdCBGQl9TWVNfSEVMUEVSU19ERUZFUlJFRCBpZiBEUk1fRkJERVZf
RU1VTEFUSU9ODQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBoZWxwDQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqAgQ1JUQyBoZWxwZXJzIGZvciBLTVMgZHJpdmVycy4NCj4+Pg0KPj4+IEBAIC0x
MzUsMTEgKzEzNiw2IEBAIGNvbmZpZyBEUk1fRkJERVZfRU1VTEFUSU9ODQo+Pj4gwqDCoMKg
wqDCoMKgwqDCoCBzZWxlY3QgRkJfQ0ZCX0ZJTExSRUNUDQo+Pj4gwqDCoMKgwqDCoMKgwqDC
oCBzZWxlY3QgRkJfQ0ZCX0NPUFlBUkVBDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzZWxlY3Qg
RkJfQ0ZCX0lNQUdFQkxJVA0KPj4+IC3CoMKgwqDCoMKgwqAgc2VsZWN0IEZCX0RFRkVSUkVE
X0lPDQo+Pj4gLcKgwqDCoMKgwqDCoCBzZWxlY3QgRkJfU1lTX0ZPUFMNCj4+PiAtwqDCoMKg
wqDCoMKgIHNlbGVjdCBGQl9TWVNfRklMTFJFQ1QNCj4+PiAtwqDCoMKgwqDCoMKgIHNlbGVj
dCBGQl9TWVNfQ09QWUFSRUENCj4+PiAtwqDCoMKgwqDCoMKgIHNlbGVjdCBGQl9TWVNfSU1B
R0VCTElUDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzZWxlY3QgRlJBTUVCVUZGRVJfQ09OU09M
RSBpZiAhRVhQRVJUDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzZWxlY3QgRlJBTUVCVUZGRVJf
Q09OU09MRV9ERVRFQ1RfUFJJTUFSWSBpZiANCj4+PiBGUkFNRUJVRkZFUl9DT05TT0xFDQo+
Pj4gwqDCoMKgwqDCoMKgwqDCoCBkZWZhdWx0IHkNCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9mYl9oZWxwZXIuYyANCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZmJfaGVscGVyLmMNCj4+PiBpbmRleCA4NzI0ZTA4YzUxOGIuLmJhMGE4MDhmMTRlZSAxMDA2
NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jDQo+Pj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxwZXIuYw0KPj4+IEBAIC03MjksMTEzICs3
MjksNiBAQCB2b2lkIGRybV9mYl9oZWxwZXJfZGVmZXJyZWRfaW8oc3RydWN0IGZiX2luZm8g
DQo+Pj4gKmluZm8sIHN0cnVjdCBsaXN0X2hlYWQgKnBhZ2VyZWZsaQ0KPj4+IMKgIH0NCj4+
PiDCoCBFWFBPUlRfU1lNQk9MKGRybV9mYl9oZWxwZXJfZGVmZXJyZWRfaW8pOw0KPj4+DQo+
Pj4gLS8qKg0KPj4+IC0gKiBkcm1fZmJfaGVscGVyX3N5c19yZWFkIC0gSW1wbGVtZW50cyBz
dHJ1Y3QgJmZiX29wcy5mYl9yZWFkIGZvciANCj4+PiBzeXN0ZW0gbWVtb3J5DQo+Pj4gLSAq
IEBpbmZvOiBmYl9pbmZvIHN0cnVjdCBwb2ludGVyDQo+Pj4gLSAqIEBidWY6IHVzZXJzcGFj
ZSBidWZmZXIgdG8gcmVhZCBmcm9tIGZyYW1lYnVmZmVyIG1lbW9yeQ0KPj4+IC0gKiBAY291
bnQ6IG51bWJlciBvZiBieXRlcyB0byByZWFkIGZyb20gZnJhbWVidWZmZXIgbWVtb3J5DQo+
Pj4gLSAqIEBwcG9zOiByZWFkIG9mZnNldCB3aXRoaW4gZnJhbWVidWZmZXIgbWVtb3J5DQo+
Pj4gLSAqDQo+Pj4gLSAqIFJldHVybnM6DQo+Pj4gLSAqIFRoZSBudW1iZXIgb2YgYnl0ZXMg
cmVhZCBvbiBzdWNjZXNzLCBvciBhbiBlcnJvciBjb2RlIG90aGVyd2lzZS4NCj4+PiAtICov
DQo+Pj4gLXNzaXplX3QgZHJtX2ZiX2hlbHBlcl9zeXNfcmVhZChzdHJ1Y3QgZmJfaW5mbyAq
aW5mbywgY2hhciBfX3VzZXIgKmJ1ZiwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3QgY291bnQsIGxvZmZf
dCAqcHBvcykNCj4+PiAtew0KPj4+IC3CoMKgwqDCoMKgwqAgcmV0dXJuIGZiX3N5c19yZWFk
KGluZm8sIGJ1ZiwgY291bnQsIHBwb3MpOw0KPj4+IC19DQo+Pj4gLUVYUE9SVF9TWU1CT0wo
ZHJtX2ZiX2hlbHBlcl9zeXNfcmVhZCk7DQo+Pj4gLQ0KPj4+IC0vKioNCj4+PiAtICogZHJt
X2ZiX2hlbHBlcl9zeXNfd3JpdGUgLSBJbXBsZW1lbnRzIHN0cnVjdCAmZmJfb3BzLmZiX3dy
aXRlIGZvciANCj4+PiBzeXN0ZW0gbWVtb3J5DQo+Pj4gLSAqIEBpbmZvOiBmYl9pbmZvIHN0
cnVjdCBwb2ludGVyDQo+Pj4gLSAqIEBidWY6IHVzZXJzcGFjZSBidWZmZXIgdG8gd3JpdGUg
dG8gZnJhbWVidWZmZXIgbWVtb3J5DQo+Pj4gLSAqIEBjb3VudDogbnVtYmVyIG9mIGJ5dGVz
IHRvIHdyaXRlIHRvIGZyYW1lYnVmZmVyIG1lbW9yeQ0KPj4+IC0gKiBAcHBvczogd3JpdGUg
b2Zmc2V0IHdpdGhpbiBmcmFtZWJ1ZmZlciBtZW1vcnkNCj4+PiAtICoNCj4+PiAtICogUmV0
dXJuczoNCj4+PiAtICogVGhlIG51bWJlciBvZiBieXRlcyB3cml0dGVuIG9uIHN1Y2Nlc3Ms
IG9yIGFuIGVycm9yIGNvZGUgb3RoZXJ3aXNlLg0KPj4+IC0gKi8NCj4+PiAtc3NpemVfdCBk
cm1fZmJfaGVscGVyX3N5c193cml0ZShzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgY29uc3QgY2hh
ciANCj4+PiBfX3VzZXIgKmJ1ZiwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBjb3VudCwgbG9mZl90
ICpwcG9zKQ0KPj4+IC17DQo+Pj4gLcKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2ZiX2hlbHBl
ciAqaGVscGVyID0gaW5mby0+cGFyOw0KPj4+IC3CoMKgwqDCoMKgwqAgbG9mZl90IHBvcyA9
ICpwcG9zOw0KPj4+IC3CoMKgwqDCoMKgwqAgc3NpemVfdCByZXQ7DQo+Pj4gLcKgwqDCoMKg
wqDCoCBzdHJ1Y3QgZHJtX3JlY3QgZGFtYWdlX2FyZWE7DQo+Pj4gLQ0KPj4+IC3CoMKgwqDC
oMKgwqAgcmV0ID0gZmJfc3lzX3dyaXRlKGluZm8sIGJ1ZiwgY291bnQsIHBwb3MpOw0KPj4+
IC3CoMKgwqDCoMKgwqAgaWYgKHJldCA8PSAwKQ0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiByZXQ7DQo+Pj4gLQ0KPj4+IC3CoMKgwqDCoMKgwqAgaWYgKGhl
bHBlci0+ZnVuY3MtPmZiX2RpcnR5KSB7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZHJtX2ZiX2hlbHBlcl9tZW1vcnlfcmFuZ2VfdG9fY2xpcChpbmZvLCBwb3MsIHJl
dCwgDQo+Pj4gJmRhbWFnZV9hcmVhKTsNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBkcm1fZmJfaGVscGVyX2RhbWFnZShoZWxwZXIsIGRhbWFnZV9hcmVhLngxLCANCj4+
PiBkYW1hZ2VfYXJlYS55MSwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fcmVjdF93aWR0
aCgmZGFtYWdlX2FyZWEpLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9yZWN0X2hlaWdo
dCgmZGFtYWdlX2FyZWEpKTsNCj4+PiAtwqDCoMKgwqDCoMKgIH0NCj4+PiAtDQo+Pj4gLcKg
wqDCoMKgwqDCoCByZXR1cm4gcmV0Ow0KPj4+IC19DQo+Pj4gLUVYUE9SVF9TWU1CT0woZHJt
X2ZiX2hlbHBlcl9zeXNfd3JpdGUpOw0KPj4+IC0NCj4+PiAtLyoqDQo+Pj4gLSAqIGRybV9m
Yl9oZWxwZXJfc3lzX2ZpbGxyZWN0IC0gd3JhcHBlciBhcm91bmQgc3lzX2ZpbGxyZWN0DQo+
Pj4gLSAqIEBpbmZvOiBmYmRldiByZWdpc3RlcmVkIGJ5IHRoZSBoZWxwZXINCj4+PiAtICog
QHJlY3Q6IGluZm8gYWJvdXQgcmVjdGFuZ2xlIHRvIGZpbGwNCj4+PiAtICoNCj4+PiAtICog
QSB3cmFwcGVyIGFyb3VuZCBzeXNfZmlsbHJlY3QgaW1wbGVtZW50ZWQgYnkgZmJkZXYgY29y
ZQ0KPj4+IC0gKi8NCj4+PiAtdm9pZCBkcm1fZmJfaGVscGVyX3N5c19maWxscmVjdChzdHJ1
Y3QgZmJfaW5mbyAqaW5mbywNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBmYl9maWxscmVj
dCAqcmVjdCkNCj4+PiAtew0KPj4+IC3CoMKgwqDCoMKgwqAgc3RydWN0IGRybV9mYl9oZWxw
ZXIgKmhlbHBlciA9IGluZm8tPnBhcjsNCj4+PiAtDQo+Pj4gLcKgwqDCoMKgwqDCoCBzeXNf
ZmlsbHJlY3QoaW5mbywgcmVjdCk7DQo+Pj4gLQ0KPj4+IC3CoMKgwqDCoMKgwqAgaWYgKGhl
bHBlci0+ZnVuY3MtPmZiX2RpcnR5KQ0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGRybV9mYl9oZWxwZXJfZGFtYWdlKGhlbHBlciwgcmVjdC0+ZHgsIHJlY3QtPmR5LCAN
Cj4+PiByZWN0LT53aWR0aCwgcmVjdC0+aGVpZ2h0KTsNCj4+PiAtfQ0KPj4+IC1FWFBPUlRf
U1lNQk9MKGRybV9mYl9oZWxwZXJfc3lzX2ZpbGxyZWN0KTsNCj4+PiAtDQo+Pj4gLS8qKg0K
Pj4+IC0gKiBkcm1fZmJfaGVscGVyX3N5c19jb3B5YXJlYSAtIHdyYXBwZXIgYXJvdW5kIHN5
c19jb3B5YXJlYQ0KPj4+IC0gKiBAaW5mbzogZmJkZXYgcmVnaXN0ZXJlZCBieSB0aGUgaGVs
cGVyDQo+Pj4gLSAqIEBhcmVhOiBpbmZvIGFib3V0IGFyZWEgdG8gY29weQ0KPj4+IC0gKg0K
Pj4+IC0gKiBBIHdyYXBwZXIgYXJvdW5kIHN5c19jb3B5YXJlYSBpbXBsZW1lbnRlZCBieSBm
YmRldiBjb3JlDQo+Pj4gLSAqLw0KPj4+IC12b2lkIGRybV9mYl9oZWxwZXJfc3lzX2NvcHlh
cmVhKHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGZi
X2NvcHlhcmVhICphcmVhKQ0KPj4+IC17DQo+Pj4gLcKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJt
X2ZiX2hlbHBlciAqaGVscGVyID0gaW5mby0+cGFyOw0KPj4+IC0NCj4+PiAtwqDCoMKgwqDC
oMKgIHN5c19jb3B5YXJlYShpbmZvLCBhcmVhKTsNCj4+PiAtDQo+Pj4gLcKgwqDCoMKgwqDC
oCBpZiAoaGVscGVyLT5mdW5jcy0+ZmJfZGlydHkpDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZHJtX2ZiX2hlbHBlcl9kYW1hZ2UoaGVscGVyLCBhcmVhLT5keCwgYXJl
YS0+ZHksIA0KPj4+IGFyZWEtPndpZHRoLCBhcmVhLT5oZWlnaHQpOw0KPj4+IC19DQo+Pj4g
LUVYUE9SVF9TWU1CT0woZHJtX2ZiX2hlbHBlcl9zeXNfY29weWFyZWEpOw0KPj4+IC0NCj4+
PiAtLyoqDQo+Pj4gLSAqIGRybV9mYl9oZWxwZXJfc3lzX2ltYWdlYmxpdCAtIHdyYXBwZXIg
YXJvdW5kIHN5c19pbWFnZWJsaXQNCj4+PiAtICogQGluZm86IGZiZGV2IHJlZ2lzdGVyZWQg
YnkgdGhlIGhlbHBlcg0KPj4+IC0gKiBAaW1hZ2U6IGluZm8gYWJvdXQgaW1hZ2UgdG8gYmxp
dA0KPj4+IC0gKg0KPj4+IC0gKiBBIHdyYXBwZXIgYXJvdW5kIHN5c19pbWFnZWJsaXQgaW1w
bGVtZW50ZWQgYnkgZmJkZXYgY29yZQ0KPj4+IC0gKi8NCj4+PiAtdm9pZCBkcm1fZmJfaGVs
cGVyX3N5c19pbWFnZWJsaXQoc3RydWN0IGZiX2luZm8gKmluZm8sDQo+Pj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNvbnN0IHN0cnVjdCBmYl9pbWFnZSAqaW1hZ2UpDQo+Pj4gLXsNCj4+PiAtwqDCoMKgwqDC
oMKgIHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIgPSBpbmZvLT5wYXI7DQo+Pj4gLQ0K
Pj4+IC3CoMKgwqDCoMKgwqAgc3lzX2ltYWdlYmxpdChpbmZvLCBpbWFnZSk7DQo+Pj4gLQ0K
Pj4+IC3CoMKgwqDCoMKgwqAgaWYgKGhlbHBlci0+ZnVuY3MtPmZiX2RpcnR5KQ0KPj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9mYl9oZWxwZXJfZGFtYWdlKGhlbHBl
ciwgaW1hZ2UtPmR4LCBpbWFnZS0+ZHksIA0KPj4+IGltYWdlLT53aWR0aCwgaW1hZ2UtPmhl
aWdodCk7DQo+Pj4gLX0NCj4+PiAtRVhQT1JUX1NZTUJPTChkcm1fZmJfaGVscGVyX3N5c19p
bWFnZWJsaXQpOw0KPj4+IC0NCj4+PiDCoCAvKioNCj4+PiDCoMKgICogZHJtX2ZiX2hlbHBl
cl9jZmJfcmVhZCAtIEltcGxlbWVudHMgc3RydWN0ICZmYl9vcHMuZmJfcmVhZCBmb3IgDQo+
Pj4gSS9PIG1lbW9yeQ0KPj4+IMKgwqAgKiBAaW5mbzogZmJfaW5mbyBzdHJ1Y3QgcG9pbnRl
cg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZiZGV2X2dlbmVyaWMu
YyANCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZmJkZXZfZ2VuZXJpYy5jDQo+Pj4gaW5k
ZXggOGU1MTQ4YmY0MGJiLi5mNTNmYzQ5ZTM0YTQgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9mYmRldl9nZW5lcmljLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2ZiZGV2X2dlbmVyaWMuYw0KPj4+IEBAIC0zNCw2ICszNCw0MyBAQCBzdGF0aWMg
aW50IGRybV9mYmRldl9nZW5lcmljX2ZiX3JlbGVhc2Uoc3RydWN0IA0KPj4+IGZiX2luZm8g
KmluZm8sIGludCB1c2VyKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7DQo+Pj4g
wqAgfQ0KPj4+DQo+Pj4gK3N0YXRpYyBzc2l6ZV90IGRybV9mYmRldl9nZW5lcmljX2ZiX3dy
aXRlKHN0cnVjdCBmYl9pbmZvICppbmZvLCANCj4+PiBjb25zdCBjaGFyIF9fdXNlciAqYnVm
LA0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3QgY291bnQsIGxvZmZf
dCAqcHBvcykNCj4+PiArew0KPj4+ICvCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9mYl9oZWxw
ZXIgKmhlbHBlciA9IGluZm8tPnBhcjsNCj4+PiArwqDCoMKgwqDCoMKgIGxvZmZfdCBwb3Mg
PSAqcHBvczsNCj4+PiArwqDCoMKgwqDCoMKgIHNzaXplX3QgcmV0Ow0KPj4+ICsNCj4+PiAr
wqDCoMKgwqDCoMKgIHJldCA9IGZiX3N5c193cml0ZShpbmZvLCBidWYsIGNvdW50LCBwcG9z
KTsNCj4+PiArwqDCoMKgwqDCoMKgIGlmIChyZXQgPiAwKQ0KPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGRybV9mYl9oZWxwZXJfZGFtYWdlX3JhbmdlKGhlbHBlciwgcG9z
LCByZXQpOw0KPj4+ICvCoMKgwqDCoMKgwqAgcmV0dXJuIHJldDsNCj4+PiArfQ0KPj4+ICsN
Cj4+PiArc3RhdGljIHZvaWQgZHJtX2ZiZGV2X2dlbmVyaWNfZmJfZmlsbHJlY3Qoc3RydWN0
IGZiX2luZm8gKmluZm8sIA0KPj4+IGNvbnN0IHN0cnVjdCBmYl9maWxscmVjdCAqcmVjdCkN
Cj4+PiArew0KPj4+ICvCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9mYl9oZWxwZXIgKmhlbHBl
ciA9IGluZm8tPnBhcjsNCj4+PiArDQo+Pj4gK8KgwqDCoMKgwqDCoCBzeXNfZmlsbHJlY3Qo
aW5mbywgcmVjdCk7DQo+Pj4gK8KgwqDCoMKgwqDCoCBkcm1fZmJfaGVscGVyX2RhbWFnZSho
ZWxwZXIsIHJlY3QtPmR4LCByZWN0LT5keSwgcmVjdC0+d2lkdGgsIA0KPj4+IHJlY3QtPmhl
aWdodCk7DQo+Pj4gK30NCj4+PiArDQo+Pj4gK3N0YXRpYyB2b2lkIGRybV9mYmRldl9nZW5l
cmljX2ZiX2NvcHlhcmVhKHN0cnVjdCBmYl9pbmZvICppbmZvLCANCj4+PiBjb25zdCBzdHJ1
Y3QgZmJfY29weWFyZWEgKmFyZWEpDQo+Pj4gK3sNCj4+PiArwqDCoMKgwqDCoMKgIHN0cnVj
dCBkcm1fZmJfaGVscGVyICpoZWxwZXIgPSBpbmZvLT5wYXI7DQo+Pj4gKw0KPj4+ICvCoMKg
wqDCoMKgwqAgc3lzX2NvcHlhcmVhKGluZm8sIGFyZWEpOw0KPj4+ICvCoMKgwqDCoMKgwqAg
ZHJtX2ZiX2hlbHBlcl9kYW1hZ2UoaGVscGVyLCBhcmVhLT5keCwgYXJlYS0+ZHksIGFyZWEt
PndpZHRoLCANCj4+PiBhcmVhLT5oZWlnaHQpOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0
aWMgdm9pZCBkcm1fZmJkZXZfZ2VuZXJpY19mYl9pbWFnZWJsaXQoc3RydWN0IGZiX2luZm8g
KmluZm8sIA0KPj4+IGNvbnN0IHN0cnVjdCBmYl9pbWFnZSAqaW1hZ2UpDQo+Pj4gK3sNCj4+
PiArwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIgPSBpbmZvLT5w
YXI7DQo+Pj4gKw0KPj4+ICvCoMKgwqDCoMKgwqAgc3lzX2ltYWdlYmxpdChpbmZvLCBpbWFn
ZSk7DQo+Pj4gK8KgwqDCoMKgwqDCoCBkcm1fZmJfaGVscGVyX2RhbWFnZShoZWxwZXIsIGlt
YWdlLT5keCwgaW1hZ2UtPmR5LCANCj4+PiBpbWFnZS0+d2lkdGgsIGltYWdlLT5oZWlnaHQp
Ow0KPj4+ICt9DQo+Pj4gKw0KPj4+IMKgIHN0YXRpYyB2b2lkIGRybV9mYmRldl9nZW5lcmlj
X2ZiX2Rlc3Ryb3koc3RydWN0IGZiX2luZm8gKmluZm8pDQo+Pj4gwqAgew0KPj4+IMKgwqDC
oMKgwqDCoMKgwqAgc3RydWN0IGRybV9mYl9oZWxwZXIgKmZiX2hlbHBlciA9IGluZm8tPnBh
cjsNCj4+PiBAQCAtNTYsMTIgKzkzLDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZmJfb3Bz
IA0KPj4+IGRybV9mYmRldl9nZW5lcmljX2ZiX29wcyA9IHsNCj4+PiDCoMKgwqDCoMKgwqDC
oMKgIC5vd25lcsKgwqDCoMKgwqDCoMKgwqDCoCA9IFRISVNfTU9EVUxFLA0KPj4+IMKgwqDC
oMKgwqDCoMKgwqAgLmZiX29wZW7CoMKgwqDCoMKgwqDCoCA9IGRybV9mYmRldl9nZW5lcmlj
X2ZiX29wZW4sDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCAuZmJfcmVsZWFzZcKgwqDCoMKgID0g
ZHJtX2ZiZGV2X2dlbmVyaWNfZmJfcmVsZWFzZSwNCj4+PiAtwqDCoMKgwqDCoMKgIC5mYl9y
ZWFkwqDCoMKgwqDCoMKgwqAgPSBkcm1fZmJfaGVscGVyX3N5c19yZWFkLA0KPj4+IC3CoMKg
wqDCoMKgwqAgLmZiX3dyaXRlwqDCoMKgwqDCoMKgID0gZHJtX2ZiX2hlbHBlcl9zeXNfd3Jp
dGUsDQo+Pj4gK8KgwqDCoMKgwqDCoCAuZmJfcmVhZMKgwqDCoMKgwqDCoMKgID0gZmJfc3lz
X3JlYWQsDQo+Pj4gK8KgwqDCoMKgwqDCoCAuZmJfd3JpdGXCoMKgwqDCoMKgwqAgPSBkcm1f
ZmJkZXZfZ2VuZXJpY19mYl93cml0ZSwNCj4+PiDCoMKgwqDCoMKgwqDCoMKgIERSTV9GQl9I
RUxQRVJfREVGQVVMVF9PUFMsDQo+Pj4gLcKgwqDCoMKgwqDCoCAuZmJfZmlsbHJlY3TCoMKg
wqAgPSBkcm1fZmJfaGVscGVyX3N5c19maWxscmVjdCwNCj4+PiAtwqDCoMKgwqDCoMKgIC5m
Yl9jb3B5YXJlYcKgwqDCoCA9IGRybV9mYl9oZWxwZXJfc3lzX2NvcHlhcmVhLA0KPj4+IC3C
oMKgwqDCoMKgwqAgLmZiX2ltYWdlYmxpdMKgwqAgPSBkcm1fZmJfaGVscGVyX3N5c19pbWFn
ZWJsaXQsDQo+Pj4gK8KgwqDCoMKgwqDCoCAuZmJfZmlsbHJlY3TCoMKgwqAgPSBkcm1fZmJk
ZXZfZ2VuZXJpY19mYl9maWxscmVjdCwNCj4+PiArwqDCoMKgwqDCoMKgIC5mYl9jb3B5YXJl
YcKgwqDCoCA9IGRybV9mYmRldl9nZW5lcmljX2ZiX2NvcHlhcmVhLA0KPj4+ICvCoMKgwqDC
oMKgwqAgLmZiX2ltYWdlYmxpdMKgwqAgPSBkcm1fZmJkZXZfZ2VuZXJpY19mYl9pbWFnZWJs
aXQsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoCAuZmJfbW1hcMKgwqDCoMKgwqDCoMKgID0gZmJf
ZGVmZXJyZWRfaW9fbW1hcCwNCj4+PiDCoMKgwqDCoMKgwqDCoMKgIC5mYl9kZXN0cm95wqDC
oMKgwqAgPSBkcm1fZmJkZXZfZ2VuZXJpY19mYl9kZXN0cm95LA0KPj4+IMKgIH07DQo+Pj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9mYl9oZWxwZXIuaCBiL2luY2x1ZGUvZHJt
L2RybV9mYl9oZWxwZXIuaA0KPj4+IGluZGV4IDgwYzQwMmY0ZTM3OS4uZTMyNDBkNzQ5YTQz
IDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9mYl9oZWxwZXIuaA0KPj4+ICsr
KyBiL2luY2x1ZGUvZHJtL2RybV9mYl9oZWxwZXIuaA0KPj4+IEBAIC0yNTksMTggKzI1OSw2
IEBAIHZvaWQgZHJtX2ZiX2hlbHBlcl9kYW1hZ2VfcmFuZ2Uoc3RydWN0IA0KPj4+IGRybV9m
Yl9oZWxwZXIgKmhlbHBlciwgb2ZmX3Qgb2ZmLCBzaXplX3QNCj4+Pg0KPj4+IMKgIHZvaWQg
ZHJtX2ZiX2hlbHBlcl9kZWZlcnJlZF9pbyhzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgc3RydWN0
IA0KPj4+IGxpc3RfaGVhZCAqcGFnZXJlZmxpc3QpOw0KPj4+DQo+Pj4gLXNzaXplX3QgZHJt
X2ZiX2hlbHBlcl9zeXNfcmVhZChzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgY2hhciBfX3VzZXIg
KmJ1ZiwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzaXplX3QgY291bnQsIGxvZmZfdCAqcHBvcyk7DQo+Pj4gLXNz
aXplX3QgZHJtX2ZiX2hlbHBlcl9zeXNfd3JpdGUoc3RydWN0IGZiX2luZm8gKmluZm8sIGNv
bnN0IGNoYXIgDQo+Pj4gX191c2VyICpidWYsDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3QgY291bnQs
IGxvZmZfdCAqcHBvcyk7DQo+Pj4gLQ0KPj4+IC12b2lkIGRybV9mYl9oZWxwZXJfc3lzX2Zp
bGxyZWN0KHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0
IGZiX2ZpbGxyZWN0ICpyZWN0KTsNCj4+PiAtdm9pZCBkcm1fZmJfaGVscGVyX3N5c19jb3B5
YXJlYShzdHJ1Y3QgZmJfaW5mbyAqaW5mbywNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBm
Yl9jb3B5YXJlYSAqYXJlYSk7DQo+Pj4gLXZvaWQgZHJtX2ZiX2hlbHBlcl9zeXNfaW1hZ2Vi
bGl0KHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3Qg
ZmJfaW1hZ2UgKmltYWdlKTsNCj4+PiAtDQo+Pj4gwqAgc3NpemVfdCBkcm1fZmJfaGVscGVy
X2NmYl9yZWFkKHN0cnVjdCBmYl9pbmZvICppbmZvLCBjaGFyIF9fdXNlciAqYnVmLA0KPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHNpemVfdCBjb3VudCwgbG9mZl90ICpwcG9zKTsNCj4+PiDCoCBzc2l6ZV90
IGRybV9mYl9oZWxwZXJfY2ZiX3dyaXRlKHN0cnVjdCBmYl9pbmZvICppbmZvLCBjb25zdCBj
aGFyIA0KPj4+IF9fdXNlciAqYnVmLA0KPj4+IEBAIC0zOTgsMzUgKzM4Niw2IEBAIHN0YXRp
YyBpbmxpbmUgaW50IA0KPj4+IGRybV9mYl9oZWxwZXJfZGVmaW9faW5pdChzdHJ1Y3QgZHJt
X2ZiX2hlbHBlciAqZmJfaGVscGVyKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1F
Tk9ERVY7DQo+Pj4gwqAgfQ0KPj4+DQo+Pj4gLXN0YXRpYyBpbmxpbmUgc3NpemVfdCBkcm1f
ZmJfaGVscGVyX3N5c19yZWFkKHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjaGFyIF9fdXNlciAqYnVmLCBzaXplX3QgDQo+
Pj4gY291bnQsDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxvZmZf
dCAqcHBvcykNCj4+PiAtew0KPj4+IC3CoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9ERVY7DQo+
Pj4gLX0NCj4+PiAtDQo+Pj4gLXN0YXRpYyBpbmxpbmUgc3NpemVfdCBkcm1fZmJfaGVscGVy
X3N5c193cml0ZShzdHJ1Y3QgZmJfaW5mbyAqaW5mbywNCj4+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBjaGFyIF9fdXNlciAqYnVmLA0KPj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBjb3VudCwgbG9mZl90IA0K
Pj4+ICpwcG9zKQ0KPj4+IC17DQo+Pj4gLcKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT0RFVjsN
Cj4+PiAtfQ0KPj4+IC0NCj4+PiAtc3RhdGljIGlubGluZSB2b2lkIGRybV9mYl9oZWxwZXJf
c3lzX2ZpbGxyZWN0KHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCANCj4+PiBmYl9maWxscmVjdCAq
cmVjdCkNCj4+PiAtew0KPj4+IC19DQo+Pj4gLQ0KPj4+IC1zdGF0aWMgaW5saW5lIHZvaWQg
ZHJtX2ZiX2hlbHBlcl9zeXNfY29weWFyZWEoc3RydWN0IGZiX2luZm8gKmluZm8sDQo+Pj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IA0KPj4+
IGZiX2NvcHlhcmVhICphcmVhKQ0KPj4+IC17DQo+Pj4gLX0NCj4+PiAtDQo+Pj4gLXN0YXRp
YyBpbmxpbmUgdm9pZCBkcm1fZmJfaGVscGVyX3N5c19pbWFnZWJsaXQoc3RydWN0IGZiX2lu
Zm8gKmluZm8sDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b25zdCBzdHJ1Y3QgZmJfaW1hZ2UgDQo+Pj4gKmltYWdlKQ0KPj4+IC17DQo+Pj4gLX0NCj4+
PiAtDQo+Pj4gwqAgc3RhdGljIGlubGluZSBzc2l6ZV90IGRybV9mYl9oZWxwZXJfY2ZiX3Jl
YWQoc3RydWN0IGZiX2luZm8gKmluZm8sIA0KPj4+IGNoYXIgX191c2VyICpidWYsDQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBjb3VudCwgbG9m
Zl90IA0KPj4+ICpwcG9zKQ0KPj4+IMKgIHsNCj4+PiAtLSANCj4+PiAyLjQwLjENCj4+Pg0K
Pj4NCj4+DQo+IA0KDQotLSANClRob21hcyBaaW1tZXJtYW5uDQpHcmFwaGljcyBEcml2ZXIg
RGV2ZWxvcGVyDQpTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgNCkZyYW5r
ZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVlcm5iZXJnLCBHZXJtYW55DQpHRjogSXZvIFRvdGV2
LCBBbmRyZXcgTXllcnMsIEFuZHJldyBNY0RvbmFsZCwgQm91ZGllbiBNb2VybWFuDQpIUkIg
MzY4MDkgKEFHIE51ZXJuYmVyZykNCg==

--------------zX5YRPGvGETBVW08P3jLJzad--

--------------yzIu0wA3zPDMnX5u237phxKj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmRtEc4FAwAAAAAACgkQlh/E3EQov+Bk
Uw//YmHWpHeO5Y/SwuRZdWe7nTwMG7togVh/O+HIQP7EcWqyZNkUL2pqr3QsRZyW9sRL1NtwnLH1
m0vd06KchR2VfcFwAvyd0yAh+UuyK8mw2VPLxYkBh5ePoXEhw6+WCk23cflkOBLkzFAMNO5SAhSW
Y+DkrZlwQ9354EVx6R/ybZB1lg78yjPZtQN0G2JV81qIcynn7kK5asmVGPPmbhS3czO96kjvtJPG
Hd10f8Hz+Qnu85bGuTvn91T2ImiMAarN9bRLY8hyOOfoRtgxVBObMpvu7n0PbkJYbMEtF2Iy540M
9fiTuCDfkIWK1T5K5Cdet4R28XQNtUznuoaRI4GP/fVF4KxWz522+hzTRIa0elNuRxw/IvwAjCJI
snik5kPAAT7N9H+hkHFtqOMluO2+QsJX+OWQDKWt1wSfdV7PbXa1PiGTNPoWwrZs7DehwDZrKQQJ
jmoKvUuqJyiT6galUk1CRpqrJo+Y58xAVo9KAPEGOQRQAAHze8mznTzUP85lPiD1N6m6W4i03sRG
8bCo7K2F5p9Ib36vrNMeCCHlL0iEV3jFkiEFjUwGNB4KKVbfEodayYiFtNgFub+0UxaRy5McvGhQ
iLLVjrk6d0YFPAGMUCsXXFunOEiaV+C5oF24nxFQSH5grJ0YFRm5p13Q6p294h7tyeK9cWJZTK27
WX4=
=8WHx
-----END PGP SIGNATURE-----

--------------yzIu0wA3zPDMnX5u237phxKj--
