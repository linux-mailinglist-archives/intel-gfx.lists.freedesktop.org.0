Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 610FFC3080
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 11:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2226789BA3;
	Tue,  1 Oct 2019 09:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3563889BA3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 09:42:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 02:42:41 -0700
X-IronPort-AV: E=Sophos;i="5.64,570,1559545200"; d="scan'208";a="185132814"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 02:42:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <20191001093849.GA2945163@kroah.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <8e697984-03b5-44f3-304e-42d303724eaa@rasmusvillemoes.dk>
 <20191001080739.18513-1-jani.nikula@intel.com>
 <20191001093849.GA2945163@kroah.com>
Date: Tue, 01 Oct 2019 12:42:34 +0300
Message-ID: <87blv0dcol.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] string-choice: add yesno(), onoff(),
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
Cc: linux-usb@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMSBPY3QgMjAxOSwgR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz4gd3JvdGU6Cj4gT24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMTE6MDc6MzlBTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFRoZSBrZXJuZWwgaGFzIHBsZW50eSBvZiB0ZXJu
YXJ5IG9wZXJhdG9ycyB0byBjaG9vc2UgYmV0d2VlbiBjb25zdGFudAo+PiBzdHJpbmdzLCBzdWNo
IGFzIGNvbmRpdGlvbiA/ICJ5ZXMiIDogIm5vIiwgYXMgd2VsbCBhcyB2YWx1ZSA9PSAxID8gIiIg
Ogo+PiAicyI6Cj4+IAo+PiAkIGdpdCBncmVwICc/ICJ5ZXMiIDogIm5vIicgfCB3YyAtbAo+PiAy
NTgKPj4gJCBnaXQgZ3JlcCAnPyAib24iIDogIm9mZiInIHwgd2MgLWwKPj4gMjA0Cj4+ICQgZ2l0
IGdyZXAgJz8gImVuYWJsZWQiIDogImRpc2FibGVkIicgfCB3YyAtbAo+PiAxOTYKPj4gJCBnaXQg
Z3JlcCAnPyAiIiA6ICJzIicgfCB3YyAtbAo+PiAyNQo+PiAKPj4gQWRkaXRpb25hbGx5LCB0aGVy
ZSBhcmUgc29tZSBvY2N1cmVuY2VzIG9mIHRoZSBzYW1lIGluIHJldmVyc2Ugb3JkZXIsCj4+IHNw
bGl0IHRvIG11bHRpcGxlIGxpbmVzLCBvciBvdGhlcndpc2Ugbm90IGNhdWdodCBieSB0aGUgc2lt
cGxlIGdyZXAuCj4+IAo+PiBBZGQgaGVscGVycyB0byByZXR1cm4gdGhlIGNvbnN0YW50IHN0cmlu
Z3MuIFJlbW92ZSBleGlzdGluZyBlcXVpdmFsZW50Cj4+IGFuZCBjb25mbGljdGluZyBmdW5jdGlv
bnMgaW4gaTkxNSwgY3hnYjQsIGFuZCBVU0IgY29yZS4gRnVydGhlcgo+PiBjb252ZXJzaW9uIGNh
biBiZSBkb25lIGluY3JlbWVudGFsbHkuCj4+IAo+PiBXaGlsZSB0aGUgbWFpbiBnb2FsIGhlcmUg
aXMgdG8gYWJzdHJhY3QgcmVjdXJyaW5nIHBhdHRlcm5zLCBhbmQgc2xpZ2h0bHkKPj4gY2xlYW4g
dXAgdGhlIGNvZGUgYmFzZSBieSBub3Qgb3BlbiBjb2RpbmcgdGhlIHRlcm5hcnkgb3BlcmF0b3Jz
LCB0aGVyZQo+PiBhcmUgYWxzbyBzb21lIHNwYWNlIHNhdmluZ3MgdG8gYmUgaGFkIHZpYSBiZXR0
ZXIgc3RyaW5nIGNvbnN0YW50Cj4+IHBvb2xpbmcuCj4+IAo+PiBDYzogSm9vbmFzIExhaHRpbmVu
IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+PiBDYzogUm9kcmlnbyBWaXZpIDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+PiBDYzogVmlzaGFsIEt1bGthcm5pIDx2aXNoYWxAY2hlbHNpby5jb20+Cj4+IENjOiBu
ZXRkZXZAdmdlci5rZXJuZWwub3JnCj4+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBs
aW51eGZvdW5kYXRpb24ub3JnPgo+PiBDYzogbGludXgtdXNiQHZnZXIua2VybmVsLm9yZwo+PiBD
YzogQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4KPj4gQ2M6IGxpbnV4
LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IEp1bGlhIExhd2FsbCA8anVsaWEubGF3YWxs
QGxpcDYuZnI+Cj4+IENjOiBSYXNtdXMgVmlsbGVtb2VzIDxsaW51eEByYXNtdXN2aWxsZW1vZXMu
ZGs+Cj4+IFJldmlld2VkLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5k
YXRpb24ub3JnPiAjIHYxCj4KPiBBcyB0aGlzIGlzIGEgdG90YWxseSBkaWZmZXJlbnQgdmVyc2lv
biwgcGxlYXNlIGRyb3AgbXkgcmV2aWV3ZWQtYnkgYXMKPiB0aGF0J3MgcmVhbGx5IG5vdCB0cnVl
IGhlcmUgOigKCkkgZGlkIGluZGljYXRlIGl0IHdhcyBmb3IgdjEuIEluZGVlZCB2MiB3YXMgZGlm
ZmVyZW50LCBidXQgY2FyZSB0bwplbGFib3JhdGUgd2hhdCdzIHdyb25nIHdpdGggdjM/CgpCUiwK
SmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRl
cgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
