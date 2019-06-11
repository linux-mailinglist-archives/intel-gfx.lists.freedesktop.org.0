Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEFC41663
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 22:48:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 847BC89218;
	Tue, 11 Jun 2019 20:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D6989218;
 Tue, 11 Jun 2019 20:48:33 +0000 (UTC)
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CE6320684;
 Tue, 11 Jun 2019 20:48:32 +0000 (UTC)
Date: Tue, 11 Jun 2019 13:48:31 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Shyam Saini <shyam.saini@amarulasolutions.com>
Message-Id: <20190611134831.a60c11f4b691d14d04a87e29@linux-foundation.org>
In-Reply-To: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
References: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1560286113;
 bh=y33lrlkQja7eoIovWsePDjdEdIHZ/RJoRj29PafhqOI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UgyruavCsSZLLvbVGn/8Url9hdMFqD/vc6cS2xvCxVAaLGSpqRyO7wgSl3uYSlnrC
 3+fJjYU9x+kvkKn62ONAnZk5QMPYKtIt9RU5V2bIySebdJX4pNazzbre4oO5OlK2mG
 81xtH5C+HAjNqK8Itw5roVmiKtRcfGnYRZlw+kVk=
Subject: Re: [Intel-gfx] [PATCH V2] include: linux: Regularise the use of
 FIELD_SIZEOF macro
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
Cc: keescook@chromium.org, kvm@vger.kernel.org,
 kernel-hardening@lists.openwall.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-mips@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, devel@lists.orangefs.org,
 bpf@vger.kernel.org, linux-ext4@vger.kernel.org,
 intel-gvt-dev@lists.freedesktop.org, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-arm-kernel@lists.infradead.org, mayhs11saini@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxMiBKdW4gMjAxOSAwMTowODozNiArMDUzMCBTaHlhbSBTYWluaSA8c2h5YW0uc2Fp
bmlAYW1hcnVsYXNvbHV0aW9ucy5jb20+IHdyb3RlOgoKPiBDdXJyZW50bHksIHRoZXJlIGFyZSAz
IGRpZmZlcmVudCBtYWNyb3MsIG5hbWVseSBzaXplb2ZfZmllbGQsIFNJWkVPRl9GSUVMRAo+IGFu
ZCBGSUVMRF9TSVpFT0Ygd2hpY2ggYXJlIHVzZWQgdG8gY2FsY3VsYXRlIHRoZSBzaXplIG9mIGEg
bWVtYmVyIG9mCj4gc3RydWN0dXJlLCBzbyB0byBicmluZyB1bmlmb3JtaXR5IGluIGVudGlyZSBr
ZXJuZWwgc291cmNlIHRyZWUgbGV0cyB1c2UKPiBGSUVMRF9TSVpFT0YgYW5kIHJlcGxhY2UgYWxs
IG9jY3VycmVuY2VzIG9mIG90aGVyIHR3byBtYWNyb3Mgd2l0aCB0aGlzLgo+IAo+IEZvciB0aGlz
IHB1cnBvc2UsIHJlZGVmaW5lIEZJRUxEX1NJWkVPRiBpbiBpbmNsdWRlL2xpbnV4L3N0ZGRlZi5o
IGFuZAo+IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9icGZfdXRpbC5oIGFuZCByZW1vdmUg
aXRzIGRlZmluYXRpb24gZnJvbQo+IGluY2x1ZGUvbGludXgva2VybmVsLmgKPiAKPiBJbiBmYXZv
dXIgb2YgRklFTERfU0laRU9GLCB0aGlzIHBhdGNoIGFsc28gZGVwcmVjYXRlcyBvdGhlciB0d28g
c2ltaWxhcgo+IG1hY3JvcyBzaXplb2ZfZmllbGQgYW5kIFNJWkVPRl9GSUVMRC4KPiAKPiBGb3Ig
Y29kZSBjb21wYXRpYmlsaXR5IHJlYXNvbiwgcmV0YWluIHNpemVvZl9maWVsZCBtYWNybyBhcyBh
IHdyYXBwZXIgbWFjcm8KPiB0byBGSUVMRF9TSVpFT0YKCkFzIEFsZXhleSBoYXMgcG9pbnRlZCBv
dXQsIEMgc3RydWN0cyBhbmQgdW5pb25zIGRvbid0IGhhdmUgZmllbGRzIC0KdGhleSBoYXZlIG1l
bWJlcnMuICBTbyB0aGlzIGlzIGFuIG9wcG9ydHVuaXR5IHRvIHN3aXRjaCBldmVyeXRoaW5nIHRv
CmEgbmV3IG1lbWJlcl9zaXplb2YoKS4KCldoYXQgZG8gcGVvcGxlIHRoaW5rIG9mIHRoYXQgYW5k
IGhvdyBkb2VzIHRoaXMgaW1wYWN0IHRoZSBwYXRjaCBmb290cHJpbnQ/Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
