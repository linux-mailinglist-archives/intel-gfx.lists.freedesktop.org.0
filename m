Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F1F13B6C
	for <lists+intel-gfx@lfdr.de>; Sat,  4 May 2019 19:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007C38933D;
	Sat,  4 May 2019 17:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE29B8933D;
 Sat,  4 May 2019 17:31:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6A3BA363B;
 Sat,  4 May 2019 17:31:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Sat, 04 May 2019 17:31:48 -0000
Message-ID: <20190504173148.27731.33469@emeril.freedesktop.org>
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_adding_state_checker_for_gamma_lut_values_=28rev7=29?=
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
a2VyIGZvciBnYW1tYSBsdXQgdmFsdWVzIChyZXY3KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTgwMzkvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFy
eSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIK
Q29tbWl0OiBkcm0vaTkxNTogSW50cm9kdWNlIHZmdW5jIHJlYWRfbHV0cygpIHRvIGNyZWF0ZSBo
dyBsdXQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEVuYWJsZSBpbnRlbF9jb2xvcl9yZWFkX2x1
dHMoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRXh0cmFjdCBpOXh4X3JlYWRfbHV0cygpCitk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjEyNTk6MTU6IHdhcm5pbmc6IGV4cHJl
c3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xv
ci5jOjEyNTk6MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjEyNTk6MTU6IHdhcm5pbmc6IGV4cHJlc3Np
b24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5j
OjEyNTk6MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjEyNTk6MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24g
dXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjEy
NTk6MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjEyNTk6MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNp
bmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jOjEyNTk6
MTU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jb2xvci5jOjEyOTk6Njogd2FybmluZzogc3ltYm9sICdpOXh4X3JlYWRf
bHV0cycgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KCkNvbW1pdDogZHJt
L2k5MTU6IEV4dHJhY3QgY2h2X3JlYWRfbHV0cygpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBF
eHRyYWN0IGk5NjVfcmVhZF9sdXRzKCkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEV4dHJhY3Qg
aWNsX3JlYWRfbHV0cygpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBFeHRyYWN0IGdsa19yZWFk
X2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRXh0cmFjdCBiZHdfcmVhZF9sdXRzKCkK
T2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEV4dHJhY3QgaXZiX3JlYWRfbHV0cygpCk9rYXkhCgpD
b21taXQ6IGRybS9pOTE1OiBFeHRyYWN0IGlsa19yZWFkX2x1dHMoKQpPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNTogQWRkIGludGVsX2NvbG9yX2x1dF9lcXVhbCgpIHRvIGNvbXBhcmUgaHcgYW5kIHN3
IGdhbW1hL2RlZ2FtbWEgbHV0IHZhbHVlcwpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
