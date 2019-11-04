Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02355EE5FE
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 18:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C27356E78B;
	Mon,  4 Nov 2019 17:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ackle.nomi.cz (ackle.nomi.cz [IPv6:2a01:430:1:1::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C946E78B
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 17:31:04 +0000 (UTC)
Received: from localhost (unknown
 [IPv6:2a02:8308:a03d:b400:3f23:631f:7f50:8a55])
 by ackle.nomi.cz (Postfix) with ESMTPSA id 91C9BA160B;
 Mon,  4 Nov 2019 18:31:01 +0100 (CET)
Date: Mon, 4 Nov 2019 18:31:01 +0100
From: Tomas Janousek <tomi@nomi.cz>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20191104173101.ugg77cwr4rdguzx6@notes.lisk.in>
References: <b31b8649-cb2d-890b-2d4d-881e47895ee6@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b31b8649-cb2d-890b-2d4d-881e47895ee6@molgen.mpg.de>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=nomi.cz; s=201904; 
 t=1572888661; bh=yZ8QHx6Jn7mHWh6no66HGyTrTgzeSBLiEMHqWT7L0Xo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fyKb+bxbPX+wibnMqLCBAvymI7w9BLIwunyOqShLQgTklVxXhO0gjocl9E/iuXL5/
 GQjmRdu18bRqW4ZeGnHBUnqpXhFDoo4ksEaCWUpHLBBlAilKy5vnX923T2ATHzgl5c
 +Yb6ivx/DoPD4X/ix7AtrCnvlvQtxLr/LgRzu8KDZXN/Iea9ol5TeJMcYpnEkjpJID
 P/h72jv8t5asJUMqq5HWLz7RHJzgUerzYexfYdt9MYndMQ+HPYzv72H/BiJ4YM7BQA
 Us0TuJMgPk8LqPL+FBzsacOi9So9+6q+GDpUTUI+H0p5DE9Jr6cDdR38xV0BTwtJdx
 qWuvSrVd+L0aQ==
Subject: Re: [Intel-gfx] snd_hda_intel 0000:00:1f.3: No response from codec,
 resetting bus: last cmd=
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
Cc: Mario Limonciello <mario.limonciello@dell.com>,
 Michael Jamet <michael.jamet@intel.com>, intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yehezkel Bernat <YehezkelShB@gmail.com>, Christian Kellner <ck@xatom.net>,
 Takashi Iwai <tiwai@suse.de>, Andreas Noever <andreas.noever@gmail.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgUGF1bCwKCk9uIE1vbiwgTm92IDA0LCAyMDE5IGF0IDAxOjU3OjU0UE0gKzAxMDAsIFBhdWwg
TWVuemVsIHdyb3RlOgo+IE9uIHRoZSBEZWxsIFhQUyAxMyA5MzgwIHdpdGggRGViaWFuIFNpZC91
bnN0YWJsZSB3aXRoIExpbnV4IDUuMy43Cj4gcmVzdW1pbmcwd2l0aCBEZWxs4oCZcyBUaHVuZGVy
Ym9sdCBUQjE2IGRvY2sgY29ubmVjdGVkLCBMaW51eCBzcGV3cwo+IHRoZSBlcnJvcnMgYmVsb3cu
Cj4gCj4gYGBgCj4gWyAgICAwLjAwMDAwMF0gTGludXggdmVyc2lvbiA1LjMuMC0xLWFtZDY0IChk
ZWJpYW4ta2VybmVsQGxpc3RzLmRlYmlhbi5vcmcpIChnY2MgdmVyc2lvbiA5LjIuMSAyMDE5MTAw
OCAoRGViaWFuIDkuMi4xLTkpKSAjMSBTTVAgRGViaWFuIDUuMy43LTEgKDIwMTktMTAtMTkpCj4g
W+KApl0KPiBbICAgIDEuNTk2NjE5XSBwY2kgMDAwMDowMDoxZi4zOiBBZGRpbmcgdG8gaW9tbXUg
Z3JvdXAgMTIKPiBbICAgMTQuNTM2Mjc0XSBzbmRfaGRhX2ludGVsIDAwMDA6MDA6MWYuMzogZW5h
YmxpbmcgZGV2aWNlICgwMDAwIC0+IDAwMDIpCj4gWyAgIDE0LjU0NDEwMF0gc25kX2hkYV9pbnRl
bCAwMDAwOjAwOjFmLjM6IGJvdW5kIDAwMDA6MDA6MDIuMCAob3BzIGk5MTVfYXVkaW9fY29tcG9u
ZW50X2JpbmRfb3BzIFtpOTE1XSkKPiBbICAgMTQuNzYwNzUxXSBpbnB1dDogSERBIEludGVsIFBD
SCBIZWFkcGhvbmUgTWljIGFzIC9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDoxZi4zL3NvdW5k
L2NhcmQwL2lucHV0MTYKPiBbICAgMTQuNzYwNzkwXSBpbnB1dDogSERBIEludGVsIFBDSCBIRE1J
IGFzIC9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDoxZi4zL3NvdW5kL2NhcmQwL2lucHV0MTcK
PiBbICAxNTYuNjE0Mjg0XSBzbmRfaGRhX2ludGVsIDAwMDA6MDA6MWYuMzogTm8gcmVzcG9uc2Ug
ZnJvbSBjb2RlYywgZGlzYWJsaW5nIE1TSTogbGFzdCBjbWQ9MHgyMDI3MDUwMwo+IFsgIDE1Ny42
MjIyMzJdIHNuZF9oZGFfaW50ZWwgMDAwMDowMDoxZi4zOiBObyByZXNwb25zZSBmcm9tIGNvZGVj
LCByZXNldHRpbmcgYnVzOiBsYXN0IGNtZD0weDIwMjcwNTAzCj4gWyAgMTU4LjYyNjM3MV0gc25k
X2hkYV9pbnRlbCAwMDAwOjAwOjFmLjM6IE5vIHJlc3BvbnNlIGZyb20gY29kZWMsIHJlc2V0dGlu
ZyBidXM6IGxhc3QgY21kPTB4MjAzNzA1MDMKPiBbICAxNTkuNjM0MTAyXSBzbmRfaGRhX2ludGVs
IDAwMDA6MDA6MWYuMzogTm8gcmVzcG9uc2UgZnJvbSBjb2RlYywgcmVzZXR0aW5nIGJ1czogbGFz
dCBjbWQ9MHgyMDFmMDUwMAo+IFsgIDE2MS42NzgxMjFdIHNuZF9oZGFfaW50ZWwgMDAwMDowMDox
Zi4zOiBObyByZXNwb25zZSBmcm9tIGNvZGVjLCByZXNldHRpbmcgYnVzOiBsYXN0IGNtZD0weDIw
MjcwNTAzCj4gWyAgMTYyLjY4MjI3Ml0gc25kX2hkYV9pbnRlbCAwMDAwOjAwOjFmLjM6IE5vIHJl
c3BvbnNlIGZyb20gY29kZWMsIHJlc2V0dGluZyBidXM6IGxhc3QgY21kPTB4MjAzNzA1MDMKPiBb
ICAxNjMuNjk0MjM0XSBzbmRfaGRhX2ludGVsIDAwMDA6MDA6MWYuMzogTm8gcmVzcG9uc2UgZnJv
bSBjb2RlYywgcmVzZXR0aW5nIGJ1czogbGFzdCBjbWQ9MHgyMDFmMDUwMAo+IFsgIDE2NS43MzAx
NDJdIHNuZF9oZGFfaW50ZWwgMDAwMDowMDoxZi4zOiBObyByZXNwb25zZSBmcm9tIGNvZGVjLCBy
ZXNldHRpbmcgYnVzOiBsYXN0IGNtZD0weDIwMjcwNTAzCj4gW+KApl0KPiBgYGAKCkRlYmlhbidz
IDUuMy4wLTEtYW1kNjQgaGFzIGEgY29ycnVwdGVkIHNpZ25hdHVyZSBvbiB0aGUgc25kLWhkYS1j
b2RlYy1oZG1pCm1vZHVsZSB3aGljaCBwcmV2ZW50cyB0aGUgbW9kdWxlIGZyb20gbG9hZGluZyBh
bmQgY2F1c2VzIHRoZXNlIGVycm9ycy4gRnVydGhlcgpkZXRhaWxzIGhlcmU6IGh0dHBzOi8vYnVn
cy5kZWJpYW4ub3JnL2NnaS1iaW4vYnVncmVwb3J0LmNnaT9idWc9OTQyODgxCgpXb3JrYXJvdW5k
OiBodHRwczovL2J1Z3MuZGViaWFuLm9yZy9jZ2ktYmluL2J1Z3JlcG9ydC5jZ2k/YnVnPTk0Mjg4
MSMyMAoKLS0gClRvbcOhxaEgSmFub3XFoWVrLCBhLmsuYS4gUGl2bsOtaywgYS5rLmEuIExpc2tu
aV9zaSwgaHR0cDovL3dvcmsubGlzay5pbi8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
