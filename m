Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 029DB8A318
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 18:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3976E577;
	Mon, 12 Aug 2019 16:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9B0D6E573;
 Mon, 12 Aug 2019 16:13:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF353A363D;
 Mon, 12 Aug 2019 16:13:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 12 Aug 2019 16:13:27 -0000
Message-ID: <20190812161327.20592.44231@emeril.freedesktop.org>
References: <20190812154247.20508-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190812154247.20508-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_dma-buf/sw=5Fsync=3A_Synchronize_signal_vs_syncpt_free?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZG1hLWJ1Zi9zd19zeW5jOiBTeW5jaHJvbml6
ZSBzaWduYWwgdnMgc3luY3B0IGZyZWUKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzY1MDkyLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKODU3Y2VkMjk0MmU1IGRtYS1idWYvc3dfc3lu
YzogU3luY2hyb25pemUgc2lnbmFsIHZzIHN5bmNwdCBmcmVlCi06MjI6IFdBUk5JTkc6Q09NTUlU
X0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHBy
ZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMyMjogClJlZmVyZW5jZXM6IDBlMmY3
MzNhZGRiZiAoImRtYS1idWY6IG1ha2UgZG1hX2ZlbmNlIHN0cnVjdHVyZSBhIGJpdCBzbWFsbGVy
IHYyIikKCi06MjI6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBk
ZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGlu
ZT4iKScgLSBpZTogJ2NvbW1pdCAwZTJmNzMzYWRkYmYgKCJkbWEtYnVmOiBtYWtlIGRtYV9mZW5j
ZSBzdHJ1Y3R1cmUgYSBiaXQgc21hbGxlciB2MiIpJwojMjI6IApSZWZlcmVuY2VzOiAwZTJmNzMz
YWRkYmYgKCJkbWEtYnVmOiBtYWtlIGRtYV9mZW5jZSBzdHJ1Y3R1cmUgYSBiaXQgc21hbGxlciB2
MiIpCgp0b3RhbDogMSBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAyMiBsaW5lcyBjaGVj
a2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
