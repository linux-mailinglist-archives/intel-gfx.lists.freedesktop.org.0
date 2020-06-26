Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F165F20B285
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 15:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C4E6EC95;
	Fri, 26 Jun 2020 13:32:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CFA36EC95
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 13:32:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id A23B63FA20;
 Fri, 26 Jun 2020 15:32:33 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=Y2HsfPx7; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JPgalYu8clfd; Fri, 26 Jun 2020 15:32:32 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 29E9A3F912;
 Fri, 26 Jun 2020 15:32:30 +0200 (CEST)
Received: from localhost.localdomain (2.70.62.59.mobile.tre.se [2.70.62.59])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 2DE90362131;
 Fri, 26 Jun 2020 15:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1593178350; bh=S+RleY2/aGR6ODA7zbUy4fo2qJOqPk1BFNAXfMisOS4=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Y2HsfPx7raZ7Z3cKADCNPQGqwAoFG6Y8pKdLxs3g0W/Aap6t4tE1711VJHbRjZHL6
 gJAFJ5qnJnuTOjnIyyGlS8e6KiobXqq87f5xjGuLARzbjD5u9QPVetm14SOvEuKiQq
 ZRytKs+dtuQUxlGFjWyqONAOa7VrgkQEa8NPlwJU=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-5-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <a1f2527f-e3f3-b918-8b5c-06ff9c1308bb@shipmail.org>
Date: Fri, 26 Jun 2020 15:32:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200623142843.423594-5-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/26] drm/i915: Remove locking from
 i915_gem_object_prepare_read/write
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

Ck9uIDYvMjMvMjAgNDoyOCBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gRXhlY2J1ZmZl
ciBzdWJtaXNzaW9uIHdpbGwgcGVyZm9ybSBpdHMgb3duIFdXIGxvY2tpbmcsIGFuZCB3ZQo+IGNh
bm5vdCByZWx5IG9uIHRoZSBpbXBsaWNpdCBsb2NrIHRoZXJlLgo+Cj4gVGhpcyBhbHNvIG1ha2Vz
IGl0IGNsZWFyIHRoYXQgdGhlIEdWVCBjb2RlIHdpbGwgZ2V0IGEgbG9ja2RlcCBzcGxhdCB3aGVu
Cj4gbXVsdGlwbGUgYmF0Y2hidWZmZXIgc2hhZG93cyBuZWVkIHRvIGJlIHBlcmZvcm1lZCBpbiB0
aGUgc2FtZSBpbnN0YW5jZSwKPiBmaXggdGhhdCB1cC4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0
ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgICAgfCAyMCArKysr
KystLS0tLS0tLS0tLS0tCj4gICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMgICAgfCAxMyArKysrKysrKysrLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuaCAgICB8ICAxIC0KPiAgIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9odWdlX3BhZ2VzLmMgICB8ICA1ICsrKystCj4gICAuLi4vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX2NvaGVyZW5jeS5jICAgfCAxNCArKysrKysrKystLS0tCj4gICAuLi4vZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAxMiArKysrKysrKy0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2NtZF9wYXJzZXIuYyAgICAgICAgIHwgIDEgKwo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgMjAgKysrKysr
KysrKysrKysrKystLQo+ICAgOCBmaWxlcyBjaGFuZ2VkLCA1OSBpbnNlcnRpb25zKCspLCAyNyBk
ZWxldGlvbnMoLSkKPgpsdGdtLiBSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21h
cy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
