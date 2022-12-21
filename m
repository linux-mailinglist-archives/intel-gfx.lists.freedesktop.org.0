Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2386532E6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 16:08:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B22A10E455;
	Wed, 21 Dec 2022 15:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB00810E455
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 15:08:15 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 546EA5CD7E;
 Wed, 21 Dec 2022 15:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1671635294; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qb48aFlVSKBKHZaR8Wp6tucx5khLytsf8dJnImo6yJQ=;
 b=oRuqIBP5B9XllIrwt7q7qaGC/Qhx8QmeRMjqLd4jf7mc50GGJONibi7CtksQ1XSH0WwF1+
 RxbVtoaDoBS/84GXT6PIbKABkghO+L2Is5O+hgofznDY4kcM1j4+NNYPlVOT4m5NIlBwm1
 ajhGXI8yPV758Z/L0q2cQ5IZ7qFJiys=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1671635294;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qb48aFlVSKBKHZaR8Wp6tucx5khLytsf8dJnImo6yJQ=;
 b=VJqQAGpkGBgrFUike7FOYuylHp2OUm6bWUO6aGkkSp9ZFBJb3zZvHANmw0p+FIzzAY09U2
 NSBBEKZauDsXevAw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 34A721390E;
 Wed, 21 Dec 2022 15:08:14 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id CijSC14ho2O1KAAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Wed, 21 Dec 2022 15:08:14 +0000
Message-ID: <4e929234-8a88-4d81-7b4b-19d4d5e52b44@suse.de>
Date: Wed, 21 Dec 2022 16:08:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221129124302.291759-1-jouni.hogander@intel.com>
 <287763d0-a708-efa2-f84e-bf50d4a58d64@suse.de> <Y6MdhrwVjkzGx6z5@intel.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <Y6MdhrwVjkzGx6z5@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9DOws4B3eiOVckhEp6emmEGp"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement fb_dirty for
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9DOws4B3eiOVckhEp6emmEGp
Content-Type: multipart/mixed; boundary="------------n4sYI0o2e2v0fSD2DaemhD0q";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Message-ID: <4e929234-8a88-4d81-7b4b-19d4d5e52b44@suse.de>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement fb_dirty for intel
 custom fb helper
References: <20221129124302.291759-1-jouni.hogander@intel.com>
 <287763d0-a708-efa2-f84e-bf50d4a58d64@suse.de> <Y6MdhrwVjkzGx6z5@intel.com>
In-Reply-To: <Y6MdhrwVjkzGx6z5@intel.com>

--------------n4sYI0o2e2v0fSD2DaemhD0q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMjEuMTIuMjIgdW0gMTU6NTEgc2NocmllYiBWaWxsZSBTeXJqw6Rsw6Q6DQo+
IE9uIFdlZCwgRGVjIDIxLCAyMDIyIGF0IDExOjQ5OjU5QU0gKzAxMDAsIFRob21hcyBaaW1t
ZXJtYW5uIHdyb3RlOg0KPj4gSGkNCj4+DQo+PiBBbSAyOS4xMS4yMiB1bSAxMzo0MyBzY2hy
aWViIEpvdW5pIEjDtmdhbmRlcjoNCj4+PiBBZnRlciBzcGxpdHRpbmcgZ2VuZXJpYyBkcm1f
ZmJfaGVscGVyIGludG8gaXQncyBvd24gZmlsZSBpdCdzIGxlZnQgdG8NCj4+PiBoZWxwZXIg
aW1wbGVtZW50YXRpb24gdG8gaGF2ZSBmYl9kaXJ0eSBmdW5jdGlvbi4gQ3VycmVudGx5IGlu
dGVsDQo+Pj4gZmIgZG9lc24ndCBoYXZlIGl0LiBUaGlzIGlzIGNhdXNpbmcgcHJvYmxlbXMg
d2hlbiBQU1IgaXMgZW5hYmxlZC4NCj4+Pg0KPj4+IEltcGxlbWVudCBzaW1wbGUgZmJfZGly
dHkgY2FsbGJhY2sgdG8gZGVsaXZlciBub3RpZmljYXRpb25zIHRvIHBzcg0KPj4+IGFib3V0
IHVwZGF0ZXMgaW4gZmIgY29uc29sZS4NCj4+DQo+PiBJJ20gYSBiaXQgY29uZnVzZWQgYWJv
dXQgaTkxNSdzIHVzZSBvZiBmYl9kaXJ0eSBoZXJlLiBIb3cgaXMgdGhpcw0KPj4gc3VwcG9z
ZWQgdG8gaW50ZXJhY3Qgd2l0aCBtbWFwPyAgaTkxNSBkb2Vzbid0IHVzZSBkZWZlcnJlZCBJ
L08gc28gZmJkZXYNCj4+IG1tYXAgd2lsbCBuZXZlciBjYWxsIGZiX2RpcnR5IGlmIHVzZXJz
cGFjZSB3cml0ZXMgdG8gbW1hcCdlZCBwYWdlcy4gSXMNCj4+IHRoaXMgb25seSByZXF1aXJl
ZCBmb3IgdGhlIGtlcm5lbCdzIGdyYXBoaWNzIGNvbnNvbGU/DQo+IA0KPiBJdCdzIHJlcXVp
cmVkIGZvciBldmVyeXRoaW5nLiBtbWFwIGlzIHByZXN1bWFibHkgYm9ya2VkIGZvcg0KPiB0
aGUgY2FzZXMgd2hlcmUgd2UgY2FuJ3QgdXNlIGFueSBodyBiYXNlZCBkYW1hZ2UgdHJhY2tp
bmcuDQoNCkluIHRoaXMgY2FzZSwgaXQgd291bGQgbWFrZSBzZW5zZSB0byBpbXBsZW1lbnQg
dGhlIHVwZGF0ZSB3aXRoIGZiX2RpcnR5IA0KKGluc3RlYWQgb2YgdGhlIGZiX29wcyBJIG1l
bnRpb25lZCkuDQoNCkZvciBtbWFwIHlvdSBjYW4gdXNlIGZiZGV2J3MgZGVmZXJyZWQgSS9P
LiBUaGVyZSdzIA0KZHJtX2ZiX2hlbHBlcl9kZWZlcnJlcl9pbygpIHRoYXQgdHJhY2tzIG1t
YXBlZCBwYWdlcyBhbmQgcmVndWxhcmx5IGNhbGxzIA0KZmJfZGlydHkgdG8gbGV0IHRoZSBk
cml2ZXIgZG8gYW4gdXBkYXRlLg0KDQpCZXN0IHJlZ2FyZHMNClRob21hcw0KDQo+IA0KPj4N
Cj4+IEJlc3QgcmVnYXJkcw0KPj4gVGhvbWFzDQo+Pg0KPj4+DQo+Pj4gQ2M6IFRob21hcyBa
aW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPj4+IENjOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPj4+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPj4+IC0tLQ0KPj4+ICAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyB8IDkgKysrKysrKysrDQo+
Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KPj4+DQo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPj4+IGluZGV4IDU1
NzVkN2FiZGMwOS4uN2M3ZmJhM2ZlNjllIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPj4+IEBAIC0zMjgsOCArMzI4LDE3
IEBAIHN0YXRpYyBpbnQgaW50ZWxmYl9jcmVhdGUoc3RydWN0IGRybV9mYl9oZWxwZXIgKmhl
bHBlciwNCj4+PiAgICAJcmV0dXJuIHJldDsNCj4+PiAgICB9DQo+Pj4gICAgDQo+Pj4gK3N0
YXRpYyBpbnQgaW50ZWxmYl9kaXJ0eShzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqaGVscGVyLCBz
dHJ1Y3QgZHJtX2NsaXBfcmVjdCAqY2xpcCkNCj4+PiArew0KPj4+ICsJaWYgKGhlbHBlci0+
ZmItPmZ1bmNzLT5kaXJ0eSkNCj4+PiArCQlyZXR1cm4gaGVscGVyLT5mYi0+ZnVuY3MtPmRp
cnR5KGhlbHBlci0+ZmIsIE5VTEwsIDAsIDAsIGNsaXAsIDEpOw0KPj4+ICsNCj4+PiArCXJl
dHVybiAwOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJt
X2ZiX2hlbHBlcl9mdW5jcyBpbnRlbF9mYl9oZWxwZXJfZnVuY3MgPSB7DQo+Pj4gICAgCS5m
Yl9wcm9iZSA9IGludGVsZmJfY3JlYXRlLA0KPj4+ICsJLmZiX2RpcnR5ID0gaW50ZWxmYl9k
aXJ0eSwNCj4+PiAgICB9Ow0KPj4+ICAgIA0KPj4+ICAgIHN0YXRpYyB2b2lkIGludGVsX2Zi
ZGV2X2Rlc3Ryb3koc3RydWN0IGludGVsX2ZiZGV2ICppZmJkZXYpDQo+Pg0KPj4gLS0gDQo+
PiBUaG9tYXMgWmltbWVybWFubg0KPj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcg0KPj4g
U1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQo+PiBNYXhmZWxkc3RyLiA1
LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkNCj4+IChIUkIgMzY4MDksIEFHIE7DvHJuYmVy
ZykNCj4+IEdlc2Now6RmdHNmw7xocmVyOiBJdm8gVG90ZXYNCj4gDQo+IA0KPiANCj4gDQoN
Ci0tIA0KVGhvbWFzIFppbW1lcm1hbm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNV
U0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KTWF4ZmVsZHN0ci4gNSwgOTA0
MDkgTsO8cm5iZXJnLCBHZXJtYW55DQooSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpDQpHZXNj
aMOkZnRzZsO8aHJlcjogSXZvIFRvdGV2DQo=

--------------n4sYI0o2e2v0fSD2DaemhD0q--

--------------9DOws4B3eiOVckhEp6emmEGp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmOjIV0FAwAAAAAACgkQlh/E3EQov+Cm
ERAAh+zszvtEAiUf02FInaxsPpnwyXBOZErFchigtTey7tJp+QgG+NGPbulNjwk8XH04nERG2QMu
+6za97ChNfmIyyv7Bqb3fE9NSV6VWKCXZ9nOHoqQks1QAw7t03oeBzSrUKuJs/2Jag4TshmyzU2B
vujw2aGtG7aUMRYITLLKtV6bhBoqiuISsvuEvjpIKEVrWg0FKQzOJY+/TmIKZZ34bCWNhyyGioMe
BPfzCge52j5f0YQ46BmCuuDMBF9qeNhpZwiJ8bSMaIaDUznVIUMgKDHR0ASoDJ4PWlOUcEDqX/Ki
Kh+j+iM4vsGdiuzt1C0VQuzkVsvcXiSf5TLfjgixUAzg/cgNol/p4e1XAnVXvnfm1ag0zy2/tYY3
BBJZaHDKa8eWDZ1E1VvAyWnA5xTaBx8wWRm6SNpVsV+Fjnw2TZFMtCSI6IP2xci72cryDb1PiFU5
DTk70oSan9pb1aJFfHZd/DG7QtZParj3j7qMRyhf8fTsoakqhlhX5P00TK4ZHoHKoH/iRQ3Kv6aA
mfS524hNvMWL3CjpxyyCwEn3qUfhBvy0UpIQV3s7MGSrU5OHjMvLVC+1mneaGVCBXhBs9Dms/tOk
wfPTZCQnw00/Ti5DYUt3R5DSEUU947ZySvPMhPDxlBgIiy/WC1U+TyDYn1yeCFjWuxIpRNOT0sDu
v0s=
=qq4H
-----END PGP SIGNATURE-----

--------------9DOws4B3eiOVckhEp6emmEGp--
