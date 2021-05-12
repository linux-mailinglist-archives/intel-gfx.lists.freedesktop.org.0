Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF3337C4E1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 17:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03ED26EC41;
	Wed, 12 May 2021 15:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F7A6EC31;
 Wed, 12 May 2021 15:17:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 455F961C3E;
 Wed, 12 May 2021 15:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620832672;
 bh=zB2G4t5ozyJ72g68BGRplKf2lQRTS6CtRvJ7FVX3NWE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DBjrvZcbfODq6o/u3ovhcKp34o3mQ/2g2kqOKbw7rqi0UbJcuDmNkgLMMy0M05dFs
 mwfV7fdqIvkaHvs5FkFIxP3pQ5mW2wuelKsM0Zg1XI928MZ1g6hDtwlC/lZ6mTYtDn
 L0yXyxJPdKzjgMXD6Vs/vdQOXuvQV+DBBKSwRDhM/LlZ9x9/DV6Qnq7MjBym4Ue3He
 LklNFflnfSaW1SCikrvqRJriPDliUiNhIaGm2pb/3nXItDzT/4/obeOPpO0NPN/v0m
 Pwish5sD0axq4vDEIuCSUJZyKrnPcy3P6Nd30IKN+fHXybC5E+QSyK+xdLgaNeWw/l
 +EUyGcBOd8VUw==
Date: Wed, 12 May 2021 17:17:41 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "Theodore Ts'o" <tytso@mit.edu>
Message-ID: <20210512171741.2870bcbc@coco.lan>
In-Reply-To: <YJvi1L2ss5Tfi+My@mit.edu>
References: <cover.1620823573.git.mchehab+huawei@kernel.org>
 <YJvi1L2ss5Tfi+My@mit.edu>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 12 May 2021 15:34:25 +0000
Subject: Re: [Intel-gfx] [PATCH v2 00/40] Use ASCII subset instead of UTF-8
 alternate symbols
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
 linux-pci@vger.kernel.org, dri-devel@lists.freedesktop.org,
 keyrings@vger.kernel.org, linux-sgx@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-rdma@vger.kernel.org,
 linux-acpi@vger.kernel.org, Mali DP Maintainers <malidp@foss.arm.com>,
 linux-input@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW0gV2VkLCAxMiBNYXkgMjAyMSAxMDoxNDo0NCAtMDQwMAoiVGhlb2RvcmUgVHMnbyIgPHR5dHNv
QG1pdC5lZHU+IGVzY3JldmV1OgoKPiBPbiBXZWQsIE1heSAxMiwgMjAyMSBhdCAwMjo1MDowNFBN
ICswMjAwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIgd3JvdGU6Cj4gPiB2MjoKPiA+IC0gcmVtb3Zl
ZCBFTS9FTiBEQVNIIGNvbnZlcnNpb24gZnJvbSB0aGlzIHBhdGNoc2V0OyAgCj4gCj4gQXJlIHlv
dSBzdGlsbCB0aGlua2luZyBhYm91dCBkb2luZyB0aGUKPiAKPiBFTiBEQVNIIC0tPiAiLS0iCj4g
RU0gREFTSCAtLT4gIi0tLSIKPiAKPiBjb252ZXJzaW9uPyAgCgpZZXMsIGJ1dCBJIGludGVuZCB0
byBzdWJtaXQgaXQgb24gYSBzZXBhcmF0ZSBwYXRjaCBzZXJpZXMsIHByb2JhYmx5IGFmdGVyCmhh
dmluZyB0aGlzIG9uZSBtZXJnZWQuIExldCdzIGZpcnN0IGNsZWFudXAgdGhlIGxhcmdlIHBhcnQg
b2YgdGhlIApjb252ZXJzaW9uLWdlbmVyYXRlZCBVVEYtOCBjaGFyIG5vaXNlIDstKQoKPiBUaGF0
J3Mgbm90IGdvaW5nIHRvIGNoYW5nZSB3aGF0IHRoZSBkb2N1bWVudGF0aW9uIHdpbGwKPiBsb29r
IGxpa2UgaW4gdGhlIEhUTUwgYW5kIFBERiBvdXRwdXQgZm9ybXMsIGFuZCBJIHRoaW5rIGl0IHdv
dWxkIG1ha2UKPiBsaWZlIGVhc2llciBmb3IgcGVvcGxlIGFyZSByZWFkaW5nIGFuZCBlZGl0aW5n
IHRoZSBEb2N1bWVudGF0aW9uLyoKPiBmaWxlcyBpbiB0ZXh0IGZvcm0uCgpBZ3JlZWQuIEknbSBh
bHNvIGNvbnNpZGVyaW5nIHRvIGFkZCBhIGNvdXBsZSBvZiBjYXNlcyBvZiB0aGlzIGNoYXI6CgoJ
LSBVKzIwMjYgKCfigKYnKTogSE9SSVpPTlRBTCBFTExJUFNJUwoKQXMgU3BoaW54IGFsc28gcmVw
bGFjZXMgIi4uLiIgaW50byBIT1JJWk9OVEFMIEVMTElQU0lTLgoKLQoKQW55d2F5LCBJJ20gb3B0
aW5nIHRvIHN1Ym1pdHRpbmcgdGhvc2UgaW4gc2VwYXJhdGUgYmVjYXVzZSBpdCBzZWVtcwp0aGF0
IGF0IGxlYXN0IHNvbWUgbWFpbnRhaW5lcnMgYWRkZWQgRU0vRU4gREFTSCBpbnRlbnRpb25hbGx5
LgoKU28sIGl0IG1heSBnZW5lcmF0ZSBjYXNlLXBlci1jYXNlIGRpc2N1c3Npb25zLgoKQWxzbywg
SU1PLCBhdCBsZWFzdCBhIGNvdXBsZSBvZiBFTi9FTSBEQVNIIGNhc2VzIHdvdWxkIGJlIGJldHRl
ciBzZXJ2ZWQgCndpdGggYSBzaW5nbGUgaHlwaGVuLgoKVGhhbmtzLApNYXVybwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
