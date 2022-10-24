Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90F760A3A8
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 13:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF6A10E3DD;
	Mon, 24 Oct 2022 11:58:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA46210E3DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:58:25 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 97FF322166
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1666612704; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JMloqI+ackah4rACaT56/4gCbg38R5UeeiE8S5ce30c=;
 b=Jj6QDeVHQqXgDCWdbkA+Zm8UEJxX49GTg+xOvcrRji857v5ckhxFl8JUsqSe9k51wby0hE
 TFSKZhNf0WfaXNawkvucHQyKMD3RJkgtd6VRLs4vZbJdA7lAlZHSXLURiu3Ck6yQ/IhP0U
 eQRRzPWRtvVlnbafs/P22wuWoIGlvns=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1666612704;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JMloqI+ackah4rACaT56/4gCbg38R5UeeiE8S5ce30c=;
 b=WEGOKUbb6w/5G+LBmJVNwp95d4Sdm6XGSIuGtFWzvPIsaXBZMAfuhX68gSJ0DD58JfcHfo
 JBP1HNNkf2TL3vDg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 88A3413A79
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:58:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id dRZWIOB9VmMqSAAAMHmgww
 (envelope-from <tzimmermann@suse.de>)
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 11:58:24 +0000
Message-ID: <cfd232dc-4d33-af3c-af4e-e61f31c7d3ba@suse.de>
Date: Mon, 24 Oct 2022 13:58:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <166661240358.3424.3188461299827002921@emeril.freedesktop.org>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <166661240358.3424.3188461299827002921@emeril.freedesktop.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------r6sncqIdQDGX05v5ophdMeG5"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/fb-helper=3A_Untangle_fbdev_emulation_and_helpers_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------r6sncqIdQDGX05v5ophdMeG5
Content-Type: multipart/mixed; boundary="------------UhdOVgogOXAjo7GlJFpspHLn";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <cfd232dc-4d33-af3c-af4e-e61f31c7d3ba@suse.de>
Subject: =?UTF-8?Q?Re=3a_=e2=9c=97_Fi=2eCI=2eBUILD=3a_failure_for_drm/fb-hel?=
 =?UTF-8?Q?per=3a_Untangle_fbdev_emulation_and_helpers_=28rev2=29?=
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <166661240358.3424.3188461299827002921@emeril.freedesktop.org>
In-Reply-To: <166661240358.3424.3188461299827002921@emeril.freedesktop.org>

--------------UhdOVgogOXAjo7GlJFpspHLn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCkFtIDI0LjEwLjIyIHVtIDEzOjUzIHNjaHJpZWIgUGF0Y2h3b3JrOg0KPiA9PSBTZXJp
ZXMgRGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0vZmItaGVscGVyOiBVbnRhbmdsZSBm
YmRldiBlbXVsYXRpb24gYW5kIGhlbHBlcnMgKHJldjIpDQo+IFVSTCAgIDogaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMDk5NDIvDQo+IFN0YXRlIDogZmFp
bHVyZQ0KPiANCj4gPT0gU3VtbWFyeSA9PQ0KPiANCj4gRXJyb3I6IG1ha2UgZmFpbGVkDQo+
ICAgIENBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoDQo+ICAgIERFU0NFTkQgb2Jq
dG9vbA0KPiAgICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
cnYubw0KPiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmM6IEluIGZ1
bmN0aW9uIOKAmGFtZGdwdV9wY2lfcHJvYmXigJk6DQo+IGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9kcnYuYzoyMTM1OjQ6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlv
biBvZiBmdW5jdGlvbiDigJhkcm1fZmJkZXZfZ2VuZXJpY19zZXR1cOKAmTsgZGlkIHlvdSBt
ZWFuIOKAmGRybV9tb2RlX2dldF90aWxlX2dyb3Vw4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1m
dW5jdGlvbi1kZWNsYXJhdGlvbl0NCg0KUHJvYmFibHkgc3RpbGwgbmVlZHMgdG8gaW5jbHVk
ZSBkcm1fZmJkZXYuaC4gV2lsbCBiZSBmaXhlZCBpbiB0aGUgbmV4dCByZXYuDQoNCj4gICAg
ICBkcm1fZmJkZXZfZ2VuZXJpY19zZXR1cChhZGV2X3RvX2RybShhZGV2KSwgOCk7DQo+ICAg
ICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4NCj4gICAgICBkcm1fbW9kZV9nZXRfdGlsZV9n
cm91cA0KPiBjYzE6IHNvbWUgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMNCj4g
c2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNTA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2Lm8nIGZhaWxlZA0KPiBtYWtlWzVdOiAq
KiogW2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYub10gRXJyb3IgMQ0K
PiBzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwMDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1JyBmYWlsZWQNCj4gbWFrZVs0XTogKioqIFtkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdV0gRXJyb3IgMg0KPiBzY3JpcHRzL01ha2VmaWxlLmJ1aWxk
OjUwMDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybScgZmFpbGVkDQo+IG1h
a2VbM106ICoqKiBbZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyDQo+IHNjcmlwdHMvTWFrZWZp
bGUuYnVpbGQ6NTAwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUnIGZhaWxlZA0K
PiBtYWtlWzJdOiAqKiogW2RyaXZlcnMvZ3B1XSBFcnJvciAyDQo+IHNjcmlwdHMvTWFrZWZp
bGUuYnVpbGQ6NTAwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkDQo+IG1h
a2VbMV06ICoqKiBbZHJpdmVyc10gRXJyb3IgMg0KPiBNYWtlZmlsZToxOTkyOiByZWNpcGUg
Zm9yIHRhcmdldCAnLicgZmFpbGVkDQo+IG1ha2U6ICoqKiBbLl0gRXJyb3IgMg0KPiANCj4g
DQoNCi0tIA0KVGhvbWFzIFppbW1lcm1hbm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIN
ClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KTWF4ZmVsZHN0ci4gNSwg
OTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55DQooSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpDQpH
ZXNjaMOkZnRzZsO8aHJlcjogSXZvIFRvdGV2DQo=

--------------UhdOVgogOXAjo7GlJFpspHLn--

--------------r6sncqIdQDGX05v5ophdMeG5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmNWfeAFAwAAAAAACgkQlh/E3EQov+Dq
CA/+KImKqf9MyRbqe5F6GPTNoOaEtCih1NUoYI7zNpbgqNevy555AUw4q+WEm5/00QJofNw8U5BH
oiQ/LxoivbabwTnnqCdVJG6CuBbvkZQ+flW/ms7vcbViwMemS5U/HbifB/rxlaXXjcJPLycNWFWB
lhEmJa4oP9gC4LgE8sf/ETR0mLVa+/6pw2YQN+FP3Wg3d622aAXlUidpS96mfzILBhld3snR7qH8
2cMde9ab2vH7m78fAzSPt1sHCuqYxJ1zqz7CrHI6u/si+UL/UVyXZAIYrFE+ANYZeTFevHNgUyOT
zOYFLmbvAs7XA2+4ujoGJOriihZpRebfn6nigaphADkThnf12IlQXZ1dVUbVmX1vaXiuaHCA3pY5
/q0UuAzbkHPkMzepxone1q28mOsLDH0LlEODY+rsrX5eFrZY8ejuJ36m6N2lniI+LXC/u44fyPXC
3dIcOoRsLXK5sSyEUIZ+Ihbs95EtxIOWZyirhRc432AstkHBYJXC6m50A8DwWm2sMz6LHtzpHPXa
1Ig6Qs/ZZZy/160GgWAaqGLWLZfvniciPXDZ4CIX0uMr877N7rec6C8oYXAPWgtO6n9KkG8af8CG
U0RsG4UndbFASzozJLwDYaTP1D9VCB/01MApf7rsWGZvUtRO9TcJn6gx0HSbaNpMswfn7V/AQw8u
m1s=
=l6fz
-----END PGP SIGNATURE-----

--------------r6sncqIdQDGX05v5ophdMeG5--
