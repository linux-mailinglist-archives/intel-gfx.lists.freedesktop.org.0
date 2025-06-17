Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB17FADCD75
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 15:36:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7840B10E6CC;
	Tue, 17 Jun 2025 13:36:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RltERG2o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A1C10E5DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 10:20:52 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-adfb562266cso436350266b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 03:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750155651; x=1750760451; darn=lists.freedesktop.org;
 h=to:autocrypt:subject:from:cc:content-language:user-agent
 :mime-version:date:message-id:from:to:cc:subject:date:message-id
 :reply-to; bh=l7pANxE6LlWJZaBuB+f/YFijKcmcnXNlJid6eycwsdw=;
 b=RltERG2oZRnO12OFcTdWWcOBtOnJZmuWFr45g4fEGZglPOYkdJRFSgD1Wh2QZkJorM
 NLna7XZvH0aXrfZpiGkWI3KxsvHYwQQGb3tOklYm23F6PpLqA+QisQMYXzgMYZy4DujC
 EYrRrtKVrAFWHMXQxe/uSZBZwdYhcwK8b5jZ2YysDb+JcAVCeYkeZpX8yapME7erlfPU
 bHjHnC31J0nsTjzeFTsc4MaPquTL0DZQLEQeZAd0MWIkPZ4qtNe7BZilYoJzTYwKc8PY
 HTIVT0l5nK0LcWq7srUsboCe1uzWttLsM4ImQJR3aEkHiSOpq4scpwlEz51HOMb5+0sn
 Bj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750155651; x=1750760451;
 h=to:autocrypt:subject:from:cc:content-language:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=l7pANxE6LlWJZaBuB+f/YFijKcmcnXNlJid6eycwsdw=;
 b=QGkL1sggah1ysHuaRHAv7x5MNtC/2gl64nLvV4UmCIxwFSHJZBa6rWpHgvH/ubI+RW
 4pX7Ozp0i/BwRZSVRYI5zEzKFz9OyjMFau+jDPZlXl2amsiL97wDfxulbIauTEj/gAsc
 e++gFaf/P3/RYVhNIlbiaPy41Qb6WT0yzWAG9Zhp8zHKiEo98wd5eg4KFvf5Hi8tpdIQ
 38XvcdRfyDVzOWRSwCXUrHfzVFWyLgpzChPVRc84Brvzp47V0v9GvgWUR1ZQwkPvLgeS
 K/eJkcg/u7FJ3YzGOg7QFJdEigMLkpVoVP5klX2s6KBizWpIItspIwcQFlVbOtANmVhn
 YBnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXi4zI+a4nWleZ+QNSdt/8AWs8KKax+0xupL27VVKIv5N7+zE27FQKeLk469X3Q2Rrt4QNk/n4Uwtc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxbCwpNITICRRIXP6U9qCCf3JNMTuM1V0c3/XfsZ16kvEUmfP1s
 TBkTldn4EXq0pq7A4uFQt7ZiO5oCgLqiQeTxlKJwcbSKMoyt06qRYGsy
X-Gm-Gg: ASbGnctWetizMUSMXZl0ciuiiIVSwiI4yENPC+Q1eyByRalL8izwYEEfd8a+CoOm9p9
 3dGb5BGCbDhTPHa2Zi04b+pcZ2U2IekYB3WPN2P8afdchjs36BRMFdt6JnPrK5rxgKxv4mUr5jx
 ZDeVK5nkQdSOdFcFeUEC6MCw17qa954x3pres/KchS8N8PegpTP+OfY25cLL+2J3jzoaZ/Owzep
 9jV+8Tegjp/f6zqgbzlKkmpXQBtFp7QdNf3/3yDL0Iy8vQ9KZZq3ZZPGvd0kR78O8Dbtc05PHSO
 qQ5QAviL9iDCWGia8/Eul3R0Mf2KAnD1w6TAYzHWxuKLFgX7Cdk9/gfVOlQnejgQMkqf9uItKLI
 HjlQp1cZd9XmwDw8+F4KetYbJRS7ZWxDRKUilKbokmSFf
X-Google-Smtp-Source: AGHT+IF5Div275DdVcYXw4eL4u8BbQ2uaKPyNT/RQD6hY71nr028vCI7aTDPq7CiVCKtgtNgWIv7mg==
X-Received: by 2002:a17:907:d78a:b0:adb:3509:b459 with SMTP id
 a640c23a62f3a-adfad329678mr1393821066b.19.1750155650517; 
 Tue, 17 Jun 2025 03:20:50 -0700 (PDT)
Received: from [192.168.75.93] (217-122-252-220.cable.dynamic.v4.ziggo.nl.
 [217.122.252.220]) by smtp.googlemail.com with ESMTPSA id
 a640c23a62f3a-adec8929371sm844397166b.117.2025.06.17.03.20.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Jun 2025 03:20:49 -0700 (PDT)
Message-ID: <8d7c7958-9558-4c8a-a81a-e9310f2d8852@gmail.com>
Date: Tue, 17 Jun 2025 12:20:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: nl-NL, en-US
Cc: regressions@lists.linux.dev, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
From: Vas Novikov <vasya.novikov@gmail.com>
Subject: [REGRESSION][BISECTED] intel iGPU with HDMI PLL stopped working at
 1080p@120Hz 1efd5384
Autocrypt: addr=vasya.novikov@gmail.com; keydata=
 xjMEYrX2ChYJKwYBBAHaRw8BAQdAf/bzdTDerOW5j+qrayMzPOCKthCx8KYKZo20cty68aPN
 KFZhc2lsaSBOb3Zpa292IDx2YXN5YS5ub3Zpa292QGdtYWlsLmNvbT7CjwQTFggANxYhBLKE
 QxE9sGxECbI4ubmfrsbg1d9tBQJitfYKBQkJZgGAAhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQ
 uZ+uxuDV321klwEAm5+HyBecp+ofMZ6Ors+OvrETLFQU2B9wCd/d/i2NjJABAIssTvgdxlqF
 I6GjehRMPURi6W1uFMPzzp9gM1yeYXEGzjgEYrX2ChIKKwYBBAGXVQEFAQEHQODm5qV0UQrP
 hcJkaZVbhtVmb90gN6rIuN0Q/xTmhqJ4AwEIB8J+BBgWCAAmFiEEsoRDET2wbEQJsji5uZ+u
 xuDV320FAmK19goFCQlmAYACGwwACgkQuZ+uxuDV322trQEA1Yj4GvOlEPfyuhMfX8P0Ah/8
 QXCqgdMQH7PaNgIFFokA/1DgWcc1XGFNRHpOGrJNnF4Ese1hWjYoqo2iBlURPQwP
To: stable@vger.kernel.org
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dtb1s0ai873eTd9PpSOnx5UG"
X-Mailman-Approved-At: Tue, 17 Jun 2025 13:35:58 +0000
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
--------------dtb1s0ai873eTd9PpSOnx5UG
Content-Type: multipart/mixed; boundary="------------Uc0vBnG4YG2ZGkz04pGupL9t";
 protected-headers="v1"
From: Vas Novikov <vasya.novikov@gmail.com>
To: stable@vger.kernel.org
Cc: regressions@lists.linux.dev, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <8d7c7958-9558-4c8a-a81a-e9310f2d8852@gmail.com>
Subject: [REGRESSION][BISECTED] intel iGPU with HDMI PLL stopped working at
 1080p@120Hz 1efd5384

--------------Uc0vBnG4YG2ZGkz04pGupL9t
Content-Type: multipart/mixed; boundary="------------RS0LcFpFyMC1IIVh4SODTdRL"

--------------RS0LcFpFyMC1IIVh4SODTdRL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgZGVhciBMS01MIGFuZCBjb21tdW5pdHksIHRoaXMgaXMgbXkgZmlyc3QgcG9zdCBoZXJl
LCBzbyBJJ2QgDQphcHByZWNpYXRlIGFueSBndWlkYW5jZSBvciByZWRpcmVjdGlvbiBpZiBp
dCdzIGR1ZS4NCg0KU3RhcnRpbmcgZnJvbSBjb21taXQgDQpodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0
Lz9pZD0xZWZkNTM4NDI3N2ViNzFmY2UyMDkyMjU3OTA2MWNkM2FjZGIwN2NmLA0KSERNSSBo
YW5kbGluZyBmb3IgY2VydGFpbiByZWZyZXNoIHJhdGVzIG9uIG15IGludGVsIGlHUFUgaXMg
YnJva2VuLg0KDQpUaGUgZXJyb3IgaXMgc3RpbGwgcHJlc2VudCBpbiA2LjE2cmMxLg0KDQpT
cGVjaWZpY2FsbHksIHRoaXMgaXMgdGhlIGNvbW1hbmQgdGhhdCBkaXNhbWJpZ3VhdGVzIHRo
ZSBuZXdlciBicm9rZW4gDQprZXJuZWxzOg0KDQogICAgICAgICB4cmFuZHIgLS1vdXRwdXQg
SERNSS0xIC0tYXV0byAtLXNjYWxlIDF4MSAtLW1vZGUgMTkyMHgxMDgwIA0KLS1yYXRlIDEy
MCAtLXBvcyAweDAgLS1vdXRwdXQgZURQLTEgLS1vZmYNCg0KVGhlIGltcG9ydGFudCBwYXJ0
cyBhcmUgMTkyMHgxMDgwIGFuZCAxMjBIei4gV2hlbiBydW4gb24gY29tbWl0cyBwcmlvciAN
CnRvIHRoZSBiaXNlY3RlZCBhYm92ZSwgaXQgYmVoYXZlcyBhcyBleHBlY3RlZCwgZGVsaXZl
cmluZyAxOTIweDEwODAgQCANCjEyMEh6LiBXaGVuIHJ1biBvbiBrZXJuZWwgYnVpbGRzIHdp
dGggdGhlIGFib3ZlIGNvbW1pdCBpbmNsdWRlZCAodGhhdCANCmNvbW1pdCBvciBsYXRlciks
IHRoZSBtb25pdG9yIGdvZXMgY29tcGxldGVseSBibGFuay4gQWZ0ZXIgYWJvdXQgMzAgDQpz
ZWNvbmRzLCBpdCBzaHV0cyBkb3duIGVudGlyZWx5ICh3aGljaCBJIGFzc3VtZSBtZWFucyB0
aGF0IGZyb20gdGhlIA0KbW9uaXRvcidzIHBlcnNwZWN0aXZlLCBIRE1JIGdvdCAiZGlzY29u
bmVjdGVkIikuDQoNCk9uIHRoaXMgbGluayB5b3UgY2FuIHNlZSBteSBvcmlnaW5hbCByZXBv
cnQgaW4gdGhlIEFyY2hMaW51eCBjb21tdW5pdHksIA0Kd2hlcmUgQ2hyaXN0aWFuIEhldXNl
bCAoQGdyb21pdCkga2luZGx5IGd1aWRlZCBtZSB0aHJvdWdoIHRoZSBiaXNlY3Rpb24gDQpw
cm9jZXNzIGFuZCBidWlsdCB0aGUgYmlzZWN0aW9uIGltYWdlcyBmb3IgbWUgdG8gdHJ5OiAN
Cmh0dHBzOi8vZ2l0bGFiLmFyY2hsaW51eC5vcmcvYXJjaGxpbnV4L3BhY2thZ2luZy9wYWNr
YWdlcy9saW51eC8tL2lzc3Vlcy8xNDUjbm90ZV8yNzc0ODIgDQogIFRoaXMgbGluayBhbHNv
IGNvbnRhaW5zIHRoZSBiaXNlY3Rpb24gaGlzdG9yeS4NCg0KQWRkaXRpb25hbCBpbmZvOg0K
DQoqIFRoZSBtb25pdG9yIGFuZCB0aGUgbm90ZWJvb2sgYXJlIGNvbm5lY3RlZCB2aWEgYW4g
SERNSSBjYWJsZSwgdGhlIA0KbW9uaXRvciBpdHNlbGYgaXMgYSA0a0AxMjBIeiBtb25pdG9y
Lg0KDQoqIEFjY29yZGluZyB0byBgbHNtb2QgfCBncmVwIC1FICIoaTkxNXxYZSkiYCwgSSdt
IHVzaW5nIHRoZSBpOTE1IGtlcm5lbCANCmRyaXZlciBmb3IgdGhlIEdQVS4NCg0KKiBUaGUg
R1BVIGlzIGFuIGlHUFUgZnJvbSBpbnRlbCwgc3BlY2lmaWNhbGx5IGBJbnRlbCBDb3JlIFVs
dHJhIDcgMTU1SGAuDQoNCiogT25lIHN5bXB0b20gdGhhdCBkaXNhbWJpZ3VhdGVzIHRoZSB3
b3JraW5nIGFuZCBub24td29ya2luZyBrZXJuZWxzLCANCmJlc2lkZXMgd2hldGhlciB0aGV5
IGFjdHVhbGx5IGhhdmUgdGhlIGJ1ZywgaXMgdGhhdCB0aGUgYnJva2VuIGtlcm5lbHMgDQpj
YXVzZSB4cmFuZHIgdG8gYWRkaXRpb25hbGx5IHJlcG9ydCB0aGUgMTQ0LjA1IHJlZnJlc2gg
cmF0ZSBhcyBwb3NzaWJsZSANCmZvciB0aGUgbW9uaXRvciwgd2hlcmVhcyB0aGUgbm9uLWJy
b2tlbiBrZXJuZWxzIGNvbnNpc3RlbnRseSBjYXVzZSANCnhyYW5kciB0byBvbmx5IGxpc3Qg
cmVmcmVzaCByYXRlIDEyMCBhbmQgYmVsb3cgYXMgcG9zc2libGUuIEknbSBvbmx5IA0KZXZl
ciB0ZXN0aW5nIHRoZSByZWZyZXNoIHJhdGUgb2YgMTIwLCBidXQgdGhlIHByZXNlbmNlIG9m
IHRoZSAxNDQuMDUgDQpyYXRlIGlzIGNvcnJlbGF0ZWQuDQoNCklmIGFueSBvdGhlciBpbmZv
cm1hdGlvbiBvciBhbnl0aGluZyBpcyBuZWVkZWQsIHBsZWFzZSB3cml0ZS4NCg0KDQpUaGFu
ayB5b3UsDQpWYXMNCg0KLS0tLQ0KDQojcmVnemJvdCBpbnRyb2R1Y2VkOiAxZWZkNTM4NDI3
N2ViNzFmY2UyMDkyMjU3OTA2MWNkM2FjZGIwN2NmDQojcmVnemJvdCB0aXRsZTogaW50ZWwg
aUdQVSB3aXRoIEhETUkgUExMIHN0b3BwZWQgd29ya2luZyBhdCAxMDgwcEAxMjBIeiANCjFl
ZmQ1Mzg0DQojcmVnemJvdCBsaW5rOiANCmh0dHBzOi8vZ2l0bGFiLmFyY2hsaW51eC5vcmcv
YXJjaGxpbnV4L3BhY2thZ2luZy9wYWNrYWdlcy9saW51eC8tL2lzc3Vlcy8xNDUNCg0K
--------------RS0LcFpFyMC1IIVh4SODTdRL
Content-Type: application/pgp-keys; name="OpenPGP_0xB99FAEC6E0D5DF6D.asc"
Content-Disposition: attachment; filename="OpenPGP_0xB99FAEC6E0D5DF6D.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

xjMEYrX2ChYJKwYBBAHaRw8BAQdAf/bzdTDerOW5j+qrayMzPOCKthCx8KYKZo20
cty68aPNKFZhc2lsaSBOb3Zpa292IDx2YXN5YS5ub3Zpa292QGdtYWlsLmNvbT7C
jwQTFggANxYhBLKEQxE9sGxECbI4ubmfrsbg1d9tBQJitfYKBQkJZgGAAhsDBAsJ
CAcFFQgJCgsFFgIDAQAACgkQuZ+uxuDV321klwEAm5+HyBecp+ofMZ6Ors+OvrET
LFQU2B9wCd/d/i2NjJABAIssTvgdxlqFI6GjehRMPURi6W1uFMPzzp9gM1yeYXEG
zjgEYrX2ChIKKwYBBAGXVQEFAQEHQODm5qV0UQrPhcJkaZVbhtVmb90gN6rIuN0Q
/xTmhqJ4AwEIB8J+BBgWCAAmFiEEsoRDET2wbEQJsji5uZ+uxuDV320FAmK19goF
CQlmAYACGwwACgkQuZ+uxuDV322trQEA1Yj4GvOlEPfyuhMfX8P0Ah/8QXCqgdMQ
H7PaNgIFFokA/1DgWcc1XGFNRHpOGrJNnF4Ese1hWjYoqo2iBlURPQwP
=3DhvG9
-----END PGP PUBLIC KEY BLOCK-----

--------------RS0LcFpFyMC1IIVh4SODTdRL--

--------------Uc0vBnG4YG2ZGkz04pGupL9t--

--------------dtb1s0ai873eTd9PpSOnx5UG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQSyhEMRPbBsRAmyOLm5n67G4NXfbQUCaFFBgQUDAAAAAAAKCRC5n67G4NXfbf5D
AP9371ShOE4XL3p8s7b7jy/gYQYItA57SbyUgoMIVtSSwAD/Rln07IIIAVHqnUX6DS0uZ8+X9UUq
YSDiN3aEMCuTpw8=
=FiZd
-----END PGP SIGNATURE-----

--------------dtb1s0ai873eTd9PpSOnx5UG--
