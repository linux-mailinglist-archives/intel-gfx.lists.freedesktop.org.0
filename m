Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C8DBBA5D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 19:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59236E97A;
	Mon, 23 Sep 2019 17:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B78D36E97A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 17:23:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 10:23:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,541,1559545200"; d="scan'208";a="189122075"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.8.176])
 by fmsmga007.fm.intel.com with ESMTP; 23 Sep 2019 10:23:46 -0700
Date: Mon, 23 Sep 2019 10:23:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anna Karas <anna.karas@intel.com>
Message-ID: <20190923164011.kv5dmlshcbygswdj@ldmartin-desk1>
References: <20190923125640.22321-1-anna.karas@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923125640.22321-1-anna.karas@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Describe structure member in
 documentation
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMDM6NTY6NDBQTSArMDMwMCwgQW5uYSBLYXJhcyB3cm90
ZToKPkFkZCBkZXNjcmlwdGlvbiBvZiB3YWtlcmVmIG1lbWJlciBvZiBpbnRlbF9zaGFyZWRfZHBs
bCBzdHJ1Y3R1cmUgdG8KPmRvY3VtZW50YXRpb24uCj4KPkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPkNjOiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2ly
ZWRkeUBpbnRlbC5jb20+Cj5TaWduZWQtb2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5hLmthcmFzQGlu
dGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9t
Z3IuaCB8IDUgKysrKysKPiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4KPmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgKPmluZGV4IDEwNGNm
NmQ0MjMzMy4uZTM1ZGQ2YjA0NDQzIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmgKPkBAIC0zMzcsNiArMzM3LDExIEBAIHN0cnVjdCBpbnRlbF9z
aGFyZWRfZHBsbCB7Cj4gCSAqIEBpbmZvOiBwbGF0Zm9ybSBzcGVjaWZpYyBpbmZvCj4gCSAqLwo+
IAljb25zdCBzdHJ1Y3QgZHBsbF9pbmZvICppbmZvOwo+Kwo+KwkvKioKPisJICogQHdha2VyZWY6
IEEgZGV2aWNlLWxldmVsIHJ1bnRpbWUgcG0gcmVmZXJlbmNlIGdyYWJiZWQgb25seSBpZgo+Kwkg
KiBpdCBpcyBwb3dlcmVkIG9uLgo+KwkgKi8KCmJ1dCB0aGlzIGlzIG9ubHkgZ3JhYmJlZCBmb3Ig
RFBMTDQsIG9uIEVITC4KCiJJbiBzb21lIHBsYXRmb3JtcyBhIGRldmljZS1sZXZlbCBydW50aW1l
IHBtIHJlZmVyZW5jZSBtYXkgbmVlZCB0byBiZQpncmFiYmVkIHRvIGRpc2FibGUgREMgc3RhdGVz
IHdoaWxlIHRoaXMgRFBMTCBpcyBlbmFibGVkIiB3b3VsZCBiZSBtb3JlCmFwcHJvcHJpYXRlIElN
Ty4KCkx1Y2FzIERlIE1hcmNoaQoKPiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gfTsKPgo+
LS0gCj4yLjE5LjAKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
