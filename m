Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 448AF2D9757
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 12:29:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C625D6E1D7;
	Mon, 14 Dec 2020 11:29:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1875B6E1D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 11:29:00 +0000 (UTC)
IronPort-SDR: l9kqf2QNejckprsdbkiTV4G6l1jJcVQzOYqmz7zX2A0nNpcdS1piN/KaILgf8BDsGuXHw/W8xX
 yiXUvl00Khgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="174835647"
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="174835647"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 03:28:58 -0800
IronPort-SDR: yJVSKdF1ejBeRKZJB37vt4B69Kynz7rEa+GT89iySpMpGxJfyNmSUaffnVERwIF+jAQVWlYaja
 6RBZt8yiJkQQ==
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="351267311"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 03:28:56 -0800
Date: Mon, 14 Dec 2020 16:45:37 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <20201214111537.GG9309@intel.com>
References: <20201211171421.4048499-1-gwan-gyeong.mun@intel.com>
 <20201211171421.4048499-2-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201211171421.4048499-2-gwan-gyeong.mun@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v5 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0xMi0xMSBhdCAxOToxNDoyMSArMDIwMCwgR3dhbi1neWVvbmcgTXVuIHdyb3RlOgo+
IEluIG9yZGVyIHRvIHN1cHBvcnQgdGhlIFBTUiBzdGF0ZSBvZiBlYWNoIHRyYW5zY29kZXIsIGl0
IGFkZHMKPiBpOTE1X3Bzcl9zdGF0dXMgdG8gc3ViLWRpcmVjdG9yeSBvZiBlYWNoIHRyYW5zY29k
ZXIuCj4gCj4gdjI6IENoYW5nZSB1c2luZyBvZiBTeW1ib2xpYyBwZXJtaXNzaW9ucyAnU19JUlVH
TycgdG8gdXNpbmcgb2Ygb2N0YWwKPiAgICAgcGVybWlzc2lvbnMgJzA0NDQnCj4gdjU6IEFkZHJl
c3NlZCBKSmFuaSBOaWt1bGEncyByZXZpZXcgY29tbWVudHMKPiAgLSBSZW1vdmUgY2hlY2tpbmcg
b2YgR2VuMTIgZm9yIGk5MTVfcHNyX3N0YXR1cy4KPiAgLSBBZGQgY2hlY2sgb2YgSEFTX1BTUigp
Cj4gIC0gUmVtb3ZlIG1lYW5pbmdsZXNzIGNoZWNrIHJvdXRpbmUuCj4gCj4gU2lnbmVkLW9mZi1i
eTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgo+IENjOiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFu
Lmd1cHRhQGludGVsLmNvbT4KPiAtLS0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGVidWdmcy5jIHwgMTYgKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwo+IGluZGV4IDA0MTA1MzE2N2Q3Zi4uZDJk
ZDYxYzRlZTBiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCj4gQEAgLTIyMjQsNiArMjIyNCwxNiBAQCBzdGF0aWMg
aW50IGk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHlfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZv
aWQgKmRhdGEpCj4gIH0KPiAgREVGSU5FX1NIT1dfQVRUUklCVVRFKGk5MTVfaGRjcF9zaW5rX2Nh
cGFiaWxpdHkpOwo+ICAKPiArc3RhdGljIGludCBpOTE1X3Bzcl9zdGF0dXNfc2hvdyhzdHJ1Y3Qg
c2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCj4gK3sKPiArCXN0cnVjdCBkcm1fY29ubmVjdG9yICpj
b25uZWN0b3IgPSBtLT5wcml2YXRlOwo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9Cj4g
KwkJaW50ZWxfYXR0YWNoZWRfZHAodG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOwo+ICsK
PiArCXJldHVybiBpbnRlbF9wc3Jfc3RhdHVzKG0sIGludGVsX2RwKTsKPiArfQo+ICtERUZJTkVf
U0hPV19BVFRSSUJVVEUoaTkxNV9wc3Jfc3RhdHVzKTsKPiArCj4gICNkZWZpbmUgTFBTUF9DQVBB
QkxFKENPTkQpIChDT05EID8gc2VxX3B1dHMobSwgIkxQU1A6IGNhcGFibGVcbiIpIDogXAo+ICAJ
CQkJc2VxX3B1dHMobSwgIkxQU1A6IGluY2FwYWJsZVxuIikpCj4gIAo+IEBAIC0yMzk5LDYgKzI0
MDksMTIgQEAgaW50IGludGVsX2Nvbm5lY3Rvcl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yKQo+ICAJCQkJICAgIGNvbm5lY3RvciwgJmk5MTVfcHNyX3Npbmtfc3Rh
dHVzX2ZvcHMpOwo+ICAJfQo+ICAKPiArCWlmIChIQVNfUFNSKGRldl9wcml2KSAmJgo+ICsJICAg
IGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkgewo+
ICsJCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVfcHNyX3N0YXR1cyIsIDA0NDQsIHJvb3QsCkNv
dWxkIHdlIGtlZXAgdGhlIGZpbGUgbmFtZSBhcyBpOTE1X2VkcF9wc3Jfc3RhdHVzLCBhcyB3ZSBo
YXZlIHRvZGF5Pwp3aXRoIHRoYXQgYWRkcmVzc2VkLgpSZXZpZXdlZC1ieTogQW5zaHVtYW4gR3Vw
dGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiArCQkJCSAgICBjb25uZWN0b3IsICZpOTE1
X3Bzcl9zdGF0dXNfZm9wcyk7Cj4gKwl9Cj4gKwo+ICAJaWYgKGNvbm5lY3Rvci0+Y29ubmVjdG9y
X3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0IHx8Cj4gIAkgICAgY29ubmVj
dG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUEgfHwKPiAgCSAg
ICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQikg
ewo+IC0tIAo+IDIuMjUuMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
