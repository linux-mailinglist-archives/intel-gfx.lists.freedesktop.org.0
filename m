Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EBDD6D83
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 05:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E196894B7;
	Tue, 15 Oct 2019 03:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CA43894B7;
 Tue, 15 Oct 2019 03:15:13 +0000 (UTC)
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iKDIe-0000xB-K6; Tue, 15 Oct 2019 03:15:04 +0000
Date: Mon, 14 Oct 2019 20:15:04 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Tim.Bird@sony.com
Message-ID: <20191015031504.GB32665@bombadil.infradead.org>
References: <20191013055359.23312-1-changbin.du@gmail.com>
 <875zkrd7nq.fsf@intel.com>
 <ECADFF3FD767C149AD96A924E7EA6EAF977CAF09@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF977CAF09@USCULXMSG01.am.sony.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rGXKOzZI2i2ULcbgzDpG/mG1eu5gxk2EGw7KyGeZWwE=; b=Ck4GEFQCqtrUxKelUCq8Q93OE
 TgZCkXwGyd9+XQ40HYW8ayvgLfti0hqTDa/CvRTsliaSADnE0HCCMC+vmvq9WGGbdffVTCNYxlnCD
 4Mrl5Zi4BKTGxL9fnpjlQMVLdNBXgDcfNCMIw8MKAMk+oWO3/qbzDB4KFlPcaCrDkE59assZz3cd5
 +rjncO71ZMRE4j0IH3/9bteALR9aB3djRUl1V+UH+aLGCY+gcZPHu4bgNrak6aZQGDhqeDmnfIQlA
 lvsZmqvgnm+aKjD3Hejv3+pRbfLWXv1Sydao3hwwLdrvJuNkXSJRQ3Tb12fWsiMj1dY974Z1KiKkp
 WEffcX/fw==;
Subject: Re: [Intel-gfx] [PATCH] kernel-doc: rename the kernel-doc directive
 'functions' to 'specific'
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
Cc: linux-usb@vger.kernel.org, dri-devel@lists.freedesktop.org, corbet@lwn.net,
 linux-pci@vger.kernel.org, linux-fpga@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-crypto@vger.kernel.org,
 linux-kselftest@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 changbin.du@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgMDg6NDg6NDhQTSArMDAwMCwgVGltLkJpcmRAc29ueS5j
b20gd3JvdGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTog
SmFuaSBOaWt1bGEgb24gT2N0b2JlciAxMywgMjAxOSAxMTowMCBQTQo+ID4gT24gU3VuLCAxMyBP
Y3QgMjAxOSwgQ2hhbmdiaW4gRHUgPGNoYW5nYmluLmR1QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+
IFRoZSAnZnVuY3Rpb25zJyBkaXJlY3RpdmUgaXMgbm90IG9ubHkgZm9yIGZ1bmN0aW9ucywgYnV0
IGFsc28gd29ya3MgZm9yCj4gPiA+IHN0cnVjdHMvdW5pb25zLiBTbyB0aGUgbmFtZSBpcyBtaXNs
ZWFkaW5nLiBUaGlzIHBhdGNoIHJlbmFtZXMgaXQgdG8KPiA+ID4gJ3NwZWNpZmljJywgc28gbm93
IHdlIGhhdmUgZXhwb3J0L2ludGVybmFsL3NwZWNpZmljIGRpcmVjdGl2ZXMgdG8gbGltaXQKPiA+
ID4gdGhlIGZ1bmN0aW9ucy90eXBlcyB0byBiZSBpbmNsdWRlZCBpbiBkb2N1bWVudGF0aW9uLiBN
ZWFud2hpbGUgd2UKPiA+IGltcHJvdmVkCj4gPiA+IHRoZSB3YXJuaW5nIG1lc3NhZ2UuCj4gPiAK
PiA+IEFncmVlZCBvbiAiZnVuY3Rpb25zIiBiZWluZyBsZXNzIHRoYW4gcGVyZmVjdC4gSXQgZGly
ZWN0bHkgZXhwb3NlcyB0aGUKPiA+IGlkaW9zeW5jcmFzaWVzIG9mIHNjcmlwdHMva2VybmVsLWRv
Yy4gSSdtIG5vdCBzdXJlICJzcGVjaWZpYyIgaXMgYW55Cj4gPiBiZXR0ZXIsIHRob3VnaC4KPiAK
PiBJIHN0cm9uZ2x5IGFncmVlIHdpdGggdGhpcy4gICdzcGVjaWZpYycgSU1ITywgaGFzIG5vIHNl
bWFudGljIHZhbHVlIGFuZAo+IEknZCByYXRoZXIganVzdCBsZWF2ZSB0aGUgb25seS1zb21ldGlt
ZXMtd3JvbmcgJ2Z1bmN0aW9ucycgdGhhbiBjb252ZXJ0Cj4gdG8gc29tZXRoaW5nIHRoYXQgb2Jz
Y3VyZXMgdGhlIG1lYW5pbmcgYWx3YXlzLgo+IAo+ID4gCj4gPiBQZXJoYXBzICJzeW1ib2xzIiB3
b3VsZCBiZSBtb3JlIHNlbGYtZXhwbGFuYXRvcnkuIE9yLCBhY3R1YWxseSBtYWtlCj4gPiAiZnVu
Y3Rpb25zIiBvbmx5IHdvcmsgb24gZnVuY3Rpb25zLCBhbmQgYWRkIGEgc2VwYXJhdGUga2V5d29y
ZCBmb3Igb3RoZXIKPiA+IHN0dWZmLiAqc2hydWcqCj4gTXkgcHJlZmVyZW5jZSB3b3VsZCBiZSB0
byB1c2UgJ3N5bWJvbHMnLiAgSSB0cmllZCB0byBjb21lIHVwIHdpdGggc29tZXRoaW5nCj4gYnV0
ICdzeW1ib2xzJyBpcyBiZXR0ZXIgdGhhbiBhbnl0aGluZyBJIGNhbWUgdXAgd2l0aC4KCnN0cnVj
dHVyZXMgYXJlbid0IHN5bWJvbHMgdGhvdWdoIC4uLiBIb3cgYWJvdXQgJ2lkZW50aWZpZXInPwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
