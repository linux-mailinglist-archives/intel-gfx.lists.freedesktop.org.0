Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 348806E4BB
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 13:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 862D86E808;
	Fri, 19 Jul 2019 11:09:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D946E808
 for <Intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 11:09:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 04:09:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="179597152"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 19 Jul 2019 04:09:52 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6JB9qaT010658; Fri, 19 Jul 2019 12:09:52 +0100
To: Intel-gfx@lists.freedesktop.org, "Tvrtko Ursulin"
 <tvrtko.ursulin@linux.intel.com>
References: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
Date: Fri, 19 Jul 2019 13:09:51 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z459apjexaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190719094845.6242-1-tvrtko.ursulin@linux.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 0/2] Revert GuC by default
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxOSBKdWwgMjAxOSAxMTo0ODo0MyArMDIwMCwgVHZydGtvIFVyc3VsaW4gIAo8dHZy
dGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPiB3cm90ZToKCj4gRnJvbTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPgo+IEl0IHNlZW1zIGFic2VuY2Ugb2YgR3VD
IGZpbXJ3YXJlIGJyZWFrcyB0aGUgYm9vdCBpbiBhIGJhZCB3YXk6Cj4KPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1RyeWJvdF80NjQwLz8KPiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1RyeWJvdF80NjQwL2ZpLWljbC11Mi9ib290MC5s
b2cKCkhtbSwgZm9yIG1lIGxvb2tzIGxpa2UgYm9vdCBpcyBub3QgcHJlcGFyZWQgdG8gZHJpdmVy
IHByb2JlIGZhaWx1cmUuCgpJIGd1ZXNzIHRoaXMgbmVlZHMgdG8gYmUgZml4ZWQgc2VwYXJhdGVs
eSwgYXMgQ0kuQkFUICoqU1VDQ0VTUyoqIGlzCnJlYWxseSBtaXNsZWFkaW5nIGhlcmUgaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzkzMS8KCj4KPiBUdnJ0a28gVXJz
dWxpbiAoMik6Cj4gICBSZXZlcnQgImRybS9pOTE1L2d1YzogVHVybiBvbiBHdUMvSHVDIGF1dG8g
bW9kZSIKPiAgIFJldmVydCAiZHJtL2k5MTU6IFVwZGF0ZSBkZXNjcmlwdGlvbiBvZiBpOTE1LmVu
YWJsZV9ndWMgbW9kcGFyYW0iCgpNYXliZSBpbnN0ZWFkIG9mIHJldmVydGluZyBhYm92ZSBwYXRj
aGVzIHdlIGNhbiBqdXN0IGFwcGx5IHR3byBmaXhlczoKCjEuIElnbm9yZSBIdUMgZmlybXdhcmUg
ZmV0Y2gvbG9hZCBlcnJvcnMKVXNlciBzcGFjZSBpcyBhbHdheXMgcmVseWluZyBvbiBIVUNfU1RB
VFVTIHBhcmFtIHNvIHdlIHNob3VsZCByZWFsbHkKbmV2ZXIgdHJlYXQgSHVDIGZhaWx1cmVzIHNv
IHNlcmlvdXNseS4KCjIuIElnbm9yZSBHdUMgZmlybXdhcmUgZmV0Y2gvbG9hZCBlcnJvcnMgaWYg
R3VDIHN1Ym1pc3Npb24gd2FzIG5vdCBlbmFibGVkCklmIHdlIHVzZSBHdUMganVzdCB0byBhdXRo
ZW50aWNhdGUgdGhlIEh1QywgdGhlbiB3ZSBjYW4gaWdub3JlIEd1QyBlcnJvcnMsCgpMYXRlciBv
biwgb25jZSB3ZSBhcmUgY2xvc2VyIHRvIHJlLWVuYWJsaW5nIEd1QyBzdWJtaXNzaW9uIGZlYXR1
cmUsIHdlIGNhbgphZGQgbW9yZSBwYXRjaGVzIHRvIGNoYW5nZSBjdXJyZW50ICdmYWlsIG9uIEd1
QyBlcnJvcicgYmVoYXZpb3I6CgozLiBJZ25vcmUgR3VDIGZpcm13YXJlIGVycm9ycyBpZiBHdUMg
c3VibWlzc2lvbiB3YXMgYXV0by1lbmFibGVkCldlIGNhbiBzdGlsbCBmYWxsYmFjayB0byBleGVj
bGlzdCBhdCB0aGUgY29zdCBvZiBzb21lIHJlc291cmNlcyBsb3N0CmZvciBHdUMgZGF0YSAoYnV0
IG1heWJlIHRoaXMgY2FuIGJlIHJlY2xhaW1lZCBhcyB3ZWxsKQoKNC4gS2VlcCBkcml2ZXIgbG9h
ZGVkIG9uIEd1QyBmdyBlcnJvcnMgaWYgR3VDIHN1Ym1pc3Npb24gd2FzIGV4cGxpY2l0bHkgIApl
bmFibGVkClRoZXJlIHdhcyBhbHJlYWR5IHNvbWUgYXBwcm9hY2ggZm9yIHRoYXQ6CglodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU4Mjk0LwpqdXN0IG5lZWRzIHNvbWUg
cmVmcmVzaGluZwoKTWljaGFsCgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1z
LmMgfCAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggfCAyICstCj4g
IDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
