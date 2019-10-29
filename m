Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB26E87CE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 13:12:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9DC6E248;
	Tue, 29 Oct 2019 12:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBF766E248;
 Tue, 29 Oct 2019 12:12:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B63EEA0138;
 Tue, 29 Oct 2019 12:12:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 29 Oct 2019 12:12:33 -0000
Message-ID: <20191029121233.12911.61990@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191029102851.7497-1-matthew.auld@intel.com>
In-Reply-To: <20191029102851.7497-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5Bv2=2C1/7=5D_drm/i915=3A_define_i915=5Fggt?=
 =?utf-8?q?t=5Fhas=5Faperture?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
N10gZHJtL2k5MTU6IGRlZmluZSBpOTE1X2dndHRfaGFzX2FwZXJ0dXJlClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODcxMC8KU3RhdGUgOiBmYWlsdXJl
Cgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTU6IGRlZmluZSBpOTE1X2dndHRfaGFz
X2FwZXJ0dXJlClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4K
TQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaApGYWxsaW5nIGJhY2sgdG8gcGF0
Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5oCkNPTkZMSUNUIChjb250ZW50KTogTWVyZ2UgY29uZmxpY3Qg
aW4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKZXJyb3I6IEZhaWxlZCB0byBt
ZXJnZSBpbiB0aGUgY2hhbmdlcy4KaGludDogVXNlICdnaXQgYW0gLS1zaG93LWN1cnJlbnQtcGF0
Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoClBhdGNoIGZhaWxlZCBhdCAwMDAxIGRybS9pOTE1
OiBkZWZpbmUgaTkxNV9nZ3R0X2hhc19hcGVydHVyZQpXaGVuIHlvdSBoYXZlIHJlc29sdmVkIHRo
aXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8gc2tp
cCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3RvcmUgdGhl
IG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
