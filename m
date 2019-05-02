Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE94911405
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 09:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB248924C;
	Thu,  2 May 2019 07:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8EF058924C;
 Thu,  2 May 2019 07:18:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86443A00A0;
 Thu,  2 May 2019 07:18:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Thu, 02 May 2019 07:18:02 -0000
Message-ID: <20190502071802.26884.79429@emeril.freedesktop.org>
References: <1556778847-7796-1-git-send-email-vandita.kulkarni@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1556778847-7796-1-git-send-email-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv3=2C1/4=5D_drm/i915=3A_Fix_the_pipe?=
 =?utf-8?q?_state_timing_mismatch_warnings?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YzLDEv
NF0gZHJtL2k5MTU6IEZpeCB0aGUgcGlwZSBzdGF0ZSB0aW1pbmcgbWlzbWF0Y2ggd2FybmluZ3MK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwMTg2LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2Ry
bS10aXAKNGY0MTY2ZDUzNDVjIGRybS9pOTE1OiBGaXggdGhlIHBpcGUgc3RhdGUgdGltaW5nIG1p
c21hdGNoIHdhcm5pbmdzCi06NDg6IENIRUNLOkJSQUNFUzogQmxhbmsgbGluZXMgYXJlbid0IG5l
Y2Vzc2FyeSBiZWZvcmUgYSBjbG9zZSBicmFjZSAnfScKIzQ4OiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pY2xfZHNpLmM6MTIyMzoKKworfQoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdz
LCAxIGNoZWNrcywgNDEgbGluZXMgY2hlY2tlZAphY2I0NmU2ZWYzNjUgZHJtL2k5MTU6IFJlZmFj
dG9yIGJkd19nZXRfcGlwZW1pc2NfYnBwCjM4N2JhODMzNDI5YyBkcm0vaTkxNTogRml4IHBpcGUg
Y29uZmlnIG1pc21hdGNoIGZvciBicHAsIG91dHB1dCBmb3JtYXQKMjUzOGUyZDQxZjVlIGRybS9p
OTE1OiBGaXggcGl4ZWwgY2xvY2sgYW5kIGNydGMgY2xvY2sgY29uZmlnIG1pc21hdGNoCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
