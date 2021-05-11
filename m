Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DED9137A658
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 14:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86866EA27;
	Tue, 11 May 2021 12:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F546E0C4;
 Tue, 11 May 2021 09:25:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BAA5561469;
 Tue, 11 May 2021 09:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620725119;
 bh=SxEDkhQ4NDmmQJU/qD2f8WKt2ZN30zjdTiLd/JmT63A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qYIzsO6/tiOl8TGJ6a2eiShRAv5ZaMzH0UMz1Okj8KRt9xtY+LR/anIcVUrTbZiX4
 89BZ53+EXyXMYuHsL+U06kiuxNXt/5HwXMQCdDP/VjD4quHGFE+7gbD3gJVXax5DaY
 uPQ39ZXYcixN6FyJ12+nOvdmqwpol10wPiVFzbtkGhu9sXEQXyPXQcHwYGaPn1WAFe
 4EHVQRoUTs78Ah0GJIhGex565u4aOD5+o97KCk6BlvJCrZe2QVlJEyby3BUR9BJh2D
 ihJkCCdqkHc4Kaa3576AZpMqo1MX3GKHjJMVLdhoGH+hccpOnzojw8qINBpykxkRxP
 IMzqRB+GVylEA==
Date: Tue, 11 May 2021 11:25:08 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20210511112508.4547bca8@coco.lan>
In-Reply-To: <de6d1fa5b7934f4afd61370d9c58502bef588466.camel@infradead.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
 <de6d1fa5b7934f4afd61370d9c58502bef588466.camel@infradead.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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

RW0gTW9uLCAxMCBNYXkgMjAyMSAxNDo0OTo0NCArMDEwMApEYXZpZCBXb29kaG91c2UgPGR3bXcy
QGluZnJhZGVhZC5vcmc+IGVzY3JldmV1OgoKPiBPbiBNb24sIDIwMjEtMDUtMTAgYXQgMTM6NTUg
KzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToKPiA+IFRoaXMgcGF0Y2ggc2VyaWVz
IGlzIGRvaW5nIGNvbnZlcnNpb24gb25seSB3aGVuIHVzaW5nIEFTQ0lJIG1ha2VzCj4gPiBtb3Jl
IHNlbnNlIHRoYW4gdXNpbmcgVVRGLTguIAo+ID4gCj4gPiBTZWUsIGEgbnVtYmVyIG9mIGNvbnZl
cnRlZCBkb2N1bWVudHMgZW5kZWQgd2l0aCB3ZWlyZCBjaGFyYWN0ZXJzCj4gPiBsaWtlIFpFUk8g
V0lEVEggTk8tQlJFQUsgU1BBQ0UgKFUrRkVGRikgY2hhcmFjdGVyLiBUaGlzIHNwZWNpZmljCj4g
PiBjaGFyYWN0ZXIgZG9lc24ndCBkbyBhbnkgZ29vZC4KPiA+IAo+ID4gT3RoZXJzIHVzZSBOTy1C
UkVBSyBTUEFDRSAoVStBMCkgaW5zdGVhZCBvZiAweDIwLiBIYXJtbGVzcywgdW50aWwKPiA+IHNv
bWVvbmUgdHJpZXMgdG8gdXNlIGdyZXBbMV0uICAKPiAKPiBSZXBsYWNpbmcgdGhvc2UgbWFrZXMg
c2Vuc2UuIEJ1dCByZXBsYWNpbmcgZW1kYXNoZXMg4oCUIHdoaWNoIGFyZSBhCj4gZGlzdGluY3Qg
Y2hhcmFjdGVyIHRoYXQgaGFzIG5vIGRpcmVjdCByZXBsYWNlbWVudCBpbiBBU0NJSSBhbmQgd2hp
Y2gKPiBwZW9wbGUgZG8gKmRlbGliZXJhdGVseSogdXNlIGluc3RlYWQgb2YgaHlwaGVuLW1pbnVz
IOKAlCBkb2VzIG5vdC4KPiAKPiBQZXJoYXBzIHN0aWNrIHRvIHRob3NlIHR3bywgYW5kIGFueSBj
YXNlcyB3aGVyZSBhbiBlbWRhc2ggb3IgZW5kYXNoIGhhcwo+IGJlZW4gdXNlZCB3aGVyZSBVKzAw
MkQgSFlQSEVOLU1JTlVTICpzaG91bGQqIGhhdmUgYmVlbiB1c2VkLgoKT2suIEknbGwgcmV3b3Jr
IHRoZSBzZXJpZXMgZXhjbHVkaW5nIEVNL0VOIERBU0ggY2hhcnMgZnJvbSBpdC4KSSdsbCB0aGVu
IGFwcGx5IG1hbnVhbGx5IHRoZSBjaGFuZ2VzIGZvciBFTS9FTiBEQVNIIGNoYXJzIAoocHJvYmFi
bHkgb24gYSBzZXBhcmF0ZSBzZXJpZXMpIHdoZXJlIGl0IHNlZW1zIHRvIGZpdC4gVGhhdCBzaG91
bGQKbWFrZSBlYXNpZXIgdG8gZGlzY3VzcyBzdWNoIHJlcGxhY2VtZW50cy4KCj4gQW5kIHBsZWFz
ZSBmaXggeW91ciBjb3ZlciBsZXR0ZXIgd2hpY2ggbWFkZSBubyByZWZlcmVuY2UgdG8gJ2dyZXAn
LCBhbmQKPiBvbmx5IHByZXNlbnRlZCBhIGNvbXBsZXRlbHkgYm9ndXMgYXJndW1lbnQgZm9yIHRo
ZSBjaGFuZ2UgaW5zdGVhZC4KCk9LIQoKUmVnYXJkcywKTWF1cm8KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
