Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503D1BBC59
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 21:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748F56E8BB;
	Mon, 23 Sep 2019 19:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 182496E875;
 Mon, 23 Sep 2019 19:44:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FC8FA0073;
 Mon, 23 Sep 2019 19:44:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Sep 2019 19:44:38 -0000
Message-ID: <20190923194438.29097.46597@emeril.freedesktop.org>
References: <20190923153037.9209-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190923153037.9209-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Fixup_preemp?=
 =?utf-8?q?t-to-busy_vs_resubmission_of_a_virtual_request?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
M10gZHJtL2k5MTU6IEZpeHVwIHByZWVtcHQtdG8tYnVzeSB2cyByZXN1Ym1pc3Npb24gb2YgYSB2
aXJ0dWFsIHJlcXVlc3QKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzY3MTE2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNr
cGF0Y2ggb3JpZ2luL2RybS10aXAKZDIwYzQxNjUzNzczIGRybS9pOTE1OiBGaXh1cCBwcmVlbXB0
LXRvLWJ1c3kgdnMgcmVzdWJtaXNzaW9uIG9mIGEgdmlydHVhbCByZXF1ZXN0CjQyNWUxZDAyMDM5
MCBkcm0vaTkxNTogRml4dXAgcHJlZW1wdC10by1idXN5IHZzIHJlc2V0IG9mIGEgdmlydHVhbCBy
ZXF1ZXN0CmU2YzA0OWU1MDVmMCBkcm0vaTkxNTogUHJldmVudCBib25kZWQgcmVxdWVzdHMgZnJv
bSBvdmVydGFraW5nIGVhY2ggb3RoZXIgb24gcHJlZW1wdGlvbgotOjI1OiBFUlJPUjpHSVRfQ09N
TUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8
MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgZWUxMTM2
OTA4ZTliICgiZHJtL2k5MTUvZXhlY2xpc3RzOiBWaXJ0dWFsIGVuZ2luZSBib25kaW5nIiknCiMy
NTogClJlZmVyZW5jZXM6IGVlMTEzNjkwOGU5YiAoImRybS9pOTE1L2V4ZWNsaXN0czogVmlydHVh
bCBlbmdpbmUgYm9uZGluZyIpCgp0b3RhbDogMSBlcnJvcnMsIDAgd2FybmluZ3MsIDAgY2hlY2tz
LCAzMCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
