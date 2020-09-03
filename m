Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BCA25BEA0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 11:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9886E977;
	Thu,  3 Sep 2020 09:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F586E977
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 09:50:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 763E83FEB2;
 Thu,  3 Sep 2020 11:50:54 +0200 (CEST)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=rM2KtoeH; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.908
X-Spam-Level: 
X-Spam-Status: No, score=-2.908 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.809,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLiTYYngjN7W; Thu,  3 Sep 2020 11:50:53 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 5EB96405E4;
 Thu,  3 Sep 2020 11:50:51 +0200 (CEST)
Received: from Win10-1tb-87.SSPE.ch.intel.com (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 1A6DC360303;
 Thu,  3 Sep 2020 11:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1599126651; bh=pQDI6LEgv6hAvcQz3t5nWgetKA1KrhjQR77batwKOxU=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=rM2KtoeHDB2z983snojOsqqupxkgnKSp+rTMVFEJLV0oBY8lIEgJIUNLjS2MtQY0I
 Fqqbyw4XzopuRS4MmCVXdWnFmHepJ0Swea/hf0nZviZQElICxN7H5E/y2Ab88SxpfR
 l0HXElZa3gVPp+E+7fF5X4dBKzcCok5RKbO5ZY2c=
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
 <20200826132811.17577-35-chris@chris-wilson.co.uk>
 <b2ebd7c1-733f-04aa-78cd-f05e5ff5438a@shipmail.org>
Message-ID: <ca140ae5-96be-e72c-662d-64a0d8ad9689@shipmail.org>
Date: Thu, 3 Sep 2020 11:50:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <b2ebd7c1-733f-04aa-78cd-f05e5ff5438a@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 35/39] drm/i915: Encode fence specific
 waitqueue behaviour into the wait.flags
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvMi8yMCA0OjAyIFBNLCBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpIHdyb3RlOgo+IEhp
LCBDaHJpcywKPgo+IE9uIDgvMjYvMjAgMzoyOCBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+PiBV
c2UgdGhlIHdhaXRfcXVldWVfZW50cnkuZmxhZ3MgdG8gZGVub3RlIHRoZSBzcGVjaWFsIGZlbmNl
IGJlaGF2aW91cgo+PiAoZmxhdHRlbmluZyBjb250aW51YXRpb25zIGFsb25nIGZlbmNlIGNoYWlu
cywgYW5kIGZvciBwcm9wYWdhdGluZwo+PiBlcnJvcnMpIHJhdGhlciB0aGFuIHRyeWluZyB0byBk
ZXRlY3Qgb3JkaW5hcnkgd2FpdGVycyBieSB0aGVpcgo+PiBmdW5jdGlvbnMuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiAtLS0K
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jIHwgMjUgKysrKysrKysr
KysrKysrLS0tLS0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwg
MTAgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3N3X2ZlbmNlLmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5j
Cj4+IGluZGV4IDRjZDIwMzhjYmUzNS4uNGU1NTdkMWM0NjQ0IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9zd19mZW5jZS5jCj4+IEBAIC0xOCwxMCArMTgsMTUgQEAKPj4gwqAgI2RlZmlu
ZSBJOTE1X1NXX0ZFTkNFX0JVR19PTihleHByKSBCVUlMRF9CVUdfT05fSU5WQUxJRChleHByKQo+
PiDCoCAjZW5kaWYKPj4gwqAgLSNkZWZpbmUgSTkxNV9TV19GRU5DRV9GTEFHX0FMTE9DIEJJVCgz
KSAvKiBhZnRlciBXUV9GTEFHXyogZm9yIAo+PiBzYWZldHkgKi8KPj4gLQo+PiDCoCBzdGF0aWMg
REVGSU5FX1NQSU5MT0NLKGk5MTVfc3dfZmVuY2VfbG9jayk7Cj4+IMKgICsjZGVmaW5lIFdRX0ZM
QUdfQklUUyBcCj4+ICvCoMKgwqAgQklUU19QRVJfVFlQRSh0eXBlb2ZfbWVtYmVyKHN0cnVjdCB3
YWl0X3F1ZXVlX2VudHJ5LCBmbGFncykpCj4+ICsKPj4gKy8qIGFmdGVyIFdRX0ZMQUdfKiBmb3Ig
c2FmZXR5ICovCj4+ICsjZGVmaW5lIEk5MTVfU1dfRkVOQ0VfRkxBR19GRU5DRSBCSVQoV1FfRkxB
R19CSVRTIC0gMSkKPj4gKyNkZWZpbmUgSTkxNV9TV19GRU5DRV9GTEFHX0FMTE9DIEJJVChXUV9G
TEFHX0JJVFMgLSAyKQo+Cj4gTm90IHN1cmUgaWYgc2hhcmluZyB0aGUgZmxhZ3MgZmllbGQgd2l0
aCB0aGUgd2FpdC5jIGltcGxlbWVudGF0aW9uIGlzIAo+IGZ1bGx5IE9LIGVpdGhlci4gSXMgdGhl
IEBrZXkgcGFyYW1ldGVyIHRvIHRoZSB3YWtlIGZ1bmN0aW9uIHVzZWFibGU/IEkgCj4gbWVhbiBy
YXRoZXIgdGhhbiBwYXNzaW5nIGp1c3QgYSBsaXN0IGhlYWQgY291bGQgd2UgcGFzcyBzb21ldGhp
bmcgbGlrZQo+Cj4gc3RydWN0IGk5MTVfc3dfZmVuY2Vfa2V5IHsKPiDCoMKgwqAgYm9vbCBub19y
ZWN1cnNpb247IC8qIE1ha2VzIHRoZSB3YWl0IGZ1bmN0aW9uIGp1c3QgcHV0IGl0cyBlbnRyeSAK
PiBvbiBAY29udGludWF0aW9uIGFuZCByZXR1cm4gKi8KPiDCoMKgwqAgaW50IGVycm9yOwo+IMKg
wqDCoCBzdHJ1Y3QgbGlzdF9oZWFkIGNvbnRpbnVhdGlvbjsKPiB9Cj4KPiAvVGhvbWFzCj4KPgpB
Y3R1YWxseSwgYWZ0ZXIgZG9pbmcgc29tZSB0aGlua2luZywgd291bGRuJ3QganVzdCBjb21wYXJp
bmcgYWdhaW5zdCB0aGUgCmludGVybmFsIHdha2UgZnVuY3Rpb24gaW5zdGVhZCBvZiB0aGUgYXV0
b3JlbW92ZV93YWtlX2Z1bmN0aW9uIHJlbW92ZSAKdGhlIGZyYWdpbGl0eS4gV291bGQgdGhhdCBi
ZSBwb3NzaWJsZT8KCi9UaG9tYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
