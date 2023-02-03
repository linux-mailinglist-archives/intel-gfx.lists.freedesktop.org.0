Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 498806897EE
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:42:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF6F010E76D;
	Fri,  3 Feb 2023 11:42:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4436210E76D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 11:42:03 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id DCA771FE43;
 Fri,  3 Feb 2023 11:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1675424521; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CppZ5Y+KAR4s8Qv+tg+Fvjzg5z/6WZ9w7tXc9k1MWz0=;
 b=HWHOpkTqfeZf6KYdx+RMzbvfIo6mkSDBKX/NH0qjgXbiIv6fw6NLbPTPCIUQ8ZmAfsLMpZ
 nqvt/zS436Rjt2gPb037mi5F0I5yWX1t91VsoSvoJ2t/Uc5V5hXfy3MJ6ehNHk51J0bQl8
 jFJntbGhtc+u53UK2sTbBgKPUTHRptQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1675424521;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CppZ5Y+KAR4s8Qv+tg+Fvjzg5z/6WZ9w7tXc9k1MWz0=;
 b=SXxWFwxlCoFFMlZ34fyB69xGV/PcG6va+FwcHNKj9I5mn3bK8EN5XmapXcKrYmry0Gs3lM
 5pHttbIsfLgSHrAw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id C1ACF1346D;
 Fri,  3 Feb 2023 11:42:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id pLxXLgnz3GPhUgAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Fri, 03 Feb 2023 11:42:01 +0000
Message-ID: <8981246b-b95f-ccff-f66a-ad494707b347@suse.de>
Date: Fri, 3 Feb 2023 12:42:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20230124091046.2500682-1-jouni.hogander@intel.com>
 <7f8b8d4d-b122-bff7-a458-985061bf1b4c@suse.de>
 <29978ffbbffd810a380c8d0606fffb31c8f007dd.camel@intel.com>
 <Y9zlIV3Yt6apP8o9@intel.com>
 <34acb54641ae07a159ae9d33b660328cf16c1b23.camel@intel.com>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <34acb54641ae07a159ae9d33b660328cf16c1b23.camel@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------YUOIzY10tfEEBlx8rgk067jL"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement wrappers for
 callbacks used by fbcon
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------YUOIzY10tfEEBlx8rgk067jL
Content-Type: multipart/mixed; boundary="------------JjbjI4PuKwpH5mP6qvQFp70o";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <8981246b-b95f-ccff-f66a-ad494707b347@suse.de>
Subject: Re: [PATCH] drm/i915/fbdev: Implement wrappers for callbacks used by
 fbcon
References: <20230124091046.2500682-1-jouni.hogander@intel.com>
 <7f8b8d4d-b122-bff7-a458-985061bf1b4c@suse.de>
 <29978ffbbffd810a380c8d0606fffb31c8f007dd.camel@intel.com>
 <Y9zlIV3Yt6apP8o9@intel.com>
 <34acb54641ae07a159ae9d33b660328cf16c1b23.camel@intel.com>
In-Reply-To: <34acb54641ae07a159ae9d33b660328cf16c1b23.camel@intel.com>

--------------JjbjI4PuKwpH5mP6qvQFp70o
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMDMuMDIuMjMgdW0gMTI6MDkgc2NocmllYiBIb2dhbmRlciwgSm91bmk6DQo+
IE9uIEZyaSwgMjAyMy0wMi0wMyBhdCAxMjo0MiArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdy
b3RlOg0KPj4gT24gRnJpLCBGZWIgMDMsIDIwMjMgYXQgMDc6MjE6MjdBTSArMDAwMCwgSG9n
YW5kZXIsIEpvdW5pIHdyb3RlOg0KPj4+IE9uIFR1ZSwgMjAyMy0wMS0yNCBhdCAxMzoyNyAr
MDEwMCwgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6DQo+Pj4+IEhpDQo+Pj4+DQo+Pj4+IEFt
IDI0LjAxLjIzIHVtIDEwOjEwIHNjaHJpZWIgSm91bmkgSMO2Z2FuZGVyOg0KPj4+Pj4gQWZ0
ZXIgZGlzY29ubmVjdGluZyBkYW1hZ2Ugd29ya2VyIGZyb20gdXBkYXRlIGxvZ2ljIG91ciBk
aXJ0eQ0KPj4+Pj4gY2FsbGJhY2sNCj4+Pj4+IGlzIG5vdCBjYWxsZWQgb24gZmJjb24gZXZl
bnRzLiBUaGlzIGlzIGNhdXNpbmcgcHJvYmxlbXMgdG8NCj4+Pj4+IGZlYXR1cmVzDQo+Pj4+
PiAoUFNSLCBGQkMsIERSUlMpIHJlbHlpbmcgb24gZGlydHkgY2FsbGJhY2sgZ2V0dGluZyBj
YWxsZWQgYW5kDQo+Pj4+PiBicmVha2luZw0KPj4+Pj4gZmIgY29uc29sZSB3aGVuIHRoZXNl
IGZlYXR1cmVzIGFyZSBpbiB1c2UuDQo+Pj4+Pg0KPj4+Pj4gSW1wbGVtZW50IHdyYXBwZXJz
IGZvciBjYWxsYmFja3MgdXNlZCBieSBmYmNvbiBhbmQgY2FsbCBvdXINCj4+Pj4+IGRpcnR5
DQo+Pj4+PiBjYWxsYmFjayBpbiB0aG9zZS4NCj4+Pj4+DQo+Pj4+PiBGaXhlczogZjIzMWFm
NDk4YzI5ICgiZHJtL2ZiLWhlbHBlcjogRGlzY29ubmVjdCBkYW1hZ2Ugd29ya2VyDQo+Pj4+
PiBmcm9tDQo+Pj4+PiB1cGRhdGUgbG9naWMiKQ0KPj4+Pj4gQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+Pj4+PiBDYzogVGhvbWFzIFpp
bW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+Pj4+PiBDYzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPj4+Pg0KPj4+PiBUaGlzIGlz
IHRoZSBiZXR0ZXIgc29sdXRpb24gd3J0IHdoYXQgZmJkZXYgd2FudHMuDQo+Pj4NCj4+PiBU
aGVyZSB3YXMgYSBmYWlsdXJlIGZyb20gdGVzdGluZyByb2JvdC4gZHJpdmVycy90dHkvdnQv
dnQuYyBpcw0KPj4+IHVzaW5nDQo+Pj4gc3BpbmxvY2sgYW5kIGluIG91ciBkaXJ0eSBjYWxs
YmFjayB3ZSBhcmUgdGFraW5nIG11dGV4Lg0KDQpJIHRoaW5rIEkndmUgc2VlbiB0aGlzIHBy
b2JsZW0gYmVmb3JlIGluIHRoZSBjb250ZXh0IG9mIHZjNC4gV2UnZCANCnByb2JhYmx5IGhh
dmUgdG8gYWRkIGEgZGFtYWdlIHdvcmtlciB0byBpOTE1LCB3aGljaCBzZWVtcyBhIGJpdCBt
dWNoIGZvciANCnRoaXMgZml4Lg0KDQoNCj4+Pg0KPj4+IERvIHlvdSBoYXZlIGFueSBzdWdn
ZXN0aW9ucz8gU2hhbGwgd2UgZmFsbGJhY2sgdG8gb3JpZ2luYWwgZml4DQo+Pj4gd2hpY2gN
Cj4+PiB3YXMgc2V0dGluZyB0aGUgZGlydHkgY2FsbGJhY2sgd2hlcmUgY2FsbCBpcyBtYWRl
IGZyb20gd29ya3F1ZXVlPw0KPj4NCj4+IFBsZWFzZSBqdXN0IGZpeCB0aGUgb3JpZ2luYWwg
cmVncmVzc2lvbiBhcyBzdHJhaWdodGZvcndhcmRseSBhcw0KPj4gcG9zc2libGUuDQo+IA0K
PiBIZXJlIGlzIHRoZSBvcmlnaW5hbCBwYXRjaCBieSBtZToNCj4gDQo+IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTExNDMzLw0KDQpHaXZlbiB0aGUgY2ly
Y3Vtc3RhbmNlcywNCg0KUmV2aWV3ZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVy
bWFubkBzdXNlLmRlPg0KDQpmb3IgdGhpcyBvbGRlciBwYXRjaC4gTWF5YmUgYWRkIGEgVE9E
TyBjb21tZW50IHRoYXQgc2F5cyB0aGF0IHRoZSANCmZiX2RpcnR5IHdvcmtlciBuZWVkcyB0
byBiZSBtb3ZlZCBpbnRvIGk5MTUgYW5kIHRoYXQgdGhlIGZiXyB3cml0ZSBvcHMgDQpuZWVk
IHRvIGJlIHJlaW1wbGVtZW50ZWQgZm9yIGEgZ29vZCBzb2x1dGlvbi4NCg0KQmVzdCByZWdh
cmRzDQpUaG9tYXMNCg0KPiANCj4gd2hpY2ggd2FzIGV2ZW50dWFsbHkgbmFja2VkIGJ5IFRo
b21hcy4gTWF5YmUgd2UgY291bGQgY29udGludWUgd2l0aA0KPiB0aGF0IG9uZSBhbmQgc29s
dmUgdGhlc2UgcHJvYmxlbXMgd2hlbi9pZiBmYl9kaXJ0eSBpcyByZW1vdmVkPw0KPiAgIA0K
Pj4NCj4+Pg0KPj4+Pg0KPj4+PiBBY2tlZC1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1t
ZXJtYW5uQHN1c2UuZGU+DQo+Pj4+DQo+Pj4+IEJlc3QgcmVnYXJkcw0KPj4+PiBUaG9tYXMN
Cj4+Pj4NCj4+Pj4+IC0tLQ0KPj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJkZXYuYyB8IDUzDQo+Pj4+PiArKysrKysrKysrKysrKysrKysrKy0tDQo+
Pj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pDQo+Pj4+Pg0KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJkZXYuYw0KPj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiZGV2LmMNCj4+Pj4+IGluZGV4IDE5ZjNiNWQ5MmE1NS4uYjE2NTM2MjQ1
NTJlIDEwMDY0NA0KPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmRldi5jDQo+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2LmMNCj4+Pj4+IEBAIC03Nyw2ICs3NywxOCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9mYmRldl9pbnZhbGlkYXRlKHN0cnVjdA0KPj4+Pj4gaW50ZWxfZmJkZXYgKmlmYmRl
dikNCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZnJvbnRidWZmZXJfaW52YWxpZGF0
ZSh0b19mcm9udGJ1ZmZlcihpZmJkZXYpLA0KPj4+Pj4gT1JJR0lOX0NQVSk7DQo+Pj4+PiAg
wqAgfQ0KPj4+Pj4gICAgDQo+Pj4+PiArc3RhdGljIHZvaWQgaW50ZWxfZmJkZXZfZGlydHko
c3RydWN0IGZiX2luZm8gKmluZm8pDQo+Pj4+PiArew0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
c3RydWN0IGRybV9mYl9oZWxwZXIgKmhlbHBlciA9IGluZm8tPnBhcjsNCj4+Pj4+ICsNCj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoC8qDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgKiBJbnRlbF9m
YiBkaXJ0eSBpbXBsZW1lbnRhdGlvbiBkb2Vzbid0IHVzZSBkYW1hZ2UNCj4+Pj4+IGNsaXBz
IC0NCj4+Pj4+Pg0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgICogbm8gbmVlZCB0byBwYXNzIHRo
ZW0gaGVyZQ0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgICovDQo+Pj4+PiArwqDCoMKgwqDCoMKg
wqBpZiAoaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5KQ0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGhlbHBlci0+ZmItPmZ1bmNzLT5kaXJ0eShoZWxwZXItPmZiLCBO
VUxMLCAwLA0KPj4+Pj4gMCwNCj4+Pj4+IE5VTEwsIDApOw0KPj4+Pj4gK30NCj4+Pj4+ICsN
Cj4+Pj4+ICDCoCBzdGF0aWMgaW50IGludGVsX2ZiZGV2X3NldF9wYXIoc3RydWN0IGZiX2lu
Zm8gKmluZm8pDQo+Pj4+PiAgwqAgew0KPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
ZHJtX2ZiX2hlbHBlciAqZmJfaGVscGVyID0gaW5mby0+cGFyOw0KPj4+Pj4gQEAgLTkxLDYg
KzEwMywzOSBAQCBzdGF0aWMgaW50IGludGVsX2ZiZGV2X3NldF9wYXIoc3RydWN0DQo+Pj4+
PiBmYl9pbmZvDQo+Pj4+PiAqaW5mbykNCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IHJldDsNCj4+Pj4+ICDCoCB9DQo+Pj4+PiAgICANCj4+Pj4+ICtzdGF0aWMgc3NpemVfdCBp
bnRlbF9mYmRldl93cml0ZShzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgY29uc3QNCj4+Pj4+IGNo
YXINCj4+Pj4+IF9fdXNlciAqYnVmLA0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBjb3VudCwg
bG9mZl90ICpwcG9zKQ0KPj4+Pj4gK3sNCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoGludCByZXQ7
DQo+Pj4+PiArDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqByZXQgPSBkcm1fZmJfaGVscGVyX2Nm
Yl93cml0ZShpbmZvLCBidWYsIGNvdW50LCBwcG9zKTsNCj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oGlmIChyZXQgPiAwKQ0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlu
dGVsX2ZiZGV2X2RpcnR5KGluZm8pOw0KPj4+Pj4gKw0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
cmV0dXJuIHJldDsNCj4+Pj4+ICt9DQo+Pj4+PiArDQo+Pj4+PiArc3RhdGljIHZvaWQgaW50
ZWxfZmJkZXZfZmlsbHJlY3Qoc3RydWN0IGZiX2luZm8gKmluZm8sDQo+Pj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb25zdCBzdHJ1Y3QgZmJfZmlsbHJlY3QNCj4+Pj4+ICpyZWN0KQ0KPj4+Pj4gK3sN
Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoGRybV9mYl9oZWxwZXJfY2ZiX2ZpbGxyZWN0KGluZm8s
IHJlY3QpOw0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZmJkZXZfZGlydHkoaW5mbyk7
DQo+Pj4+PiArfQ0KPj4+Pj4gKw0KPj4+Pj4gK3N0YXRpYyB2b2lkIGludGVsX2ZiZGV2X2Nv
cHlhcmVhKHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qg
c3RydWN0IGZiX2NvcHlhcmVhDQo+Pj4+PiAqYXJlYSkNCj4+Pj4+ICt7DQo+Pj4+PiArwqDC
oMKgwqDCoMKgwqBkcm1fZmJfaGVscGVyX2NmYl9jb3B5YXJlYShpbmZvLCBhcmVhKTsNCj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoGludGVsX2ZiZGV2X2RpcnR5KGluZm8pOw0KPj4+Pj4gK30N
Cj4+Pj4+ICsNCj4+Pj4+ICtzdGF0aWMgdm9pZCBpbnRlbF9mYmRldl9pbWFnZWJsaXQoc3Ry
dWN0IGZiX2luZm8gKmluZm8sDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGZiX2lt
YWdlICppbWFnZSkNCj4+Pj4+ICt7DQo+Pj4+PiArwqDCoMKgwqDCoMKgwqBkcm1fZmJfaGVs
cGVyX2NmYl9pbWFnZWJsaXQoaW5mbywgaW1hZ2UpOw0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
aW50ZWxfZmJkZXZfZGlydHkoaW5mbyk7DQo+Pj4+PiArfQ0KPj4+Pj4gKw0KPj4+Pj4gIMKg
IHN0YXRpYyBpbnQgaW50ZWxfZmJkZXZfYmxhbmsoaW50IGJsYW5rLCBzdHJ1Y3QgZmJfaW5m
byAqaW5mbykNCj4+Pj4+ICDCoCB7DQo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBk
cm1fZmJfaGVscGVyICpmYl9oZWxwZXIgPSBpbmZvLT5wYXI7DQo+Pj4+PiBAQCAtMTI1LDEw
ICsxNzAsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBmYl9vcHMgaW50ZWxmYl9vcHMgPQ0K
Pj4+Pj4gew0KPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqBEUk1fRkJfSEVMUEVSX0RFRkFVTFRf
T1BTLA0KPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqAuZmJfc2V0X3BhciA9IGludGVsX2ZiZGV2
X3NldF9wYXIsDQo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoC5mYl9yZWFkID0gZHJtX2ZiX2hl
bHBlcl9jZmJfcmVhZCwNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoC5mYl93cml0ZSA9IGRybV9m
Yl9oZWxwZXJfY2ZiX3dyaXRlLA0KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgLmZiX2ZpbGxyZWN0
ID0gZHJtX2ZiX2hlbHBlcl9jZmJfZmlsbHJlY3QsDQo+Pj4+PiAtwqDCoMKgwqDCoMKgwqAu
ZmJfY29weWFyZWEgPSBkcm1fZmJfaGVscGVyX2NmYl9jb3B5YXJlYSwNCj4+Pj4+IC3CoMKg
wqDCoMKgwqDCoC5mYl9pbWFnZWJsaXQgPSBkcm1fZmJfaGVscGVyX2NmYl9pbWFnZWJsaXQs
DQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAuZmJfd3JpdGUgPSBpbnRlbF9mYmRldl93cml0ZSwN
Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoC5mYl9maWxscmVjdCA9IGludGVsX2ZiZGV2X2ZpbGxy
ZWN0LA0KPj4+Pj4gK8KgwqDCoMKgwqDCoMKgLmZiX2NvcHlhcmVhID0gaW50ZWxfZmJkZXZf
Y29weWFyZWEsDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAuZmJfaW1hZ2VibGl0ID0gaW50ZWxf
ZmJkZXZfaW1hZ2VibGl0LA0KPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqAuZmJfcGFuX2Rpc3Bs
YXkgPSBpbnRlbF9mYmRldl9wYW5fZGlzcGxheSwNCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKg
LmZiX2JsYW5rID0gaW50ZWxfZmJkZXZfYmxhbmssDQo+Pj4+PiAgwqAgfTsNCj4+Pj4NCj4+
Pj4gLS0gDQo+Pj4+IFRob21hcyBaaW1tZXJtYW5uDQo+Pj4+IEdyYXBoaWNzIERyaXZlciBE
ZXZlbG9wZXINCj4+Pj4gU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQo+
Pj4+IE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQ0KPj4+PiAoSFJC
IDM2ODA5LCBBRyBOw7xybmJlcmcpDQo+Pj4+IEdlc2Now6RmdHNmw7xocmVyOiBJdm8gVG90
ZXYNCj4+Pg0KPj4NCj4gDQoNCi0tIA0KVGhvbWFzIFppbW1lcm1hbm4NCkdyYXBoaWNzIERy
aXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0K
TWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55DQooSFJCIDM2ODA5LCBB
RyBOw7xybmJlcmcpDQpHZXNjaMOkZnRzZsO8aHJlcjogSXZvIFRvdGV2DQo=

--------------JjbjI4PuKwpH5mP6qvQFp70o--

--------------YUOIzY10tfEEBlx8rgk067jL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmPc8wkFAwAAAAAACgkQlh/E3EQov+BL
vQ//eW7U1YnXbC6kWo8qNsLRUUZooNRRCKPjdMLp+MSXtr87XZ9P1miYe4hNge2oW9c4iU/F66O6
MUwwYpkbPg0O00g2YpWo7N8dhoLhWjIxDwgK2Bj+A0dzmeYAJFmrS2THpnWb5aKKFQPOFWFcxXp9
R4KBuceKxRSzoFkLRl85U1UayxOCUp7OMEMXC/Sy252XIrKDaWuy8rhHKUclYdsBqed1NzRCqE9w
wCXNBFF2AoR3R7IYiA+WV4IqFY1l8d7/UzemQ00MPcYDNzLugoEspZ5J8B4l+kJA2v3QXK61zJ13
DF/U25KwndpYo8QNm6J0xkYv4j5p4UBvVJy2/oUuN3DNl+blF9E0X/5dQw/+ahxjRGfNtYjzaa5N
OlWbHTY9GpIdU2oTAQtDoQIm6TImVUPV8MAIEtnfg9R/SKX5jmIBRw7CA44U/WarRfLOODyt5bw8
fvHS35lqyvDGFnJqDBtOc7rbXtTgEsFwWqUPW5sdhCY6gc7e1pHqMkEHCEh6KhSCBI/hi2wXja+4
jKKiGkKLXFs7EN1a0F1xRUo1igltKrDOHeojQzNiI6rnLZXrdDn5xiRJcOrJ6x4+zw2qw9IAeI7c
6PtLln72XR6Itea1atUs0jCluM9jYcDgpNbsYdzU2+JiyA6LEl7epRiUfHIrYO06uJEElqkQkh7m
pwI=
=1Tws
-----END PGP SIGNATURE-----

--------------YUOIzY10tfEEBlx8rgk067jL--
