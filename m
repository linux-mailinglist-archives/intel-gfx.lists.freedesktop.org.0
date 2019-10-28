Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CD9E791C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 20:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2C86E13F;
	Mon, 28 Oct 2019 19:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 515C56E13F;
 Mon, 28 Oct 2019 19:17:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A508A0088;
 Mon, 28 Oct 2019 19:17:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 28 Oct 2019 19:17:05 -0000
Message-ID: <20191028191705.26857.33568@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191028150047.22048-1-jani.nikula@intel.com>
In-Reply-To: <20191028150047.22048-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=2C1/5=5D_drm/dsi=3A_clean_up_DSI_?=
 =?utf-8?q?data_type_definitions?=
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
NV0gZHJtL2RzaTogY2xlYW4gdXAgRFNJIGRhdGEgdHlwZSBkZWZpbml0aW9ucwpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg2NjQvClN0YXRlIDogd2Fy
bmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApiNDhl
OTlkYjcyMmIgZHJtL2RzaTogY2xlYW4gdXAgRFNJIGRhdGEgdHlwZSBkZWZpbml0aW9ucwoxZTcw
MjI2OTAzNjQgZHJtL2RzaTogYWRkIG1pc3NpbmcgRFNJIGRhdGEgdHlwZXMKNDk2ZGM5NzcwODll
IGRybS9kc2k6IGFkZCBtaXNzaW5nIERTSSBEQ1MgY29tbWFuZHMKNDQ3M2NkNzBlZTcxIGRybS9k
c2k6IHJlbmFtZSBNSVBJX0RDU19TRVRfUEFSVElBTF9BUkVBIHRvIE1JUElfRENTX1NFVF9QQVJU
SUFMX1JPV1MKLTozODogV0FSTklORzpMT05HX0xJTkVfQ09NTUVOVDogbGluZSBvdmVyIDEwMCBj
aGFyYWN0ZXJzCiMzODogRklMRTogaW5jbHVkZS92aWRlby9taXBpX2Rpc3BsYXkuaDoxMTE6CisJ
TUlQSV9EQ1NfU0VUX1BBUlRJQUxfUk9XUwk9IDB4MzAsCQkvKiBNSVBJIERDUyAxLjAyIC0gTUlQ
SV9EQ1NfU0VUX1BBUlRJQUxfQVJFQSBiZWZvcmUgdGhhdCAqLwoKdG90YWw6IDAgZXJyb3JzLCAx
IHdhcm5pbmdzLCAwIGNoZWNrcywgMTYgbGluZXMgY2hlY2tlZAoxN2NhYmQwMGRhYmMgZHJtL2Rz
aTogYWRkIGhlbHBlcnMgZm9yIERTSSBjb21wcmVzc2lvbiBtb2RlIGFuZCBQUFMgcGFja2V0cwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
