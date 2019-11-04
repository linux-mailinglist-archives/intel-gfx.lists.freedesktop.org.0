Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BFCEEAAC
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 22:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDCF6E879;
	Mon,  4 Nov 2019 21:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F28C36E878;
 Mon,  4 Nov 2019 21:00:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA2FDA00E8;
 Mon,  4 Nov 2019 21:00:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 04 Nov 2019 21:00:36 -0000
Message-ID: <157290123693.17422.5968677861692242795@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191104173801.2972-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191104173801.2972-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_dma=5Fresv=3A_prime_lockdep_a?=
 =?utf-8?q?nnotations?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZG1hX3Jlc3Y6IHByaW1lIGxvY2tkZXAgYW5ub3RhdGlvbnMKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4OTU4LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1
bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMjk0NjAzNTU1ZTZiIGRt
YV9yZXN2OiBwcmltZSBsb2NrZGVwIGFubm90YXRpb25zCi06Nzc6IFdBUk5JTkc6QkFEX1NJR05f
T0ZGOiBEdXBsaWNhdGUgc2lnbmF0dXJlCiM3NzogCkNjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPgoKLTo4MzogV0FSTklORzpCQURfU0lHTl9PRkY6IGVtYWlsIGFkZHJlc3MgJyJWTXdh
cmUgR3JhcGhpY3MiIDxsaW51eC1ncmFwaGljcy1tYWludGFpbmVyQHZtd2FyZS5jb20+JyBtaWdo
dCBiZSBiZXR0ZXIgYXMgJ1ZNd2FyZSBHcmFwaGljcyA8bGludXgtZ3JhcGhpY3MtbWFpbnRhaW5l
ckB2bXdhcmUuY29tPicKIzgzOiAKQ2M6ICJWTXdhcmUgR3JhcGhpY3MiIDxsaW51eC1ncmFwaGlj
cy1tYWludGFpbmVyQHZtd2FyZS5jb20+CgotOjEyNDogRVJST1I6VFJBSUxJTkdfV0hJVEVTUEFD
RTogdHJhaWxpbmcgd2hpdGVzcGFjZQojMTI0OiBGSUxFOiBkcml2ZXJzL2RtYS1idWYvZG1hLXJl
c3YuYzoxMTY6CiteSSQKCi06MTMyOiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2lu
ZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAxIGVycm9ycywgMyB3YXJuaW5n
cywgMCBjaGVja3MsIDM2IGxpbmVzIGNoZWNrZWQKZjdlMmYwNWY2ZmEwIGRybS9ub3V2ZWF1OiBz
bG93cGF0aCBmb3IgcHVzaGJ1ZiBpb2N0bAotOjE1NTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9P
RkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAn
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMs
IDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxMjIgbGluZXMgY2hlY2tlZAo4OGRmMjJjMzQ3ZjkgZHJt
L3R0bTogcmVtb3ZlIHR0bV9ib193YWl0X3VucmVzZXJ2ZWQKLToyNzogV0FSTklORzpCQURfU0lH
Tl9PRkY6IGVtYWlsIGFkZHJlc3MgJyJWTXdhcmUgR3JhcGhpY3MiIDxsaW51eC1ncmFwaGljcy1t
YWludGFpbmVyQHZtd2FyZS5jb20+JyBtaWdodCBiZSBiZXR0ZXIgYXMgJ1ZNd2FyZSBHcmFwaGlj
cyA8bGludXgtZ3JhcGhpY3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPicKIzI3OiAKQ2M6ICJWTXdh
cmUgR3JhcGhpY3MiIDxsaW51eC1ncmFwaGljcy1tYWludGFpbmVyQHZtd2FyZS5jb20+CgotOjE2
ODogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGlu
ZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3MsIDAgY2hlY2tzLCA4MSBsaW5l
cyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
