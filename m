Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E05A3B9D5E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 10:13:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4E96E038;
	Fri,  2 Jul 2021 08:13:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [IPv6:2a01:e0c:1:1599::14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DAC089FF6;
 Fri,  2 Jul 2021 08:13:17 +0000 (UTC)
Received: from [192.168.1.71] (unknown [91.155.165.229])
 (Authenticated sender: martin.peres@free.fr)
 by smtp5-g21.free.fr (Postfix) with ESMTPSA id B12265FFA7;
 Fri,  2 Jul 2021 10:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
 s=smtp-20201208; t=1625213596;
 bh=ethHNm97OSRR8anecku175JdY+9LNg54J6mz15NN3sU=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=mxm0ntPed4QA89A4WOa1JlMSlxU/qsWc5yL3qMUhYrMpOkjVC8pvqb1iI35rPcNdA
 e8gQFbA0KemNWA/7ut/04Lajy17BcMlS70UdqJtsiUKcV62J4xqb4qOqGJTqjrjayR
 l7d79UgU7P5nH6InxDiJzcer+50RBXW0qBTNxSsAUYXB2MNT4SzaYvPxvu6lCZCjoB
 ionWOwswyJRdZcAO4TAKh0r4NaPGEyqXugGbt9tmmoFmhyUzjzzznF8nTuGnOvnjn+
 fggiD1JF+bkn5dTH/9L9FuviuyyC05sMLsxZhffchdibvXxwgXynh7rSyMzDuBN7PG
 3VqBZhLKW1Tsw==
From: Martin Peres <martin.peres@free.fr>
To: Matthew Brost <matthew.brost@intel.com>
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-48-matthew.brost@intel.com>
 <88cbe963-7188-f4ae-5acf-01a80bd2fe25@free.fr>
 <20210630180052.GA8283@sdutt-i7>
 <7c3e1d46-74eb-6f2d-53ca-d73ce9e61c03@free.fr>
Message-ID: <d9e31651-dd97-fb39-0045-7cd62650bd03@free.fr>
Date: Fri, 2 Jul 2021 11:13:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <7c3e1d46-74eb-6f2d-53ca-d73ce9e61c03@free.fr>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 47/47] drm/i915/guc: Unblock GuC submission
 on Gen11+
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDEvMDcvMjAyMSAyMToyNCwgTWFydGluIFBlcmVzIHdyb3RlOgpbLi4uXQo+Pgo+Pj4KPj4+
PiArwqDCoMKgwqDCoMKgwqAgaTkxNS0+cGFyYW1zLmVuYWJsZV9ndWMgPSBFTkFCTEVfR1VDX0xP
QURfSFVDOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+Pj4gK8KgwqDCoCB9Cj4+Pj4g
Kwo+Pj4+ICvCoMKgwqAgLyogRGVmYXVsdDogZW5hYmxlIEh1QyBhdXRoZW50aWNhdGlvbiBhbmQg
R3VDIHN1Ym1pc3Npb24gKi8KPj4+PiArwqDCoMKgIGk5MTUtPnBhcmFtcy5lbmFibGVfZ3VjID0g
RU5BQkxFX0dVQ19MT0FEX0hVQyB8IAo+Pj4+IEVOQUJMRV9HVUNfU1VCTUlTU0lPTjsKPj4+Cj4+
PiBUaGlzIHNlZW1zIHRvIGJlIGluIGNvbnRyYWRpY3Rpb24gd2l0aCB0aGUgR3VDIHN1Ym1pc3Np
b24gcGxhbiB3aGljaCAKPj4+IHN0YXRlczoKPj4+Cj4+PiAiTm90IGVuYWJsZWQgYnkgZGVmYXVs
dCBvbiBhbnkgY3VycmVudCBwbGF0Zm9ybXMgYnV0IGNhbiBiZSBlbmFibGVkIHZpYQo+Pj4gbW9k
cGFyYW0gZW5hYmxlX2d1YyIuCj4+Pgo+Pgo+PiBJIGRvbid0IGJlbGlldmUgYW55IGN1cnJlbnQg
cGxhdGZvcm0gZ2V0cyB0aGlzIHBvaW50IHdoZXJlIEd1Qwo+PiBzdWJtaXNzaW9uIHdvdWxkIGJl
IGVuYWJsZWQgYnkgZGVmYXVsdC4gVGhlIGZpcnN0IHdvdWxkIGJlIEFETC1QIHdoaWNoCj4+IGlz
bid0IG91dCB5ZXQuCj4gCj4gSXNuJ3QgdGhhdCBleGFjdGx5IHdoYXQgdGhlIGxpbmUgYWJvdmUg
ZG9lcz8KCkluIGNhc2UgeW91IG1pc3NlZCB0aGlzIGNydWNpYWwgcGFydCBvZiB0aGUgcmV2aWV3
LiBQbGVhc2UgYW5zd2VyIHRoZSAKYWJvdmUgcXVlc3Rpb24uCgpDaGVlcnMsCk1hcnRpbgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
