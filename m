Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 618BE173668
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 12:49:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7BB56F429;
	Fri, 28 Feb 2020 11:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F6476F429
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:49:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 03:49:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="238741376"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.66.115.214])
 ([10.66.115.214])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2020 03:49:28 -0800
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227235005.18706-1-jose.souza@intel.com>
 <87lfonqive.fsf@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <aae242f3-3730-f9fd-0adf-85805c9bb0e4@intel.com>
Date: Fri, 28 Feb 2020 17:19:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87lfonqive.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Use firmware v2.06 for TGL
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

CgpPbiAyOC1GZWItMjAgMTI6NDkgUE0sIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIFRodSwgMjcg
RmViIDIwMjAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPiB3
cm90ZToKPj4gTmV3IGZpcm13YXJlIGNvbnRhaW5zIG1pbm9yIGZpeGVzIGFyb3VuZCBjb250ZXh0
IHJlc3RvcmUuCj4gCj4gUGxlYXNlIGdldCB0aGUgZmlybXdhcmUgaW4gbGludXgtZmlybXdhcmUg
YW5kIENJIGZpcnN0Ogo+IAo+IDw3PlsgICAgNi4zMjg4ODRdIGk5MTUgMDAwMDowMDowMi4wOiBb
ZHJtOmludGVsX2Nzcl91Y29kZV9pbml0IFtpOTE1XV0gTG9hZGluZyBpOTE1L3RnbF9kbWNfdmVy
Ml8wNi5iaW4KPiA8ND5bICAgIDYuMzMwNjEyXSBpOTE1IDAwMDA6MDA6MDIuMDogRGlyZWN0IGZp
cm13YXJlIGxvYWQgZm9yIGk5MTUvdGdsX2RtY192ZXIyXzA2LmJpbiBmYWlsZWQgd2l0aCBlcnJv
ciAtMgo+IDw1PlsgICAgNi4zMzA2NDVdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSBGYWlsZWQg
dG8gbG9hZCBETUMgZmlybXdhcmUgaTkxNS90Z2xfZG1jX3ZlcjJfMDYuYmluLiBEaXNhYmxpbmcg
cnVudGltZSBwb3dlciBtYW5hZ2VtZW50Lgo+IDw1PlsgICAgNi4zMzA2NDhdIGk5MTUgMDAwMDow
MDowMi4wOiBbZHJtXSBETUMgZmlybXdhcmUgaG9tZXBhZ2U6IGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Zpcm13YXJlL2xpbnV4LWZpcm13YXJlLmdpdC90
cmVlL2k5MTUKPiAKPiBCUiwKPiBKYW5pLgo+IApVcGRhdGUgZnJvbSBDSSB0ZWFtOiBsaW51eC1m
aXJtd2FyZSB1cGRhdGVkIChtYW51YWxseSkgd2l0aCAKaTkxNS90Z2xfZG1jX3ZlcjJfMDYuYmlu
LiBSZXJ1biBpbml0aWF0ZWQuIE5leHQgcnVuLCB2Ml8wNiBzaG91bGQgYmUgbG9hZGVkLgo+IAo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
c3IuYyB8IDQgKystLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Nzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYwo+
PiBpbmRleCA1NzMyMGMxMjgzOWYuLjMxMTI1NzJjZmI3ZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jCj4+IEBAIC00MCw4ICs0MCw4IEBACj4+ICAgCj4+
ICAgI2RlZmluZSBHRU4xMl9DU1JfTUFYX0ZXX1NJWkUJCUlDTF9DU1JfTUFYX0ZXX1NJWkUKPj4g
ICAKPj4gLSNkZWZpbmUgVEdMX0NTUl9QQVRICQkJImk5MTUvdGdsX2RtY192ZXIyXzA0LmJpbiIK
Pj4gLSNkZWZpbmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9OKDIsIDQpCj4+
ICsjZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wNi5iaW4iCj4+ICsj
ZGVmaW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCA2KQo+PiAgICNk
ZWZpbmUgVEdMX0NTUl9NQVhfRldfU0laRQkJMHg2MDAwCj4+ICAgTU9EVUxFX0ZJUk1XQVJFKFRH
TF9DU1JfUEFUSCk7Cj4gCgotLSAKflN3YXRpIFNoYXJtYQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
