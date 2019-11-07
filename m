Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE94F2D5B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 12:21:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF21C6F653;
	Thu,  7 Nov 2019 11:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64106E053
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 11:21:40 +0000 (UTC)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CFF557C0B4
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 11:21:39 +0000 (UTC)
Received: by mail-qv1-f72.google.com with SMTP id w7so178031qvs.15
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Nov 2019 03:21:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wnfHxd+h5ByIy6pNIpYUPsi2zmTYpBRj65XvOkNtL/w=;
 b=CcNaTY4usQsJ39TDUXLYxE95xCpPoCJW+djjaXvxnWcqM4qWTpmmroUrGpZlS7sWHK
 9O3obWW232k9ttIohjSbWdIdMFl4MPS8jfaTPSUSkQpu4zHqVpJ/sTBmtjjM0Ia1iNBg
 RCfz/Dm7SBorvwK1hziOLR/GG/IBXsMjJ1a0KvzxoMtvqER88B5ONQZXCBZK79gPBgut
 TWjxsTXciqw9Sk/+OUS3wDVcOstqi9oCEueR+RHbcn1jk29FSle/wvmbKf052peXa2mA
 3YMjDck/vyZTbe7HVeotx0Qee/ovvwryU9YrDwq2n8FwjtH9bBlZ+NmjQ2wd44Ks1WBI
 +ejA==
X-Gm-Message-State: APjAAAXdIOv0Lq/BBLNciOz0nk9wysnnTkhO2tnO68mfw2ybgYmApINm
 sjK30hMx0Q93z6SuHLNLfe7ru3VQlNdxLFNTOO+uijwcuAsyxMQTyhOSdDnmzz0ic2qi8kB95UP
 Kf+IYfxGsi9K/Cy424OMqFZPW2CZj
X-Received: by 2002:ac8:289d:: with SMTP id i29mr3319313qti.24.1573125698914; 
 Thu, 07 Nov 2019 03:21:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqwLKHqje2IEEYthZFjXYN+ipb1SMK7JO7Dpv9RPMHrWqUxiMCMx6JeRQige0AiW+TwcjzGM5w==
X-Received: by 2002:ac8:289d:: with SMTP id i29mr3319270qti.24.1573125698659; 
 Thu, 07 Nov 2019 03:21:38 -0800 (PST)
Received: from redhat.com (bzq-79-178-12-128.red.bezeqint.net. [79.178.12.128])
 by smtp.gmail.com with ESMTPSA id u27sm1182961qtj.5.2019.11.07.03.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 03:21:37 -0800 (PST)
Date: Thu, 7 Nov 2019 06:21:26 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20191107061942-mutt-send-email-mst@kernel.org>
References: <20191106133531.693-1-jasowang@redhat.com>
 <20191106133531.693-7-jasowang@redhat.com>
 <20191107040700-mutt-send-email-mst@kernel.org>
 <bd2f7796-8d88-0eb3-b55b-3ec062b186b7@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd2f7796-8d88-0eb3-b55b-3ec062b186b7@redhat.com>
Subject: Re: [Intel-gfx] [PATCH V10 6/6] docs: sample driver to demonstrate
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
Cc: stefanha@redhat.com, christophe.de.dinechin@gmail.com, kvm@vger.kernel.org,
 airlied@linux.ie, heiko.carstens@de.ibm.com, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, kwankhede@nvidia.com,
 rob.miller@broadcom.com, linux-s390@vger.kernel.org, sebott@linux.ibm.com,
 lulu@redhat.com, eperezma@redhat.com, pasic@linux.ibm.com,
 borntraeger@de.ibm.com, haotian.wang@sifive.com, cunming.liang@intel.com,
 farman@linux.ibm.com, idos@mellanox.com, gor@linux.ibm.com,
 intel-gfx@lists.freedesktop.org, xiao.w.wang@intel.com, freude@linux.ibm.com,
 parav@mellanox.com, zhihong.wang@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com,
 oberpar@linux.ibm.com, tiwei.bie@intel.com, netdev@vger.kernel.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, maxime.coquelin@redhat.com,
 lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMDY6MTg6NDVQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzExLzcg5LiL5Y2INTowOCwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMDk6MzU6MzFQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gVGhpcyBzYW1wbGUgZHJpdmVyIGNyZWF0ZXMgbWRldiBkZXZpY2UgdGhh
dCBzaW11bGF0ZSB2aXJ0aW8gbmV0IGRldmljZQo+ID4gPiBvdmVyIHZpcnRpbyBtZGV2IHRyYW5z
cG9ydC4gVGhlIGRldmljZSBpcyBpbXBsZW1lbnRlZCB0aHJvdWdoIHZyaW5naAo+ID4gPiBhbmQg
d29ya3F1ZXVlLiBBIGRldmljZSBzcGVjaWZpYyBkbWEgb3BzIGlzIHRvIG1ha2Ugc3VyZSBIVkEg
aXMgdXNlZAo+ID4gPiBkaXJlY3RseSBhcyB0aGUgSU9WQS4gVGhpcyBzaG91bGQgYmUgc3VmZmlj
aWVudCBmb3Iga2VybmVsIHZpcnRpbwo+ID4gPiBkcml2ZXIgdG8gd29yay4KPiA+ID4gCj4gPiA+
IE9ubHkgJ3ZpcnRpbycgdHlwZSBpcyBzdXBwb3J0ZWQgcmlnaHQgbm93LiBJIHBsYW4gdG8gYWRk
ICd2aG9zdCcgdHlwZQo+ID4gPiBvbiB0b3Agd2hpY2ggcmVxdWlyZXMgc29tZSB2aXJ0dWFsIElP
TU1VIGltcGxlbWVudGVkIGluIHRoaXMgc2FtcGxlCj4gPiA+IGRyaXZlci4KPiA+ID4gCj4gPiA+
IEFja2VkLWJ5OiBDb3JuZWxpYSBIdWNrPGNvaHVja0ByZWRoYXQuY29tPgo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBKYXNvbiBXYW5nPGphc293YW5nQHJlZGhhdC5jb20+Cj4gPiBJJ2QgcHJlZmVyIGl0
IHRoYXQgd2UgY2FsbCB0aGlzIHNvbWV0aGluZyBlbHNlLCBlLmcuCj4gPiBtdm5ldC1sb29wYmFj
ay4gSnVzdCBzbyBwZW9wbGUgZG9uJ3QgZXhwZWN0IGEgZnVsbHkKPiA+IGZ1bmN0aW9uYWwgZGV2
aWNlIHNvbWVob3cuIENhbiBiZSByZW5hbWVkIHdoZW4gYXBwbHlpbmc/Cj4gCj4gCj4gQWN0dWFs
bHksIEkgcGxhbiB0byBleHRlbmQgaXQgYXMgYW5vdGhlciBzdGFuZGFyZCBuZXR3b3JrIGludGVy
ZmFjZSBmb3IKPiBrZXJuZWwuIEl0IGNvdWxkIGJlIGVpdGhlciBhIHN0YW5kYWxvbmUgcHNldWRv
IGRldmljZSBvciBhIHN0YWNrIGRldmljZS4KPiBEb2VzIHRoaXMgc291bmRzIGdvb2QgdG8geW91
Pwo+IAo+IFRoYW5rcwoKVGhhdCdzIGEgYmlnIGNoYW5nZSBpbiBhbiBpbnRlcmZhY2Ugc28gaXQn
cyBhIGdvb2QgcmVhc29uCnRvIHJlbmFtZSB0aGUgZHJpdmVyIGF0IHRoYXQgcG9pbnQgcmlnaHQ/
Ck9oZXJ3aXNlIHVzZXJzIG9mIGFuIG9sZCBrZXJuZWwgd291bGQgZXhwZWN0IGEgc3RhY2tlZCBk
cml2ZXIKYW5kIGdldCBhIGxvb3BiYWNrIGluc3RlYWQuCgpPciBkaWQgSSBtaXNzIHNvbWV0aGlu
Zz8KCj4gCj4gPiAKPiA+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
