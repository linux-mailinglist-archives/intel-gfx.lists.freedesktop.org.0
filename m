Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A587429E
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 02:43:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94D26E2B4;
	Thu, 25 Jul 2019 00:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A79346E2B4;
 Thu, 25 Jul 2019 00:43:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0B75A0118;
 Thu, 25 Jul 2019 00:43:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 25 Jul 2019 00:43:04 -0000
Message-ID: <20190725004304.10329.75774@emeril.freedesktop.org>
References: <20190725001813.4740-1-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725001813.4740-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_u?=
 =?utf-8?q?C_fw_path_unification_+_misc_clean-up_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogdUMgZncgcGF0aCB1bmlmaWNhdGlvbiArIG1p
c2MgY2xlYW4tdXAgKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82NDAzOS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBz
cGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9p
OTE1L3VjOiBVbmlmeSB1QyBwbGF0Zm9ybSBjaGVjawpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTog
Rml4IGhhbmRsaW5nIG9mIG5vbi1zdXBwb3J0ZWQgdUMKT2theSEKCkNvbW1pdDogZHJtL2k5MTUv
dWM6IFVuaWZ5IHVDIEZXIHNlbGVjdGlvbgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91YzogVW5p
ZnkgdWNfZncgc3RhdHVzIHRyYWNraW5nCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3VjOiBNb3Zl
IHhmZXIgcnNhIGxvZ2ljIHRvIGNvbW1vbiBmdW5jdGlvbgorZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWNfZncuYzo0NzM6MjA6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6
ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jOjQ3Mzoy
MDogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5
MTUvaHVjOiBDb3B5IGh1YyByc2Egb25seSBvbmNlCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3Vj
OiBQbHVtYiB0aGUgZ3QgdGhyb3VnaCBmd191cGxvYWQKT2theSEKCkNvbW1pdDogZHJtL2k5MTUv
dWM6IFVuaWZ5IHVDIGZpcm13YXJlIHVwbG9hZApPa2F5IQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
