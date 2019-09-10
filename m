Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D99ADAFF0A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 16:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36CA66E2BD;
	Wed, 11 Sep 2019 14:44:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 588 seconds by postgrey-1.36 at gabe;
 Tue, 10 Sep 2019 14:30:41 UTC
Received: from mail-out.elkdata.ee (mail-out.elkdata.ee [185.7.252.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA05A6E0E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 14:30:41 +0000 (UTC)
Received: from mail-relay2.elkdata.ee (unknown [185.7.252.69])
 by mail-out.elkdata.ee (Postfix) with ESMTP id 82208372962
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 17:20:51 +0300 (EEST)
Received: from mail-relay2.elkdata.ee (unknown [185.7.252.69])
 by mail-relay2.elkdata.ee (Postfix) with ESMTP id 8071B830880
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 17:20:51 +0300 (EEST)
X-Virus-Scanned: amavisd-new at elkdata.ee
Received: from mail-relay2.elkdata.ee ([185.7.252.69])
 by mail-relay2.elkdata.ee (mail-relay2.elkdata.ee [185.7.252.69]) (amavisd-new,
 port 10024)
 with ESMTP id K_uC3P4uTleq for <intel-gfx@lists.freedesktop.org>;
 Tue, 10 Sep 2019 17:20:48 +0300 (EEST)
Received: from mail.elkdata.ee (unknown [185.7.252.68])
 by mail-relay2.elkdata.ee (Postfix) with ESMTP id B4CB68308AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 17:20:48 +0300 (EEST)
Received: from mail.meie.biz (21-182-190-90.sta.estpak.ee [90.190.182.21])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: leho@jaanalind.ee)
 by mail.elkdata.ee (Postfix) with ESMTPSA id AC63660BF3C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 17:20:48 +0300 (EEST)
Received: by mail.meie.biz (Postfix, from userid 500)
 id A0962A9568D; Tue, 10 Sep 2019 17:20:48 +0300 (EEST)
Received: from papaya (papaya.meie.biz [192.168.1.206])
 by mail.meie.biz (Postfix) with ESMTPA id A476DA95685;
 Tue, 10 Sep 2019 17:20:47 +0300 (EEST)
Received: (nullmailer pid 3786 invoked by uid 1000);
 Tue, 10 Sep 2019 14:20:47 -0000
Date: Tue, 10 Sep 2019 17:20:47 +0300
From: Leho Kraav <leho@kraav.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190910142047.GB3029@papaya>
References: <ad70d1985e8d0227dc55fedeec769de166e63ae0.camel@suse.com>
 <156535522344.29541.9312856809559678262@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156535522344.29541.9312856809559678262@skylake-alporthouse-com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Bogosity: Unsure, tests=bogofilter, spamicity=0.500000, version=1.2.4
X-Mailman-Approved-At: Wed, 11 Sep 2019 14:44:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kraav.com; s=mail; 
 t=1568125248; bh=cKzJGcLcvGFlhWR96PpkKHDXEqAYhIVzH0O2bLoUI5M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=CJKPC/f4i5w/89FBdAFSaf/wh1f9EDZNuZbAZDpG/QceOYuay0VtRrxRnJa7dFMcW
 dZVoFcFvoUaPrCDAlolRfNdXjzNsmfwStk5IMvakRhg1ARhb8Mln3RyDs0BP8WocWs
 K9nvh1NFt67ORIAyLDVl3QzgTvLE+ZLiAg/CNFps=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kraav.com; s=mail; 
 t=1568125247; bh=cKzJGcLcvGFlhWR96PpkKHDXEqAYhIVzH0O2bLoUI5M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=ZqG4nvbgwQIPLlLUrxr8JwKybOsxS6R1lSq8I/RFqfuiBLssgCH2d5Zt+FtSzeNV2
 5qJ/q1CnGiEvaiRIjEoOZQC872RhMa7hj+G62JjO8hxvXGfoabJ5ZOS57Phd5CDYAd
 2LgEQPOGtuIaVpy3tm674rVQP/7HxJ+aYWHk/0KQ=
X-Mailman-Original-Authentication-Results: mail.meie.biz;
 dmarc=fail (p=none dis=none)
 header.from=kraav.com
Subject: Re: [Intel-gfx] 5.3-rc3: Frozen graphics with kcompactd migrating
 i915 pages
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Martin Wilck <Martin.Wilck@suse.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMDksIDIwMTkgYXQgMDE6NTM6NDNQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgTWFydGluIFdpbGNrICgyMDE5LTA4LTA5IDEzOjQxOjQyKQo+ID4gVGhp
cyBoYXBwZW5lZCB0byBtZSB0b2RheSwgcnVubmluZyBrZXJuZWwgNS4zLjAtcmMzLTEuZzU3MTg2
M2ItZGVmYXVsdAo+ID4gKDUuMy1yYzMgd2l0aCBqdXN0IGEgZmV3IHBhdGNoZXMgb24gdG9wKSwg
YWZ0ZXIgc3RhcnRpbmcgYSBLVk0gdmlydHVhbAo+ID4gbWFjaGluZS4gVGhlIFggc2NyZWVuIHdh
cyBmcm96ZW4uIFJlbW90ZSBsb2dpbiB2aWEgc3NoIHdhcyBzdGlsbAo+ID4gcG9zc2libGUsIHRo
dXMgSSB3YXMgYWJsZSB0byByZXRyaWV2ZSBiYXNpYyBsb2dzLgo+ID4gCj4gPiBzeXNycS13IHNo
b3dlZCB0d28gYmxvY2tlZCBwcm9jZXNzZXMgKGtjb21wYWN0ZDAgYW5kIEtWTSkuIEFmdGVyIGEK
PiA+IG1pbnV0ZSwgdGhlIHNhbWUgdHdvIHByb2Nlc3NlcyB3ZXJlIHN0aWxsIGJsb2NrZWQuIEtW
TSBzZWVtcyB0byB0cnkgdG8KPiA+IGFjcXVpcmUgYSBsb2NrIHRoYXQga2NvbXBhY3RkIGlzIGhv
bGRpbmcuIGtjb21wYWN0ZCBpcyB3YWl0aW5nIGZvciBJTwo+ID4gdG8gY29tcGxldGUgb24gcGFn
ZXMgb3duZWQgYnkgdGhlIGk5MTUgZHJpdmVyLgo+IAo+IE15IGJhZCwgaXQncyBrbm93bi4gV2Ug
aGF2ZW4ndCBkZWNpZGVkIG9uIHdoZXRoZXIgdG8gcmV2ZXJ0IHRoZQo+IHVuZm9ydHVuYXRlIHJl
Y3Vyc2l2ZSBsb2NraW5nIChhbmQgc28gaGl0IGFub3RoZXIgd2FybiBlbHNld2hlcmUpIG9yIHRv
Cj4gaWdub3JlIHRoZSBkaXJ0eSBwYWdlcyAoYW5kIHNvIHJpc2sgbG9zaW5nIGRhdGEgYWNyb3Nz
IHN3YXApLgo+IAo+IGNiNmQ3YzdkYzdmZiAoImRybS9pOTE1L3VzZXJwdHI6IEFjcXVpcmUgdGhl
IHBhZ2UgbG9jayBhcm91bmQgc2V0X3BhZ2VfZGlydHkoKSIpCj4gLUNocmlzCgpIaSBDaHJpcy4g
SXMgdGhpcyBleGFjdGx5IHdoYXQgSSdtIGhpdHRpbmcgYXQKaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNTAwIHBlcmhhcHM/CgpJdCByZWxpYWJseSBicmVh
a3MgdGhlIGdyYXBoaWNzIHVzZXJsYW5kLCBhcyB0aGUgbWFjaGluZSBjb25zaXN0ZW50bHkKZnJl
ZXplcyBhdCBhbnkgcmFuZG9tIG1vbWVudC4KCkFueSB3b3JrYXJvdW5kIG9wdGlvbnMsIGV2ZW4g
aWYgd2l0aCBhIHBlcmZvcm1hbmNlIHBlbmFsdHk/IFJldmVydApjYjZkN2M3ZGM3ZmYgYnV0IHNp
ZGUgZWZmZWN0cz8KCjUuMyBoYXMgdXNlZnVsIE5WTWUgcG93ZXIgbWdtdCB1cGRhdGVzIGZvciBs
YXB0b3BzLCBJJ2QgbGlrZSB0byBzdGljawp3aXRoIHRoZSBuZXdlc3QgaWYgcG9zc2libGUuCgot
LSAKTGVobyBLcmFhdiwgc2VuaW9yIHRlY2hub2xvZ3kgJiBkaWdpdGFsIG1hcmtldGluZyBhcmNo
aXRlY3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
