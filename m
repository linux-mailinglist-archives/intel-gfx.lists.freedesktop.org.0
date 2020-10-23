Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF1B297313
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 18:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F057A6F8B0;
	Fri, 23 Oct 2020 16:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97156F8B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 16:02:14 +0000 (UTC)
Date: Fri, 23 Oct 2020 16:02:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail2; t=1603468931;
 bh=nXSAlK8UrJiaG16jQkahBCPbIJiUcfyiYcToFFPWldo=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=BBgZ/nUI3NA4LLj0XVLbCr7IXHUAAEOaYtUQsx3SObUMAMzjDcaFOjLDoylEkNySY
 yGNTKAt/5v1X+fK/vqwOfUbpTb7Rne1E5wRgOjBTpC+QG1lnrjy5hhK+4rxwoUq2yf
 5UApw14a10Xa3oU1CScgO47vaZIBAce1EAVaFxaUaRMeuAqaDZhdTqwoAawN7nzsZa
 J5dTaeLaVlr/aLGYBmQ0xq6ns4oLmcPjmVqL+r53i56ke8qJDNe1Mqxk06p87caBHu
 RfLlM9/r/9mVs8WH0I7AU28tmzi44V2pzAoPLUBIKkISzzZTVb38qG6B+CSvnRZzCf
 g5Fm7ZvKyuT5g==
To: =?utf-8?Q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <X9esEo-xzBmrNZ9Y-H6RJrhH6Y8UNavk58gdBtmbHKmMLNnVIoCq3g-h8boShQUBWYta6AgzqEc6eNSyXjweZ3F4EVfCtLMa5ySdJmQ60C8=@emersion.fr>
In-Reply-To: <20201023152719.GV6112@intel.com>
References: <47527cdb-2eda-b5a3-d77c-3855b91a0b61@infradead.org>
 <20201022101423.GI6112@intel.com>
 <BaLsmzqZNUi-nVbYiLstRgspKGlLahAI8vM2_NPfos2PxM0N9lycj-Zn5TdqNtEHB-jeWgmzw9EHJxq4H5552tVi4bAZXTLnP0y1QsTPFtY=@emersion.fr>
 <20201023152719.GV6112@intel.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] drm_modes: signed integer overflow
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Randy Dunlap <rdunlap@infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Pekka Paalanen <ppaalanen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpZGF5LCBPY3RvYmVyIDIzLCAyMDIwIDU6MjcgUE0sIFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgoKPiBUaGVzZSBhcmUgdHdvIGV4dHJl
bWUgY2FzZXM6CgpUaGFua3MhCgo+ID4gSSdtIHRyeWluZyB0byBnZXQKPiA+IGEgZml4IGZvciBt
eSB1c2VyLXNwYWNlIDEsIGFuZCBJJ20gd29uZGVyaW5nIGlmIGludDMyX3QgaXMgZW5vdWdoCj4g
PiBhZnRlciBkaXZpZGluZyBieSBtb2RlLT5odG90YWwuCj4gPiBDQyBQZWtrYSwganVzdCBGWUkg
KEkgdGhpbmsgV2VzdG9uIGhhcyBzaW1pbGFyIGNvZGUpLgo+Cj4gV2hhdCdzIHdpdGggdGhvc2Ug
MTAwMDAwMExMIGNvbnN0YW50cz8gQXJlIHlvdSBzdG9yaW5nCj4gY2xvY2sgaW4gSHogdW5pdHM/
CgpXZSdyZSBzdG9yaW5nIHRoZSB2ZXJ0aWNhbCByZWZyZXNoIHJhdGUgaW4gbUh6IChtaWxsaS1I
ZXJ0eikuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
