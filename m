Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F50220561D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 17:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6369C6E427;
	Tue, 23 Jun 2020 15:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8BEF6E4CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 15:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 2EB0A3F68A;
 Tue, 23 Jun 2020 17:37:37 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=mvElutEG; 
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
 with ESMTP id Vbc8Ly4Pht3h; Tue, 23 Jun 2020 17:37:35 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 62A733F5F1;
 Tue, 23 Jun 2020 17:37:35 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 87B3D362166;
 Tue, 23 Jun 2020 17:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592926654; bh=OaJmfUqRKQIeG264f3tuUa1vEMuxNZFQy9WHyOZAunM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=mvElutEG8TbgttOLHiWB7Ch/92+NjfKM6Rv8UlZeniGWUj9jX7+VSfTgV0tgiNIEe
 0QpTs9Snw4D6m82Ni858u9Z7AITN1ohQsRL4z0DIkv5+f786MZAKzIAiyEHbmoqUm2
 WoZXmVwck5IZtSAA8PAywt1U84s3ltl6hq47/sK8=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <2c65a714-cf5a-fae6-5342-b514351d03a5@shipmail.org>
 <159290661156.6856.12185315246799210214@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <5c0df713-ea47-71ff-9833-9e99b36c5474@shipmail.org>
Date: Tue, 23 Jun 2020 17:37:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159290661156.6856.12185315246799210214@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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

Ck9uIDYvMjMvMjAgMTI6MDMgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFRob21h
cyBIZWxsc3Ryw7ZtIChJbnRlbCkgKDIwMjAtMDYtMjMgMTA6MzM6MjApCj4+IEhpLCBDaHJpcyEK
Pj4KPj4gT24gNi8yMi8yMCAxMTo1OSBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gSW4gb3Jk
ZXIgdG8gYWN0dWFsbHkgaGFuZGxlIGV2aWN0aW9uIGFuZCB3aGF0IG5vdCwgd2UgbmVlZCB0byBw
cm9jZXNzCj4+PiBhbGwgdGhlIG9iamVjdHMgdG9nZXRoZXIgdW5kZXIgYSBjb21tb24gbG9jaywg
cmVzZXJ2YXRpb25fd3dfY2xhc3MuIEFzCj4+PiBzdWNoLCBkbyBhIG1lbW9yeSByZXNlcnZhdGlv
biBwYXNzIGFmdGVyIGxvb2tpbmcgdXAgdGhlIG9iamVjdC92bWEsCj4+PiB3aGljaCB0aGVuIGZl
ZWRzIGludG8gdGhlIHJlc3Qgb2YgZXhlY2J1ZiBbcmVsb2NhdGlvbiwgY21kcGFyc2luZywKPj4+
IGZsdXNoaW5nIGFuZCBvZmMgZXhlY3V0aW9uXS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IC0tLQo+Pj4gICAgLi4uL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgOTEgKysrKysrKysrKysr
KystLS0tLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDcwIGluc2VydGlvbnMoKyksIDIxIGRlbGV0
aW9ucygtKQo+Pj4KPj4gV2hpY2ggdHJlZSBpcyB0aGlzIGFnYWluc3Q/IFRoZSBzZXJpZXMgZG9l
c24ndCBhcHBseSBjbGVhbmx5IGFnYWluc3QKPj4gZHJtLXRpcD8KPiBJdCdzIGNvbnRpbnVpbmcg
b24gZnJvbSB0aGUgc2NoZWR1bGVyIHBhdGNoZXMsIHRoZSBidWcgZml4ZXMgYW5kIHRoZQo+IGly
aXMtZGVmZXJyZWQtZmVuY2Ugd29yay4gSSB0aG91Z2h0IHRocm93aW5nIGFsbCBvZiB0aG9zZSBv
bGQgcGF0Y2hlcwo+IGludG8gdGhlIHBpbGUgd291bGQgaGF2ZSBiZWVuIGRpc3RyYWN0aW5nLgoK
SXMgdGhlcmUgc29tZXdoZXJlIHlvdSBjb3VsZCBwdXNoIGEgYnJhbmNoIGZvciByZXZpZXdlciBj
b25zdW1wdGlvbj8KClRoYW5rcywKCi9UaG9tYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
