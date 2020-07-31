Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 728DA2346E9
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 15:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40756EAAC;
	Fri, 31 Jul 2020 13:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88FB46EAAC
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 13:32:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 58F2E3F652;
 Fri, 31 Jul 2020 15:32:09 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=a7Od8F1/; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.911
X-Spam-Level: 
X-Spam-Status: No, score=-2.911 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.812,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vCWilIOPstuP; Fri, 31 Jul 2020 15:32:08 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 8E3913F5F9;
 Fri, 31 Jul 2020 15:32:04 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id D60A5361FD5;
 Fri, 31 Jul 2020 15:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596202324; bh=JZW9+qgvmIe9WDbNGVRvj+heTG+YWnQlt/8fHKP3LlM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=a7Od8F1/MI5HCvmvdrYQwhOCocLYJZ5rSCEe9VZMjGK+DVA6dmLMxCCp71ASN8zQU
 qbY1xOAwbANU3J/YqwRMkZSk8TapDkGKt9HVwNbpiSNeQ1y91COG/88o/LSS71ipqE
 lH/aR01LODznPhA/TRNE1fZ97DxhfUZJ+WQE1YBM=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-18-chris@chris-wilson.co.uk>
 <c847f75c-25f5-2157-c5c8-07bd6c252213@shipmail.org>
 <159620211510.21624.14815026034384682088@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <26ff0948-b546-53b5-90d3-25e85e6faf78@shipmail.org>
Date: Fri, 31 Jul 2020 15:31:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159620211510.21624.14815026034384682088@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 18/66] drm/i915: Always defer fenced work to
 the worker
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

Ck9uIDcvMzEvMjAgMzoyOCBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVGhvbWFz
IEhlbGxzdHLDtm0gKEludGVsKSAoMjAyMC0wNy0zMSAxMDowMzo1OSkKPj4gT24gNy8xNS8yMCAx
OjUwIFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBDdXJyZW50bHksIGlmIGFuIGVycm9yIGlz
IHJhaXNlZCB3ZSBhbHdheXMgY2FsbCB0aGUgY2xlYW51cCBsb2NhbGx5Cj4+PiBbYW5kIHNraXAg
dGhlIG1haW4gd29yayBjYWxsYmFja10uIEhvd2V2ZXIsIHNvbWUgZnV0dXJlIHVzZXJzCj4+IENv
dWxkIHlvdSBhZGQgYW4gZXhhbXBsZSBvZiB0aG9zZSBmdXR1cmUgdXNlcnM/Cj4gSW4gdGhlIG5l
eHQgKG9yIHR3bykgcGF0Y2gsIHRoZSBjb2RlIG5lZWRzIHRvIGRvIHRoZSBlcnJvciBjbGVhbnVw
IGZyb20KPiBwcm9jZXNzIGNvbnRleHQuIFNpbmNlIHRoZSBlcnJvciBwYXRocyBzaG91bGQgYmUg
cmVsYXRpdmVseSBpbmZyZXF1ZW50LAo+IGFuZCBtb3JlIG9mdGVuIHRoYW4gbm90IHJhaXNlZCBz
eW5jaHJvbm91c2x5LCBJIGRpZG4ndCBzZWUgYSByZWFzb24gdG8KPiBidWlsZCBpbiBhIGZsYWcg
dG8gc2F5IHdoZXRoZXIgb3Igbm90IHRoZSByZWxlYXNlLW9uLWVycm9yIGNvdWxkIGJlCj4gcGVy
Zm9ybWVkIGltbWVkaWF0ZWx5IGZyb20gdGhlIGludGVycnVwdCBjb250ZXh0Lgo+Cj4gVGhlIGV4
YW1wbGUgaW4gdGhpcyBzZXJpZXMgaXMgdGhhdCBldmVuIGlmIGFuIGVycm9yIGlzIHRocm93biwg
d2UgaGF2ZQo+IGNvbW1pdHRlZCBjaGFuZ2VzIHRvIHRoZSBwcEdUVCBsYXlvdXQgKGluIHBhcnRp
Y3VsYXIgbWFya2luZyBQVEUgdG8gYmUKPiBldmljdGVkKSBhbmQgc28gd2UgbXVzdCBjb21wbGV0
ZSB1bmJpbmRpbmcgdGhlIG9sZCBwYWdlcyBmcm9tIHRoZSBwcEdUVCwKPiBvdGhlcndpc2UgdGhl
eSBtYXkgcmVtYWluIGFjY2Vzc2libGUuCgoKVGhhbmtzLgoKPiAgIEkgd2FzIG1vc3RseSB0aGlu
a2luZyBpZiB0aGlzIG9yIHNvbWV0aGluZyBzaW1pbGFyIGNvdWxkIGJlIGFkZGVkIHRvIHRoZSBj
b21taXQgbWVzc2FnZSB0byBhaWQgaW4gdW5kZXJzdGFuZGluZyB3aHkgdGhlIGNoYW5nZSBpcyBu
ZWVkZWQuCgovVGhvbWFzCgoKCgo+IC1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
