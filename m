Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E351174B0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 19:43:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54A36E2D7;
	Mon,  9 Dec 2019 18:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com
 [216.228.121.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 631796E2D7;
 Mon,  9 Dec 2019 18:43:47 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dee95dd0000>; Mon, 09 Dec 2019 10:43:41 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 09 Dec 2019 10:43:46 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 09 Dec 2019 10:43:46 -0800
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 9 Dec
 2019 18:43:46 +0000
Received: from [10.40.101.166] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 9 Dec 2019
 18:43:43 +0000
To: Jani Nikula <jani.nikula@intel.com>, <dri-devel@lists.freedesktop.org>,
 <linux-fbdev@vger.kernel.org>
References: <cover.1575390740.git.jani.nikula@intel.com>
 <ddb10df1316ef585930cda7718643a580f4fe37b.1575390741.git.jani.nikula@intel.com>
 <87tv694myu.fsf@intel.com>
X-Nvconfidentiality: public
From: Kirti Wankhede <kwankhede@nvidia.com>
Message-ID: <0d5434e0-3d86-bbb8-6377-94e00b4f0d78@nvidia.com>
Date: Tue, 10 Dec 2019 00:13:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <87tv694myu.fsf@intel.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nvidia.com; s=n1; 
 t=1575917021; bh=/7RvFJCUG4iQV+IDvVpbMgXKzJOkAMSMaevIPIjioqo=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Y6wZDvVdMVatstmzKu5SutbP2nXXb/rNT7RvDQBaUBpwel/Ppk8RHXTPSUsY2JLEI
 GPHAGnnjRUNVizRoR8Bik/EAkJv1xkvimXAesz8C2O1+4klexm8wQ8Z8yaXj+b1rRe
 c2DJ3atEyFticNm2EfmFogYLEVO30JoyzqWFA7g/xLNwAFICp1XbuysYXsrFqTTaIe
 WnmR99W4Z45WDhf3Hm7c8UcaSe8GU3sTXSiKOMqsR9q0oM/QX/Xk7J1NroSifpKyH4
 6zfoBCmb1xYefKzninwV27B8XFwLuBGgpIkFtsmaBxU/k/iDVguLzezRXylNSPloeg
 F1vJUI8bn7FaQ==
Subject: Re: [Intel-gfx] [PATCH v3 11/12] samples: vfio-mdev: constify fb ops
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 kvm@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMi85LzIwMTkgNzozMSBQTSwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24gVHVlLCAwMyBE
ZWMgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4gd3JvdGU6Cj4+IE5v
dyB0aGF0IHRoZSBmYm9wcyBtZW1iZXIgb2Ygc3RydWN0IGZiX2luZm8gaXMgY29uc3QsIHdlIGNh
biBzdGFydAo+PiBtYWtpbmcgdGhlIG9wcyBjb25zdCBhcyB3ZWxsLgo+Pgo+PiB2MjogZml4CXR5
cG8gKENocmlzdG9waGUgZGUgRGluZWNoaW4pCj4+Cj4+IENjOiBLaXJ0aSBXYW5raGVkZSA8a3dh
bmtoZWRlQG52aWRpYS5jb20+Cj4+IENjOiBrdm1Admdlci5rZXJuZWwub3JnCj4+IFJldmlld2Vk
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+PiBTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IAo+IEtpcnRpLCBtYXkg
SSBoYXZlIHlvdXIgYWNrIHRvIG1lcmdlIHRoaXMgdGhyb3VnaCBkcm0tbWlzYyBwbGVhc2U/Cj4g
Cj4gQlIsCj4gSmFuaS4KPiAKPj4gLS0tCj4+ICAgc2FtcGxlcy92ZmlvLW1kZXYvbWRweS1mYi5j
IHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYvbWRweS1mYi5jIGIvc2FtcGxl
cy92ZmlvLW1kZXYvbWRweS1mYi5jCj4+IGluZGV4IDI3MTliYjI1OTY1My4uMjFkYmY2M2Q2ZTQx
IDEwMDY0NAo+PiAtLS0gYS9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5LWZiLmMKPj4gKysrIGIvc2Ft
cGxlcy92ZmlvLW1kZXYvbWRweS1mYi5jCj4+IEBAIC04Niw3ICs4Niw3IEBAIHN0YXRpYyB2b2lk
IG1kcHlfZmJfZGVzdHJveShzdHJ1Y3QgZmJfaW5mbyAqaW5mbykKPj4gICAJCWlvdW5tYXAoaW5m
by0+c2NyZWVuX2Jhc2UpOwo+PiAgIH0KPj4gICAKPj4gLXN0YXRpYyBzdHJ1Y3QgZmJfb3BzIG1k
cHlfZmJfb3BzID0gewo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBmYl9vcHMgbWRweV9mYl9vcHMg
PSB7Cj4+ICAgCS5vd25lcgkJPSBUSElTX01PRFVMRSwKPj4gICAJLmZiX2Rlc3Ryb3kJPSBtZHB5
X2ZiX2Rlc3Ryb3ksCj4+ICAgCS5mYl9zZXRjb2xyZWcJPSBtZHB5X2ZiX3NldGNvbHJlZywKPiAK
CkFja2VkLWJ5IDogS2lydGkgV2Fua2hlZGUgPGt3YW5raGVkZUBudmlkaWEuY29tPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
