Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 180E86C293
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 23:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783FC6E2B1;
	Wed, 17 Jul 2019 21:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E5F6E2B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 21:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id C0D388EE128;
 Wed, 17 Jul 2019 14:29:29 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 4czQmuqH7-qZ; Wed, 17 Jul 2019 14:29:29 -0700 (PDT)
Received: from [192.168.11.4] (122x212x32x58.ap122.ftth.ucom.ne.jp
 [122.212.32.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 901038EE0CE;
 Wed, 17 Jul 2019 14:29:28 -0700 (PDT)
Message-ID: <1563398966.3438.5.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Paul Bolle <pebolle@tiscali.nl>, "Souza, Jose" <jose.souza@intel.com>, 
 "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Thu, 18 Jul 2019 06:29:26 +0900
In-Reply-To: <9ef8fc1ae2c3a9bad588899488a781333af4449a.camel@tiscali.nl>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <1562875878.2840.0.camel@HansenPartnership.com>
 <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
 <1562876880.2840.12.camel@HansenPartnership.com>
 <1562882235.13723.1.camel@HansenPartnership.com>
 <dad073fb4b06cf0abb7ab702a9474b9c443186eb.camel@intel.com>
 <1562884722.15001.3.camel@HansenPartnership.com>
 <2c4edfabf49998eb5da3a6adcabc006eb64bfe90.camel@tiscali.nl>
 <55f4d1c242d684ca2742e8c14613d810a9ee9504.camel@intel.com>
 <1562888433.2915.0.camel@HansenPartnership.com>
 <1562941185.3398.1.camel@HansenPartnership.com>
 <68472c5f390731e170221809a12d88cb3bc6460e.camel@tiscali.nl>
 <143142cad4a946361a0bf285b6f1701c81096c7b.camel@intel.com>
 <595d9bc87bf47717c8675eb5b1a1cbb2bc463752.camel@tiscali.nl>
 <a10f009fc160f05077760ff59cd86a9c99006b39.camel@intel.com>
 <9ef8fc1ae2c3a9bad588899488a781333af4449a.camel@tiscali.nl>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1563398969;
 bh=LMTkdXUy9pZvZVK0Vg2eH0Zg70dLtAATv/rbKinbwF8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=GNi7HCFgMCBk2AzqS5sYgoQ3TpY9KxE/r/v0e/0PSfo62ad3wnpO6ecI8HR9YjzGI
 0IqVoKVLcNraSKyyEUylvx6nn8RHvL7Hi2PMtH+m/TFPYrqMX7dq1gH96ra+ibBNs5
 /I2HIzb9cOrAplpEP7Nu9qJJ6iNUh1oUhlEliES4=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1563398969;
 bh=LMTkdXUy9pZvZVK0Vg2eH0Zg70dLtAATv/rbKinbwF8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=GNi7HCFgMCBk2AzqS5sYgoQ3TpY9KxE/r/v0e/0PSfo62ad3wnpO6ecI8HR9YjzGI
 0IqVoKVLcNraSKyyEUylvx6nn8RHvL7Hi2PMtH+m/TFPYrqMX7dq1gH96ra+ibBNs5
 /I2HIzb9cOrAplpEP7Nu9qJJ6iNUh1oUhlEliES4=
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA3LTE3IGF0IDIzOjI3ICswMjAwLCBQYXVsIEJvbGxlIHdyb3RlOgo+IEhp
IEpvc2UsCj4gCj4gU291emEsIEpvc2Ugc2NocmVlZiBvcCBkaSAxNi0wNy0yMDE5IG9tIDE2OjMy
IFsrMDAwMF06Cj4gPiBQYXVsIGFuZCBKYW1lcyBjb3VsZCB5b3UgdGVzdCB0aGlzIGZpbmFsIHNv
bHV0aW9uKGF0IGxlYXN0IGZvcgo+ID4gNS4yKT8gUGxlYXNlIHJldmVydCB0aGUgaGFjayBwYXRj
aCBhbmQgYXBwbHkgdGhpcyBvbmUuCj4gCj4gSSd2ZSBqdXN0IHJlYWNoZWQgYSBkYXkgb2YgdXB0
aW1lIHdpdGggeW91ciByZXZlcnQuIChUaGUgcHJvcGVyCj4gdXB0aW1lIGlzIGp1c3QgYSBmcmFj
dGlvbiBvZiBhIGRheSwgdGhpcyBiZWluZyBhIGxhcHRvcC4pIEFueWhvdywgbm8KPiBzY3JlZW4g
ZnJlZXplcyBvY2N1cnJlZCBkdXJpbmcgdGhpcyBkYXkuCgpJJ20gYWZyYWlkIG15IHN0YXR1cyBp
cyB0aGF0IEknbSBpbiBUb2t5byBkb2luZyBjb25mZXJlbmNlCnByZXNlbnRhdGlvbnMgKGFuZCBr
ZXJuZWwgZGVtb3MpIHNvIEknbSBhIGJpdCByZWx1Y3RhbnQgdG8gbWVzcyB3aXRoIG15CnNldHVw
IHVudGlsIEkgZmluaXNoIGV2ZXJ5dGhpbmcgb24gRnJpZGF5LCBidXQgSSB3aWxsIHRlc3QgaXQg
YWZ0ZXIKdGhlbiwgcHJvbWlzZS4KCj4gU28gZmVlbCBmcmVlIHRvIGFkZCBteSBUZXN0ZWQtYnkg
dGFnIHRvIHlvdXIgcmV2ZXJ0LiBCdXQgcGxlYXNlIGRvbid0Cj4gZm9yZ2V0IHRoYXQgSmFtZXMg
ZWFybmVkIGEgUmVwb3J0ZWQtYnkgdGFnLgoKVGhhbmtzLAoKSmFtZXMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
