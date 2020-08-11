Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A696A241AAF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 13:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E89C36E181;
	Tue, 11 Aug 2020 11:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19C16E181
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 11:56:21 +0000 (UTC)
IronPort-SDR: 2w8yQAzgFD5FQRhBQXmnjKT24TYL6GUk3/DYrDog7bbAtjEXmMNXStHF+jt/xR/Q8s94XfKL0L
 ZGEWKOXXzygQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="133250654"
X-IronPort-AV: E=Sophos;i="5.75,461,1589266800"; d="scan'208";a="133250654"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 04:56:20 -0700
IronPort-SDR: vNOerGtDqL98x0ThJqsjyu0PS4WnsPDdk4q1UHgeWbzz3l+99A9GNbqc8XeUE3sBohBnBPRaHo
 Wz34V938nX0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,461,1589266800"; d="scan'208";a="317701858"
Received: from vgurevix-mobl1.ger.corp.intel.com (HELO [10.249.45.68])
 ([10.249.45.68])
 by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2020 04:56:20 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-10-maarten.lankhorst@linux.intel.com>
 <47a24089-9db1-0b57-2dee-7ee8ec887624@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ec72a8a4-ab1e-9121-a84b-8ca586ad94c9@linux.intel.com>
Date: Tue, 11 Aug 2020 13:56:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <47a24089-9db1-0b57-2dee-7ee8ec887624@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/24] drm/i915: make lockdep slightly
 happier about execbuf.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTEtMDgtMjAyMCBvbSAwOTozNCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4KPiBPbiA4LzEwLzIwIDEyOjMwIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4gQXMg
c29vbiBhcyB3ZSBpbnN0YWxsIGZlbmNlcywgd2Ugc2hvdWxkIHN0b3AgYWxsb2NhdGluZyBtZW1v
cnkKPj4gaW4gb3JkZXIgdG8gcHJldmVudCBhbnkgcG90ZW50aWFsIGRlYWRsb2Nrcy4KPj4KPj4g
VGhpcyBpcyByZXF1aXJlZCBsYXRlciBvbiwgd2hlbiB3ZSBzdGFydCBhZGRpbmcgc3VwcG9ydCBm
b3IKPj4gZG1hLWZlbmNlIGFubm90YXRpb25zLCBhbmQgYWxzbyByZXF1aXJlZCBmb3IgdXNlcnB0
ci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgfCAxOCArKysrKysrKysrKystLS0tLS0KPj4gwqAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqAgOCArKysrKy0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5owqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAzICsrKwo+PiDCoCAzIGZpbGVzIGNoYW5n
ZWQsIDIwIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+PiBpbmRleCA1ZDA4Y2U3MWYz
NDEuLjEyMzk3ZmJjMDk3MSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4+IEBAIC00OCwxMSArNDgsMTIgQEAgZW51bSB7Cj4+IMKg
ICNkZWZpbmUgREJHX0ZPUkNFX1JFTE9DIDAgLyogY2hvb3NlIG9uZSBvZiB0aGUgYWJvdmUhICov
Cj4+IMKgIH07Cj4+IMKgIC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1RfSEFTX1BJTsKgwqDCoMKgwqDC
oMKgIEJJVCgzMSkKPj4gLSNkZWZpbmUgX19FWEVDX09CSkVDVF9IQVNfRkVOQ0XCoMKgwqDCoMKg
wqDCoCBCSVQoMzApCj4+IC0jZGVmaW5lIF9fRVhFQ19PQkpFQ1RfTkVFRFNfTUFQwqDCoMKgwqDC
oMKgwqAgQklUKDI5KQo+PiAtI2RlZmluZSBfX0VYRUNfT0JKRUNUX05FRURTX0JJQVPCoMKgwqAg
QklUKDI4KQo+PiAtI2RlZmluZSBfX0VYRUNfT0JKRUNUX0lOVEVSTkFMX0ZMQUdTwqDCoMKgICh+
MHUgPDwgMjgpIC8qIGFsbCBvZiB0aGUgYWJvdmUgKi8KPj4gKy8qIF9fRVhFQ19PQkpFQ1RfTk9f
UkVTRVJWRSBpcyBCSVQoMzEpLCBkZWZpbmVkIGluIGk5MTVfdm1hLmggKi8KPgo+IEhtbS4gQ291
bGQgd2UgZWl0aGVyIG1vdmUgYWxsIHRoZXNlIGZsYWcgZGVmaW5pdGlvbnMgdG8gYSBoZWFkZXIg
b3IgYWRkIGFuIGk5MTVfdm1hX21vdmVfdG9fYWN0aXZlKCk/IAoKCkkgaGF2ZSBkcm9wcGVkIHRo
aXMgcGF0Y2ggZm9yIG5vdy4gVGhlIHJlYWwgZml4IGlzIGEgcmVtb3ZhbCBvZiB0aGF0IGNodW5r
IGluCmk5MTVfdm1hX21vdmVfdG9fYWN0aXZlLiBXZSBuZWVkIHRvIHN0b3AgYWxsb2NhdGluZyBt
ZW1vcnkgdGhhdCBsYXRlLCBhbmQgb25seQppbnN0YWxsIGZlbmNlcyBhbmQgc3VibWl0LgoKU3Bl
Y2lmaWNhbGx5LCBlYl9zdWJtaXQoKSBzaG91bGQgbm90IGJlIGFsbG93ZWQgdG8gYWxsb2NhdGUg
bWVtb3J5IGFmdGVyIGEgY2VydGFpbgpwb2ludCBhbmQgdGhlbiBjb21wbGV0ZSB3aXRob3V0IGVy
cm9yLiBUaGVyZSBhcmUgdG9vIG1hbnkgcGxhY2VzIHRoYXQgZG8gdGhpcyB0bwpmaXggaXQgdXAg
aW4gdGhpcyBzZXJpZXMsIGJ1dCB0aGlzIHdpbGwgZGVmaW5pdGVseSBoYXZlIHRvIGJlIGRvbmUg
aW4gdGhlIGZ1dHVyZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
