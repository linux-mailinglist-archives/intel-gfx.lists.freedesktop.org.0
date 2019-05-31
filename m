Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28B730C4D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 12:05:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D280B89202;
	Fri, 31 May 2019 10:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6790889202
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 10:05:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 03:05:50 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.38])
 by fmsmga007.fm.intel.com with ESMTP; 31 May 2019 03:05:50 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1hWeQ1-0002bN-8I; Fri, 31 May 2019 13:05:49 +0300
Date: Fri, 31 May 2019 13:05:49 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190531100549.GW22949@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
 <20190529232737.31515-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529232737.31515-3-lucas.demarchi@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/5] lib/igt_core: 0 is a valid val
 for long options
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjksIDIwMTkgYXQgMDQ6Mjc6MzVQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFRoaXMgaXMgdXN1YWxseSB1c2VkIGJ5IGxvbmcgb3B0aW9ucyB3aGVuIHdvcmtp
bmcgd2l0aCBlbnVtIHRvIHNldCBsb25nCj4gb3B0aW9uIHZhbHVlcy4gU28gcmVwbGFjZSB0aGUg
c3RyY2hyKCkgd2l0aCBhIG1lbWNocigpIHRvIHRha2UgdGhhdCBpbnRvCj4gYWNjb3VudC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KClJldmlld2VkLWJ5OiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4K
ClRoZSBsYXR0ZXIgc3RyY2hyLW1lbWNociBjaGFuZ2UgaXMgbmVlZGxlc3MgYnV0IG1laC4KCgo+
IC0tLQo+ICBsaWIvaWd0X2NvcmUuYyB8IDUgKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvbGliL2lndF9jb3Jl
LmMgYi9saWIvaWd0X2NvcmUuYwo+IGluZGV4IDgxNGY1YzcyLi5hMGI3ZTU4MSAxMDA2NDQKPiAt
LS0gYS9saWIvaWd0X2NvcmUuYwo+ICsrKyBiL2xpYi9pZ3RfY29yZS5jCj4gQEAgLTY4MCw2ICs2
ODAsNyBAQCBzdGF0aWMgaW50IGNvbW1vbl9pbml0KGludCAqYXJnYywgY2hhciAqKmFyZ3YsCj4g
IAl9Owo+ICAJY2hhciAqc2hvcnRfb3B0czsKPiAgCWNvbnN0IGNoYXIgKnN0ZF9zaG9ydF9vcHRz
ID0gImgiOwo+ICsJc2l6ZV90IHN0ZF9zaG9ydF9vcHRzX2xlbiA9IHN0cmxlbihzdGRfc2hvcnRf
b3B0cyk7Cj4gIAlzdHJ1Y3Qgb3B0aW9uICpjb21iaW5lZF9vcHRzOwo+ICAJaW50IGV4dHJhX29w
dF9jb3VudDsKPiAgCWludCBhbGxfb3B0X2NvdW50Owo+IEBAIC03MTMsNyArNzE0LDcgQEAgc3Rh
dGljIGludCBjb21tb25faW5pdChpbnQgKmFyZ2MsIGNoYXIgKiphcmd2LAo+ICAKPiAgCQkvKiBj
aGVjayBmb3IgY29uZmxpY3RzIHdpdGggc3RhbmRhcmQgc2hvcnQgb3B0aW9ucyAqLwo+ICAJCWlm
IChleHRyYV9sb25nX29wdHNbZXh0cmFfb3B0X2NvdW50XS52YWwgIT0gJzonCj4gLQkJICAgICYm
IChjb25mbGljdGluZ19jaGFyID0gc3RyY2hyKHN0ZF9zaG9ydF9vcHRzLCBleHRyYV9sb25nX29w
dHNbZXh0cmFfb3B0X2NvdW50XS52YWwpKSkgewo+ICsJCSAgICAmJiAoY29uZmxpY3RpbmdfY2hh
ciA9IG1lbWNocihzdGRfc2hvcnRfb3B0cywgZXh0cmFfbG9uZ19vcHRzW2V4dHJhX29wdF9jb3Vu
dF0udmFsLCBzdGRfc2hvcnRfb3B0c19sZW4pKSkgewo+ICAJCQlpZ3RfY3JpdGljYWwoIkNvbmZs
aWN0aW5nIGxvbmcgYW5kIHNob3J0IG9wdGlvbiAndmFsJyByZXByZXNlbnRhdGlvbiBiZXR3ZWVu
IC0tJXMgYW5kIC0lY1xuIiwKPiAgCQkJCSAgICAgZXh0cmFfbG9uZ19vcHRzW2V4dHJhX29wdF9j
b3VudF0ubmFtZSwKPiAgCQkJCSAgICAgKmNvbmZsaWN0aW5nX2NoYXIpOwo+IEBAIC03MjcsNyAr
NzI4LDcgQEAgc3RhdGljIGludCBjb21tb25faW5pdChpbnQgKmFyZ2MsIGNoYXIgKiphcmd2LAo+
ICAJCQljb250aW51ZTsKPiAgCj4gIAkJLyogY2hlY2sgZm9yIGNvbmZsaWN0cyB3aXRoIHN0YW5k
YXJkIHNob3J0IG9wdGlvbnMgKi8KPiAtCQlpZiAoc3RyY2hyKHN0ZF9zaG9ydF9vcHRzLCBleHRy
YV9zaG9ydF9vcHRzW2ldKSkgewo+ICsJCWlmIChtZW1jaHIoc3RkX3Nob3J0X29wdHMsIGV4dHJh
X3Nob3J0X29wdHNbaV0sIHN0ZF9zaG9ydF9vcHRzX2xlbikpIHsKPiAgCQkJaWd0X2NyaXRpY2Fs
KCJDb25mbGljdGluZyBzaG9ydCBvcHRpb246IC0lY1xuIiwgc3RkX3Nob3J0X29wdHNbaV0pOwo+
ICAJCQlhc3NlcnQoMCk7Cj4gIAkJfQo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
