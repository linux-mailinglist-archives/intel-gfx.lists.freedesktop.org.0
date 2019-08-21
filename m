Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C85985BE
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 22:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DEC2890C2;
	Wed, 21 Aug 2019 20:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D2FA088F58;
 Wed, 21 Aug 2019 20:39:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAA78A66C9;
 Wed, 21 Aug 2019 20:39:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 21 Aug 2019 20:39:32 -0000
Message-ID: <20190821203932.4278.87471@emeril.freedesktop.org>
References: <20190821201253.22885-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190821201253.22885-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_dma-fence=3A_Serialise_signal_enabling_=28dma=5Ffence=5Fenab?=
 =?utf-8?q?le=5Fsw=5Fsignaling=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZG1hLWZlbmNlOiBTZXJpYWxpc2Ugc2lnbmFs
IGVuYWJsaW5nIChkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZykKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1NTcwLwpTdGF0ZSA6IHdhcm5pbmcK
Cj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKY2YxM2MwZjI1
ZmYyIGRtYS1mZW5jZTogU2VyaWFsaXNlIHNpZ25hbCBlbmFibGluZyAoZG1hX2ZlbmNlX2VuYWJs
ZV9zd19zaWduYWxpbmcpCi06MTQ6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0
IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8
dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCAwZmM4OWI2ODAyYmEgKCJkbWEtZmVuY2U6IFNp
bXBseSB3cmFwIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkIHdpdGggZG1hX2ZlbmNlX3NpZ25hbCIp
JwojMTQ6IApTZWUgYWxzbyAwZmM4OWI2ODAyYmEgKCJkbWEtZmVuY2U6IFNpbXBseSB3cmFwIGRt
YV9mZW5jZV9zaWduYWxfbG9ja2VkCgp0b3RhbDogMSBlcnJvcnMsIDAgd2FybmluZ3MsIDAgY2hl
Y2tzLCAyNCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
