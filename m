Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BCBC40A3
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 21:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A7B46E2C4;
	Tue,  1 Oct 2019 19:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 376926E2C4;
 Tue,  1 Oct 2019 19:08:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EEE3A0073;
 Tue,  1 Oct 2019 19:08:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Tue, 01 Oct 2019 19:08:48 -0000
Message-ID: <20191001190848.21993.6274@emeril.freedesktop.org>
References: <20191001143738.16573-1-janusz.krzysztofik@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191001143738.16573-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Conclude_load_-=3E_probe_naming_convention_switc?=
 =?utf-8?q?h?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IENvbmNsdWRlIGxvYWQgLT4g
cHJvYmUgbmFtaW5nIGNvbnZlbnRpb24gc3dpdGNoClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzQ1NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmYyM2JhMGNlYzIwMiBkcm0vaTkx
NTogRml4IGk5MTVfaW5qZWN0X2xvYWRfZXJyb3IoKSBuYW1lIHRvIHJlYWQgKl9wcm9iZV8qCi06
MTE6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlv
biBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBp
ZTogJ2NvbW1pdCBmMmRiNTNmMTRkM2QgKCJkcm0vaTkxNTogUmVwbGFjZSAiX2xvYWQiIHdpdGgg
Il9wcm9iZSIgY29uc2VxdWVudGx5IiknCiMxMTogCmVzdGFibGlzaGVkIGJ5IGNvbW1pdCBmMmRi
NTNmMTRkM2QgKCJkcm0vaTkxNTogUmVwbGFjZSAiX2xvYWQiIHdpdGgKCnRvdGFsOiAxIGVycm9y
cywgMCB3YXJuaW5ncywgMCBjaGVja3MsIDE1OCBsaW5lcyBjaGVja2VkCjk5ZGRkMWU2M2E5ZiBk
cm0vaTkxNTogUmVuYW1lICJpbmplY3RfbG9hZF9mYWlsdXJlIiBtb2R1bGUgcGFyYW1ldGVyCi06
OTogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9u
IHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAtIGll
OiAnQ29tbWl0IGYyZGI1M2YxNGQzZCAoImRybS9pOTE1OiBSZXBsYWNlICJfbG9hZCIgd2l0aCAi
X3Byb2JlIiBjb25zZXF1ZW50bHkiKScKIzk6IApDb21taXQgZjJkYjUzZjE0ZDNkICgiZHJtL2k5
MTU6IFJlcGxhY2UgIl9sb2FkIiB3aXRoICJfcHJvYmUiCgotOjM0OiBDSEVDSzpQQVJFTlRIRVNJ
U19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMzQ6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmM6MTY5OgoraTkxNV9wYXJh
bV9uYW1lZF91bnNhZmUoaW5qZWN0X3Byb2JlX2ZhaWx1cmUsIHVpbnQsIDA0MDAsCiAJIkZvcmNl
IGFuIGVycm9yIGFmdGVyIGEgbnVtYmVyIG9mIGZhaWx1cmUgY2hlY2sgcG9pbnRzICgwOmRpc2Fi
bGVkIChkZWZhdWx0KSwgTjpmb3JjZSBmYWlsdXJlIGF0IHRoZSBOdGggZmFpbHVyZSBjaGVjayBw
b2ludCkiKTsKCnRvdGFsOiAxIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDQzIGxpbmVz
IGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
