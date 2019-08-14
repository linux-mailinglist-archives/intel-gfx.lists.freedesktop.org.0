Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0908D9F2
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 19:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CCBE6E78A;
	Wed, 14 Aug 2019 17:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C43E6E78A
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 17:14:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A46B8208C2;
 Wed, 14 Aug 2019 17:14:20 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Wed, 14 Aug 2019 19:01:53 +0200
Message-Id: <20190814165749.231806301@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814165744.822314328@linuxfoundation.org>
References: <20190814165744.822314328@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1565802861;
 bh=6x8AFhRj1EO0tbyspskxethUmHszG//jXzxC6/aIAZo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MzidlgLApAojs+ubixfblFgL23Brmyr7xMf7thT3YW6aKrDVe5XhBd0SsyiA00Wlu
 Dx99wFOc/6xMvCKaUNSJyw4m/9WVeLrGfW5FkHNA0ZzVl8ze0wE+II3hoUCuf+n8QK
 t6209uqeKpdVVIWOh6CTSMNbT5EmufkmQyrx/ZhA=
Subject: [Intel-gfx] [PATCH 4.14 55/69] drm/i915: Fix wrong escape clock
 divisor init for GLK
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
Cc: Jani Nikula <jani.nikula@intel.com>, Deepak M <m.deepak@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+
Cgpjb21taXQgNzNhMGZmMGIzMGFmNzliZjAzMDNkNTU3ZWI4MmYxZDE5NDViYjZlZSB1cHN0cmVh
bS4KCkFjY29yZGluZyB0byBCc3BlYyBjbG9jayBkaXZpc29yIHJlZ2lzdGVycyBpbiBHZW1pbmlM
YWtlCnNob3VsZCBiZSBpbml0aWFsaXplZCBieSBzaGlmdGluZyAxKDw8KSB0byBhbW91bnQgb2Yg
Y29ycmVzcG9uZGVudApkaXZpc29yLiBXaGlsZSBpOTE1IHdhcyB3cml0aW5nIGFsbCB0aGlzIHRp
bWUgdGhhdCB2YWx1ZSBhcyBpcy4KClN1cnByaXNpbmdseSB0aGF0IGl0IGJ5IGFjY2lkZW50IHdv
cmtlZCwgdW50aWwgd2UgbWV0IHNvbWUgaXNzdWVzCndpdGggTWljcm90ZWNoIEV0YWIuCgp2Mjog
QWRkZWQgRml4ZXMgdGFnIGFuZCBjYwp2MzogQWRkZWQgc3RhYmxlIHRvIGNjIGFzIHdlbGwuCgpT
aWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlA
aW50ZWwuY29tPgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTA4ODI2CkZpeGVzOiBiY2M2NTcwMDQ4NDEgKCJkcm0vaTkxNS9nbGs6IFByb2dy
YW0gdHhlc2MgY2xvY2sgZGl2aWRlciBmb3IgR0xLIikKQ2M6IERlZXBhayBNIDxtLmRlZXBha0Bp
bnRlbC5jb20+CkNjOiBNYWRoYXYgQ2hhdWhhbiA8bWFkaGF2LmNoYXVoYW5AaW50ZWwuY29tPgpD
YzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5s
YWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+CkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9t
c2dpZC8yMDE5MDcxMjA4MTkzOC4xNDE4NS0xLXN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29t
CihjaGVycnkgcGlja2VkIGZyb20gY29tbWl0IGNlNTJhZDVkZDUyY2ZhZjMzOTgwNTgzODRlMGZm
OTQxMzRiYmQ4OWMpClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+CgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzaV9wbGwuYyB8
ICAgIDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RzaV9wbGwuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfcGxsLmMKQEAgLTQyMiw4ICs0MjIsOCBAQCBzdGF0
aWMgdm9pZCBnbGtfZHNpX3Byb2dyYW1fZXNjX2Nsb2NrKHN0CiAJZWxzZQogCQl0eGVzYzJfZGl2
ID0gMTA7CiAKLQlJOTE1X1dSSVRFKE1JUElPX1RYRVNDX0NMS19ESVYxLCB0eGVzYzFfZGl2ICYg
R0xLX1RYX0VTQ19DTEtfRElWMV9NQVNLKTsKLQlJOTE1X1dSSVRFKE1JUElPX1RYRVNDX0NMS19E
SVYyLCB0eGVzYzJfZGl2ICYgR0xLX1RYX0VTQ19DTEtfRElWMl9NQVNLKTsKKwlJOTE1X1dSSVRF
KE1JUElPX1RYRVNDX0NMS19ESVYxLCAoMSA8PCAodHhlc2MxX2RpdiAtIDEpKSAmIEdMS19UWF9F
U0NfQ0xLX0RJVjFfTUFTSyk7CisJSTkxNV9XUklURShNSVBJT19UWEVTQ19DTEtfRElWMiwgKDEg
PDwgKHR4ZXNjMl9kaXYgLSAxKSkgJiBHTEtfVFhfRVNDX0NMS19ESVYyX01BU0spOwogfQogCiAv
KiBQcm9ncmFtIEJYVCBNaXBpIGNsb2NrcyBhbmQgZGl2aWRlcnMgKi8KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
