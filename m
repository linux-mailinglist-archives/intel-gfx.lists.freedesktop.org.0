Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C93D62D1F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 02:45:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9102089D61;
	Tue,  9 Jul 2019 00:45:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABF2C89D61
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 00:45:13 +0000 (UTC)
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 002A62173C;
 Tue,  9 Jul 2019 00:45:12 +0000 (UTC)
Date: Tue, 09 Jul 2019 00:45:12 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190708140327.26825-1-chris@chris-wilson.co.uk>
References: <20190708140327.26825-1-chris@chris-wilson.co.uk>
Message-Id: <20190709004513.002A62173C@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1562633113;
 bh=Dl4k+3GOyl67RHlnis1aWBpjHaeCcGSkxbXcQA68l20=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=OUVkk9Sy6/ntt0cWwQ0UDx+nb/Fykuh6bJVHTs5UnCqenPS/YUi7W9d0abs0CjjSr
 vxsw6HD4xsksqzgvAjqxaZ2dCdDK9JN6Jrqw/CI1IntVpPINtzfgHeJNYRXEcW9L5x
 uYYH6k0W2ds/J5vnAI5KMOapGe9htNE/bUnyFsGU=
Subject: Re: [Intel-gfx] [PATCH] drm/i915/userptr: Acquire the page lock
 around set_page_dirty()
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
Cc: , stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhICJGaXhlczoiIHRhZywKZml4aW5nIGNvbW1p
dDogNWNjOWVkNGI5YTdhIGRybS9pOTE1OiBJbnRyb2R1Y2UgbWFwcGluZyBvZiB1c2VyIHBhZ2Vz
IGludG8gdmlkZW8gbWVtb3J5ICh1c2VycHRyKSBpb2N0bC4KClRoZSBib3QgaGFzIHRlc3RlZCB0
aGUgZm9sbG93aW5nIHRyZWVzOiB2NS4xLjE2LCB2NC4xOS41NywgdjQuMTQuMTMyLCB2NC45LjE4
NCwgdjQuNC4xODQuCgp2NS4xLjE2OiBCdWlsZCBPSyEKdjQuMTkuNTc6IEJ1aWxkIE9LIQp2NC4x
NC4xMzI6IEJ1aWxkIE9LIQp2NC45LjE4NDogRmFpbGVkIHRvIGFwcGx5ISBQb3NzaWJsZSBkZXBl
bmRlbmNpZXM6CiAgICAwZTcwNDQ3NjA1ZjQgKCJkcm0vaTkxNTogTW92ZSBjb21tb24gY29kZSBv
dXQgb2YgaTkxNV9ncHVfZXJyb3IuYyIpCiAgICAxYjM2NTk1ZmZiMzUgKCJkcm0vaTkxNTogU2hv
dyBSSU5HIHJlZ2lzdGVycyB0aHJvdWdoIGRlYnVnZnMiKQogICAgMjc1ZjAzOWRiNTZmICgiZHJt
L2k5MTU6IE1vdmUgdXNlciBmYXVsdCB0cmFja2luZyB0byBhIHNlcGFyYXRlIGxpc3QiKQogICAg
MzU5NGEzZTIxZjFmICgiZHJtL2k5MTU6IFJlbW92ZSBzdXBlcmZsdW91cyBsb2NraW5nIGFyb3Vu
ZCB1c2VyZmF1bHRfbGlzdCIpCiAgICAzYjNmMTY1MGIxY2EgKCJkcm0vaTkxNTogQWxsb2NhdGUg
aW50ZWxfZW5naW5lX2NzIHN0cnVjdHVyZSBvbmx5IGZvciB0aGUgZW5hYmxlZCBlbmdpbmVzIikK
ICAgIDdjMTA4ZmQ4ZmVhYyAoImRybS9pOTE1OiBNb3ZlIGZlbmNlIGNhbmNlbGxhdGlvbiB0byBy
dW50aW1lIHN1c3BlbmQiKQogICAgOGJhYTFmMDRiOWVkICgiZHJtL2k5MTU6IFVwZGF0ZSBkZWJ1
Z2ZzIGRlc2NyaWJlX29iaigpIHRvIHNob3cgZmF1bHQtbWFwcGFibGUiKQogICAgOTZkNzc2MzQ1
Mjc3ICgiZHJtL2k5MTU6IFVzZSBhIHJhZGl4dHJlZSBmb3IgcmFuZG9tIGFjY2VzcyB0byB0aGUg
b2JqZWN0J3MgYmFja2luZyBzdG9yYWdlIikKICAgIDljODcwZDAzNjc0ZiAoImRybS9pOTE1OiBV
c2UgUlBNIGFzIHRoZSBiYXJyaWVyIGZvciBjb250cm9sbGluZyB1c2VyIG1tYXAgYWNjZXNzIikK
ICAgIGE0ZjVlYTY0ZjBhOCAoImRybS9pOTE1OiBSZWZhY3RvciBvYmplY3QgcGFnZSBBUEkiKQog
ICAgZDYzNjk1MWVjMDFiICgiZHJtL2k5MTU6IENsZWFudXAgaW5zdGRvbmUgY29sbGVjdGlvbiIp
CiAgICBmOGE3ZmRlNDU2MTAgKCJkcm0vaTkxNTogRGVmZXIgYWN0aXZlIHJlZmVyZW5jZSB1bnRp
bCByZXF1aXJlZCIpCgp2NC40LjE4NDogRmFpbGVkIHRvIGFwcGx5ISBQb3NzaWJsZSBkZXBlbmRl
bmNpZXM6CiAgICAwOWNiZmVhZjFhNWEgKCJtbSwgZnM6IGdldCByaWQgb2YgUEFHRV9DQUNIRV8q
IGFuZCBwYWdlX2NhY2hlX3tnZXQscmVsZWFzZX0gbWFjcm9zIikKICAgIDBhNzk4ZWI5MmU2ZCAo
ImRybS9pOTE1OiBSZWZhY3RvciBkdXBsaWNhdGUgb2JqZWN0IHZtYXAgZnVuY3Rpb25zIikKICAg
IDBiNTM3MjcyN2JlMyAoImRybS9pOTE1L2NtZHBhcnNlcjogVXNlIGNhY2hlZCB2bWFwcGluZ3Mi
KQogICAgMGU3NDllNTQyNDRlICgiZGF4OiBpbmNyZWFzZSBncmFudWxhcml0eSBvZiBkYXhfY2xl
YXJfYmxvY2tzKCkgb3BlcmF0aW9ucyIpCiAgICAwZWI5NzNkMzFkMGEgKCJkcm0vaTkxNTogQ2Fj
aGUgcmluZ2J1ZmZlciBHVFQgVk1BIikKICAgIDQzMzk0YzdkMGQzNiAoImRybS9pOTE1OiBFeHRy
YWN0IGk5MTVfZ2VtX29ial9wcmVwYXJlX3NobWVtX3dyaXRlKCkiKQogICAgNDQyMGNmZDNmNTFj
ICgic3RhZ2luZzogbHVzdHJlOiBmb3JtYXQgcHJvcGVybHkgYWxsIGNvbW1lbnQgYmxvY2tzIGZv
ciBMTmV0IGNvcmUiKQogICAgNTJkYjQwMGZjZDUwICgicG1lbSwgZGF4OiBjbGVhbiB1cCBjbGVh
cl9wbWVtKCkiKQogICAgNWZkODgzMzdkMjA5ICgic3RhZ2luZzogbHVzdHJlOiBmaXggYWxsIGNv
bmRpdGlvbmFsIGNvbXBhcmlzb24gdG8gemVybyBpbiBMTmV0IGxheWVyIikKICAgIDg1ZDEyMjVl
YzA2NiAoImRybS9pOTE1OiBJbnRyb2R1Y2UgJiB1c2UgbmV3IGxpZ2h0d2VpZ2h0IFNHTCBpdGVy
YXRvcnMiKQogICAgYTE4ODIyMmI2ZWQyICgibmV0OiBSZW5hbWUgTkVUSUZfRl9BTExfQ1NVTSB0
byBORVRJRl9GX0NTVU1fTUFTSyIpCiAgICBhNGY1ZWE2NGYwYTggKCJkcm0vaTkxNTogUmVmYWN0
b3Igb2JqZWN0IHBhZ2UgQVBJIikKICAgIGIyZTBkMTYyNWUxOSAoImRheDogZml4IGxpZmV0aW1l
IG9mIGluLWtlcm5lbCBkYXggbWFwcGluZ3Mgd2l0aCBkYXhfbWFwX2F0b21pYygpIikKICAgIGI5
YmNkMTRhMmI5MSAoImRybS9pOTE1OiBFeHRyYWN0IGNoZWNraW5nIGZvciBiYWNraW5nIHN0cnVj
dCBwYWdlcyB0byBhIGhlbHBlciIpCiAgICBkMWE1ZjJiNGQ4YTEgKCJibG9jazogdXNlIERBWCBm
b3IgcGFydGl0aW9uIHRhYmxlIHJlYWRzIikKICAgIGRlZjBjNWY2YjBjZCAoImRybS9pOTE1OiBN
YXAgdGhlIHJpbmdidWZmZXIgdXNpbmcgV0Igb24gTExDIG1hY2hpbmVzIikKICAgIGUxMDYyNGY4
YzA5NyAoInBtZW06IGZhaWwgaW8tcmVxdWVzdHMgdG8ga25vd24gYmFkIGJsb2NrcyIpCgoKTk9U
RTogVGhlIHBhdGNoIHdpbGwgbm90IGJlIHF1ZXVlZCB0byBzdGFibGUgdHJlZXMgdW50aWwgaXQg
aXMgdXBzdHJlYW0uCgpIb3cgc2hvdWxkIHdlIHByb2NlZWQgd2l0aCB0aGlzIHBhdGNoPwoKLS0K
VGhhbmtzLApTYXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
