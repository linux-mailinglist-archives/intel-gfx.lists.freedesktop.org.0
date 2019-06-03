Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4D132F0E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 13:55:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0892089263;
	Mon,  3 Jun 2019 11:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF0C48925F;
 Mon,  3 Jun 2019 11:55:05 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 7AC9E284191
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Mon,  3 Jun 2019 12:54:48 +0100
Message-Id: <11db9a1438142d413ad228e6d1953463dfbb9236.1559562608.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/4] gitlab-ci: add libatomic to Fedora
 docker image
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGxpYmF0b21pYyB0byB0aGUgRmVkb3JhIGRvY2tlciBpbWFnZSBzbyBpdCBjYW4gbGluayBi
aW5hcmllcyB0aGF0CnVzZSBfX2F0b21pY18qIGZ1bmN0aW9ucy4KClNpZ25lZC1vZmYtYnk6IEd1
aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4KLS0tCiBEb2Nr
ZXJmaWxlLmZlZG9yYSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZmVkb3JhIGIvRG9ja2VyZmlsZS5m
ZWRvcmEKaW5kZXggNjY4NmU1ODc2MTNkLi5jODRiNDEyYjA3MjMgMTAwNjQ0Ci0tLSBhL0RvY2tl
cmZpbGUuZmVkb3JhCisrKyBiL0RvY2tlcmZpbGUuZmVkb3JhCkBAIC0xLDcgKzEsNyBAQAogRlJP
TSBmZWRvcmE6MzAKIAogUlVOIGRuZiBpbnN0YWxsIC15IFwKLQlnY2MgZmxleCBiaXNvbiBtZXNv
biBuaW5qYS1idWlsZCB4ZG90b29sIFwKKwlnY2MgZmxleCBiaXNvbiBsaWJhdG9taWMgbWVzb24g
bmluamEtYnVpbGQgeGRvdG9vbCBcCiAJJ3BrZ2NvbmZpZyhsaWJkcm0pJyBcCiAJJ3BrZ2NvbmZp
ZyhwY2lhY2Nlc3MpJyBcCiAJJ3BrZ2NvbmZpZyhsaWJrbW9kKScgXAotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
