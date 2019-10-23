Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C831E26BB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 00:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7628F6E084;
	Wed, 23 Oct 2019 22:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E248E6E039
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 22:56:19 +0000 (UTC)
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77AFA21929;
 Wed, 23 Oct 2019 22:56:19 +0000 (UTC)
Date: Wed, 23 Oct 2019 15:56:19 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-Id: <20191023155619.43e0013f0c8c673a5c508c1e@linux-foundation.org>
In-Reply-To: <20191023131308.9420-1-jani.nikula@intel.com>
References: <20191023131308.9420-1-jani.nikula@intel.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1571871379;
 bh=pH0FnxHuQ4uryY+5yag7Co6S+Z3nSAfsh/gAbdxNnLk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NZLyOT+ZqApYNjFfkvN4E7nfBNCZAjOdC/wzoETDChxjDRKMAXrf0iSDA2NpO1dAl
 n3jrJoabu0ncBYm24CEnLneZZFelnIqDG07Oa2FG2xVneQxq6qjLqnh4rNvt1Xk8HB
 diUUCetS09WEi0qR/QGP/DU2B2gikuUL57m32dSk=
Subject: Re: [Intel-gfx] [PATCH v4] string-choice: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Vishal Kulkarni <vishal@chelsio.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMyBPY3QgMjAxOSAxNjoxMzowOCArMDMwMCBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPiB3cm90ZToKCj4gVGhlIGtlcm5lbCBoYXMgcGxlbnR5IG9mIHRlcm5hcnkg
b3BlcmF0b3JzIHRvIGNob29zZSBiZXR3ZWVuIGNvbnN0YW50Cj4gc3RyaW5ncywgc3VjaCBhcyBj
b25kaXRpb24gPyAieWVzIiA6ICJubyIsIGFzIHdlbGwgYXMgdmFsdWUgPT0gMSA/ICIiIDoKPiAi
cyI6Cj4gCj4gJCBnaXQgZ3JlcCAnPyAieWVzIiA6ICJubyInIHwgd2MgLWwKPiAyNTgKPiAkIGdp
dCBncmVwICc/ICJvbiIgOiAib2ZmIicgfCB3YyAtbAo+IDIwNAo+ICQgZ2l0IGdyZXAgJz8gImVu
YWJsZWQiIDogImRpc2FibGVkIicgfCB3YyAtbAo+IDE5Ngo+ICQgZ2l0IGdyZXAgJz8gIiIgOiAi
cyInIHwgd2MgLWwKPiAyNQo+IAo+IEFkZGl0aW9uYWxseSwgdGhlcmUgYXJlIHNvbWUgb2NjdXJl
bmNlcyBvZiB0aGUgc2FtZSBpbiByZXZlcnNlIG9yZGVyLAo+IHNwbGl0IHRvIG11bHRpcGxlIGxp
bmVzLCBvciBvdGhlcndpc2Ugbm90IGNhdWdodCBieSB0aGUgc2ltcGxlIGdyZXAuCj4gCj4gQWRk
IGhlbHBlcnMgdG8gcmV0dXJuIHRoZSBjb25zdGFudCBzdHJpbmdzLiBSZW1vdmUgZXhpc3Rpbmcg
ZXF1aXZhbGVudAo+IGFuZCBjb25mbGljdGluZyBmdW5jdGlvbnMgaW4gaTkxNSwgY3hnYjQsIGFu
ZCBVU0IgY29yZS4gRnVydGhlcgo+IGNvbnZlcnNpb24gY2FuIGJlIGRvbmUgaW5jcmVtZW50YWxs
eS4KPiAKPiBUaGUgbWFpbiBnb2FsIGhlcmUgaXMgdG8gYWJzdHJhY3QgcmVjdXJyaW5nIHBhdHRl
cm5zLCBhbmQgc2xpZ2h0bHkgY2xlYW4KPiB1cCB0aGUgY29kZSBiYXNlIGJ5IG5vdCBvcGVuIGNv
ZGluZyB0aGUgdGVybmFyeSBvcGVyYXRvcnMuCgpGYWlyIGVub3VnaC4KCj4gLS0tIC9kZXYvbnVs
bAo+ICsrKyBiL2luY2x1ZGUvbGludXgvc3RyaW5nLWNob2ljZS5oCj4gQEAgLTAsMCArMSwzMSBA
QAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCj4gKy8qCj4gKyAqIENvcHly
aWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBfX1NU
UklOR19DSE9JQ0VfSF9fCj4gKyNkZWZpbmUgX19TVFJJTkdfQ0hPSUNFX0hfXwo+ICsKPiArI2lu
Y2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gKwo+ICtzdGF0aWMgaW5saW5lIGNvbnN0IGNoYXIgKnll
c25vKGJvb2wgdikKPiArewo+ICsJcmV0dXJuIHYgPyAieWVzIiA6ICJubyI7Cj4gK30KPiArCj4g
K3N0YXRpYyBpbmxpbmUgY29uc3QgY2hhciAqb25vZmYoYm9vbCB2KQo+ICt7Cj4gKwlyZXR1cm4g
diA/ICJvbiIgOiAib2ZmIjsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSBjb25zdCBjaGFyICpl
bmFibGVkZGlzYWJsZWQoYm9vbCB2KQo+ICt7Cj4gKwlyZXR1cm4gdiA/ICJlbmFibGVkIiA6ICJk
aXNhYmxlZCI7Cj4gK30KPiArCj4gK3N0YXRpYyBpbmxpbmUgY29uc3QgY2hhciAqcGx1cmFsKGxv
bmcgdikKPiArewo+ICsJcmV0dXJuIHYgPT0gMSA/ICIiIDogInMiOwo+ICt9Cj4gKwo+ICsjZW5k
aWYgLyogX19TVFJJTkdfQ0hPSUNFX0hfXyAqLwoKVGhlc2UgYXJlbid0IHZlcnkgZ29vZCBmdW5j
dGlvbiBuYW1lcy4gIEJldHRlciB0byBjcmVhdGUgYSBrZXJuZWwtc3R5bGUKbmFtZXNwYWNlIHN1
Y2ggYXMgImNob2ljZV8iIGFuZCB0aGVuIGFkZCB0aGUgZXhwZWN0ZWQgdW5kZXJzY29yZXM6Cgpj
aG9pY2VfeWVzX25vKCkKY2hvaWNlX2VuYWJsZWRfZGlzYWJsZWQoKQpjaG9pY2VfcGx1cmFsKCkK
CihFeGFtcGxlOiBub3RlIHRoYXQgc2xhYmluZm8uYyBhbHJlYWR5IGhhcyBhbiAib25vZmYoKSIp
LgoKCkFsc28sIEkgd29ycnkgdGhhdCBtYWtpbmcgdGhlc2UgZnVuY3Rpb25zIGlubGluZSBtZWFu
cyB0aGF0IGVhY2ggLm8KZmlsZSB3aWxsIGNvbnRhaW4gaXRzIG93biBjb3B5IG9mIHRoZSBzdHJp
bmdzICgieWVzIiwgIm5vIiwgImVuYWJsZWQiLApldGMpIGlmIHRoZSAuYyBmaWxlIGNhbGxzIHRo
ZSByZWxldmFudCBoZWxwZXIuICBJJ20gbm90IHN1cmUgaWYgdGhlCmxpbmtlciBpcyBzbWFydCBl
bm91Z2ggKHlldCkgdG8gZml4IHRoaXMgdXAuICBJZiBub3QsIHdlIHdpbGwgZW5kIHVwCndpdGgg
YSBzbWFsbGVyIGtlcm5lbCBieSB1bmlubGluaW5nIHRoZXNlIGZ1bmN0aW9ucy4gCmxpYi9zdHJp
bmctY2hvaWNlLmMgd291bGQgc3VpdC4KCkFuZCBkb2luZyB0aGlzIHdpbGwgY2F1c2UgYWRkaXRp
b25hbCBzYXZpbmdzOiBjYWxsaW5nIGEgc2luZ2xlLWFyZwpvdXQtb2YtbGluZSBmdW5jdGlvbiBn
ZW5lcmF0ZXMgbGVzcyAudGV4dCB0aGFuIGNhbGxpbmcgeWVzbm8oKS4gIFdoZW4gSQpkaWQgdGhp
czogCgotLS0gYS9pbmNsdWRlL2xpbnV4L3N0cmluZy1jaG9pY2UuaH5zdHJpbmctY2hvaWNlLWFk
ZC15ZXNuby1vbm9mZi1lbmFibGVkZGlzYWJsZWQtcGx1cmFsLWhlbHBlcnMtZml4CisrKyBhL2lu
Y2x1ZGUvbGludXgvc3RyaW5nLWNob2ljZS5oCkBAIC04LDEwICs4LDcgQEAKIAogI2luY2x1ZGUg
PGxpbnV4L3R5cGVzLmg+CiAKLXN0YXRpYyBpbmxpbmUgY29uc3QgY2hhciAqeWVzbm8oYm9vbCB2
KQotewotCXJldHVybiB2ID8gInllcyIgOiAibm8iOwotfQorY29uc3QgY2hhciAqeWVzbm8oYm9v
bCB2KTsKIAogc3RhdGljIGlubGluZSBjb25zdCBjaGFyICpvbm9mZihib29sIHYpCiB7CgpUaGUg
dGV4dCBzZWdtZW50IG9mIGRyaXZlcnMvbmV0L2V0aGVybmV0L2NoZWxzaW8vY3hnYjQvY3hnYjRf
ZGVidWdmcy5vCig3OCBjYWxsc2l0ZXMpIHNocnVuayBieSAxMTggYnl0ZXMuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
