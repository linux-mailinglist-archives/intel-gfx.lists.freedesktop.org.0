Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D52C1007FA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 16:17:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5C76E563;
	Mon, 18 Nov 2019 15:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB006E55E;
 Mon, 18 Nov 2019 15:17:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7FDF2071B;
 Mon, 18 Nov 2019 15:17:07 +0000 (UTC)
Date: Mon, 18 Nov 2019 16:17:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20191118151706.GA371978@kroah.com>
References: <20191118105923.7991-1-jasowang@redhat.com>
 <20191118105923.7991-7-jasowang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118105923.7991-7-jasowang@redhat.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1574090228;
 bh=8oHPpeDbLVKRHKTWyH/2Nazz8CQb+rciG+W4BGLrxYk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oMK2djkOvzobOaiHFUdV/NwyvoeGQBFH4E22D8bD5h9VL+fIAzUhP2aahtZr9MDC6
 85zlmPnZB0619QLhN/FKp0ZTRDONgMtpeAScAFAaIBy6P6ysHMD47tGEXpITRoKg7/
 BQtEMXYMdswww7DcDQr9+w4lK3T4zrPUh4O0C0ZM=
Subject: Re: [Intel-gfx] [PATCH V13 6/6] docs: sample driver to demonstrate
 how to implement virtio-mdev framework
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
Cc: rdunlap@infradead.org, jakub.kicinski@netronome.com,
 christophe.de.dinechin@gmail.com, kvm@vger.kernel.org, mst@redhat.com,
 airlied@linux.ie, heiko.carstens@de.ibm.com, haotian.wang@sifive.com,
 dri-devel@lists.freedesktop.org, oberpar@linux.ibm.com, kwankhede@nvidia.com,
 rob.miller@broadcom.com, linux-s390@vger.kernel.org, sebott@linux.ibm.com,
 lulu@redhat.com, eperezma@redhat.com, pasic@linux.ibm.com,
 borntraeger@de.ibm.com, jgg@mellanox.com, jeffrey.t.kirsher@intel.com,
 cunming.liang@intel.com, farman@linux.ibm.com, parav@mellanox.com,
 gor@linux.ibm.com, intel-gfx@lists.freedesktop.org, xiao.w.wang@intel.com,
 freude@linux.ibm.com, stefanha@redhat.com, zhihong.wang@intel.com,
 intel-gvt-dev@lists.freedesktop.org, hch@infradead.org, akrowiak@linux.ibm.com,
 jiri@mellanox.com, tiwei.bie@intel.com, netdev@vger.kernel.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, maxime.coquelin@redhat.com,
 aadam@redhat.com, lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMDY6NTk6MjNQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiArc3RhdGljIHZvaWQgbXZuZXRfZGV2aWNlX3JlbGVhc2Uoc3RydWN0IGRldmljZSAqZGV2
KQo+ICt7Cj4gKwlkZXZfZGJnKGRldiwgIm12bmV0OiByZWxlYXNlZFxuIik7Cj4gK30KCldlIHVz
ZWQgdG8gaGF2ZSBkb2N1bWVudGF0aW9uIGluIHRoZSBrZXJuZWwgc291cmNlIHRyZWUgdGhhdCBz
YWlkIHRoYXQKd2hlbmV2ZXIgYW55b25lIGRpZCB0aGlzLCBJIGdvdCB0byBtYWtlIGZ1biBvZiB0
aGVtLiAgVW5mb3J0dW5hdGVseSB0aGF0CmhhcyBiZWVuIHJlbW92ZWQuCgpUaGluayBhYm91dCB3
aGF0IHlvdSBkaWQgcmlnaHQgaGVyZS4gIFlvdSBzaWxlbmNlZCBhIGtlcm5lbCBydW50aW1lCndh
cm5pbmcgdGhhdCBzYWlkIHNvbWV0aGluZyBsaWtlICJFUlJPUiEgTk8gUkVMRUFTRSBGVU5DVElP
TiBGT1VORCEiIGJ5CmRvaW5nIHRoZSBhYm92ZSBiZWNhdXNlICJJIGFtIHNtYXJ0ZXIgdGhhbiB0
aGUga2VybmVsLCBJIHdpbGwgc2lsZW5jZSBpdApieSBwdXR0aW5nIGFuIGVtcHR5IHJlbGVhc2Ug
ZnVuY3Rpb24gaW4gdGhlcmUuIgoKe3NpZ2h9CgpEaWQgeW91IGV2ZXIgdGhpbmsgX3doeV8gd2Ug
dG9vayB0aGUgdGltZSBhbmQgZWZmb3J0IHRvIGFkZCB0aGF0IHdhcm5pbmcKdGhlcmU/ICBJdCB3
YXNuJ3QganVzdCBzbyB0aGF0IHBlb3BsZSBjYW4gY2lyY3VtdmVudCBpdCwgaXQgaXMgdG8KUFJF
VkVOVCBBIE1BSk9SIEJVRyBJTiBZT1VSIERFU0lHTiEgIFdlIGFyZSB0cnlpbmcgdG8gYmUgbmlj
ZSBoZXJlIGFuZApnaXZlIHBlb3BsZSBhIF9jaGFuY2VfIHRvIGdldCB0aGluZ3MgcmlnaHQgaW5z
dGVhZCBvZiBoYXZpbmcgeW91IGp1c3QKbGl2ZSB3aXRoIGEgc2lsZW50IG1lbW9yeSBsZWFrLgoK
QWZ0ZXIgMTMgdmVyc2lvbnMgb2YgdGhpcyBzZXJpZXMsIGJhc2ljIHRoaW5ncyBsaWtlIHRoaXMg
YXJlIHN0aWxsIGhlcmU/CldobyBpcyByZXZpZXdpbmcgdGhpcyB0aGluZz8KCnt1Z2h9CgpBbHNv
LCBzZWUgdGhlIG90aGVyIGNvbnZlcnNhdGlvbnMgd2UgYXJlIGhhdmluZyBhYm91dCBhICJ2aXJ0
dWFsIiBidXMKYW5kIGRldmljZXMuICBJIGRvIG5vdCB3YW50IHRvIGhhdmUgdHdvIGRpZmZlcmVu
dCB3YXlzIG9mIGRvaW5nIHRoZSBzYW1lCnRoaW5nIGluIHRoZSBrZXJuZWwgYXQgdGhlIHNhbWUg
dGltZSBwbGVhc2UuICBQbGVhc2Ugd29yayB0b2dldGhlciB3aXRoCnRoZSBJbnRlbCBkZXZlbG9w
ZXJzIHRvIHNvbHZlIHRoaXMgaW4gYSB1bmlmaWVkIHdheSwgYXMgeW91IGJvdGgKbmVlZC93YW50
IHRoZSBzYW1lIHRoaW5nIGhlcmUuCgpOZWl0aGVyIHRoaXMsIG5vciB0aGUgb3RoZXIgcHJvcG9z
YWwgY2FuIGJlIGFjY2VwdGVkIHVudGlsIHlvdSBhbGwgYWdyZWUKb24gdGhlIGRlc2lnbiBhbmQg
aW1wbGVtZW50YXRpb24uCgovbWUgZ29lcyBvZmYgdG8gZmluZCBhIG5pY2UgZnJ1aXR5IGRyaW5r
IHdpdGggYW4gdW1icmVsbGEuCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
