Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C40239F4BD
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 13:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D68589E59;
	Tue,  8 Jun 2021 11:14:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 540 seconds by postgrey-1.36 at gabe;
 Tue, 08 Jun 2021 11:14:40 UTC
Received: from mail.skyhub.de (mail.skyhub.de [IPv6:2a01:4f8:190:11c2::b:1457])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB1689E59
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 11:14:40 +0000 (UTC)
Received: from zn.tnic (p200300ec2f0bc9005757c3be7e9afbb5.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0b:c900:5757:c3be:7e9a:fbb5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5339F1EC0372;
 Tue,  8 Jun 2021 13:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1623150336;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Tptv5R2O4++9arBhqo4vA/gxF4NFTDqfyk2A73tAXV8=;
 b=Dk4dkSEHHGJJStgdJkCx7ddqjM+BLA5gS6/eB/WyZo3WV0dp4uJ5hDnWN21fLxGoGo0ODE
 zkO3D+8vLVWkD4pM2U8ATMkDwpSBcO0g0aYMB1Cxn4aX1SpCsKsY0PFgW7wNq+bRJGR968
 j9+ggt/WwGhhCBlh1JEXiOncXir6Nnc=
Date: Tue, 8 Jun 2021 13:05:29 +0200
From: Borislav Petkov <bp@alien8.de>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <YL9O+Tfly7LHcudb@zn.tnic>
References: <20210608053411.394166-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210608053411.394166-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3] x86/gpu: add JasperLake to gen11 early
 quirks
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
Cc: intel-gfx@lists.freedesktop.org, x86@kernel.org, mingo@redhat.com,
 hpa@zytor.com, tglx@linutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMDgsIDIwMjEgYXQgMTE6MDQ6MTFBTSArMDUzMCwgVGVqYXMgVXBhZGh5YXkg
d3JvdGU6Cj4gTGV0J3MgcmVzZXJ2ZSBKU0wgc3RvbGVuIG1lbW9yeSBmb3IgZ3JhcGhpY3MuCj4g
Cj4gSmFzcGVyTGFrZSBpcyBhIGdlbjExIHBsYXRmb3JtIHdoaWNoIGlzIGNvbXBhdGlibGUgd2l0
aAo+IElDTC9FSEwgY2hhbmdlcy4KPiAKPiBSZXF1aXJlZCBkdWUgdG8gYmVsb3cgcmVmZXJlbmNl
IHBhdGNoOgo+IAo+IGNvbW1pdCAyNGVhMDk4YjdjMGQ4MGI1NmQ2MmEyMDA2MDhlMGIwMjkwNTZi
YWY2Cj4gZHJtL2k5MTUvanNsOiBTcGxpdCBFSEwvSlNMIHBsYXRmb3JtIGluZm8gYW5kIFBDSSBp
ZHMKPiAKPiBWMjoKPiAgICAgLSBBZGRlZCBtYWludGFpbmVyIGxpc3QgaW4gY2MKPiAgICAgLSBB
ZGRlZCBwYXRjaCByZWYgaW4gY29tbWl0IG1lc3NhZ2UKPiBWMToKPiAgICAgLSBBZGRlZCBDYzog
eDg2QGtlcm5lbC5vcmcKPiAKPiBDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXgu
ZGU+Cj4gQ2M6IEluZ28gTW9sbmFyIDxtaW5nb0ByZWRoYXQuY29tPgo+IENjOiBCb3Jpc2xhdiBQ
ZXRrb3YgPGJwQGFsaWVuOC5kZT4KPiBDYzogIkguIFBldGVyIEFudmluIiA8aHBhQHp5dG9yLmNv
bT4KPiBDYzogeDg2QGtlcm5lbC5vcmcKPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGVqYXMgVXBhZGh5YXkgPHRlamFz
a3VtYXJ4LnN1cmVuZHJha3VtYXIudXBhZGh5YXlAaW50ZWwuY29tPgo+IC0tLQo+ICBhcmNoL3g4
Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYyBi
L2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYwo+IGluZGV4IGI1NTNmZmU5Yjk4NS4uMzg4
MzdkYWQ0NmU2IDEwMDY0NAo+IC0tLSBhL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYwo+
ICsrKyBiL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYwo+IEBAIC01NDksNiArNTQ5LDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkIGludGVsX2Vhcmx5X2lkc1tdIF9f
aW5pdGNvbnN0ID0gewo+ICAJSU5URUxfQ05MX0lEUygmZ2VuOV9lYXJseV9vcHMpLAo+ICAJSU5U
RUxfSUNMXzExX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKPiAgCUlOVEVMX0VITF9JRFMoJmdlbjEx
X2Vhcmx5X29wcyksCj4gKwlJTlRFTF9KU0xfSURTKCZnZW4xMV9lYXJseV9vcHMpLAo+ICAJSU5U
RUxfVEdMXzEyX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKPiAgCUlOVEVMX1JLTF9JRFMoJmdlbjEx
X2Vhcmx5X29wcyksCj4gIAlJTlRFTF9BRExTX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKPiAtLSAK
Ckkgc2VlIGl0IGhhcyBiZWVuIGFwcGxpZWQgYWxyZWFkeS4gUmVnYXJkbGVzczoKCkFja2VkLWJ5
OiBCb3Jpc2xhdiBQZXRrb3YgPGJwQHN1c2UuZGU+CgotLSAKUmVnYXJkcy9HcnVzcywKICAgIEJv
cmlzLgoKaHR0cHM6Ly9wZW9wbGUua2VybmVsLm9yZy90Z2x4L25vdGVzLWFib3V0LW5ldGlxdWV0
dGUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
