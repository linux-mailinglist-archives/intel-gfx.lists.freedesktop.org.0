Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC48105914
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 19:11:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66C86F4C2;
	Thu, 21 Nov 2019 18:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4AFB6F4C2;
 Thu, 21 Nov 2019 18:11:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0040A0091;
 Thu, 21 Nov 2019 18:11:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: clinton.a.taylor@intel.com
Date: Thu, 21 Nov 2019 18:11:26 -0000
Message-ID: <157435988684.19250.11153635015956821365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191120234020.29887-1-clinton.a.taylor@intel.com>
In-Reply-To: <20191120234020.29887-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Disable_display_interrupts_during_SDE_IRQ_handle?=
 =?utf-8?q?r_=28rev2=29?=
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
bnRlcnJ1cHRzIGR1cmluZyBTREUgSVJRIGhhbmRsZXIgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTc4Ni8KU3RhdGUgOiB3YXJuaW5nCgo9
PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQ1MjA1OTdjZjI3
ZCBkcm0vaTkxNTogRGlzYWJsZSBkaXNwbGF5IGludGVycnVwdHMgZHVyaW5nIGRpc3BsYXkgSVJR
IGhhbmRsZXIKLTozMDogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hv
dWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzMwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jOjI0OTA6CisJCXJhd19yZWdfd3JpdGUocmVncywgR0VOMTFfRElTUExBWV9J
TlRfQ1RMLAorCQkJCQkgIEdFTjExX0RJU1BMQVlfSVJRX0VOQUJMRSk7Cgp0b3RhbDogMCBlcnJv
cnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCAxMSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
