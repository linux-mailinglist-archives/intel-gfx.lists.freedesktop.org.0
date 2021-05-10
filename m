Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41869378FDC
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 16:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920C16E4A5;
	Mon, 10 May 2021 14:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C0F6E10B;
 Mon, 10 May 2021 11:20:01 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CC8EA6101E;
 Mon, 10 May 2021 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620645601;
 bh=W7iAKST7BRDMlEttXNNjJ33EX76A4qp8I6GEgdSMv7U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gmDmb0dM5IcZQ9rSlubjtF+K7WR5CTuBYzK7hGG8NgJ6VoZl1xWTpOcwkH/5/0zA/
 vlx1VxEGYzpDqoIrEOS4Gq4vleDywsH/Tbkz7KjwQOxa0gHoTz3ZfhQBobu6oYwUNn
 Apktwvurhr0XmVvzqYbUbTW3FMnBkgNdhIrbGi6F2SzZTvdCwG1IcEdUG7Tg53VOjZ
 rsHYuTEPmzH2qPOyCxJC2wx/q7V+K8nhKe4JHOwCkQGI9ADck3Kw17WLNRkmbFOBip
 a9pcqsOJVVBc05NJGVPFoJfSO03eP8zjvIV4wRYaZYLrBIVfbDQLgQs1bXlcp7w7lK
 9KVTRb7Ve04dg==
Date: Mon, 10 May 2021 13:19:50 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <20210510131950.063f0608@coco.lan>
In-Reply-To: <c4479ced-f4d8-1a1e-ee54-9abc55344187@leemhuis.info>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <c4479ced-f4d8-1a1e-ee54-9abc55344187@leemhuis.info>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 10 May 2021 14:05:26 +0000
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
 linux-rdma@vger.kernel.org, x86@kernel.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-sgx@vger.kernel.org, coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW0gTW9uLCAxMCBNYXkgMjAyMSAxMjo1Mjo0NCArMDIwMApUaG9yc3RlbiBMZWVtaHVpcyA8bGlu
dXhAbGVlbWh1aXMuaW5mbz4gZXNjcmV2ZXU6Cgo+IE9uIDEwLjA1LjIxIDEyOjI2LCBNYXVybyBD
YXJ2YWxobyBDaGVoYWIgd3JvdGU6Cj4gPgo+ID4gQXMgTGludXggZGV2ZWxvcGVycyBhcmUgYWxs
IGFyb3VuZCB0aGUgZ2xvYmUsIGFuZCBub3QgZXZlcnlib2R5IGhhcyBVVEYtOAo+ID4gYXMgdGhl
aXIgZGVmYXVsdCBjaGFyc2V0LCBiZXR0ZXIgdG8gdXNlIFVURi04IG9ubHkgb24gY2FzZXMgd2hl
cmUgaXQgaXMgcmVhbGx5Cj4gPiBuZWVkZWQuCj4gPiBb4oCmXQo+ID4gVGhlIHJlbWFpbmluZyBw
YXRjaGVzIG9uIHNlcmllcyBhZGRyZXNzIHN1Y2ggY2FzZXMgb24gKi5yc3QgZmlsZXMgYW5kIAo+
ID4gaW5zaWRlIHRoZSBEb2N1bWVudGF0aW9uL0FCSSwgdXNpbmcgdGhpcyBwZXJsIG1hcCB0YWJs
ZSBpbiBvcmRlciB0byBkbyB0aGUKPiA+IGNoYXJzZXQgY29udmVyc2lvbjoKPiA+IAo+ID4gbXkg
JWNoYXJfbWFwID0gKAo+ID4gW+KApl0KPiA+IAkweDIwMTMgPT4gJy0nLAkJIyBFTiBEQVNICj4g
PiAJMHgyMDE0ID0+ICctJywJCSMgRU0gREFTSCAgCgoKPiBJIG1pZ2h0IGJlIHBlcmZvcm1pbmcg
YmlrZSBzaGVkZGluZyBoZXJlLCBidXQgd291bGRuJ3QgaXQgYmUgYmV0dGVyIHRvCj4gcmVwbGFj
ZSB0aG9zZSB0d28gd2l0aCAiLS0iLCBhcyBleHBsYWluZWQgaW4KPiBodHRwczovL2VuLndpa2lw
ZWRpYS5vcmcvd2lraS9EYXNoI0FwcHJveGltYXRpbmdfdGhlX2VtX2Rhc2hfd2l0aF90d29fb3Jf
dGhyZWVfaHlwaGVucwo+IAo+IEZvciBFTSBEQVNIIHRoZXJlIHNlZW1zIHRvIGJlIGV2ZW4gIi0t
LSIsIGJ1dCBJJ2Qgc2F5IHRoYXQgaXMgYSBiaXQgdG9vCj4gbXVjaC4KClllYWgsIHdlIGNhbiBk
bywgaW5zdGVhZDoKCiAJMHgyMDEzID0+ICctLScsCQkjIEVOIERBU0gKIAkweDIwMTQgPT4gJy0t
LScsCSMgRU0gREFTSCAgCgpJIHdhcyBhY3R1YWxseSBpbiBkb3VidCBhYm91dCB0aG9zZSA7LSkK
CkJ0dywgd2hlbiBwcm9kdWNpbmcgSFRNTCBkb2N1bWVudGF0aW9uLCAgU3BoaW54IHNob3VsZCBj
b252ZXJ0OgoJLS0gaW50byBFTiBEQVNICmFuZDoKCS0tLSBpbnRvIEVNIERBU0gKClNvLCB0aGUg
cmVzdWx0aW5nIGh0bWwgd2lsbCBiZSBpZGVudGljYWwuCgo+IE9yIGRvIHlvdSBmZWFyIHRoZSBl
eHRyYSB3b3JrIGFzIHNvbWUgbGluZXMgdGhlbiBtaWdodCBicmVhayB0aGUKPiA4MC1jaGFyYWN0
ZXIgbGltaXQgdGhlbj8KCk5vLCBJIHN1c3BlY3QgdGhhdCB0aGUgbGluZSBzaXplIHdvbid0IGJl
IGFuIGlzc3VlLiBTb21lIGNhcmUgc2hvdWxkCnRha2VuIHdoZW4gRU4gREFTSCBhbmQgRU0gREFT
SCBhcmUgdXNlZCBpbnNpZGUgdGFibGVzLgoKVGhhbmtzLApNYXVybwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
