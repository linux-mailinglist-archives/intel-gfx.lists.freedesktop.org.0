Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C40993797B3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 21:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109576E8DB;
	Mon, 10 May 2021 19:27:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 313 seconds by postgrey-1.36 at gabe;
 Mon, 10 May 2021 19:27:33 UTC
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1073B6E8DA;
 Mon, 10 May 2021 19:27:32 +0000 (UTC)
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net
 [72.74.133.215]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 14AJM3dI013584
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 May 2021 15:22:05 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id F267215C3CD9; Mon, 10 May 2021 15:22:02 -0400 (EDT)
Date: Mon, 10 May 2021 15:22:02 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <YJmH2irxoRsyNudb@mit.edu>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
 <de6d1fa5b7934f4afd61370d9c58502bef588466.camel@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <de6d1fa5b7934f4afd61370d9c58502bef588466.camel@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 00/53] Get rid of UTF-8 chars that can be
 mapped as ASCII
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, x86@kernel.org,
 linux-acpi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, linux-ext4@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-sgx@vger.kernel.org,
 coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-rdma@vger.kernel.org, linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMTAsIDIwMjEgYXQgMDI6NDk6NDRQTSArMDEwMCwgRGF2aWQgV29vZGhvdXNl
IHdyb3RlOgo+IE9uIE1vbiwgMjAyMS0wNS0xMCBhdCAxMzo1NSArMDIwMCwgTWF1cm8gQ2FydmFs
aG8gQ2hlaGFiIHdyb3RlOgo+ID4gVGhpcyBwYXRjaCBzZXJpZXMgaXMgZG9pbmcgY29udmVyc2lv
biBvbmx5IHdoZW4gdXNpbmcgQVNDSUkgbWFrZXMKPiA+IG1vcmUgc2Vuc2UgdGhhbiB1c2luZyBV
VEYtOC4gCj4gPiAKPiA+IFNlZSwgYSBudW1iZXIgb2YgY29udmVydGVkIGRvY3VtZW50cyBlbmRl
ZCB3aXRoIHdlaXJkIGNoYXJhY3RlcnMKPiA+IGxpa2UgWkVSTyBXSURUSCBOTy1CUkVBSyBTUEFD
RSAoVStGRUZGKSBjaGFyYWN0ZXIuIFRoaXMgc3BlY2lmaWMKPiA+IGNoYXJhY3RlciBkb2Vzbid0
IGRvIGFueSBnb29kLgo+ID4gCj4gPiBPdGhlcnMgdXNlIE5PLUJSRUFLIFNQQUNFIChVK0EwKSBp
bnN0ZWFkIG9mIDB4MjAuIEhhcm1sZXNzLCB1bnRpbAo+ID4gc29tZW9uZSB0cmllcyB0byB1c2Ug
Z3JlcFsxXS4KPiAKPiBSZXBsYWNpbmcgdGhvc2UgbWFrZXMgc2Vuc2UuIEJ1dCByZXBsYWNpbmcg
ZW1kYXNoZXMg4oCUIHdoaWNoIGFyZSBhCj4gZGlzdGluY3QgY2hhcmFjdGVyIHRoYXQgaGFzIG5v
IGRpcmVjdCByZXBsYWNlbWVudCBpbiBBU0NJSSBhbmQgd2hpY2gKPiBwZW9wbGUgZG8gKmRlbGli
ZXJhdGVseSogdXNlIGluc3RlYWQgb2YgaHlwaGVuLW1pbnVzIOKAlCBkb2VzIG5vdC4KCkkgcmVn
dWxhcmx5IHVzZSAtLS0gZm9yIGVtLWRhc2hlcyBhbmQgLS0gZm9yIGVuLWRhc2hlcy4gIE1hcmtk
b3duIHdpbGwKYXV0b21hdGljYWxseSB0cmFuc2xhdGUgMyBBU0NJSSBoeXBlbnMgdG8gZW0tZGFz
aGVzLCBhbmQgMiBBU0NJSQpoeXBoZW5zIHRvIGVuLWRhc2hlcy4gIEl0J3MgbXVjaCwgbXVjaCBl
YXNpZXIgZm9yIG1lIHRvIHR5cGUgMiBvciAzCmh5cGVucyBpbnRvIG15IHRleHQgZWRpdG9yIG9m
IGNob2ljZSB0aGFuIHRyeWluZyB0byBlbnRlciB0aGUgVVRGLTgKY2hhcmFjdGVycy4gIElmIHdl
IGNhbiBtYWtlIHNwaGlueCBkbyB0aGlzIHRyYW5zbGF0aW9uLCBtYXliZSB0aGF0J3MKdGhlIGJl
c3Qgd2F5IG9mIGRlYWxpbmcgd2l0aCB0aGVzZSB0d28gY2hhcmFjdGVycz8KCkNoZWVycywKCgkJ
CQkJLSBUZWQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
