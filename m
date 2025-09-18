Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 079D6B82C80
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 05:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA27B10E067;
	Thu, 18 Sep 2025 03:42:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cardinalsystem.net header.i=@cardinalsystem.net header.b="0Qoejamc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-106110.protonmail.ch (mail-106110.protonmail.ch
 [79.135.106.110])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CF6C10E067
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Sep 2025 03:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cardinalsystem.net;
 s=protonmail; t=1758166944; x=1758426144;
 bh=OOalvqvXw+mIKM/YJi3aUg2oKObjoLZyrj3/dJDS2l8=;
 h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=0QoejamctopbYP9MhXoOsgQd5DzDF/TYyu6clIP6w/svraRihWvr6SOTCHy7b96CL
 23awiIUAac7tya18oa0XxvXwL6rbNSrDEPujRhHnpVmhf968lRcweIUBejND4/Dx+t
 gjvkF/0iquHMiPkQlMxggpZ1uH68yPXgDAj1Cfq2Xj5YKVUwSl73VIJERZeVDf46DO
 SXXd0889xHU19m6ld7+1eSTA8OltjB+nwzD+ocqMGpIEYo0S14V29ecYOarBRdO0O8
 9+UVFDJWJE6gXctrDS7U1AQ674/itCdRBIEQvrp2X5+0yZuXRROJFcN1ZSXqTsc6mb
 yftskWnzNIxUQ==
Date: Thu, 18 Sep 2025 03:42:19 +0000
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: David Holland <david@cardinalsystem.net>
Subject: [HDR][Intel UHD] Student project: exploring HDR enablement on 8th gen
 iGPU
Message-ID: <S1MS2U39858Zz9bFRDQ0pS8kKwUsGCgbxQABql2FDYRIFVwFxKteQUCIl5gMs5_ZHrO8Bplc0pJWFjSwl3ZEB7Iln_nFgyqE3Ds2p4a7WLg=@cardinalsystem.net>
Feedback-ID: 153180221:user:proton
X-Pm-Message-ID: ed38f145ee9f192b22249f1821aa3206a3e37c23
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg=pgp-sha512;
 boundary="------b80b14fb9052c3cc544b4e7f113dec2937638ed4554bfbea30017ed5a5b5199b";
 charset=utf-8
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
--------b80b14fb9052c3cc544b4e7f113dec2937638ed4554bfbea30017ed5a5b5199b
Content-Type: multipart/mixed;boundary=---------------------c14213fba1545d5b893a4fa17eb463b7

-----------------------c14213fba1545d5b893a4fa17eb463b7
Content-Type: multipart/alternative;boundary=---------------------d1534f799d9d4d3b39821f45618944ae

-----------------------d1534f799d9d4d3b39821f45618944ae
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hello everyone, =C2=A0
I=E2=80=99m a senior CS student interested in graphics driver development,=
 and I=E2=80=99d like to learn by exploring HDR=C2=A0 on Intel UHD iGPUs i=
n Linux.
From what I studied HDR output is already supported for Intel's discrete G=
PUS but not for the integrated GPUs like UHd or Iris Xe despite supporting=
 it on Windows.=C2=A0

I had an idea to study how HDR support is done for Arc and see if it was p=
ossible to adapt it for integrated graphics potentially as a final capston=
e project for my university.=C2=A0


Before starting and getting too involved:

-   Is this something I should even attempt or am I thinking too big and c=
omplicated for a capstone project?=C2=A0

- Where in the kernel codebase would be the best place to start understand=
ing how HDR metadata and color management are currently implemented? =C2=A0=

- Are there any known blockers or past discussions about HDR on pre-Arc GP=
Us (UHD, Iris Xe) that I should review? =C2=A0


I don=E2=80=99t expect to figure this all out in one night but I just want=
ed to get some pointers since this is my first time developing anything ma=
jor in C. The biggest thing I developed before this was an AES cipher.=C2=A0=



Thanks for your time, and for all the work that=E2=80=99s already gone int=
o the kernel. Also forgive me if this is the wrong place to email the team=
 I am new to this and to be honest I did have chatGPT teach me about getti=
ng in contact with the devs.=C2=A0


Best regards, =C2=A0
David Holland

Sent with Proton Mail secure email.
-----------------------d1534f799d9d4d3b39821f45618944ae
Content-Type: multipart/related;boundary=---------------------e9d6f0f0036fd51d8773c3b9f2e66da3

-----------------------e9d6f0f0036fd51d8773c3b9f2e66da3
Content-Type: text/html;charset=utf-8
Content-Transfer-Encoding: base64

PHNwYW4+SGVsbG8gZXZlcnlvbmUsICZuYnNwOzwvc3Bhbj48ZGl2Pjxicj48L2Rpdj48ZGl2Pjxz
cGFuPknigJltIGEgc2VuaW9yIENTIHN0dWRlbnQgaW50ZXJlc3RlZCBpbiBncmFwaGljcyBkcml2
ZXIgZGV2ZWxvcG1lbnQsIGFuZCBJ4oCZZCBsaWtlIHRvIGxlYXJuIGJ5IGV4cGxvcmluZyBIRFIm
bmJzcDsgb24gSW50ZWwgVUhEIGlHUFVzIGluIExpbnV4Ljwvc3Bhbj48L2Rpdj48ZGl2IHN0eWxl
PSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgY29sb3I6
IHJnYigwLCAwLCAwKTsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjU1LCAyNTUpOyI+RnJv
bSB3aGF0IEkgc3R1ZGllZCBIRFIgb3V0cHV0IGlzIGFscmVhZHkgc3VwcG9ydGVkIGZvciBJbnRl
bCdzIGRpc2NyZXRlIEdQVVMgYnV0IG5vdCBmb3IgdGhlIGludGVncmF0ZWQgR1BVcyBsaWtlIFVI
ZCBvciBJcmlzIFhlIGRlc3BpdGUgc3VwcG9ydGluZyBpdCBvbiBXaW5kb3dzLiZuYnNwOzwvZGl2
PjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
NHB4OyBjb2xvcjogcmdiKDAsIDAsIDApOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjU1LCAyNTUs
IDI1NSk7Ij48YnI+PC9kaXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNl
cmlmOyBmb250LXNpemU6IDE0cHg7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IGJhY2tncm91bmQtY29s
b3I6IHJnYigyNTUsIDI1NSwgMjU1KTsiPkkgaGFkIGFuIGlkZWEgdG8gc3R1ZHkgaG93IEhEUiBz
dXBwb3J0IGlzIGRvbmUgZm9yIEFyYyBhbmQgc2VlIGlmIGl0IHdhcyBwb3NzaWJsZSB0byBhZGFw
dCBpdCBmb3IgaW50ZWdyYXRlZCBncmFwaGljcyBwb3RlbnRpYWxseSBhcyBhIGZpbmFsIGNhcHN0
b25lIHByb2plY3QgZm9yIG15IHVuaXZlcnNpdHkuJm5ic3A7PC9kaXY+PGRpdiBzdHlsZT0iZm9u
dC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IGNvbG9yOiByZ2Io
MCwgMCwgMCk7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsiPjxicj48L2Rp
dj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTog
MTRweDsgY29sb3I6IHJnYigwLCAwLCAwKTsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI1NSwgMjU1
LCAyNTUpOyI+PGJyPjwvZGl2PjxkaXY+PHNwYW4+QmVmb3JlIHN0YXJ0aW5nIGFuZCBnZXR0aW5n
IHRvbyBpbnZvbHZlZDo8L3NwYW4+PC9kaXY+PGRpdj48dWwgc3R5bGU9Im1hcmdpbi10b3A6IDBw
eDsgbWFyZ2luLWJvdHRvbTogMHB4OyIgZGF0YS1lZGl0aW5nLWluZm89InsmcXVvdDtvcmRlcmVk
U3R5bGVUeXBlJnF1b3Q7OjEsJnF1b3Q7dW5vcmRlcmVkU3R5bGVUeXBlJnF1b3Q7OjJ9Ij48bGkg
c3R5bGU9Imxpc3Qtc3R5bGUtdHlwZTogJnF1b3Q7LSAmcXVvdDs7Ij48c3Bhbj48c3Bhbj5JcyB0
aGlzIHNvbWV0aGluZyBJIHNob3VsZCBldmVuIGF0dGVtcHQgb3IgYW0gSSB0aGlua2luZyB0b28g
YmlnIGFuZCBjb21wbGljYXRlZCBmb3IgYSBjYXBzdG9uZSBwcm9qZWN0PyZuYnNwOzwvc3Bhbj48
YnI+PC9zcGFuPjwvbGk+PC91bD48L2Rpdj48ZGl2PjxzcGFuPi0gV2hlcmUgaW4gdGhlIGtlcm5l
bCBjb2RlYmFzZSB3b3VsZCBiZSB0aGUgYmVzdCBwbGFjZSB0byBzdGFydCB1bmRlcnN0YW5kaW5n
IGhvdyBIRFIgbWV0YWRhdGEgYW5kIGNvbG9yIG1hbmFnZW1lbnQgYXJlIGN1cnJlbnRseSBpbXBs
ZW1lbnRlZD8gJm5ic3A7PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+LSBBcmUgdGhlcmUgYW55IGtu
b3duIGJsb2NrZXJzIG9yIHBhc3QgZGlzY3Vzc2lvbnMgYWJvdXQgSERSIG9uIHByZS1BcmMgR1BV
cyAoVUhELCBJcmlzIFhlKSB0aGF0IEkgc2hvdWxkIHJldmlldz8gJm5ic3A7PC9zcGFuPjwvZGl2
PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PHNwYW4+SSBkb27igJl0IGV4cGVj
dCB0byBmaWd1cmUgdGhpcyBhbGwgb3V0IGluIG9uZSBuaWdodCBidXQgSSBqdXN0IHdhbnRlZCB0
byBnZXQgc29tZSBwb2ludGVycyBzaW5jZSB0aGlzIGlzIG15IGZpcnN0IHRpbWUgZGV2ZWxvcGlu
ZyBhbnl0aGluZyBtYWpvciBpbiBDLiBUaGUgYmlnZ2VzdCB0aGluZyBJIGRldmVsb3BlZCBiZWZv
cmUgdGhpcyB3YXMgYW4gQUVTIGNpcGhlci4mbmJzcDs8L3NwYW4+PC9kaXY+PGRpdj48c3Bhbj4m
bmJzcDsmbmJzcDs8L3NwYW4+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48c3Bhbj5UaGFua3Mg
Zm9yIHlvdXIgdGltZSwgYW5kIGZvciBhbGwgdGhlIHdvcmsgdGhhdOKAmXMgYWxyZWFkeSBnb25l
IGludG8gdGhlIGtlcm5lbC4gQWxzbyBmb3JnaXZlIG1lIGlmIHRoaXMgaXMgdGhlIHdyb25nIHBs
YWNlIHRvIGVtYWlsIHRoZSB0ZWFtIEkgYW0gbmV3IHRvIHRoaXMgYW5kIHRvIGJlIGhvbmVzdCBJ
IGRpZCBoYXZlIGNoYXRHUFQgdGVhY2ggbWUgYWJvdXQgZ2V0dGluZyBpbiBjb250YWN0IHdpdGgg
dGhlIGRldnMuJm5ic3A7PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4+PGJyPjwvc3Bhbj48L2Rpdj48
ZGl2PjxzcGFuPkJlc3QgcmVnYXJkcywgJm5ic3A7PC9zcGFuPjwvZGl2PjxkaXYgc3R5bGU9ImZv
bnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyIgY2xhc3M9InBy
b3Rvbm1haWxfc2lnbmF0dXJlX2Jsb2NrICI+PGRpdiBjbGFzcz0icHJvdG9ubWFpbF9zaWduYXR1
cmVfYmxvY2stcHJvdG9uIj5EYXZpZCBIb2xsYW5kPC9kaXY+PGRpdiBjbGFzcz0icHJvdG9ubWFp
bF9zaWduYXR1cmVfYmxvY2stcHJvdG9uIj48YnI+PC9kaXY+PGRpdiBjbGFzcz0icHJvdG9ubWFp
bF9zaWduYXR1cmVfYmxvY2stcHJvdG9uIj5TZW50IHdpdGggPGEgaHJlZj0iaHR0cHM6Ly9wcm90
b24ubWUvbWFpbC9ob21lIiB0YXJnZXQ9Il9ibGFuayI+UHJvdG9uIE1haWw8L2E+IHNlY3VyZSBl
bWFpbC4KICAgIDwvZGl2Pgo8L2Rpdj4K
-----------------------e9d6f0f0036fd51d8773c3b9f2e66da3--

-----------------------d1534f799d9d4d3b39821f45618944ae--

-----------------------c14213fba1545d5b893a4fa17eb463b7--

--------b80b14fb9052c3cc544b4e7f113dec2937638ed4554bfbea30017ed5a5b5199b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmjLf4wJEPO2ezotyAHpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcnNBprL4GWwN757LoKkgpaiwulFQSxIBJKVBd/
IH0yXhYhBLbEab5nS74PQVTljvO2ezotyAHpAAApgQEA8hEke4EwcTDOpwq8
FGw4vkrjbs62qKRZLcTAJtMRzvgBALnyfq95Pp3Lu+xYy0e60N/KBw6ur4sk
MTFv8+MdJKsP
=tWuy
-----END PGP SIGNATURE-----


--------b80b14fb9052c3cc544b4e7f113dec2937638ed4554bfbea30017ed5a5b5199b--

