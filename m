Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 648B1677C73
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 14:29:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B4410E491;
	Mon, 23 Jan 2023 13:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA09010E491
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 13:29:46 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 83F2522CEC;
 Mon, 23 Jan 2023 13:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1674480585; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1I5qko490BLRoDlSVQhuyQMO4SIym7YcCKvMyxccxSw=;
 b=BOHM8BZ71CdZ8QjJDizKfEdpqCEwPtUdAszrLC7MiGbtnIKDyAYeOuWp9fiw81S5G1NORy
 8ksDJWNIBdaVuWt5xHDl55gKU6v5g28xpPXhlEEuNEhpZ6r89FvGkmWNygpb0KszX+YzP3
 x38Eyqlku0y3s49k1rD3IT/O19eyeHA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1674480585;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1I5qko490BLRoDlSVQhuyQMO4SIym7YcCKvMyxccxSw=;
 b=tj6kX3UCUPAKzCFxu1pS3D8ANmwJ2Bp62EN4KPZCUHsDo6bElMBCf3t3fJXljgWzS8JgWD
 U6D6MVerNQLVrgBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 60AAB1357F;
 Mon, 23 Jan 2023 13:29:45 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 0d5UFsmLzmOpDQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Mon, 23 Jan 2023 13:29:45 +0000
Message-ID: <8dbd8df1-5b20-7b41-54d6-363a0177af55@suse.de>
Date: Mon, 23 Jan 2023 14:29:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230123074437.475103-1-jouni.hogander@intel.com>
 <7ee0c0c6-2620-38a6-76da-07c792950dd4@suse.de>
 <654a535c8399ba0aefb27773b7c3fbf926d3c9dc.camel@intel.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <654a535c8399ba0aefb27773b7c3fbf926d3c9dc.camel@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pZK7qORAeFptzyuKT70SUvqq"
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/fbdev: Implement fb_dirty for
 intel custom fb helper
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pZK7qORAeFptzyuKT70SUvqq
Content-Type: multipart/mixed; boundary="------------ZJbCY0soqlKd5DaXHNi4IVeB";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Message-ID: <8dbd8df1-5b20-7b41-54d6-363a0177af55@suse.de>
Subject: Re: [PATCH v4] drm/i915/fbdev: Implement fb_dirty for intel custom fb
 helper
References: <20230123074437.475103-1-jouni.hogander@intel.com>
 <7ee0c0c6-2620-38a6-76da-07c792950dd4@suse.de>
 <654a535c8399ba0aefb27773b7c3fbf926d3c9dc.camel@intel.com>
In-Reply-To: <654a535c8399ba0aefb27773b7c3fbf926d3c9dc.camel@intel.com>

--------------ZJbCY0soqlKd5DaXHNi4IVeB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMjMuMDEuMjMgdW0gMTM6MjAgc2NocmllYiBIb2dhbmRlciwgSm91bmk6DQo+
IE9uIE1vbiwgMjAyMy0wMS0yMyBhdCAxMjozOCArMDEwMCwgVGhvbWFzIFppbW1lcm1hbm4g
d3JvdGU6DQo+PiBIaQ0KPj4NCj4+IEFtIDIzLjAxLjIzIHVtIDA4OjQ0IHNjaHJpZWIgSm91
bmkgSMO2Z2FuZGVyOg0KPj4+IEFmdGVyIGRpc2Nvbm5lY3RpbmcgZGFtYWdlIHdvcmtlciBm
cm9tIHVwZGF0ZSBsb2dpYyBpdCdzIGxlZnQgdG8NCj4+PiBmYmRldg0KPj4+IGVtdWxhdGlv
biBpbXBsZW1lbnRhdGlvbiB0byBoYXZlIGZiX2RpcnR5IGZ1bmN0aW9uLiBDdXJyZW50bHkg
aW50ZWwNCj4+PiBmYmRldiBkb2Vzbid0IGhhdmUgaXQuIFRoaXMgaXMgY2F1c2luZyBwcm9i
bGVtcyB0byBmZWF0dXJlcyAoUFNSLA0KPj4+IEZCQywNCj4+PiBEUlJTKSByZWx5aW5nIG9u
IGRpcnR5IGNhbGxiYWNrLg0KPj4+DQo+Pj4gSW1wbGVtZW50IHNpbXBsZSBmYl9kaXJ0eSBj
YWxsYmFjayB0byBkZWxpdmVyIG5vdGlmaWNhdGlvbnMgYWJvdXQNCj4+PiB1cGRhdGVzDQo+
Pj4gaW4gZmIgY29uc29sZS4NCj4+Pg0KPj4+IHY0OiBBZGQgcHJvcGVyIEZpeGVzIHRhZyBh
bmQgbW9kaWZ5IGNvbW1pdCBtZXNzYWdlDQo+Pj4gdjM6IENoZWNrIGRhbWFnZSBjbGlwDQo+
Pj4gdjI6IEltcHJvdmVkIGNvbW1pdCBtZXNzYWdlIGFuZCBhZGRlZCBGaXhlcyB0YWcNCj4+
Pg0KPj4+IEZpeGVzOiBmMjMxYWY0OThjMjkgKCJkcm0vZmItaGVscGVyOiBEaXNjb25uZWN0
IGRhbWFnZSB3b3JrZXIgZnJvbQ0KPj4+IHVwZGF0ZSBsb2dpYyIpDQo+Pj4gQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+Pj4gQ2M6IFRo
b21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPj4+IENjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPj4+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPj4+IC0tLQ0KPj4+ICDC
oCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgfCAxMiArKysr
KysrKysrKysNCj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCj4+
Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiZGV2LmMNCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJk
ZXYuYw0KPj4+IGluZGV4IDE5ZjNiNWQ5MmE1NS4uZDM5ZGI4MDUwYzY5IDEwMDY0NA0KPj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPj4+
IEBAIC0zMjEsOCArMzIxLDIwIEBAIHN0YXRpYyBpbnQgaW50ZWxmYl9jcmVhdGUoc3RydWN0
IGRybV9mYl9oZWxwZXINCj4+PiAqaGVscGVyLA0KPj4+ICDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIHJldDsNCj4+PiAgwqAgfQ0KPj4+ICAgIA0KPj4+ICtzdGF0aWMgaW50IGludGVsZmJf
ZGlydHkoc3RydWN0IGRybV9mYl9oZWxwZXIgKmhlbHBlciwgc3RydWN0DQo+Pj4gZHJtX2Ns
aXBfcmVjdCAqY2xpcCkNCj4+PiArew0KPj4+ICvCoMKgwqDCoMKgwqDCoGlmICghKGNsaXAt
PngxIDwgY2xpcC0+eDIgJiYgY2xpcC0+eTEgPCBjbGlwLT55MikpDQo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOw0KPj4+ICsNCj4+PiArwqDCoMKgwqDC
oMKgwqBpZiAoaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5KQ0KPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5KGhlbHBl
ci0+ZmIsIE5VTEwsDQo+Pj4gMCwgMCwgY2xpcCwgMSk7DQo+Pg0KPj4gRGlkbid0IEkgbmFj
ayB0aGlzIGFwcHJvYWNoIGFscmVhZHk/IFlvdSBzaG91bGRuJ3Qgc2V0IGZiX2RpcnR5LiBU
aGUNCj4+IGJldHRlciBzb2x1dGlvbiB3YXMgdG8gaW1wbGVtZW50IGk5MTUtc3BlY2lmaWMg
aGVscGVycyBmb3Igd3JpdGUsDQo+PiBmaWxsYXJlYSwgY29weWFyZWEgYW5kIGJsaXQuIFRo
b3NlIHNob3VsZCBjYWxsIGludGVsZmJfZGlydHkoKQ0KPj4gZGlyZWN0bHkNCj4+IGFmdGVy
IHBlcmZvcm1pbmcgdGhlIG91dHB1dC7CoCBBbmQgSUlSQyB5b3UgYWxyZWFkeSBpbXBsZW1l
bnRlZCB0aGlzLg0KPiANCj4gSSBoYXZlIGltcGxlbWVudGVkIHN1Y2ggdGhpbmcuIEkgZGlk
bid0IHRvb2sgaXQgYXMgYSBuYWNrIGJhY2sgdGhlbi4NCj4gTGFzdCBjb21tZW50IGZyb20g
eW91IHdhczoNCj4gDQo+ICJpZiB5b3UgZ28gd2l0aCBmYl9kaXJ0eSwgcGxlYXNlIGltcGxl
bWVudCB0aGUgY2xpcHBpbmcNCj4gdGVzdCBpbiB5b3VyIGNhbGxiYWNrLiINCj4gDQo+IGFu
ZCB2MyB3YXMgcHJlcGFyZWQgdG8gYWRkcmVzcyB0aGF0IGNvbW1lbnQuwqBNeSB0aGlua2lu
ZyB3YXMgdGhhdCB0aGlzDQo+IGlzIG9ubHkgZm9yIGZiIGNvbnNvbGUsIGJ1dCBWaWxsZSBT
eXJqw6Rsw6QgY29tbWVudGVkIHRoYXQgdGhlcmUgaXMgbW9yZQ0KPiB0aGFuIGNvbnNvbGUg
c28gSSBzdGlja2VkIGluIHRoaXMgYXBwcm9hY2guDQo+IA0KPiBTbyB5b3UgdGhpbmsgSSBz
aG91bGQganVzdCBkcm9wIGlkZWEgb2Ygc2V0dGluZyBkaXJ0eSBjYWxsYmFjayBhbmQNCj4g
aW1wbGVtZW50IHRob3NlIGk5MTUtc3BlY2lmaWMgaGVscGVycz8NCg0KQWggT0ssIHNvIEkg
cmVtZW1iZXJlZCBpbmNvcnJlY3RseS4NCg0KQSBmZXcgdGhpbmdzIGhhdmUgY2hhbmdlZCBz
aW5jZSBteSBvcmlnaW5hbCBjb21tZW50IGFuZCBJIHdvcmtlZCBvbiANCmZiZGV2IGhlbHBl
ciBhIGJpdC4gIFRoZSB0aGluZyBpcyB0aGF0IGZiX2RpcnR5IHdpbGwgbGlrZWx5IGdvIGF3
YXkgYXQgDQpzb21lIHBvaW50ICh0b2dldGhlciB3aXRoIHRoZSByZXN0IG9mIGRybV9mYl9o
ZWxwZXJfZnVuY3MpLiBJT1cgYXQgc29tZSANCnBvaW50LCB5b3UnbGwgbmVlZCB0aG9zZSBp
OTE1IGZ1bmN0aW9ucyBhbnl3YXlzLiBOb3QgdXNpbmcgZmJfZGlydHkgbm93IA0Kd2lsbCBz
YWZlIHRoYXQgd29yayBsYXRlciBvbi4NCg0KQmVzdCByZWdhcmRzDQpUaG9tYXMNCg0KPiAN
Cj4+DQo+PiBCZXN0IHJlZ2FyZHMNCj4+IFRob21hcw0KPj4NCj4+PiArDQo+Pj4gK8KgwqDC
oMKgwqDCoMKgcmV0dXJuIDA7DQo+Pj4gK30NCj4+PiArDQo+Pj4gIMKgIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX2ZiX2hlbHBlcl9mdW5jcyBpbnRlbF9mYl9oZWxwZXJfZnVuY3MgPSB7
DQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqAuZmJfcHJvYmUgPSBpbnRlbGZiX2NyZWF0ZSwNCj4+
PiArwqDCoMKgwqDCoMKgwqAuZmJfZGlydHkgPSBpbnRlbGZiX2RpcnR5LA0KPj4+ICDCoCB9
Ow0KPj4+ICAgIA0KPj4+ICDCoCBzdGF0aWMgdm9pZCBpbnRlbF9mYmRldl9kZXN0cm95KHN0
cnVjdCBpbnRlbF9mYmRldiAqaWZiZGV2KQ0KPj4NCj4+IC0tIA0KPj4gVGhvbWFzIFppbW1l
cm1hbm4NCj4+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINCj4+IFNVU0UgU29mdHdhcmUg
U29sdXRpb25zIEdlcm1hbnkgR21iSA0KPj4gTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5i
ZXJnLCBHZXJtYW55DQo+PiAoSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpDQo+PiBHZXNjaMOk
ZnRzZsO8aHJlcjogSXZvIFRvdGV2DQo+IA0KDQotLSANClRob21hcyBaaW1tZXJtYW5uDQpH
cmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyDQpTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJt
YW55IEdtYkgNCk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQ0KKEhS
QiAzNjgwOSwgQUcgTsO8cm5iZXJnKQ0KR2VzY2jDpGZ0c2bDvGhyZXI6IEl2byBUb3Rldg0K


--------------ZJbCY0soqlKd5DaXHNi4IVeB--

--------------pZK7qORAeFptzyuKT70SUvqq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmPOi8gFAwAAAAAACgkQlh/E3EQov+BA
xg//YUAiWgLa1E2EV3xNBpr1mB3LpGZks1kocQIMsdxGC6fdU4bZQYcbZxyjmhW/625SCz8V8Hdh
deLcVUAZ5x1255JAZScURxR5+CmQEwIlBSjxvxg8Zd+tJAH8U/hcIh1qEsb0WgS+k/cPdyouc3RB
/wEQ1ed/NDzk30HrBlGALs1KV3QfKc6ciCOcrqYe52BcQdJ7vK4EmIjmo7zte5ljQi6gwI95LmT1
cb3mGTlZKkmpSMUBQz/Mt+E1EhUKqY2D5VuHiDvC0OwJLEunk9Zytrjgvhqgj2s0VLFKpGy9M44m
kxo5k9okbr99VYwcXlT7XebJvPiQCKoYEQsdIBGASHa39MdiLwjGBi+mT6ZUBaicNfkYSGZFRSLP
r3LMBCV0Il+KqFMuwgj8VmOWFjQrXZVD5rIoUZeryQAfRI8icoOdX/ECUMERGx0NpYPAOzx28LMf
qfElXuSwNOuJzxMX/d9m7akoCIN7sKFqroCoP9Nie/e9Q5X24HQxjId6VnB+SEKU/ADrZ8ClnUD4
pTruZAgc8kpupZPnprXCgGkHiWdpEaww8iXj9d8eurXEhTp0BS1wM6D5Q0mutOg21hCuVXc8ODwp
9FDjum+2DP3RkCgO1L+sFEEAxKaSyfLYODCDgke6zAFcUAN4dGvRLaMB2mCJck+luI15yyHG2nPq
l1o=
=pYxs
-----END PGP SIGNATURE-----

--------------pZK7qORAeFptzyuKT70SUvqq--
