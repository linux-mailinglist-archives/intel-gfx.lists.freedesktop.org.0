Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD6970E02
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 02:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE32F89E08;
	Tue, 23 Jul 2019 00:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F300389E08;
 Tue, 23 Jul 2019 00:19:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EBA06A0119;
 Tue, 23 Jul 2019 00:19:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 23 Jul 2019 00:19:11 -0000
Message-ID: <20190723001911.5094.61384@emeril.freedesktop.org>
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_u?=
 =?utf-8?q?C_fw_path_unification_+_misc_clean-up?=
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
c2MgY2xlYW4tdXAKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzY0MDM5LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBv
cmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1pdDogZHJtL2k5MTUvdWM6
IEd0LWZ5IHVjIHJlc2V0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3VjOiBVbmlmeSB1QyBwbGF0
Zm9ybSBjaGVjawpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91YzogVW5pZnkgdUMgRlcgc2VsZWN0
aW9uCisuL2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBj
YXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAg
YmVjb21lcyAwKQorLi9pbmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0Nzo1Njogd2Fy
bmluZzogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4MDAwMDAwMDAw
MDAwMDAwIGJlY29tZXMgMCkKCkNvbW1pdDogZHJtL2k5MTUvdWM6IFNhbml0aXplIHVDIHdoZW4g
R1QgaXMgc2FuaXRpemVkCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3VjOiBVbmlmeSB1Y19mdyBz
dGF0dXMgdHJhY2tpbmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvdWM6IE1vdmUgeGZlciByc2Eg
bG9naWMgdG8gY29tbW9uIGZ1bmN0aW9uCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Y19mdy5jOjM3MToyMDogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
K2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmM6MzcxOjIwOiB3YXJuaW5n
OiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKQ29tbWl0OiBkcm0vaTkxNS9odWM6IENv
cHkgaHVjIHJzYSBvbmx5IG9uY2UKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvdWM6IFBsdW1iIHRo
ZSBndCB0aHJvdWdoIGZ3X3VwbG9hZApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS91YzogVW5pZnkg
dUMgZmlybXdhcmUgdXBsb2FkCk9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
