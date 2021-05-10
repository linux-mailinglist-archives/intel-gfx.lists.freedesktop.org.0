Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC8F37A652
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 14:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D96CF6EA23;
	Tue, 11 May 2021 12:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1918 seconds by postgrey-1.36 at gabe;
 Mon, 10 May 2021 22:33:46 UTC
Received: from tartarus.angband.pl (tartarus.angband.pl [51.83.246.204])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26CE46E944;
 Mon, 10 May 2021 22:33:46 +0000 (UTC)
Received: from kilobyte by tartarus.angband.pl with local (Exim 4.94.2)
 (envelope-from <kilobyte@angband.pl>)
 id 1lgDtp-00EKjz-Lm; Mon, 10 May 2021 23:57:13 +0200
Date: Mon, 10 May 2021 23:57:13 +0200
From: Adam Borowski <kilobyte@angband.pl>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <YJmsOYzPIsQ04Zxb@angband.pl>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1620641727.git.mchehab+huawei@kernel.org>
X-Junkbait: aaron@angband.pl, zzyx@angband.pl
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: kilobyte@angband.pl
X-SA-Exim-Scanned: No (on tartarus.angband.pl); SAEximRunCond expanded to false
X-Mailman-Approved-At: Tue, 11 May 2021 12:09:59 +0000
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

T24gTW9uLCBNYXkgMTAsIDIwMjEgYXQgMTI6MjY6MTJQTSArMDIwMCwgTWF1cm8gQ2FydmFsaG8g
Q2hlaGFiIHdyb3RlOgo+IFRoZXJlIGFyZSBzZXZlcmFsIFVURi04IGNoYXJhY3RlcnMgYXQgdGhl
IEtlcm5lbCdzIGRvY3VtZW50YXRpb24uClsuLi5dCj4gT3RoZXIgVVRGLTggY2hhcmFjdGVycyB3
ZXJlIGFkZGVkIGFsb25nIHRoZSB0aW1lLCBidXQgdGhleSdyZSBlYXNpbHkKPiByZXBsYWNlYWJs
ZSBieSBBU0NJSSBjaGFycy4KPiAKPiBBcyBMaW51eCBkZXZlbG9wZXJzIGFyZSBhbGwgYXJvdW5k
IHRoZSBnbG9iZSwgYW5kIG5vdCBldmVyeWJvZHkgaGFzIFVURi04Cj4gYXMgdGhlaXIgZGVmYXVs
dCBjaGFyc2V0CgpJJ20gbm90IGF3YXJlIG9mIGEgZGlzdHJpYnV0aW9uIHRoYXQgc3RpbGwgYWxs
b3dzIHNlbGVjdGluZyBhIG5vbi1VVEYtOApjaGFyc2V0IGluIGEgbm9ybWFsIGZsb3cgaW4gdGhl
aXIgaW5zdGFsbGVyLiAgQW5kIGlmIHRoZXkgaGF2ZW4ndCBwdXJnZWQKc3VwcG9ydCBmb3IgYW5j
aWVudCBlbmNvZGluZ3MsIHRoYXQgc3VwcG9ydCBpcyB0aG9yb3VnaGx5IGJpdHJvdHRlbi4KVGh1
cywgSSBkaXNhZ3JlZSB0aGF0IHRoaXMgaXMgYSBsZWdpdGltYXRlIGNvbmNlcm4uCgpXaGF0IF9j
b3VsZF8gYmUgYSBsZWdpdGltYXRlIHJlYXNvbiBpcyB0aGF0IHNvbWVvbmUgaXMgb24gYSBfdGVy
bWluYWxfCnRoYXQgY2FuJ3QgZGlzcGxheSBhIHdpZGUgZW5vdWdoIHNldCBvZiBnbHlwaHMuICBT
dWNoIHRlcm1pbmFscyBhcmU6CiDigKIgTGludXggY29uc29sZSAoYmVjYXVzZSBvZiB2Z2Fjb24g
bGltaXRhdGlvbnM7IHBhdGNoc2V0cyB0byBpbXByb3ZlCiAgIG90aGVyIGNvbnMgaGF2ZW4ndCBi
ZWVuIG1haW5saW5lZCkKIOKAoiBzb21lIFdpbmRvd3MgdGVybWluYWxzIChwdXR0eSwgb2xkIFdp
bmRvd3MgY29uc29sZSkgdGhhdCBjYW4ndCBib3Jyb3cKICAgZ2x5cGhzIGZyb20gb3RoZXIgZm9u
dHMgbGlrZSBmb250Y29uZmlnIGNhbgoKRm9yIHRoZSBmb3JtZXIsIGl0J3Mgd2hhdGV2ZXIgeW91
ciBkaXN0cmlidXRpb24gc2hpcHMgaW4KL3Vzci9zaGFyZS9jb25zb2xlZm9udHMvIG9yIGFuIGVx
dWl2YWxlbnQsIHdoaWNoIGlzIGJhc2VkIG9uIGhpc3RvcmljCklTTy04ODU5IGFuZCBWVDEwMCB0
cmFkaXRpb25zLgoKRm9yIHRoZSBsYXR0ZXIsIHRoZSBuZWFyLWd1YXJhbnRlZWQgY2hhcmFjdGVy
IHNldCBpcyBXR0w0LgoKClRodXMsIGF0IGxlYXN0IHR3byBvZiB5b3VyIGNob2ljZXMgc2VlbSB0
byBkaXNhZ3JlZSB3aXRoIHRoZSBhYm92ZToKW2Ryb3BwZWRdCj4gCTB4ZDcgICA9PiAneCcsCQkj
IE1VTFRJUExJQ0FUSU9OIFNJR04KW3JldGFpbmVkXQo+IAktIFUrMmIwZCAoJ+KsjScpOiBVUCBE
T1dOIEJMQUNLIEFSUk9XCgrDlyBpcyBwcmVzZW50IGluIElTTy04ODU5LCBWMTAwLCBXR0w0OyBJ
J3ZlIGZvdW5kIG5vIGZvbnQgaW4KL3Vzci9zaGFyZS9jb25zb2xlZm9udHMvIG9uIG15IERlYmlh
biB1bnN0YWJsZSBib3ggdGhhdCBsYWNrcyB0aGlzCmNoYXJhY3Rlci4KCuKsjSBpcyBub3QgZm91
bmQgaW4gYW55IG9mIHRoZSBhYm92ZS4gIFlvdSBtaWdodCB3YW50IHRvIGF0IGxlYXN0CmNvbnZl
cnQgaXQgdG8g4oaVIHdoaWNoIGlzIGF0IGxlYXN0IHByZXNlbnQgaW4gV0dMNCwgYW5kIHRodXMg
bGlrZWx5CnRvIGJlIHN1cHBvcnRlZCBpbiBmb250cyBoZWVkaW5nIFdpbmRvd3MvTWFjL09wZW5U
eXBlIHJlY29tbWVuZGF0aW9ucy4KVGhhdCBzdGlsbCB3b24ndCBtYWtlIGl0IHdvcmsgb24gVlQu
CgoKTWVvdyEKLS0gCuKigOKjtOKgvuKgu+KituKjpuKggCAuLS1bIE1ha2VmaWxlIF0K4qO+4qCB
4qKg4qCS4qCA4qO/4qGBICMgYmV3YXJlIG9mIHJhY2VzCuKiv+KhhOKgmOKgt+KgmuKgi+KggCBh
bGw6IHBpbGxhZ2UgYnVybgrioIjioLPio4TioIDioIDioIDioIAgYC0tLS0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
