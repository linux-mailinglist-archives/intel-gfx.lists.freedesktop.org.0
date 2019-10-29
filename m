Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C62E93F0
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 00:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7552D6E832;
	Tue, 29 Oct 2019 23:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 184EE6E82D;
 Tue, 29 Oct 2019 23:51:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11C9EA363E;
 Tue, 29 Oct 2019 23:51:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 29 Oct 2019 23:51:57 -0000
Message-ID: <20191029235157.12910.97841@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191029161226.6409-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191029161226.6409-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Re?=
 =?utf-8?q?factor_Gen11+_SAGV_support_=28rev6=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmVmYWN0b3IgR2VuMTErIFNBR1Ygc3VwcG9y
dCAocmV2NikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzY4MDI4LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9j
aGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNo
CiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5o
CiAgQVIgICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9idWlsdC1pbi5hCiAgQ0MgW01dICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5vCmRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmM6NDg4OjU6IGVycm9yOiByZWRlZmluaXRpb24gb2Yg
4oCYaW50ZWxfYXRvbWljX3NlcmlhbGl6ZV9nbG9iYWxfc3RhdGXigJkKIGludCBpbnRlbF9hdG9t
aWNfc2VyaWFsaXplX2dsb2JhbF9zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkKICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgpkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jOjIxMDo1OiBub3RlOiBwcmV2aW91cyBkZWZp
bml0aW9uIG9mIOKAmGludGVsX2F0b21pY19zZXJpYWxpemVfZ2xvYmFsX3N0YXRl4oCZIHdhcyBo
ZXJlCiBpbnQgaW50ZWxfYXRvbWljX3NlcmlhbGl6ZV9nbG9iYWxfc3RhdGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn4Kc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNjU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5vJyBmYWlsZWQKbWFrZVs0XTog
KioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5vXSBFcnJvciAx
CnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9n
cHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBF
cnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJp
dmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9y
IDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJz
L2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6
MTY0OTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZl
cnNdIEVycm9yIDIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
