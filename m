Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97438378FD4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 16:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55476E487;
	Mon, 10 May 2021 14:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9DE56E487;
 Mon, 10 May 2021 14:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=i6vAxLOytNOYwyM1NYfARO0i+7jkuFK7y9pYt7pXuwE=; b=djb3CWn/LU378IzapvABLkn8Gd
 Mp82QkScestEUeQW2L+zqtEN7XvYp31eFRebvjBEITr//+6YOo6+SYheq9BxF7YMTeqbS+RN1ORYU
 WcTwnub1JAhAEwo1EbdH4ZtDbzKRVhVt7KKBx8eH43WzT6ZsZkO7OQPiITlB671P2UStmst5kwHpO
 oLDGkct+Pf7s4vCchonkHPjgJ2dHAgGdY9eEvhnNfgt0nMzg4EJ/N8O7mpCEUjiq1yDlLopkoOUQy
 tCb7mahOMAZ84vugzBeIjfIYkNlViOtJdTlUAmJVQy5eePLrQct4R8yXLPW7Hy+DjovMg5jAZGdoa
 yuW/o03A==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lg6RA-006DIB-7H; Mon, 10 May 2021 13:59:19 +0000
Date: Mon, 10 May 2021 14:59:08 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <YJk8LMFViV7Z3Uu7@casper.infradead.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
 <df6b4567-030c-a480-c5a6-fe579830e8c0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df6b4567-030c-a480-c5a6-fe579830e8c0@gmail.com>
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
 linux-rdma@vger.kernel.org, linux-integrity@vger.kernel.org,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMTAsIDIwMjEgYXQgMDI6MTY6MTZQTSArMDEwMCwgRWR3YXJkIENyZWUgd3Jv
dGU6Cj4gT24gMTAvMDUvMjAyMSAxMjo1NSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+
ID4gVGhlIG1haW4gcG9pbnQgb24gdGhpcyBzZXJpZXMgaXMgdG8gcmVwbGFjZSBqdXN0IHRoZSBv
Y2N1cnJlbmNlcwo+ID4gd2hlcmUgQVNDSUkgcmVwcmVzZW50cyB0aGUgc3ltYm9sIGVxdWFsbHkg
d2VsbAo+IAo+ID4gCS0gVSsyMDE0ICgn4oCUJyk6IEVNIERBU0gKPiBFbSBkYXNoIGlzIG5vdCB0
aGUgc2FtZSB0aGluZyBhcyBoeXBoZW4tbWludXMsIGFuZCB0aGUgbGF0dGVyIGRvZXMgbm90Cj4g
IHNlcnZlICdlcXVhbGx5IHdlbGwnLiAgUGVvcGxlIHVzZSBlbSBkYXNoZXMgYmVjYXVzZSDigJQg
ZXZlbiBpbgo+ICBtb25vc3BhY2UgZm9udHMg4oCUIHRoZXkgbWFrZSB0ZXh0IGVhc2llciB0byBy
ZWFkIGFuZCBjb21wcmVoZW5kLCB3aGVuCj4gIHVzZWQgY29ycmVjdGx5Lgo+IEkgYWNjZXB0IHRo
YXQgc29tZSBvZiB0aGUgb3RoZXIgZGlzdGluY3Rpb25zIOKAlCBsaWtlIGVuIGRhc2hlcyDigJQg
YXJlCj4gIG5lZWRsZXNzbHkgcGVkYW50aWMgKHRob3VnaCBJIGRvbid0IGRvdWJ0IHRoZXJlIGlz
IHNvbWVvbmUgb3V0IHRoZXJlCj4gIHdobyB3aWxsIGdsYWRseSBkZWZlbmQgdGhlbSB3aXRoIHRo
ZSBzYW1lIGZlcnZvdXIgd2l0aCB3aGljaCBJIGFyZ3VlCj4gIGZvciB0aGUgZW0gZGFzaCkgYW5k
IEkgd291bGRuJ3QgdGFrZSB0aGUgdHJvdWJsZSB0byB1c2UgdGhlbSBteXNlbGY7Cj4gIGJ1dCBJ
IHRoaW5rIHRoZXJlIGlzIGEgcmVhc29uYWJsZSBhc3N1bXB0aW9uIHRoYXQgd2hlbiBzb21lb25l
IGdvZXMKPiAgdG8gdGhlIGVmZm9ydCBvZiB1c2luZyBhIFVuaWNvZGUgcHVuY3R1YXRpb24gbWFy
ayB0aGF0IGlzIHNlbWFudGljCj4gIChyYXRoZXIgdGhhbiBtZXJlbHkgdHlwb2dyYXBoaWNhbCks
IHRoZXkgcHJvYmFibHkgaGFkIGEgcmVhc29uIGZvcgo+ICBkb2luZyBzby4KCkkgdGhpbmsgeW91
J3JlIG92ZXJlc3RpbWF0aW5nIHRoZSBhbW91bnQgb2YgY2FyZSBhbmQgdHlwb2dyYXBoaWNhbApr
bm93bGVkZ2UgdGhhdCB5b3VyIGF2ZXJhZ2Uga2VybmVsIGRldmVsb3BlciBoYXMuICBNb3N0IG9m
IHRoZXNlClVURi04IGNoYXJhY3RlcnMgY29tZSBmcm9tIGxhdGV4IGNvbnZlcnNpb25zIGFuZCBy
ZWFsbHkgYXJlbid0Cm5lY2Vzc2FyeSAoYW5kIGFyZSBiZWluZyB1c2VkIGluY29ycmVjdGx5KS4K
CllvdSBzZWVtIHF1aXRlIGtub3dlZGdlYWJsZSBhYm91dCB0aGUgdmFyaW91cyBkaWZmZXJlbmNl
cy4gIFBlcmhhcHMKeW91J2QgYmUgd2lsbGluZyB0byB3cml0ZSBhIGRvY3VtZW50IGZvciBEb2N1
bWVudGF0aW9uL2RvYy1ndWlkZS8KdGhhdCBwcm92aWRlcyBndWlkYW5jZSBmb3Igd2hlbiB0byB1
c2Ugd2hpY2gga2luZHMgb2YgaG9yaXpvbnRhbApsaW5lPyAgaHR0cHM6Ly93d3cucHVuY3R1YXRp
b25tYXR0ZXJzLmNvbS9oeXBoZW4tZGFzaC1uLWRhc2gtYW5kLW0tZGFzaC8KdGFsa3MgYWJvdXQg
aXQgaW4gdGhlIGNvbnRleHQgb2YgcHVibGljYXRpb25zLCBidXQgSSB0aGluayB3ZSBuZWVkCnNv
bWV0aGluZyBtb3JlIHN1aXRlZCB0byBvdXIgbmVlZHMgZm9yIGtlcm5lbCBkb2N1bWVudGF0aW9u
LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
