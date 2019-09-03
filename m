Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEFDA5EDA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 03:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E25D989939;
	Tue,  3 Sep 2019 01:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 641A889939
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 01:31:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 18:31:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,461,1559545200"; d="scan'208";a="381967332"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga005.fm.intel.com with ESMTP; 02 Sep 2019 18:31:04 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <3255251.C7nBVfOIaa@jkrzyszt-desk.ger.corp.intel.com>
 <ccb1434d-281c-abae-0726-7fd924041315@linux.intel.com>
 <1769080.0GM3UzqXcv@jkrzyszt-desk.ger.corp.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <52fbfac9-c879-4b45-dd74-fafe62c2432b@linux.intel.com>
Date: Tue, 3 Sep 2019 09:29:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1769080.0GM3UzqXcv@jkrzyszt-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH] iommu/vt-d: Fix IOMMU field not
 populated on device hot re-plug
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 intel-gfx@lists.freedesktop.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFudXN6LAoKT24gOS8yLzE5IDQ6MzcgUE0sIEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToK
Pj4gSSBhbSBub3Qgc2F5aW5nIHRoYXQga2VlcGluZyBkYXRhIGlzIG5vdCBhY2NlcHRhYmxlLiBJ
IGp1c3Qgd2FudCB0bwo+PiBjaGVjayB3aGV0aGVyIHRoZXJlIGFyZSBhbnkgb3RoZXIgc29sdXRp
b25zLgo+IFRoZW4gcmV2ZXJ0aW5nIDQ1OGI3YzhlMGRkZSBhbmQgYXBwbHlpbmcgdGhpcyBwYXRj
aCBzdGlsbCByZXNvbHZlcyB0aGUgaXNzdWUKPiBmb3IgbWUuICBObyBlcnJvcnMgYXBwZWFyIHdo
ZW4gbWFwcGluZ3MgYXJlIHVubWFwcGVkIG9uIGRldmljZSBjbG9zZSBhZnRlciB0aGUKPiBkZXZp
Y2UgaGFzIGJlZW4gcmVtb3ZlZCwgYW5kIGRvbWFpbiBpbmZvIHByZXNlcnZlZCBvbiBkZXZpY2Ug
cmVtb3ZhbCBpcwo+IHN1Y2Nlc3NmdWxseSByZXVzZWQgb24gZGV2aWNlIHJlLXBsdWcuCgpUaGlz
IHBhdGNoIGRvZXNuJ3QgbG9vayBnb29kIHRvIG1lIGFsdGhvdWdoIEkgYWdyZWUgdGhhdCBrZWVw
aW5nIGRhdGEgaXMKYWNjZXB0YWJsZS4gSXQgdXBkYXRlcyBkZXYtPmFyY2hkYXRhLmlvbW11LCBi
dXQgbGVhdmVzIHRoZSBoYXJkd2FyZQpjb250ZXh0L3Bhc2lkIHRhYmxlIHVuY2hhbmdlZC4gVGhp
cyBtaWdodCBjYXVzZSBwcm9ibGVtcyBzb21ld2hlcmUuCgo+IAo+IElzIHRoZXJlIGFueXRoaW5n
IGVsc2UgSSBjYW4gZG8gdG8gaGVscD8KCkNhbiB5b3UgcGxlYXNlIHRlbGwgbWUgaG93IHRvIHJl
cHJvZHVjZSB0aGUgcHJvYmxlbT8gS2VlcGluZyB0aGUgcGVyCmRldmljZSBkb21haW4gaW5mbyB3
aGlsZSBkZXZpY2UgaXMgdW5wbHVnZ2VkIGlzIGEgYml0IGRhbmdlcm91cyBiZWNhdXNlCmluZm8t
PmRldiBtaWdodCBiZSBhIHdpbGQgcG9pbnRlci4gV2UgbmVlZCB0byB3b3JrIG91dCBhIGNsZWFu
IGZpeC4KCj4gCj4gVGhhbmtzLAo+IEphbnVzego+IAoKQmVzdCByZWdhcmRzLApCYW9sdQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
