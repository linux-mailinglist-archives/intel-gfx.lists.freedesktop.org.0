Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 529444B783
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 13:56:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9DA6E379;
	Wed, 19 Jun 2019 11:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D57146E378;
 Wed, 19 Jun 2019 11:56:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDDC3A011A;
 Wed, 19 Jun 2019 11:56:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 19 Jun 2019 11:56:46 -0000
Message-ID: <20190619115646.18134.82789@emeril.freedesktop.org>
References: <20190619112341.9082-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190619112341.9082-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/7=5D_drm/i915/gtt=3A_Defer_address_spa?=
 =?utf-8?q?ce_cleanup_to_an_RCU_worker?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvN10g
ZHJtL2k5MTUvZ3R0OiBEZWZlciBhZGRyZXNzIHNwYWNlIGNsZWFudXAgdG8gYW4gUkNVIHdvcmtl
cgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjIzODIv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0t
dGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS9ndHQ6IERlZmVyIGFk
ZHJlc3Mgc3BhY2UgY2xlYW51cCB0byBhbiBSQ1Ugd29ya2VyCisuL2luY2x1ZGUvdWFwaS9saW51
eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20g
Y29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21lcyAwKQoKQ29tbWl0OiBkcm0v
aTkxNTogVHJhY2sgaTkxNV9hY3RpdmUgdXNpbmcgZGVidWdvYmplY3RzCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiBTaWduYWwgZmVuY2UgY29tcGxldGlvbiBmcm9tIGk5MTVfcmVxdWVzdF93YWl0
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZW1vdmUgd2FpdGluZyAmIHJldGlyaW5nIGZyb20g
c2hyaW5rZXIgcGF0aHMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFRocm93IGF3YXkgdGhlIGFj
dGl2ZSBvYmplY3QgcmV0aXJlbWVudCBjb21wbGV4aXR5Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1
OiBQcm92aWRlIGFuIGk5MTVfYWN0aXZlLmFjcXVpcmUgY2FsbGJhY2sKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTU6IFB1c2ggdGhlIGk5MTVfYWN0aXZlLnJldGlyZSBpbnRvIGEgd29ya2VyCk9rYXkh
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
