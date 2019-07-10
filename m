Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6CC648CA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 17:01:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA456E0E9;
	Wed, 10 Jul 2019 15:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1243C6E0E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 15:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id E3A198EE24C;
 Wed, 10 Jul 2019 08:01:15 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id w7OgwRly1-Ej; Wed, 10 Jul 2019 08:01:15 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 6C5948EE147;
 Wed, 10 Jul 2019 08:01:15 -0700 (PDT)
Message-ID: <1562770874.3213.14.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 08:01:14 -0700
In-Reply-To: <1561834612.3071.6.camel@HansenPartnership.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562770875;
 bh=kTKmUcjPIZy+cb272mn02BGDr/iISuwOGoTGGPFVmB4=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=UTIwU8xij1Z+s9YfJbAnDiV3mL1XHgtV2hGw+QEjW+zIbFTQqNbzuoGBlSLHfLhlA
 pPgwIA07Mh/i6aP5OiucFcP4yQAuuOFr7rvO6MiH1fcP8t719juppreWl7YzPruswN
 igUaGuGI2HcT5oLofkY6FD0TyRUzpWqcCPOWOhNo=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=hansenpartnership.com; 
 s=20151216; t=1562770875;
 bh=kTKmUcjPIZy+cb272mn02BGDr/iISuwOGoTGGPFVmB4=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=UTIwU8xij1Z+s9YfJbAnDiV3mL1XHgtV2hGw+QEjW+zIbFTQqNbzuoGBlSLHfLhlA
 pPgwIA07Mh/i6aP5OiucFcP4yQAuuOFr7rvO6MiH1fcP8t719juppreWl7YzPruswN
 igUaGuGI2HcT5oLofkY6FD0TyRUzpWqcCPOWOhNo=
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAyMDE5LTA2LTI5IGF0IDExOjU2IC0wNzAwLCBKYW1lcyBCb3R0b21sZXkgd3JvdGU6
Cj4gVGhlIHN5bXB0b21zIGFyZSByZWFsbHkgd2VpcmQ6IHRoZSBzY3JlZW4gaW1hZ2UgaXMgbG9j
a2VkIGluIHBsYWNlLiAKPiBUaGUgbWFjaGluZSBpcyBzdGlsbCBmdW5jdGlvbmFsIGFuZCBpZiBJ
IGxvZyBpbiBvdmVyIHRoZSBuZXR3b3JrIEkKPiBjYW4gZG8gYW55dGhpbmcgSSBsaWtlLCBpbmNs
dWRpbmcga2lsbGluZyB0aGUgWCBzZXJ2ZXIgYW5kIHRoZQo+IGRpc3BsYXkgd2lsbCBuZXZlciBh
bHRlci4gIEl0IGFsc28gc2VlbXMgdGhhdCB0aGUgc3lzdGVtIGlzIGFjY2VwdGluZwo+IGtleWJv
YXJkIGlucHV0IGJlY2F1c2Ugd2hlbiBpdCBmcmVlemVzIEkgY2FuIGNhdCBpbmZvcm1hdGlvbiB0
byBhCj4gZmlsZSAoaWYgdGhlIG1vdXNlIHdhcyBvdmVyIGFuIHh0ZXJtKSBhbmQgdmVyaWZ5IG92
ZXIgdGhlIG5ldHdvcmsgdGhlCj4gZmlsZSBjb250ZW50cy4gTm90aGluZyB1bnVzdWFsIGFwcGVh
cnMgaW4gZG1lc2cgd2hlbiB0aGUgbG9ja3VwCj4gaGFwcGVucy4KPiAKPiBUaGUgbGFzdCBrZXJu
ZWwgSSBib290ZWQgc3VjY2Vzc2Z1bGx5IG9uIHRoZSBzeXN0ZW0gd2FzIDUuMCwgc28gSSdsbAo+
IHRyeSBjb21waWxpbmcgNS4xIHRvIG5hcnJvdyBkb3duIHRoZSBjaGFuZ2VzLgoKSSd2ZSBjb25m
aXJtZWQgdGhhdCA1LjEgZG9lc24ndCBoYXZlIHRoZSByZWdyZXNzaW9uIGFuZCBJJ20gbm93IHRy
eWluZwp0byBiaXNlY3QgdGhlIDUuMiBtZXJnZSB3aW5kb3csIGJ1dCBzaW5jZSB0aGUgcHJvYmxl
bSB0YWtlcyBxdWl0ZSBhCndoaWxlIHRvIG1hbmlmZXN0IHRoaXMgd2lsbCB0YWtlIHNvbWUgdGlt
ZS4gIEFueSBoaW50cyBhYm91dCBzcGVjaWZpYwpwYXRjaGVzIHRoYXQgbWlnaHQgYmUgdGhlIHBy
b2JsZW0gd291bGQgYmUgd2VsY29tZS4KCkphbWVzCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
