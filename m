Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14030677A44
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 12:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79DFD10E348;
	Mon, 23 Jan 2023 11:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A3D10E348
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 11:38:55 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 74F531FD9E;
 Mon, 23 Jan 2023 11:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1674473934; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QPXWlEt00Dl3Ygt/kHwydWjllR//C8fKzn58nKvBTK4=;
 b=lo5c/mmqAvyIxCV4ssZduQHvdtiCRcwM0kqaKzY+i7rAQn24LfmCYHhD4Lu7/mhCUwwLK3
 nFKrf6vtrC91gBinBur2XXmNmkFb4FY6iy7MBTUSd7/eN4thYQ04R84qXp08ku7etNRzws
 5lRIeJX5zFpopUw2zFcL6NF+pJLwM+o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1674473934;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QPXWlEt00Dl3Ygt/kHwydWjllR//C8fKzn58nKvBTK4=;
 b=9fbnronyeZTk9N0p5I1CF8p/YQHBN90HC0G5Y6D6BCe5hAE1BE5dL8TqVj7yVERjvNV95E
 bcN08CswoePVMoAw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 54D7F134F5;
 Mon, 23 Jan 2023 11:38:54 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id Qz2nE85xzmOjSAAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Mon, 23 Jan 2023 11:38:54 +0000
Message-ID: <7ee0c0c6-2620-38a6-76da-07c792950dd4@suse.de>
Date: Mon, 23 Jan 2023 12:38:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230123074437.475103-1-jouni.hogander@intel.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <20230123074437.475103-1-jouni.hogander@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OAdcEobzjqxsmyz23jvvkNIZ"
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OAdcEobzjqxsmyz23jvvkNIZ
Content-Type: multipart/mixed; boundary="------------OFYnCUL8i1WNfaYtkFLC0m9p";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <7ee0c0c6-2620-38a6-76da-07c792950dd4@suse.de>
Subject: Re: [PATCH v4] drm/i915/fbdev: Implement fb_dirty for intel custom fb
 helper
References: <20230123074437.475103-1-jouni.hogander@intel.com>
In-Reply-To: <20230123074437.475103-1-jouni.hogander@intel.com>

--------------OFYnCUL8i1WNfaYtkFLC0m9p
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMjMuMDEuMjMgdW0gMDg6NDQgc2NocmllYiBKb3VuaSBIw7ZnYW5kZXI6DQo+
IEFmdGVyIGRpc2Nvbm5lY3RpbmcgZGFtYWdlIHdvcmtlciBmcm9tIHVwZGF0ZSBsb2dpYyBp
dCdzIGxlZnQgdG8gZmJkZXYNCj4gZW11bGF0aW9uIGltcGxlbWVudGF0aW9uIHRvIGhhdmUg
ZmJfZGlydHkgZnVuY3Rpb24uIEN1cnJlbnRseSBpbnRlbA0KPiBmYmRldiBkb2Vzbid0IGhh
dmUgaXQuIFRoaXMgaXMgY2F1c2luZyBwcm9ibGVtcyB0byBmZWF0dXJlcyAoUFNSLCBGQkMs
DQo+IERSUlMpIHJlbHlpbmcgb24gZGlydHkgY2FsbGJhY2suDQo+IA0KPiBJbXBsZW1lbnQg
c2ltcGxlIGZiX2RpcnR5IGNhbGxiYWNrIHRvIGRlbGl2ZXIgbm90aWZpY2F0aW9ucyBhYm91
dCB1cGRhdGVzDQo+IGluIGZiIGNvbnNvbGUuDQo+IA0KPiB2NDogQWRkIHByb3BlciBGaXhl
cyB0YWcgYW5kIG1vZGlmeSBjb21taXQgbWVzc2FnZQ0KPiB2MzogQ2hlY2sgZGFtYWdlIGNs
aXANCj4gdjI6IEltcHJvdmVkIGNvbW1pdCBtZXNzYWdlIGFuZCBhZGRlZCBGaXhlcyB0YWcN
Cj4gDQo+IEZpeGVzOiBmMjMxYWY0OThjMjkgKCJkcm0vZmItaGVscGVyOiBEaXNjb25uZWN0
IGRhbWFnZSB3b3JrZXIgZnJvbSB1cGRhdGUgbG9naWMiKQ0KPiBDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyB8IDEyICsrKysrKysrKysrKw0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+IGluZGV4IDE5ZjNiNWQ5MmE1NS4uZDM5
ZGI4MDUwYzY5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmRldi5jDQo+IEBAIC0zMjEsOCArMzIxLDIwIEBAIHN0YXRpYyBpbnQgaW50ZWxm
Yl9jcmVhdGUoc3RydWN0IGRybV9mYl9oZWxwZXIgKmhlbHBlciwNCj4gICAJcmV0dXJuIHJl
dDsNCj4gICB9DQo+ICAgDQo+ICtzdGF0aWMgaW50IGludGVsZmJfZGlydHkoc3RydWN0IGRy
bV9mYl9oZWxwZXIgKmhlbHBlciwgc3RydWN0IGRybV9jbGlwX3JlY3QgKmNsaXApDQo+ICt7
DQo+ICsJaWYgKCEoY2xpcC0+eDEgPCBjbGlwLT54MiAmJiBjbGlwLT55MSA8IGNsaXAtPnky
KSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlpZiAoaGVscGVyLT5mYi0+ZnVuY3MtPmRp
cnR5KQ0KPiArCQlyZXR1cm4gaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5KGhlbHBlci0+ZmIs
IE5VTEwsIDAsIDAsIGNsaXAsIDEpOw0KDQpEaWRuJ3QgSSBuYWNrIHRoaXMgYXBwcm9hY2gg
YWxyZWFkeT8gWW91IHNob3VsZG4ndCBzZXQgZmJfZGlydHkuIFRoZSANCmJldHRlciBzb2x1
dGlvbiB3YXMgdG8gaW1wbGVtZW50IGk5MTUtc3BlY2lmaWMgaGVscGVycyBmb3Igd3JpdGUs
IA0KZmlsbGFyZWEsIGNvcHlhcmVhIGFuZCBibGl0LiBUaG9zZSBzaG91bGQgY2FsbCBpbnRl
bGZiX2RpcnR5KCkgZGlyZWN0bHkgDQphZnRlciBwZXJmb3JtaW5nIHRoZSBvdXRwdXQuICBB
bmQgSUlSQyB5b3UgYWxyZWFkeSBpbXBsZW1lbnRlZCB0aGlzLg0KDQpCZXN0IHJlZ2FyZHMN
ClRob21hcw0KDQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiAgIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX2ZiX2hlbHBlcl9mdW5jcyBpbnRlbF9mYl9oZWxwZXJfZnVuY3Mg
PSB7DQo+ICAgCS5mYl9wcm9iZSA9IGludGVsZmJfY3JlYXRlLA0KPiArCS5mYl9kaXJ0eSA9
IGludGVsZmJfZGlydHksDQo+ICAgfTsNCj4gICANCj4gICBzdGF0aWMgdm9pZCBpbnRlbF9m
YmRldl9kZXN0cm95KHN0cnVjdCBpbnRlbF9mYmRldiAqaWZiZGV2KQ0KDQotLSANClRob21h
cyBaaW1tZXJtYW5uDQpHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyDQpTVVNFIFNvZnR3YXJl
IFNvbHV0aW9ucyBHZXJtYW55IEdtYkgNCk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVy
ZywgR2VybWFueQ0KKEhSQiAzNjgwOSwgQUcgTsO8cm5iZXJnKQ0KR2VzY2jDpGZ0c2bDvGhy
ZXI6IEl2byBUb3Rldg0K

--------------OFYnCUL8i1WNfaYtkFLC0m9p--

--------------OAdcEobzjqxsmyz23jvvkNIZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmPOcc0FAwAAAAAACgkQlh/E3EQov+DJ
zg/+MuZS+Lw/OXexKZiJT0ajCL3qlU1UUCotgGiPVGu9aQRMqWlNfmw6imtjnOdA/M18G5Mz+cQ8
r5QdYyGMj1F9k8j2XhN0xxejbcpSCuvpnGYOpYKyIbYFor0pXa25rSJ2jEAT+ZwbywRZbKX11iDK
Vzh0XWXKrEpeO9rXl6uPP50BJETj/5cDOoZOAs+n8yhpLSM5VeZxw+Lu+Tc77Y3QB5qbCEFsv6I/
OsOF/8e1nsQY2LInOZQIUwSupkluMRlC4JMykE3MliVtoY1UF2IWGwXABUIfs58Vp+U4Egc7U56b
FAt8MnkPRyX57ZAFcElUcFNyMLssd7YgXpfrjA2TrI00l8WMdNEVd8DaNWiB2GxC9wu6zxh+JEna
/PiVCJvRwUCefPGIApjZTpQQqYSQkklfoJrKBOjo8x/dlnJpCKMM4CCb1WaaihT5Rm8PzkjkmISC
Xi5uhNP1bRwl25L+qNj4KYaM6LpjoXe78/RX94NZ85M7gJKyFczEi/fb7Mg7Ls4P+AIhCoObos6Q
0bj2zKknja1Vo8ZAOA+yh0iq+5w5V+huPV0NeDAcVDYCdDDB4AJ6JMbSEG/WJfjNZB4isRjpxQBK
vgcRG6vbNdfCTiHANibhmlx5yfge85oEeZmOx+AumK662PPl31+dFWCTJ92vllCjyl9zwHLXhCab
TJI=
=gpCe
-----END PGP SIGNATURE-----

--------------OAdcEobzjqxsmyz23jvvkNIZ--
