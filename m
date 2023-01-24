Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 995FA67980A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 13:27:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E3EB10E061;
	Tue, 24 Jan 2023 12:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88B6310E061
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 12:27:34 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 46F411FE22;
 Tue, 24 Jan 2023 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1674563253; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5XPvsGo29ax2BaqgHvqjhFRFUNYBX6E4iFNCroXHkjI=;
 b=XznwPQvE43aVjaKnEmmUJ9TOWkVcu3DYG3Jxff58uGzsmzIkGHMmzmBcIwq/2hnYNacj+v
 9Q/amPhNlYxK1QaxSpQkmG3BWBCW3jjPXP6eoDN9N5x4iviZMqEVEcsSDH/RrbG6Wn1iof
 XNzrAmmDxzDWmJ0n9PPfBQh/ZBX9stA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1674563253;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5XPvsGo29ax2BaqgHvqjhFRFUNYBX6E4iFNCroXHkjI=;
 b=3n9N9G+bvKDmvD2v4ej//P/iUpzKRkLXUqqXgnAAy9KqISaeUbxCehN9VekT9F/O0NYSV8
 aqYUteKT9HI14cAg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 2B1B2139FB;
 Tue, 24 Jan 2023 12:27:33 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id vLx/CbXOz2O4PQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Tue, 24 Jan 2023 12:27:33 +0000
Message-ID: <7f8b8d4d-b122-bff7-a458-985061bf1b4c@suse.de>
Date: Tue, 24 Jan 2023 13:27:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230124091046.2500682-1-jouni.hogander@intel.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <20230124091046.2500682-1-jouni.hogander@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uZILRyQfGUG0fUIbd4c27Tqy"
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------uZILRyQfGUG0fUIbd4c27Tqy
Content-Type: multipart/mixed; boundary="------------0jBvpiV0eNv2SJdBb00Rtkmd";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <7f8b8d4d-b122-bff7-a458-985061bf1b4c@suse.de>
Subject: Re: [PATCH] drm/i915/fbdev: Implement wrappers for callbacks used by
 fbcon
References: <20230124091046.2500682-1-jouni.hogander@intel.com>
In-Reply-To: <20230124091046.2500682-1-jouni.hogander@intel.com>

--------------0jBvpiV0eNv2SJdBb00Rtkmd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMjQuMDEuMjMgdW0gMTA6MTAgc2NocmllYiBKb3VuaSBIw7ZnYW5kZXI6DQo+
IEFmdGVyIGRpc2Nvbm5lY3RpbmcgZGFtYWdlIHdvcmtlciBmcm9tIHVwZGF0ZSBsb2dpYyBv
dXIgZGlydHkgY2FsbGJhY2sNCj4gaXMgbm90IGNhbGxlZCBvbiBmYmNvbiBldmVudHMuIFRo
aXMgaXMgY2F1c2luZyBwcm9ibGVtcyB0byBmZWF0dXJlcw0KPiAoUFNSLCBGQkMsIERSUlMp
IHJlbHlpbmcgb24gZGlydHkgY2FsbGJhY2sgZ2V0dGluZyBjYWxsZWQgYW5kIGJyZWFraW5n
DQo+IGZiIGNvbnNvbGUgd2hlbiB0aGVzZSBmZWF0dXJlcyBhcmUgaW4gdXNlLg0KPiANCj4g
SW1wbGVtZW50IHdyYXBwZXJzIGZvciBjYWxsYmFja3MgdXNlZCBieSBmYmNvbiBhbmQgY2Fs
bCBvdXIgZGlydHkNCj4gY2FsbGJhY2sgaW4gdGhvc2UuDQo+IA0KPiBGaXhlczogZjIzMWFm
NDk4YzI5ICgiZHJtL2ZiLWhlbHBlcjogRGlzY29ubmVjdCBkYW1hZ2Ugd29ya2VyIGZyb20g
dXBkYXRlIGxvZ2ljIikNCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4NCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KDQpUaGlzIGlzIHRoZSBiZXR0ZXIgc29sdXRpb24gd3J0IHdoYXQgZmJkZXYgd2Fu
dHMuDQoNCkFja2VkLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5k
ZT4NCg0KQmVzdCByZWdhcmRzDQpUaG9tYXMNCg0KPiAtLS0NCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgfCA1MyArKysrKysrKysrKysrKysrKysr
Ky0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmRldi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRl
di5jDQo+IGluZGV4IDE5ZjNiNWQ5MmE1NS4uYjE2NTM2MjQ1NTJlIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+IEBAIC03Nyw2
ICs3NywxOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mYmRldl9pbnZhbGlkYXRlKHN0cnVjdCBp
bnRlbF9mYmRldiAqaWZiZGV2KQ0KPiAgIAlpbnRlbF9mcm9udGJ1ZmZlcl9pbnZhbGlkYXRl
KHRvX2Zyb250YnVmZmVyKGlmYmRldiksIE9SSUdJTl9DUFUpOw0KPiAgIH0NCj4gICANCj4g
K3N0YXRpYyB2b2lkIGludGVsX2ZiZGV2X2RpcnR5KHN0cnVjdCBmYl9pbmZvICppbmZvKQ0K
PiArew0KPiArCXN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIgPSBpbmZvLT5wYXI7DQo+
ICsNCj4gKwkvKg0KPiArCSAqIEludGVsX2ZiIGRpcnR5IGltcGxlbWVudGF0aW9uIGRvZXNu
J3QgdXNlIGRhbWFnZSBjbGlwcyAtPg0KPiArCSAqIG5vIG5lZWQgdG8gcGFzcyB0aGVtIGhl
cmUNCj4gKwkgKi8NCj4gKwlpZiAoaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5KQ0KPiArCQlo
ZWxwZXItPmZiLT5mdW5jcy0+ZGlydHkoaGVscGVyLT5mYiwgTlVMTCwgMCwgMCwgTlVMTCwg
MCk7DQo+ICt9DQo+ICsNCj4gICBzdGF0aWMgaW50IGludGVsX2ZiZGV2X3NldF9wYXIoc3Ry
dWN0IGZiX2luZm8gKmluZm8pDQo+ICAgew0KPiAgIAlzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAq
ZmJfaGVscGVyID0gaW5mby0+cGFyOw0KPiBAQCAtOTEsNiArMTAzLDM5IEBAIHN0YXRpYyBp
bnQgaW50ZWxfZmJkZXZfc2V0X3BhcihzdHJ1Y3QgZmJfaW5mbyAqaW5mbykNCj4gICAJcmV0
dXJuIHJldDsNCj4gICB9DQo+ICAgDQo+ICtzdGF0aWMgc3NpemVfdCBpbnRlbF9mYmRldl93
cml0ZShzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgY29uc3QgY2hhciBfX3VzZXIgKmJ1ZiwNCj4g
KwkJCQkgc2l6ZV90IGNvdW50LCBsb2ZmX3QgKnBwb3MpDQo+ICt7DQo+ICsJaW50IHJldDsN
Cj4gKw0KPiArCXJldCA9IGRybV9mYl9oZWxwZXJfY2ZiX3dyaXRlKGluZm8sIGJ1ZiwgY291
bnQsIHBwb3MpOw0KPiArCWlmIChyZXQgPiAwKQ0KPiArCQlpbnRlbF9mYmRldl9kaXJ0eShp
bmZvKTsNCj4gKw0KPiArCXJldHVybiByZXQ7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lk
IGludGVsX2ZiZGV2X2ZpbGxyZWN0KHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPiArCQkJCSAg
Y29uc3Qgc3RydWN0IGZiX2ZpbGxyZWN0ICpyZWN0KQ0KPiArew0KPiArCWRybV9mYl9oZWxw
ZXJfY2ZiX2ZpbGxyZWN0KGluZm8sIHJlY3QpOw0KPiArCWludGVsX2ZiZGV2X2RpcnR5KGlu
Zm8pOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9mYmRldl9jb3B5YXJlYShz
dHJ1Y3QgZmJfaW5mbyAqaW5mbywNCj4gKwkJCQkgIGNvbnN0IHN0cnVjdCBmYl9jb3B5YXJl
YSAqYXJlYSkNCj4gK3sNCj4gKwlkcm1fZmJfaGVscGVyX2NmYl9jb3B5YXJlYShpbmZvLCBh
cmVhKTsNCj4gKwlpbnRlbF9mYmRldl9kaXJ0eShpbmZvKTsNCj4gK30NCj4gKw0KPiArc3Rh
dGljIHZvaWQgaW50ZWxfZmJkZXZfaW1hZ2VibGl0KHN0cnVjdCBmYl9pbmZvICppbmZvLA0K
PiArCQkJCSBjb25zdCBzdHJ1Y3QgZmJfaW1hZ2UgKmltYWdlKQ0KPiArew0KPiArCWRybV9m
Yl9oZWxwZXJfY2ZiX2ltYWdlYmxpdChpbmZvLCBpbWFnZSk7DQo+ICsJaW50ZWxfZmJkZXZf
ZGlydHkoaW5mbyk7DQo+ICt9DQo+ICsNCj4gICBzdGF0aWMgaW50IGludGVsX2ZiZGV2X2Js
YW5rKGludCBibGFuaywgc3RydWN0IGZiX2luZm8gKmluZm8pDQo+ICAgew0KPiAgIAlzdHJ1
Y3QgZHJtX2ZiX2hlbHBlciAqZmJfaGVscGVyID0gaW5mby0+cGFyOw0KPiBAQCAtMTI1LDEw
ICsxNzAsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBmYl9vcHMgaW50ZWxmYl9vcHMgPSB7
DQo+ICAgCURSTV9GQl9IRUxQRVJfREVGQVVMVF9PUFMsDQo+ICAgCS5mYl9zZXRfcGFyID0g
aW50ZWxfZmJkZXZfc2V0X3BhciwNCj4gICAJLmZiX3JlYWQgPSBkcm1fZmJfaGVscGVyX2Nm
Yl9yZWFkLA0KPiAtCS5mYl93cml0ZSA9IGRybV9mYl9oZWxwZXJfY2ZiX3dyaXRlLA0KPiAt
CS5mYl9maWxscmVjdCA9IGRybV9mYl9oZWxwZXJfY2ZiX2ZpbGxyZWN0LA0KPiAtCS5mYl9j
b3B5YXJlYSA9IGRybV9mYl9oZWxwZXJfY2ZiX2NvcHlhcmVhLA0KPiAtCS5mYl9pbWFnZWJs
aXQgPSBkcm1fZmJfaGVscGVyX2NmYl9pbWFnZWJsaXQsDQo+ICsJLmZiX3dyaXRlID0gaW50
ZWxfZmJkZXZfd3JpdGUsDQo+ICsJLmZiX2ZpbGxyZWN0ID0gaW50ZWxfZmJkZXZfZmlsbHJl
Y3QsDQo+ICsJLmZiX2NvcHlhcmVhID0gaW50ZWxfZmJkZXZfY29weWFyZWEsDQo+ICsJLmZi
X2ltYWdlYmxpdCA9IGludGVsX2ZiZGV2X2ltYWdlYmxpdCwNCj4gICAJLmZiX3Bhbl9kaXNw
bGF5ID0gaW50ZWxfZmJkZXZfcGFuX2Rpc3BsYXksDQo+ICAgCS5mYl9ibGFuayA9IGludGVs
X2ZiZGV2X2JsYW5rLA0KPiAgIH07DQoNCi0tIA0KVGhvbWFzIFppbW1lcm1hbm4NCkdyYXBo
aWNzIERyaXZlciBEZXZlbG9wZXINClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkg
R21iSA0KTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55DQooSFJCIDM2
ODA5LCBBRyBOw7xybmJlcmcpDQpHZXNjaMOkZnRzZsO8aHJlcjogSXZvIFRvdGV2DQo=

--------------0jBvpiV0eNv2SJdBb00Rtkmd--

--------------uZILRyQfGUG0fUIbd4c27Tqy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmPPzrQFAwAAAAAACgkQlh/E3EQov+B5
BxAAkRymQvMZ38+0M4x43v6yM16Ux38WEosi8G1JUcZdUmohXjnLnWy1XYEBgKPrP+lHn5zyJtvB
KodSr5TZ91n1qwN2nJiNxFouz7U1yIGQFMLp4tjRE8c705g2NdvKRDFQgBtRbXMIm6lfoyBhN++Z
x63UWGxKjblK5V8IM3c1XP+SyO+4/HK+kpuCThZcs6/3T8E2/XPcY97Cud0VPMW+LexV6vXhrnq0
6mS70FiQzW7lgKRxgLRskLEZViWKlnrLu7mSkM+zN1xXgpmRiF7hOUkLNeQFjAeWSBHANf5AkDOb
ZsFfqCPp3ImHWoOfSnbdl8lCVtHq2CYI51E0292mTDnhabZ+t4Z30mGZSkqjqkHMtAfkUPURnODB
eBsPFhkR7Fe9IlM+FP2TX5l78YwuGembQL8fUUESTm7iJkzE1jxIYE3P7OQ02TtwQy15J3uDZCuD
8eKwM63MRAz7uGABq3tYwHlHCzWRu7jTg7d6IbRphxG53x77Bbs35QNPk0fOJA1hGz5Kax3FpJws
VQZ6QpO5Z3NxqE7vZ4HNwdPlj8SUSJJTPMsE2tBWV+qkjYYLz+anwBMFQLN1wx0CDRn/GKEjKDF2
asA52PqbVlMGLyCjYRkeK8B8XZs5zxJQipAvzbd1n0LFsEeMiq02Akli6xkKVQvc3ZLz3V5xTuvl
JWs=
=9bMk
-----END PGP SIGNATURE-----

--------------uZILRyQfGUG0fUIbd4c27Tqy--
