Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD7DEA724
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 23:52:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D556EBB3;
	Wed, 30 Oct 2019 22:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34E36EBB3
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 22:52:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 15:52:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; d="scan'208";a="198824610"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 30 Oct 2019 15:52:48 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191026003507.21769-1-daniele.ceraolospurio@intel.com>
 <op.z99j4pf3xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <29c880ec-ff52-4266-2e8a-43c70cdd817c@intel.com>
Date: Wed, 30 Oct 2019 15:52:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.z99j4pf3xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/uc: define GuC and HuC
 binaries for TGL
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMC8yNi8xOSAzOjQ0IEFNLCBNaWNoYWwgV2FqZGVjemtvIHdyb3RlOgo+IE9uIFNhdCwg
MjYgT2N0IDIwMTkgMDI6MzU6MDYgKzAyMDAsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gCj4gPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+IHdyb3RlOgo+IAo+PiBHdUMgMzUuMi4wIGFu
ZCBIdUMgNy4wLjMgYXJlIHRoZSBmaXJzdCBwcm9kdWN0aW9uIHJlbGVhc2VzIGZvciBUR0wuCj4+
IEd1QyAzNS4yIGZvciBnZW4xMiBpcyBpbnRlcmZhY2UtY29tcGF0aWJsZSB3aXRoIDMzLjAgb24g
b2xkZXIgZ2VucywKPj4gYmVjYXVzZSB0aGUgZGlmZmVyZW5jZXMgYXJlIHJlbGF0ZWQgdG8gYWRk
aXRpb25hbCBibG9ja3MvY29tbWFuZHMgaW4KPj4gdGhlIGludGVyZmFjZSB0byBzdXBwb3J0IG5l
dyBHZW4xMiBmZWF0dXJlcy4gVGhlc2UgcGFydHMgb2YgdGhlCj4+IGludGVyZmFjZSB3aWxsIGJl
IGFkZGVkIHdoZW4gdGhlIHJlbGV2YW50IGZlYXR1cmVzIGFyZSBlbmFibGVkLgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9A
aW50ZWwuY29tPgo+PiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4+IENjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+
Cj4+IC0tLQo+PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCA1
ICsrKysrCj4+IMKgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyAKPj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4+IGluZGV4IGJiNDg4OWQyMzQ2
ZC4uMDkyMDFmMTJmNWNjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Y19mdy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmMKPj4gQEAgLTM3LDggKzM3LDEzIEBAIHZvaWQgaW50ZWxfdWNfZndfY2hhbmdlX3N0
YXR1cyhzdHJ1Y3QgaW50ZWxfdWNfZncgCj4+ICp1Y19mdywKPj4gwqAvKgo+PiDCoCAqIExpc3Qg
b2YgcmVxdWlyZWQgR3VDIGFuZCBIdUMgYmluYXJpZXMgcGVyLXBsYXRmb3JtLgo+PiDCoCAqIE11
c3QgYmUgb3JkZXJlZCBiYXNlZCBvbiBwbGF0Zm9ybSArIHJldmlkLCBmcm9tIG5ld2VyIHRvIG9s
ZGVyLgo+PiArICoKPj4gKyAqIFRHTCAzNS4yIGlzIGludGVyZmFjZS1jb21wYXRpYmxlIHdpdGgg
MzMuMCBmb3IgcHJldmlvdXMgZ2Vucy4gVGhlIAo+PiBkZWx0YXMKPj4gKyAqIGJldHdlZW4gMzMu
MCBhbmQgMzUuMiBhcmUgb25seSByZWxhdGVkIHRvIG5ldyBhZGRpdGlvbnMgdG8gc3VwcG9ydCAK
Pj4gbmV3IGdlbjEyCj4+ICsgKiBmZWF0dXJlcy4KPiAKPiBuaXQ6IHMvZ2VuMTIvR2VuMTIgKHNh
bWUgZm9yICJnZW5zIiksIGhlcmUgYW5kIGluIHRoZSBjb21taXQgbWVzc2FnZQo+IAo+IFJldmll
d2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiAK
CkJvdGggYmxvYnMgYXJlIGxvYWRpbmcgZmluZSBpbiBDSSwgc28gZml4ZWQgdGhlIHR5cG9zIGFu
ZCBwdXNoZWQuCgpUaGFua3MsCkRhbmllbGUKCj4gVGhhbmtzLAo+IE1pY2hhbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
