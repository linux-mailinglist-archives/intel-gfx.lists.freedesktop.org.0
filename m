Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31917305095
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 05:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9241C6E508;
	Wed, 27 Jan 2021 04:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F0B6E508
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 04:16:23 +0000 (UTC)
IronPort-SDR: 1FLRvUV/qHQSReRhadIx8kQ758+kCQZ0FJAeKQARSSgoygWghGAWcg/XIGx1q4OmOZURCxDmbq
 6dzYG6rgz6eQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="159790082"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="159790082"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:16:22 -0800
IronPort-SDR: 6iMCMsTlEj+6nh3w6Mc6GlaDZVhmiVBH1P93OP544q7xzY3MgHudbnmgVO0c8lWcvPUF+2ijck
 qrA8G0qVBtbw==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="429957112"
Received: from njcaminx-mobl.amr.corp.intel.com (HELO [10.251.9.202])
 ([10.251.9.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:16:21 -0800
To: intel-gfx@lists.freedesktop.org
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-2-aditya.swarup@intel.com>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <a5f34b7f-fb18-0ff3-5507-65d230098ae2@intel.com>
Date: Tue, 26 Jan 2021 20:16:21 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210127041159.136409-2-aditya.swarup@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/adl_s: Update PHY_MISC
 programming
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMS8yNi8yMSA4OjExIFBNLCBBZGl0eWEgU3dhcnVwIHdyb3RlOgo+IEZyb206IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gCj4gQURMLVMgc3dpdGNoZXMgdXAgd2hp
Y2ggUEhZcyBhcmUgY29uc2lkZXJlZCBhIG1hc3RlciB0byBvdGhlciBQSFlzOwo+IFBIWS1DIGlz
IG5vIGxvbmdlciBhIG1hc3RlciwgYnV0IFBIWS1EIGlzIG5vdy4KPiAKPiBCc3BlYzogNDkyOTEK
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPgo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBA
aW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50
ZWwuY29tPgoKQWRpdHlhCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbWJvX3BoeS5jIHwgMTIgKysrKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jCj4gaW5kZXggZGQ0NWNiYWZjZjQyLi5jNTU4MTNj
NjE5NGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b21ib19waHkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29t
Ym9fcGh5LmMKPiBAQCAtMTg3LDEwICsxODcsMTYgQEAgc3RhdGljIGJvb2wgaGFzX3BoeV9taXNj
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtIHBoeSBwaHkpCj4gIAkgKiBTb21l
IHBsYXRmb3JtcyBvbmx5IGV4cGVjdCBQSFlfTUlTQyB0byBiZSBwcm9ncmFtbWVkIGZvciBQSFkt
QSBhbmQKPiAgCSAqIFBIWS1CIGFuZCBtYXkgbm90IGV2ZW4gaGF2ZSBpbnN0YW5jZXMgb2YgdGhl
IHJlZ2lzdGVyIGZvciB0aGUKPiAgCSAqIG90aGVyIGNvbWJvIFBIWSdzLgo+ICsJICoKPiArCSAq
IEFETC1TIHRlY2huaWNhbGx5IGhhcyB0aHJlZSBpbnN0YW5jZXMgb2YgUEhZX01JU0MsIGJ1dCBv
bmx5IHJlcXVpcmVzCj4gKwkgKiB0aGF0IHdlIHByb2dyYW0gaXQgZm9yIFBIWSBBLgo+ICAJICov
Cj4gLQlpZiAoSVNfSlNMX0VITChpOTE1KSB8fAo+IC0JICAgIElTX1JPQ0tFVExBS0UoaTkxNSkg
fHwKPiAtCSAgICBJU19ERzEoaTkxNSkpCj4gKwo+ICsJaWYgKElTX0FMREVSTEFLRV9TKGk5MTUp
KQo+ICsJCXJldHVybiBwaHkgPT0gUEhZX0E7Cj4gKwllbHNlIGlmIChJU19KU0xfRUhMKGk5MTUp
IHx8Cj4gKwkJIElTX1JPQ0tFVExBS0UoaTkxNSkgfHwKPiArCQkgSVNfREcxKGk5MTUpKQo+ICAJ
CXJldHVybiBwaHkgPCBQSFlfQzsKPiAgCj4gIAlyZXR1cm4gdHJ1ZTsKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
