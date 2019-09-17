Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB50B4EBB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 15:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 142286EC5B;
	Tue, 17 Sep 2019 13:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D58416EC58;
 Tue, 17 Sep 2019 13:06:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF373A0073;
 Tue, 17 Sep 2019 13:06:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 17 Sep 2019 13:06:10 -0000
Message-ID: <20190917130610.26302.74702@emeril.freedesktop.org>
References: <20190917120936.7501-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190917120936.7501-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/kms=3A_Duct-tape_for_mode?=
 =?utf-8?q?_object_lifetime_checks?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2ttczogRHVjdC10YXBlIGZvciBtb2RlIG9iamVjdCBsaWZldGltZSBjaGVja3MKVVJMICAg
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2ODEyLwpTdGF0ZSA6
IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAK
YWU1YTM0OTdiZGQ3IGRybS9rbXM6IER1Y3QtdGFwZSBmb3IgbW9kZSBvYmplY3QgbGlmZXRpbWUg
Y2hlY2tzCi06OTogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRl
c2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5l
PiIpJyAtIGllOiAnY29tbWl0IDRmNTM2OGI1NTQxYSAoImRybS9rbXM6IENhdGNoIG1vZGVfb2Jq
ZWN0IGxpZmV0aW1lIGVycm9ycyIpJwojOTogCmNvbW1pdCA0ZjUzNjhiNTU0MWE5MDJmNjU5NjU1
OGIwNWY1YzIxYTk3NzBkZDMyCgotOjMwOiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNl
IGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+
ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgMWI5YmQwOTYzMGQ0ICgiZHJtL2k5MTU6
IERvIG5vdCBjcmVhdGUgYSBuZXcgbWF4X2JwYyBwcm9wIGZvciBNU1QgY29ubmVjdG9ycyIpJwoj
MzA6IApjb21taXQgMWI5YmQwOTYzMGQ0ZGI0ODI3Y2MwNGQzNThhNDFhMTZhNmJjMmNiMAoKLTo5
MjogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGlu
ZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4nCgp0b3RhbDogMiBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAzMiBsaW5l
cyBjaGVja2VkCmI1NGQ4NWEzODkwYyBkcm0vZG9jOiBJbXByb3ZlIGRvY3MgYXJvdW5kIGNvbm5l
Y3RvciAodW4pcmVnaXN0cmF0aW9uCi06ODQ6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBN
aXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0Rhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdh
cm5pbmdzLCAwIGNoZWNrcywgNTQgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
