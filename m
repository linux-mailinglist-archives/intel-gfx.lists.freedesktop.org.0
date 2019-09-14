Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B38A6B2914
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 02:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23DEA6F4B9;
	Sat, 14 Sep 2019 00:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36B3E6F4B9;
 Sat, 14 Sep 2019 00:20:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29F49A0096;
 Sat, 14 Sep 2019 00:20:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sat, 14 Sep 2019 00:20:54 -0000
Message-ID: <20190914002054.32423.77175@emeril.freedesktop.org>
References: <20190913232857.389834-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190913232857.389834-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5BCI=2C1/2=5D_drm/connector=3A_Share_with_?=
 =?utf-8?q?non-atomic_drivers_the_function_to_get_the_single_encoder?=
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
Ml0gZHJtL2Nvbm5lY3RvcjogU2hhcmUgd2l0aCBub24tYXRvbWljIGRyaXZlcnMgdGhlIGZ1bmN0
aW9uIHRvIGdldCB0aGUgc2luZ2xlIGVuY29kZXIKVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NzAxLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkg
PT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNi4wCkNv
bW1pdDogZHJtL2Nvbm5lY3RvcjogU2hhcmUgd2l0aCBub24tYXRvbWljIGRyaXZlcnMgdGhlIGZ1
bmN0aW9uIHRvIGdldCB0aGUgc2luZ2xlIGVuY29kZXIKK2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0
Y19oZWxwZXIuYzo0Njc6MjA6IHdhcm5pbmc6IHN5bWJvbCAnZHJtX2Nvbm5lY3Rvcl9nZXRfc2lu
Z2xlX2VuY29kZXInIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/CgpDb21t
aXQ6IGRybS9jb25uZWN0b3I6IEFsbG93IG1heCBwb3NzaWJsZSBlbmNvZGVycyB0byBhdHRhY2gg
dG8gYSBjb25uZWN0b3IKK2RyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Y19oZWxwZXIuYzo0Njc6MjA6
IHdhcm5pbmc6IHN5bWJvbCAnZHJtX2Nvbm5lY3Rvcl9nZXRfc2luZ2xlX2VuY29kZXInIHdhcyBu
b3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Ci1POmRyaXZlcnMvZ3B1L2RybS9kcm1f
Y3J0Y19oZWxwZXIuYzo0Njc6MjA6IHdhcm5pbmc6IHN5bWJvbCAnZHJtX2Nvbm5lY3Rvcl9nZXRf
c2luZ2xlX2VuY29kZXInIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
