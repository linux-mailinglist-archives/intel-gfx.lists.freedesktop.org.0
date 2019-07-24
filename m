Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE93724CB
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 04:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9746E426;
	Wed, 24 Jul 2019 02:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C3B26E426;
 Wed, 24 Jul 2019 02:39:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50B07A00EA;
 Wed, 24 Jul 2019 02:39:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 24 Jul 2019 02:39:45 -0000
Message-ID: <20190724023945.27090.5322@emeril.freedesktop.org>
References: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_u?=
 =?utf-8?q?C_fw_path_unification_+_misc_clean-up_=28rev2=29?=
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
c2MgY2xlYW4tdXAgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82NDAzOS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBz
cGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9p
OTE1L3VjOiBVbmlmeSB1QyBwbGF0Zm9ybSBjaGVjawpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91
YzogVW5pZnkgdUMgRlcgc2VsZWN0aW9uCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3VjOiBVbmlm
eSB1Y19mdyBzdGF0dXMgdHJhY2tpbmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvdWM6IE1vdmUg
eGZlciByc2EgbG9naWMgdG8gY29tbW9uIGZ1bmN0aW9uCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5jOjQ3NzoyMDogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmM6NDc3OjIw
OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKQ29tbWl0OiBkcm0vaTkx
NS9odWM6IENvcHkgaHVjIHJzYSBvbmx5IG9uY2UKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Vj
OiBTZXQgR3VDIGluaXQgcGFyYW1zIG9ubHkgb25jZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91
YzogUGx1bWIgdGhlIGd0IHRocm91Z2ggZndfdXBsb2FkCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1
L3VjOiBVbmlmeSB1QyBmaXJtd2FyZSB1cGxvYWQKT2theSEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
