Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 467D910481B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 02:34:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974F06E15D;
	Thu, 21 Nov 2019 01:34:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 430246E15D;
 Thu, 21 Nov 2019 01:34:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3ADE0A00E8;
 Thu, 21 Nov 2019 01:34:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: clinton.a.taylor@intel.com
Date: Thu, 21 Nov 2019 01:34:17 -0000
Message-ID: <157430005723.19251.287068215059930716@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191120234020.29887-1-clinton.a.taylor@intel.com>
In-Reply-To: <20191120234020.29887-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Disable_display_interrupts_during_SDE_IRQ_handle?=
 =?utf-8?q?r?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IERpc2FibGUgZGlzcGxheSBp
bnRlcnJ1cHRzIGR1cmluZyBTREUgSVJRIGhhbmRsZXIKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5Nzg2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1h
cnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKYTVjOWJmOWE5OGNlIGRybS9p
OTE1OiBEaXNhYmxlIGRpc3BsYXkgaW50ZXJydXB0cyBkdXJpbmcgU0RFIElSUSBoYW5kbGVyCi06
Mjc6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBv
cGVuIHBhcmVudGhlc2lzCiMyNzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
YzoyNDkwOgorCQlyYXdfcmVnX3dyaXRlKHJlZ3MsIEdFTjExX0RJU1BMQVlfSU5UX0NUTCwKKwkJ
CQkJICBHRU4xMV9ESVNQTEFZX0lSUV9FTkFCTEUpOwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5p
bmdzLCAxIGNoZWNrcywgMTEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
