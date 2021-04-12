Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CB335C125
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 11:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4E56E3DF;
	Mon, 12 Apr 2021 09:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66AC26E3DF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 09:27:02 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1618219621; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eQ9+KDH+4b+trWrSfHutQzjO6aB2952W2QU2x4+jysQ=;
 b=pQl5BQfVoKp8Nb7lb4Ekv5LKvLFoB46F9EexxUGqg5z04APoFdb15AwVBH7peNga7ygIGW
 uRrOUVEkYTpeh7/cMkXxw0y+eNo38oybCaprBa6zckIhV9wDcOgVVIaG71XCgcdl4gF5Ms
 6GeeLlPjsgraaBB5bODHI+aWXsCX0as=
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id E6F44AF1A;
 Mon, 12 Apr 2021 09:27:00 +0000 (UTC)
To: Christoph Hellwig <hch@lst.de>, Peter Zijlstra <peterz@infradead.org>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.635125063@infradead.org> <20210412082640.GB4372@lst.de>
From: Juergen Gross <jgross@suse.com>
Message-ID: <1ca59ead-52c7-e874-9b9d-ce3625c50e43@suse.com>
Date: Mon, 12 Apr 2021 11:26:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210412082640.GB4372@lst.de>
Subject: Re: [Intel-gfx] [PATCH 2/7] xen/gntdev,
 x86: Remove apply_to_page_range() use from module
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
Cc: sstabellini@kernel.org, keescook@chromium.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 chris@chris-wilson.co.uk, linux-mm@kvack.org, boris.ostrovsky@oracle.com,
 akpm@linux-foundation.org
Content-Type: multipart/mixed; boundary="===============1391124693=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1391124693==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="d4b9pZDSvxRDLEpkDpyRwFvu3ZY7I9prX"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--d4b9pZDSvxRDLEpkDpyRwFvu3ZY7I9prX
Content-Type: multipart/mixed; boundary="sH73nb9yCEYQfuUS6rr1b0dD5CIJRNymp";
 protected-headers="v1"
From: Juergen Gross <jgross@suse.com>
To: Christoph Hellwig <hch@lst.de>, Peter Zijlstra <peterz@infradead.org>
Cc: akpm@linux-foundation.org, linux-kernel@vger.kernel.org,
 boris.ostrovsky@oracle.com, sstabellini@kernel.org, x86@kernel.org,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, chris@chris-wilson.co.uk,
 intel-gfx@lists.freedesktop.org, linux-mm@kvack.org, keescook@chromium.org
Message-ID: <1ca59ead-52c7-e874-9b9d-ce3625c50e43@suse.com>
Subject: Re: [PATCH 2/7] xen/gntdev,x86: Remove apply_to_page_range() use from
 module
References: <20210412080012.357146277@infradead.org>
 <20210412080611.635125063@infradead.org> <20210412082640.GB4372@lst.de>
In-Reply-To: <20210412082640.GB4372@lst.de>

--sH73nb9yCEYQfuUS6rr1b0dD5CIJRNymp
Content-Type: multipart/mixed;
 boundary="------------83B945FC89013AF2F5F7590A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------83B945FC89013AF2F5F7590A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 12.04.21 10:26, Christoph Hellwig wrote:
> On Mon, Apr 12, 2021 at 10:00:14AM +0200, Peter Zijlstra wrote:
>> Instead of relying on apply_to_page_range() being available to
>> modules, move its use into core kernel code and export it's
>> application.
>=20
> This doesn't exactly look great, but at least it contains the damage..
>=20
>>
>> NOTE: ideally we do: use_ptemod =3D !auto_translate_physmap &&
>> gnttab_map_avail_bits and remove this hack.
>=20
> Given how much pain the !auto_translate_physmap case causes all over
> the kernel I wonder what a realistic timeline might be for dropping
> support for this case might be..

Think in the order of years.

It is basically the Xen PV guest support you are speaking of here, and
the planned replacement PVH especially for dom0 is still lacking some
functionality and it has performance issues.


Juergen

--------------83B945FC89013AF2F5F7590A
Content-Type: application/pgp-keys;
 name="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0xB0DE9DD628BF132F.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFOMcBYBCACgGjqjoGvbEouQZw/ToiBg9W98AlM2QHV+iNHsEs7kxWhKMjrioyspZKOBy=
cWx
w3ie3j9uvg9EOB3aN4xiTv4qbnGiTr3oJhkB1gsb6ToJQZ8uxGq2kaV2KL9650I1SJvedYm8O=
f8Z
d621lSmoKOwlNClALZNew72NjJLEzTalU1OdT7/i1TXkH09XSSI8mEQ/ouNcMvIJNwQpd369y=
9bf
IhWUiVXEK7MlRgUG6MvIj6Y3Am/BBLUVbDa4+gmzDC9ezlZkTZG2t14zWPvxXP3FAp2pkW0xq=
G7/
377qptDmrk42GlSKN4z76ELnLxussxc7I2hx18NUcbP8+uty4bMxABEBAAHNHEp1ZXJnZW4gR=
3Jv
c3MgPGpnQHBmdXBmLm5ldD7CwHkEEwECACMFAlOMcBYCGwMHCwkIBwMCAQYVCAIJCgsEFgIDA=
QIe
AQIXgAAKCRCw3p3WKL8TL0KdB/93FcIZ3GCNwFU0u3EjNbNjmXBKDY4FUGNQH2lvWAUy+dnyT=
hpw
dtF/jQ6j9RwE8VP0+NXcYpGJDWlNb9/JmYqLiX2Q3TyevpB0CA3dbBQp0OW0fgCetToGIQrg0=
MbD
1C/sEOv8Mr4NAfbauXjZlvTj30H2jO0u+6WGM6nHwbh2l5O8ZiHkH32iaSTfN7Eu5RnNVUJbv=
oPH
Z8SlM4KWm8rG+lIkGurqqu5gu8q8ZMKdsdGC4bBxdQKDKHEFExLJK/nRPFmAuGlId1E3fe10v=
5QL
+qHI3EIPtyfE7i9Hz6rVwi7lWKgh7pe0ZvatAudZ+JNIlBKptb64FaiIOAWDCx1SzR9KdWVyZ=
2Vu
IEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+wsB5BBMBAgAjBQJTjHCvAhsDBwsJCAcDAgEGFQgCC=
QoL
BBYCAwECHgECF4AACgkQsN6d1ii/Ey/HmQf/RtI7kv5A2PS4RF7HoZhPVPogNVbC4YA6lW7Dr=
Wf0
teC0RR3MzXfy6pJ+7KLgkqMlrAbN/8Dvjoz78X+5vhH/rDLa9BuZQlhFmvcGtCF8eR0T1v0nC=
/nu
AFVGy+67q2DH8As3KPu0344TBDpAvr2uYM4tSqxK4DURx5INz4ZZ0WNFHcqsfvlGJALDeE0Lh=
ITT
d9jLzdDad1pQSToCnLl6SBJZjDOX9QQcyUigZFtCXFst4dlsvddrxyqT1f17+2cFSdu7+ynLm=
XBK
7abQ3rwJY8SbRO2iRulogc5vr/RLMMlscDAiDkaFQWLoqHHOdfO9rURssHNN8WkMnQfvUewRz=
80h
SnVlcmdlbiBHcm9zcyA8amdyb3NzQG5vdmVsbC5jb20+wsB5BBMBAgAjBQJTjHDXAhsDBwsJC=
AcD
AgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey8PUQf/ehmgCI9jB9hlgexLvgOtf7PJn=
FOX
gMLdBQgBlVPO3/D9R8LtF9DBAFPNhlrsfIG/SqICoRCqUcJ96Pn3P7UUinFG/I0ECGF4EvTE1=
jnD
kfJZr6jrbjgyoZHiw/4BNwSTL9rWASyLgqlA8u1mf+c2yUwcGhgkRAd1gOwungxcwzwqgljf0=
N51
N5JfVRHRtyfwq/ge+YEkDGcTU6Y0sPOuj4Dyfm8fJzdfHNQsWq3PnczLVELStJNdapwPOoE+l=
otu
fe3AM2vAEYJ9rTz3Cki4JFUsgLkHFqGZarrPGi1eyQcXeluldO3m91NK/1xMI3/+8jbO0tsn1=
tqS
EUGIJi7ox80eSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuZGU+wsB5BBMBAgAjBQJTjHDrA=
hsD
BwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey+LhQf9GL45eU5vOowA2u5N3=
g3O
ZUEBmDHVVbqMtzwlmNC4k9Kx39r5s2vcFl4tXqW7g9/ViXYuiDXb0RfUpZiIUW89siKrkzmQ5=
dM7
wRqzgJpJwK8Bn2MIxAKArekWpiCKvBOB/Cc+3EXE78XdlxLyOi/NrmSGRIov0karw2RzMNOu5=
D+j
LRZQd1Sv27AR+IP3I8U4aqnhLpwhK7MEy9oCILlgZ1QZe49kpcumcZKORmzBTNh30FVKK1Evm=
V2x
AKDoaEOgQB4iFQLhJCdP1I5aSgM5IVFdn7v5YgEYuJYx37IoN1EblHI//x/e2AaIHpzK5h88N=
Eaw
QsaNRpNSrcfbFmAg987ATQRTjHAWAQgAyzH6AOODMBjgfWE9VeCgsrwH3exNAU32gLq2xvjpW=
nHI
s98ndPUDpnoxWQugJ6MpMncr0xSwFmHEgnSEjK/PAjppgmyc57BwKII3sV4on+gDVFJR6Y8ZR=
wgn
BC5mVM6JjQ5xDk8WRXljExRfUX9pNhdE5eBOZJrDRoLUmmjDtKzWaDhIg/+1Hzz93X4fCQkNV=
bVF
LELU9bMaLPBG/x5q4iYZ2k2ex6d47YE1ZFdMm6YBYMOljGkZKwYde5ldM9mo45mmwe0icXKLk=
pEd
IXKTZeKDO+Hdv1aqFuAcccTg9RXDQjmwhC3yEmrmcfl0+rPghO0Iv3OOImwTEe4co3c1mwARA=
QAB
wsBfBBgBAgAJBQJTjHAWAhsMAAoJELDendYovxMvQ/gH/1ha96vm4P/L+bQpJwrZ/dneZcmEw=
Tbe
8YFsw2V/Buv6Z4Mysln3nQK5ZadD534CF7TDVft7fC4tU4PONxF5D+/tvgkPfDAfF77zy2AH1=
vJz
Q1fOU8lYFpZXTXIHb+559UqvIB8AdgR3SAJGHHt4RKA0F7f5ipYBBrC6cyXJyyoprT10EMvU8=
VGi
wXvTyJz3fjoYsdFzpWPlJEBRMedCot60g5dmbdrZ5DWClAr0yau47zpWj3enf1tLWaqcsuylW=
svi
uGjKGw7KHQd3bxALOknAp4dN3QwBYCKuZ7AddY9yjynVaD5X7nF9nO5BjR/i1DG86lem3iBDX=
zXs
ZDn8R38=3D
=3D2wuH
-----END PGP PUBLIC KEY BLOCK-----

--------------83B945FC89013AF2F5F7590A--

--sH73nb9yCEYQfuUS6rr1b0dD5CIJRNymp--

--d4b9pZDSvxRDLEpkDpyRwFvu3ZY7I9prX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmB0EmMFAwAAAAAACgkQsN6d1ii/Ey+Y
UQf/doa2e+3F5jR9oDFKoBsQKeM7FrRWjOTkIaH/H1Kjoemfa39a/NlskrG8wG8tvuaHedclxL89
wcWX9m3bgWd3k6SQjciUiZ92yrG4GZ69MC9zbtMhWlMZLE13LlLlz27pfhwpeyXX1qb6VfTNxI1C
o3bGNlVhEoFcX6uiZQJAI8Ht9PwkGPglkjhRt81ZqQnYPi1YWaVuAOAO7KIAI6uNqBzP5ZZ4Jw5x
ojxYr4Z4XyAYQ9bQ3IHMhLSJkKPVAThv5jA11KkwkXi4zXAjiZtyf9lf/ZqNI+JDwZKRfcm+1yvX
8mcrqbiFSfnWYQje256M/4mFD0jHFyhtOA6wiwkTPQ==
=UlBr
-----END PGP SIGNATURE-----

--d4b9pZDSvxRDLEpkDpyRwFvu3ZY7I9prX--

--===============1391124693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1391124693==--
