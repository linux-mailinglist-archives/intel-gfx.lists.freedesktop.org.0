Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A17CFF387C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 20:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A89B56E321;
	Thu,  7 Nov 2019 19:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE5036E321;
 Thu,  7 Nov 2019 19:22:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A77DDA0073;
 Thu,  7 Nov 2019 19:22:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2019 19:22:36 -0000
Message-ID: <157315455665.21754.10060501473273712731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191107151725.10507-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191107151725.10507-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Gamma_cleanups?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEdhbW1hIGNsZWFudXBzClVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTEzNi8KU3Rh
dGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAK
U3BhcnNlIHZlcnNpb246IHYwLjYuMApDb21taXQ6IGRybTogSW5saW5lIGRybV9jb2xvcl9sdXRf
ZXh0cmFjdCgpCisuL2luY2x1ZGUvZHJtL2RybV9jb2xvcl9tZ210Lmg6NDg6Mjg6IHdhcm5pbmc6
IHNoaWZ0IGNvdW50IGlzIG5lZ2F0aXZlICgtMSkKKy4vaW5jbHVkZS9kcm0vZHJtX2NvbG9yX21n
bXQuaDo0ODoyODogd2FybmluZzogc2hpZnQgY291bnQgaXMgbmVnYXRpdmUgKC0xKQorLi9pbmNs
dWRlL2RybS9kcm1fY29sb3JfbWdtdC5oOjQ4OjI4OiB3YXJuaW5nOiBzaGlmdCBjb3VudCBpcyBu
ZWdhdGl2ZSAoLTEpCisuL2luY2x1ZGUvZHJtL2RybV9jb2xvcl9tZ210Lmg6NDg6Mjg6IHdhcm5p
bmc6IHNoaWZ0IGNvdW50IGlzIG5lZ2F0aXZlICgtMSkKKy4vaW5jbHVkZS9kcm0vZHJtX2NvbG9y
X21nbXQuaDo0ODoyODogd2FybmluZzogc2hpZnQgY291bnQgaXMgbmVnYXRpdmUgKC0xKQorLi9p
bmNsdWRlL2RybS9kcm1fY29sb3JfbWdtdC5oOjQ4OjI4OiB3YXJuaW5nOiBzaGlmdCBjb3VudCBp
cyBuZWdhdGl2ZSAoLTEpCgpDb21taXQ6IGRybS9pOTE1OiBQb2xpc2ggQ0hWIC5sb2FkX2x1dHMo
KSBhIGJpdApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUG9saXNoIENIViBDR00gQ1NDIGxvYWRp
bmcKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEFkZCBpOXh4X2x1dF84KCkKT2theSEKCkNvbW1p
dDogZHJtL2k5MTU6IENsZWFuIHVwIGk5eHhfbG9hZF9sdXRzX2ludGVybmFsKCkKT2theSEKCkNv
bW1pdDogZHJtL2k5MTU6IFNwbGl0IGk5eHhfcmVhZF9sdXRfOCgpIHRvIGdtY2ggdnMuIGlsayB2
YXJpYW50cwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogcy9ibG9iX2RhdGEvbHV0LwpPa2F5IQoK
Q29tbWl0OiBkcm0vaTkxNTogcy9jaHZfcmVhZF9jZ21fbHV0L2Nodl9yZWFkX2NnbV9nYW1tYS8K
T2theSEKCkNvbW1pdDogZHJtL2k5MTU6IENsZWFuIHVwIGludGVnZXIgdHlwZXMgaW4gY29sb3Ig
Y29kZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVmYWN0b3IgTFVUIHJlYWQgZnVuY3Rpb25z
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBGaXggcmVhZG91dCBvZiBQSVBFR0NNQVgKT2theSEK
CkNvbW1pdDogZHJtL2k5MTU6IFBhc3MgdGhlIGNydGMgdG8gdGhlIGxvdyBsZXZlbCByZWFkX2x1
dCgpIGZ1bmNzCk9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
