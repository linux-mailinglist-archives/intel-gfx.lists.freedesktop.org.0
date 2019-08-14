Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C59988D9B6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 19:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA2E46E789;
	Wed, 14 Aug 2019 17:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA6D36E789
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 17:11:19 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32CBF2084D;
 Wed, 14 Aug 2019 17:11:19 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Wed, 14 Aug 2019 19:01:39 +0200
Message-Id: <20190814165753.012400453@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814165748.991235624@linuxfoundation.org>
References: <20190814165748.991235624@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1565802679;
 bh=rjddxsjkbCSnuJKV0HAoHUNmScnWMLNIN/aIj+jKF10=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2jGM1++9BeRhiZlqXi6tTd81y0CF8ruAqpgi+HlEnLyXFVpI4x0ocq4WAiXI2qZ3y
 sW1b8uZoBd+6u8DS7b2484ok8zyXenjZGGsgDHz56O+Yk3Wf0t8GZZhL5aV1np0oNV
 brhtjKdu5ua8pd42A5xoDQv5tj89Rm4PeWnD7BcE=
Subject: [Intel-gfx] [PATCH 4.19 76/91] drm/i915: Fix wrong escape clock
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
bmRhdGlvbi5vcmc+CgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2lfcGxsLmMgfCAg
ICA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpX3BsbC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3Zsdl9kc2lfcGxsLmMKQEAgLTQxMyw4ICs0MTMsOCBAQCBzdGF0aWMgdm9p
ZCBnbGtfZHNpX3Byb2dyYW1fZXNjX2Nsb2NrKHN0CiAJZWxzZQogCQl0eGVzYzJfZGl2ID0gMTA7
CiAKLQlJOTE1X1dSSVRFKE1JUElPX1RYRVNDX0NMS19ESVYxLCB0eGVzYzFfZGl2ICYgR0xLX1RY
X0VTQ19DTEtfRElWMV9NQVNLKTsKLQlJOTE1X1dSSVRFKE1JUElPX1RYRVNDX0NMS19ESVYyLCB0
eGVzYzJfZGl2ICYgR0xLX1RYX0VTQ19DTEtfRElWMl9NQVNLKTsKKwlJOTE1X1dSSVRFKE1JUElP
X1RYRVNDX0NMS19ESVYxLCAoMSA8PCAodHhlc2MxX2RpdiAtIDEpKSAmIEdMS19UWF9FU0NfQ0xL
X0RJVjFfTUFTSyk7CisJSTkxNV9XUklURShNSVBJT19UWEVTQ19DTEtfRElWMiwgKDEgPDwgKHR4
ZXNjMl9kaXYgLSAxKSkgJiBHTEtfVFhfRVNDX0NMS19ESVYyX01BU0spOwogfQogCiAvKiBQcm9n
cmFtIEJYVCBNaXBpIGNsb2NrcyBhbmQgZGl2aWRlcnMgKi8KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
