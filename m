Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095341ACE67
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 19:08:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7F16E4AB;
	Thu, 16 Apr 2020 17:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4696E4AB;
 Thu, 16 Apr 2020 17:08:28 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C473B97D;
 Thu, 16 Apr 2020 19:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1587056907;
 bh=K0mOM4H6FgfHW3pGrtqvqk5/8aQTEAC2tBSYLPwGdzE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KP+bGVGExbrP/7TaCTeVbAB56HRP2M7DQSQ+VDGMOJ8oFIuBbhbYyjE2nPdnwNuoO
 YHQxCjpa6RU9imTzUKOfg5weDArn+38tcLPINFIZllCTPFtBOILUdWI+YVdy7tEYva
 setK70L3qusC8eSBsedTEIJjjh36YBPLxEVO93mo=
Date: Thu, 16 Apr 2020 20:08:14 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200416170814.GI4796@pendragon.ideasonboard.com>
References: <20200416170420.23657-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416170420.23657-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm: Fix page flip ioctl format check
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVmlsbGUsCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KCk9uIFRodSwgQXByIDE2LCAyMDIw
IGF0IDA4OjA0OjIwUE0gKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBSZXZlcnQgYmFj
ayB0byBjb21wYXJpbmcgZmItPmZvcm1hdC0+Zm9ybWF0IGluc3RlYWQgZmItPmZvcm1hdCBmb3Ig
dGhlCj4gcGFnZSBmbGlwIGlvY3RsLiBUaGlzIGNoZWNrIHdhcyBvcmlnaW5hbGx5IG9ubHkgaGVy
ZSB0byBkaXNhbGxvdyBwaXhlbAo+IGZvcm1hdCBjaGFuZ2VzLCBidXQgd2hlbiB3ZSBjaGFuZ2Vk
IGl0IHRvIGRvIHRoZSBwb2ludGVyIGNvbXBhcmlzb24KPiB3ZSBwb3RlbnRpYWxseSBzdGFydGVk
IHRvIHJlamVjdCBzb21lIChidXQgZGVmaW5pdGVseSBub3QgYWxsKSBtb2RpZmllcgo+IGNoYW5n
ZXMgYXMgd2VsbC4gSW4gZmFjdCB0aGUgY3VycmVudCBiZWhhdmlvdXIgZGVwZW5kcyBvbiB3aGV0
aGVyIHRoZQo+IGRyaXZlciBvdmVycmlkZXMgdGhlIGZvcm1hdCBpbmZvIGZvciBhIHNwZWNpZmlj
IGZvcm1hdCttb2RpZmllciBjb21iby4KPiBFZy4gb24gaTkxNSB0aGlzIG5vdyByZWplY3RzIGNv
bXByZXNzaW9uIHZzLiBubyBjb21wcmVzc2lvbiBjaGFuZ2VzIGJ1dAo+IGRvZXMgbm90IHJlamVj
dCBhbnkgb3RoZXIgdGlsaW5nIGNoYW5nZXMuIFRoYXQncyBqdXN0IGluY29uc2lzdGVudAo+IG5v
bnNlbnNlLgo+IAo+IFRoZSBtYWluIHJlYXNvbiB3ZSBoYXZlIHRvIGdvIGJhY2sgdG8gdGhlIG9s
ZCBiZWhhdmlvdXIgaXMgdG8gZml4IHBhZ2UKPiBmbGlwcGluZyB3aXRoIFhvcmcuIEF0IHNvbWUg
cG9pbnQgWG9yZyBnb3QgaXRzIGF0b21pYyByaWdodHMgdGFrZW4gYXdheQo+IGFuZCBzaW5jZSB0
aGVuIHdlIGNhbid0IHBhZ2UgZmxpcCBiZXR3ZWVuIGNvbXByZXNzZWQgYW5kIG5vbi1jb21wcmVz
c2VkCj4gZmJzIG9uIGk5MTUuIEN1cnJlbnRseSB3ZSBnZXQgbm8gcGFnZSBmbGlwcGluZyBmb3Ig
YW55IGdhbWVzIHByZXR0eSBtdWNoCj4gc2luY2UgTWVzYSBsaWtlcyB0byB1c2UgY29tcHJlc3Nl
ZCBidWZmZXJzLiBOb3Qgc3VyZSBob3cgY29tcG9zaXRvcnMgYXJlCj4gd29ya2luZyBhcm91bmQg
dGhpcyAoZG9uJ3QgdXNlIG9uZSBteXNlbGYpLiBJIGd1ZXNzIHRoZXkgbXVzdCBiZSBkb2luZwo+
IHNvbWV0aGluZyB0byBnZXQgbm9uLWNvbXByZXNzZWQgYnVmZmVycyBpbnN0ZWFkLiBFaXRoZXIg
dGhhdCBvcgo+IHNvbWVob3cgbm8gb25lIG5vdGljZWQgdGhlIHRlYXJpbmcgZnJvbSB0aGUgYmxp
dCBmYWxsYmFjay4KPiAKPiBMb29raW5nIGJhY2sgYXQgdGhlIG9yaWdpbmFsIGRpc2N1c3Npb24g
b24gdGhpcyBjaGFuZ2Ugd2UgcHJldHR5IG11Y2gKPiBqdXN0IGRpZCBpdCBpbiB0aGUgbmFtZSBv
ZiBza2lwcGluZyBhIGZldyBleHRyYSBwb2ludGVyIGRlcmVmZXJlbmNlcy4KPiBIb3dldmVyLCBJ
J3ZlIGRlY2lkZWQgbm90IHRvIHJldmVydCB0aGUgd2hvbGUgdGhpbmcgaW4gY2FzZSBzb21lb25l
Cj4gaGFzIHNpbmNlIHN0YXJ0ZWQgdG8gZGVwZW5kIG9uIHRoZXNlIGNoYW5nZXMuIE5vbmUgb2Yg
dGhlIG90aGVyIGNoZWNrcwo+IGFyZSByZWxldmFudCBmb3IgaTkxNSBhbnl3YXlzLgoKRG8gZGlz
cGxheSBjb250cm9sbGVyIHVzdWFsbHkgc3VwcG9ydCBjaGFuZ2luZyBtb2RpZmllcnMgZm9yIHBh
Z2UgZmxpcHMKPyBJIHVuZGVyc3RhbmQgZnJvbSB0aGUgaW5mb3JtYXRpb24gYWJvdXQgdGhhdCBp
OTE1IGRvZXMsIGJ1dCBpcyB0aGF0CnVzdWFsID8gQ291bGQgdGhlcmUgYmUgZHJpdmVycyB0aGF0
IHJlYWxseSBvbiB0aGlzIGNoZWNrIHRvIHJlamVjdAptb2RpZmllciBjaGFuZ2VzLCBhbmQgdGhh
dCBhcmVuJ3QgcHJlcGFyZWQgdG8gaGFuZGxlIHRoZW0gaWYgdGhleSBhcmUKbm90IHJlamVjdGVk
IGJ5IHRoZSBjb3JlID8gSSdtIG5vdCBvcHBvc2VkIHRvIHRoaXMgY2hhbmdlLCBidXQgSSdkIGxp
a2UKdG8gY2FyZWZ1bGx5IGNvbnNpZGVyIHRoZSBmYWxsb3V0LgoKPiBDYzogc3RhYmxlQHZnZXIu
a2VybmVsLm9yZwo+IENjOiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFz
b25ib2FyZC5jb20+Cj4gRml4ZXM6IGRiZDRkNTc2MWUxZiAoImRybTogUmVwbGFjZSAnZm9ybWF0
LT5mb3JtYXQnIGNvbXBhcmlzb25zIHRvIGp1c3QgJ2Zvcm1hdCcgY29tcGFyaXNvbnMiKQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fcGxhbmUuYyB8IDIgKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGxhbmUu
Ywo+IGluZGV4IGQ2YWQ2MGFiMGQzOC4uZjJjYTUzMTVmMjNiIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fcGxhbmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGxhbmUu
Ywo+IEBAIC0xMTUzLDcgKzExNTMsNyBAQCBpbnQgZHJtX21vZGVfcGFnZV9mbGlwX2lvY3RsKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gb3V0Owo+ICAKPiAt
CWlmIChvbGRfZmItPmZvcm1hdCAhPSBmYi0+Zm9ybWF0KSB7Cj4gKwlpZiAob2xkX2ZiLT5mb3Jt
YXQtPmZvcm1hdCAhPSBmYi0+Zm9ybWF0LT5mb3JtYXQpIHsKPiAgCQlEUk1fREVCVUdfS01TKCJQ
YWdlIGZsaXAgaXMgbm90IGFsbG93ZWQgdG8gY2hhbmdlIGZyYW1lIGJ1ZmZlciBmb3JtYXQuXG4i
KTsKPiAgCQlyZXQgPSAtRUlOVkFMOwo+ICAJCWdvdG8gb3V0OwoKLS0gClJlZ2FyZHMsCgpMYXVy
ZW50IFBpbmNoYXJ0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
