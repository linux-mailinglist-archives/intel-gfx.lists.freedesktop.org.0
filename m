Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAB9652FDA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 11:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F84B10E0E0;
	Wed, 21 Dec 2022 10:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5460910E0E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 10:50:31 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id C0E055778;
 Wed, 21 Dec 2022 10:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1671619799; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VOEcKsYrIte1JEiP1LDmyaBN604VWIXLjFM0lpiLNhQ=;
 b=sKG9uMm2DsU+DIN9/3drCl+rTHwWmdYmiRrm9iaHf9d7iohyBFYd4nqUEQhJkPuPb0UFkr
 AzqG9NIc8SVIxPNGu+olw3FPKW5gqaOLH+bWZ3yu5SjarfJQgbW+OEoajV/YpkCOZgbdZF
 VBN9QdyFdEve2erW6ZXnLO72Jm+CfMU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1671619799;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VOEcKsYrIte1JEiP1LDmyaBN604VWIXLjFM0lpiLNhQ=;
 b=nUs+HhWJLttAn65aUrk5DBCIRHOxuWI44DzVopTSaY57cB7yHMmpDqx6dUWYVKeJ5MPke8
 po+XDIADy9UyIgBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id ADD831390E;
 Wed, 21 Dec 2022 10:49:59 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id MfOiKdfkomNhMAAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Wed, 21 Dec 2022 10:49:59 +0000
Message-ID: <287763d0-a708-efa2-f84e-bf50d4a58d64@suse.de>
Date: Wed, 21 Dec 2022 11:49:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221129124302.291759-1-jouni.hogander@intel.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <20221129124302.291759-1-jouni.hogander@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LF0eDlGm4pxlfPeUbk20CWPO"
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------LF0eDlGm4pxlfPeUbk20CWPO
Content-Type: multipart/mixed; boundary="------------O7PEIIv2esCu0ow4ug0GQzem";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Message-ID: <287763d0-a708-efa2-f84e-bf50d4a58d64@suse.de>
Subject: Re: [PATCH] drm/i915/fbdev: Implement fb_dirty for intel custom fb
 helper
References: <20221129124302.291759-1-jouni.hogander@intel.com>
In-Reply-To: <20221129124302.291759-1-jouni.hogander@intel.com>

--------------O7PEIIv2esCu0ow4ug0GQzem
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMjkuMTEuMjIgdW0gMTM6NDMgc2NocmllYiBKb3VuaSBIw7ZnYW5kZXI6DQo+
IEFmdGVyIHNwbGl0dGluZyBnZW5lcmljIGRybV9mYl9oZWxwZXIgaW50byBpdCdzIG93biBm
aWxlIGl0J3MgbGVmdCB0bw0KPiBoZWxwZXIgaW1wbGVtZW50YXRpb24gdG8gaGF2ZSBmYl9k
aXJ0eSBmdW5jdGlvbi4gQ3VycmVudGx5IGludGVsDQo+IGZiIGRvZXNuJ3QgaGF2ZSBpdC4g
VGhpcyBpcyBjYXVzaW5nIHByb2JsZW1zIHdoZW4gUFNSIGlzIGVuYWJsZWQuDQo+IA0KPiBJ
bXBsZW1lbnQgc2ltcGxlIGZiX2RpcnR5IGNhbGxiYWNrIHRvIGRlbGl2ZXIgbm90aWZpY2F0
aW9ucyB0byBwc3INCj4gYWJvdXQgdXBkYXRlcyBpbiBmYiBjb25zb2xlLg0KDQpJJ20gYSBi
aXQgY29uZnVzZWQgYWJvdXQgaTkxNSdzIHVzZSBvZiBmYl9kaXJ0eSBoZXJlLiBIb3cgaXMg
dGhpcyANCnN1cHBvc2VkIHRvIGludGVyYWN0IHdpdGggbW1hcD8gIGk5MTUgZG9lc24ndCB1
c2UgZGVmZXJyZWQgSS9PIHNvIGZiZGV2IA0KbW1hcCB3aWxsIG5ldmVyIGNhbGwgZmJfZGly
dHkgaWYgdXNlcnNwYWNlIHdyaXRlcyB0byBtbWFwJ2VkIHBhZ2VzLiBJcyANCnRoaXMgb25s
eSByZXF1aXJlZCBmb3IgdGhlIGtlcm5lbCdzIGdyYXBoaWNzIGNvbnNvbGU/DQoNCkJlc3Qg
cmVnYXJkcw0KVGhvbWFzDQoNCj4gDQo+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4NCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiAtLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiZGV2LmMgfCA5ICsrKysrKysrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2Vy
dGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiZGV2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiZGV2LmMNCj4gaW5kZXggNTU3NWQ3YWJkYzA5Li43YzdmYmEzZmU2OWUgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gQEAg
LTMyOCw4ICszMjgsMTcgQEAgc3RhdGljIGludCBpbnRlbGZiX2NyZWF0ZShzdHJ1Y3QgZHJt
X2ZiX2hlbHBlciAqaGVscGVyLA0KPiAgIAlyZXR1cm4gcmV0Ow0KPiAgIH0NCj4gICANCj4g
K3N0YXRpYyBpbnQgaW50ZWxmYl9kaXJ0eShzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqaGVscGVy
LCBzdHJ1Y3QgZHJtX2NsaXBfcmVjdCAqY2xpcCkNCj4gK3sNCj4gKwlpZiAoaGVscGVyLT5m
Yi0+ZnVuY3MtPmRpcnR5KQ0KPiArCQlyZXR1cm4gaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5
KGhlbHBlci0+ZmIsIE5VTEwsIDAsIDAsIGNsaXAsIDEpOw0KPiArDQo+ICsJcmV0dXJuIDA7
DQo+ICt9DQo+ICsNCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mYl9oZWxwZXJfZnVu
Y3MgaW50ZWxfZmJfaGVscGVyX2Z1bmNzID0gew0KPiAgIAkuZmJfcHJvYmUgPSBpbnRlbGZi
X2NyZWF0ZSwNCj4gKwkuZmJfZGlydHkgPSBpbnRlbGZiX2RpcnR5LA0KPiAgIH07DQo+ICAg
DQo+ICAgc3RhdGljIHZvaWQgaW50ZWxfZmJkZXZfZGVzdHJveShzdHJ1Y3QgaW50ZWxfZmJk
ZXYgKmlmYmRldikNCg0KLS0gDQpUaG9tYXMgWmltbWVybWFubg0KR3JhcGhpY3MgRHJpdmVy
IERldmVsb3Blcg0KU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQpNYXhm
ZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkNCihIUkIgMzY4MDksIEFHIE7D
vHJuYmVyZykNCkdlc2Now6RmdHNmw7xocmVyOiBJdm8gVG90ZXYNCg==

--------------O7PEIIv2esCu0ow4ug0GQzem--

--------------LF0eDlGm4pxlfPeUbk20CWPO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmOi5NcFAwAAAAAACgkQlh/E3EQov+AJ
cw/6AmPfvhTZubq0kZifaPcpnQxM/gOX5KAwcmvpOEDFa35NvqhIVMyWJJsYV3HMUrpHayr6LnN1
uf6GAZcf7JntNZfY4dxaVpwQGxlXy3HIurhQy3SG9l802rJiczND9NWeqJuNrzN/73g6U8ZY2yKG
HiSqMW8abBRHg2ilLdIZHCHcZ9vs0jOEc7YGlbWsC37BiL0ZtZuMBilfqh95ZfDGL6nh3MS+HAkP
/1zSst5z3i5464d/HtCJG0B4FY5KJVcYKxQK4TG9XfqsUBdHi9jnhp3sAQDUGJIXJUMwUOqE4pdm
B9JtLCKjm08UHx3kuiByusuwvChvJILF1ircWwbqDHXb+0YuR8poF5shhwRNf1u6FlsGtZeu7B1w
ac4MwaGwTs/5JqVsaPB5FPc2MaNkABISxJRfM5FeNaA9Ds9fwkBnxe2oZBjNadvDyJ2ABLE9T3Fw
Bhg4XtONZZ7p5MHfGDxU/F6TQAQSOLkm5IHfdqACILqU2ckZn6tvPfqANvPaT3NBvZpLh3vXhg2h
1jz+a8ijh8OHIHw/3MnUb06cwwcPrRP1H/5ezSYc5YK7+XQN0esiPN3K8+dQLGj6+qUA7agrLO2D
APOLA2khUk7gwkGzPMzXvBjfUZ2Ppdw08drAleepgnEojLLepRarAsvY24mh6vxAUkde6Oddpwcj
teU=
=FtiR
-----END PGP SIGNATURE-----

--------------LF0eDlGm4pxlfPeUbk20CWPO--
