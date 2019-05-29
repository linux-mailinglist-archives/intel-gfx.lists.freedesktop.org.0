Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C092E296
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 18:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5937D6E346;
	Wed, 29 May 2019 16:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D45A06E346;
 Wed, 29 May 2019 16:54:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE639A010C;
 Wed, 29 May 2019 16:54:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Wed, 29 May 2019 16:54:47 -0000
Message-ID: <20190529165447.29224.16680@emeril.freedesktop.org>
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_adding_state_checker_for_gamma_lut_values_=28rev12?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IGFkZGluZyBzdGF0ZSBjaGVj
a2VyIGZvciBnYW1tYSBsdXQgdmFsdWVzIChyZXYxMikKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU4MDM5LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1h
cnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4y
CkNvbW1pdDogZHJtL2k5MTU6IEludHJvZHVjZSB2ZnVuYyByZWFkX2x1dHMoKSB0byBjcmVhdGUg
aHcgbHV0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBFbmFibGUgaW50ZWxfY29sb3JfZ2V0X2Nv
bmZpZygpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBBZGQgZnVuYyB0byBjb21wYXJlIGh3L3N3
IGdhbW1hIGx1dApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRXh0cmFjdCBpOXh4X3JlYWRfbHV0
cygpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjE0Mjc6MTU6IHdhcm5pbmc6
IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jb2xvci5jOjE0Mjc6MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQp
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjE0Mjc6MTU6IHdhcm5pbmc6IGV4
cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9j
b2xvci5jOjE0Mjc6MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjE0Mjc6MTU6IHdhcm5pbmc6IGV4cHJl
c3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xv
ci5jOjE0Mjc6MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjE0Mjc6MTU6IHdhcm5pbmc6IGV4cHJlc3Np
b24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5j
OjE0Mjc6MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjE0Njc6Njogd2FybmluZzogc3ltYm9sICdpOXh4
X3JlYWRfbHV0cycgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KCkNvbW1p
dDogZHJtL2k5MTU6IEV4dHJhY3QgY2h2X3JlYWRfbHV0cygpCk9rYXkhCgpDb21taXQ6IGRybS9p
OTE1OiBFeHRyYWN0IGk5NjVfcmVhZF9sdXRzKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEV4
dHJhY3QgaWNsX3JlYWRfbHV0cygpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBFeHRyYWN0IGds
a19yZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRXh0cmFjdCBiZHdfcmVhZF9s
dXRzKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEV4dHJhY3QgaXZiX3JlYWRfbHV0cygpCk9r
YXkhCgpDb21taXQ6IGRybS9pOTE1OiBFeHRyYWN0IGlsa19yZWFkX2x1dHMoKQpPa2F5IQoKQ29t
bWl0OiBGT1JfVEVTVElOR19PTkxZOiBQcmludCByZ2IgdmFsdWVzIG9mIGh3IGFuZCBzdyBibG9i
cwpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
