Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25129B0FF6
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 15:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0686ED62;
	Thu, 12 Sep 2019 13:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-out.elkdata.ee (mail-out.elkdata.ee [185.7.252.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E915B6ECF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 11:58:56 +0000 (UTC)
Received: from mail-relay2.elkdata.ee (unknown [185.7.252.69])
 by mail-out.elkdata.ee (Postfix) with ESMTP id B0C13371D8C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 14:58:54 +0300 (EEST)
Received: from mail-relay2.elkdata.ee (unknown [185.7.252.69])
 by mail-relay2.elkdata.ee (Postfix) with ESMTP id AA66C8308CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 14:58:54 +0300 (EEST)
X-Virus-Scanned: amavisd-new at elkdata.ee
Received: from mail-relay2.elkdata.ee ([185.7.252.69])
 by mail-relay2.elkdata.ee (mail-relay2.elkdata.ee [185.7.252.69]) (amavisd-new,
 port 10024)
 with ESMTP id gpoRtlUgsK6m for <intel-gfx@lists.freedesktop.org>;
 Thu, 12 Sep 2019 14:58:52 +0300 (EEST)
Received: from mail.elkdata.ee (unknown [185.7.252.68])
 by mail-relay2.elkdata.ee (Postfix) with ESMTP id 40E88830889
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 14:58:52 +0300 (EEST)
Received: from mail.meie.biz (21-182-190-90.sta.estpak.ee [90.190.182.21])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: leho@jaanalind.ee)
 by mail.elkdata.ee (Postfix) with ESMTPSA id 3A7BD60BF17
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 14:58:52 +0300 (EEST)
Received: by mail.meie.biz (Postfix, from userid 500)
 id 28CA0A9787D; Thu, 12 Sep 2019 14:58:52 +0300 (EEST)
Received: from papaya (papaya.meie.biz [192.168.1.206])
 by mail.meie.biz (Postfix) with ESMTPA id EC45CA97875;
 Thu, 12 Sep 2019 14:58:51 +0300 (EEST)
Received: (nullmailer pid 24731 invoked by uid 1000);
 Thu, 12 Sep 2019 11:58:51 -0000
Date: Thu, 12 Sep 2019 14:58:51 +0300
From: "leho@kraav.com" <leho@kraav.com>
To: Martin Wilck <Martin.Wilck@suse.com>
Message-ID: <20190912115851.GD6147@papaya>
References: <ad70d1985e8d0227dc55fedeec769de166e63ae0.camel@suse.com>
 <156535522344.29541.9312856809559678262@skylake-alporthouse-com>
 <20190910142047.GB3029@papaya>
 <3dcff41048621ff440687dd6691aae31a8647a1e.camel@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dcff41048621ff440687dd6691aae31a8647a1e.camel@suse.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Bogosity: Unsure, tests=bogofilter, spamicity=0.500000, version=1.2.4
X-Mailman-Approved-At: Thu, 12 Sep 2019 13:30:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kraav.com; s=mail; 
 t=1568289532; bh=aAy9Hz9dJJxWqNFUhmDvCASjPhVVCM0iaPo/txBf8lI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=CZmcJgO93seGVxPrvJeF48551SDbAs0p6qqY+hdyoQs9kVDNXbBDjrUx5EFyCRkZl
 1+ctXrME2HEcxhLB6wT0mwjUNg5XCVO5KrX/LtDBzgxPJ/gRnw6rOo2al0uGuFpkGf
 bGGEmpWVGtKCuJEdvAb1DVRQ+q1Z/9N1Y6gEbqjM=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kraav.com; s=mail; 
 t=1568289532; bh=aAy9Hz9dJJxWqNFUhmDvCASjPhVVCM0iaPo/txBf8lI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=CZmcJgO93seGVxPrvJeF48551SDbAs0p6qqY+hdyoQs9kVDNXbBDjrUx5EFyCRkZl
 1+ctXrME2HEcxhLB6wT0mwjUNg5XCVO5KrX/LtDBzgxPJ/gRnw6rOo2al0uGuFpkGf
 bGGEmpWVGtKCuJEdvAb1DVRQ+q1Z/9N1Y6gEbqjM=
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
Cc: "tiwai@suse.de" <tiwai@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Koutny <MKoutny@suse.com>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMTE6MjM6MDlBTSArMDAwMCwgTWFydGluIFdpbGNrIHdy
b3RlOgo+IAo+IFRoZXJlJ3MgYSBjb25zaWRlcmFibGUgcmlzayB0aGF0IG1hbnkgdXNlcnMgd2ls
bCBzdGFydCBzZWVpbmcgdGhpcwo+IHJlZ3Jlc3Npb24gd2hlbiA1LjMgaXMgcmVsZWFzZWQuIEkg
YW0gbm90IGF3YXJlIG9mIGEgd29ya2Fyb3VuZC4KPiAKPiBJcyB0aGVyZSBhbiBhbHRlcm5hdGl2
ZSB0byByZXZlcnRpbmcgYWE1NmEyOTJjZTYyICgiZHJtL2k5MTUvdXNlcnB0cjoKPiBBY3F1aXJl
IHRoZSBwYWdlIGxvY2sgYXJvdW5kIHNldF9wYWdlX2RpcnR5KCkiKT8gQW5kIGlmIHdlIGRvLCB3
aGF0Cj4gd291bGQgYmUgdGhlIGNvbnNlcXVlbmNlcz8gV291bGQgb3RoZXIgcGF0Y2hlcyBuZWVk
IHRvIGJlIHJldmVydGVkLAo+IHRvbz8KCkkndmUgYmVlbiBydW5uaW5nIHdpdGggcmV2ZXJ0IHBh
dGNoIGZvciBhIGNvdXBsZSBvZiBkYXlzIGFuZCBoYXZlIG5vdAplbmNvdW50ZXJlZCBhbnkga2Vy
bmVsIHdhcm5pbmdzIHRodXMgZmFyLCBub3IgYW55IG90aGVyIGlsbCBlZmZlY3RzIHRoYXQKY291
bGQgYmUgYXR0cmlidXRlZCB0byB0aGlzIGxvY2tpbmcgbWVjaGFuaXNtLgoKQnV0IEknbSBmYXIg
ZnJvbSBmYW1pbGlhciB3aXRoIHRoZXNlIHN1YnN5c3RlbXMuCgpHcmFwaGljcyBkb2VzIG5vdCBo
YW5nIGFueW1vcmUuCgpJJ3ZlIGFsc28gcmVjZWl2ZWQgZGV2ZWxvcGVyIGZlZWRiYWNrIGluIHBy
aXZhdGUgdGhhdCB0aGlzIHJlYWxseSBzaG91bGQKYmUgZml4ZWQgYmVmb3JlIDUuMyByZWxlYXNl
LgoKLS0gCkxlaG8gS3JhYXYsIHNlbmlvciB0ZWNobm9sb2d5ICYgZGlnaXRhbCBtYXJrZXRpbmcg
YXJjaGl0ZWN0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
