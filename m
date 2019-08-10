Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D388C16
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 17:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D646E436;
	Sat, 10 Aug 2019 15:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EAFD6E435;
 Sat, 10 Aug 2019 15:56:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 15070A0073;
 Sat, 10 Aug 2019 15:56:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 10 Aug 2019 15:56:55 -0000
Message-ID: <20190810155655.15911.71164@emeril.freedesktop.org>
References: <20190810153430.30636-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190810153430.30636-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_dma-fence=3A_Propagate_errors?=
 =?utf-8?q?_to_dma-fence-array_container?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZG1hLWZlbmNlOiBQcm9wYWdhdGUgZXJyb3JzIHRvIGRtYS1mZW5jZS1hcnJheSBjb250YWluZXIK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1MDI3LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2Ry
bS10aXAKZmY4ZjRjOWI1YzFkIGRtYS1mZW5jZTogUHJvcGFnYXRlIGVycm9ycyB0byBkbWEtZmVu
Y2UtYXJyYXkgY29udGFpbmVyCmRjZjEwODVjOWIyZiBkbWEtZmVuY2U6IFJlcG9ydCB0aGUgY29t
cG9zaXRlIHN5bmNfZmlsZSBzdGF0dXMKNDc2ZjdmNTFlMGMwIGRtYS1mZW5jZTogUmVmYWN0b3Ig
c2lnbmFsaW5nIGZvciBtYW51YWwgaW52b2NhdGlvbgotOjMzOiBXQVJOSU5HOkZJTEVfUEFUSF9D
SEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJT
IG5lZWQgdXBkYXRpbmc/CiMzMzogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjM4OiBXQVJOSU5H
OlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyIHRhZyBpbiBsaW5lIDEKIzM4OiBGSUxFOiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LXRyYWNlLmM6MToKKy8qCgotOjI5MjogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNzaW5n
IG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAxCiMyOTI6
IEZJTEU6IGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLXR5cGVzLmg6MToKKy8qCgotOjM3MzogQ0hF
Q0s6VU5DT01NRU5URURfREVGSU5JVElPTjogc3BpbmxvY2tfdCBkZWZpbml0aW9uIHdpdGhvdXQg
Y29tbWVudAojMzczOiBGSUxFOiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS10eXBlcy5oOjgyOgor
CXNwaW5sb2NrX3QgKmxvY2s7Cgp0b3RhbDogMCBlcnJvcnMsIDMgd2FybmluZ3MsIDEgY2hlY2tz
LCA3MzkgbGluZXMgY2hlY2tlZApjNTIyYWJmMzM0MmQgZG1hLWZlbmNlOiBBbHdheXMgZXhlY3V0
ZSBzaWduYWwgY2FsbGJhY2tzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
