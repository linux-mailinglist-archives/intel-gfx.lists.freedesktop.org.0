Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 207C5108E4D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 13:55:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753B689F47;
	Mon, 25 Nov 2019 12:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E68689F45;
 Mon, 25 Nov 2019 12:55:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 261E4A011B;
 Mon, 25 Nov 2019 12:55:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 Nov 2019 12:55:36 -0000
Message-ID: <157468653615.15531.12072262714287069127@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191125105858.1718307-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191125105858.1718307-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Serialise_wi?=
 =?utf-8?q?th_engine-pm_around_requests_on_the_kernel=5Fcontext?=
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
M10gZHJtL2k5MTU6IFNlcmlhbGlzZSB3aXRoIGVuZ2luZS1wbSBhcm91bmQgcmVxdWVzdHMgb24g
dGhlIGtlcm5lbF9jb250ZXh0ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82OTk3NS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBj
aGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmEzNDlkYmIyOWRjNyBkcm0vaTkxNTogU2VyaWFsaXNl
IHdpdGggZW5naW5lLXBtIGFyb3VuZCByZXF1ZXN0cyBvbiB0aGUga2VybmVsX2NvbnRleHQKNmM1
MzkxOWM4YTdiIGRybS9pOTE1L2d0OiBBZGFwdCBlbmdpbmVfcGFyayBzeW5jaHJvbmlzYXRpb24g
cnVsZXMgZm9yIGVuZ2luZV9yZXRpcmUKNTcxMWMyMDE0ZmJkIGRybS9pOTE1L2d0OiBTY2hlZHVs
ZSByZXF1ZXN0IHJldGlyZW1lbnQgd2hlbiB0aW1lbGluZSBpZGxlcwotOjI5OiBFUlJPUjpHSVRf
Q09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1p
dCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgN2Uz
NGY0ZTRhYWQzICgiZHJtL2k5MTUvZ2VuOCs6IEFkZCBSQzYgQ1RYIGNvcnJ1cHRpb24gV0EiKScK
IzI5OiAKUmVmZXJlbmNlczogN2UzNGY0ZTRhYWQzICgiZHJtL2k5MTUvZ2VuOCs6IEFkZCBSQzYg
Q1RYIGNvcnJ1cHRpb24gV0EiKQoKLTozMDogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVz
ZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGEx
PiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDIyNDhhMjgzODRmZSAoImRybS9pOTE1
L2dlbjgrOiBBZGQgUkM2IENUWCBjb3JydXB0aW9uIFdBIiknCiMzMDogClJlZmVyZW5jZXM6IDIy
NDhhMjgzODRmZSAoImRybS9pOTE1L2dlbjgrOiBBZGQgUkM2IENUWCBjb3JydXB0aW9uIFdBIikK
CnRvdGFsOiAyIGVycm9ycywgMCB3YXJuaW5ncywgMCBjaGVja3MsIDE4OCBsaW5lcyBjaGVja2Vk
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
