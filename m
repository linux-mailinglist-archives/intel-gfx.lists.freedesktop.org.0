Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9F512549
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 02:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D9B89179;
	Fri,  3 May 2019 00:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E5389179
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 00:00:45 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id j6so4871876qtq.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2019 17:00:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pPqKk1Nce9ulB47hrGMNOsWZDkTL1qhAM3SCFqkBmyg=;
 b=I92bNsWlCYc5Js6sa929Agiqf4jYw01kPyUjMtydibXKPaxweMnzm+VCGKED01Pwiy
 lSUJAWNvTAiUU21uylriIoEwgqaL/ih6sSrLxZhP8tZ/kZK5ZOUN368tur+dOvakRtWv
 LvfACuFzMdzO+skQ4vb0eZOAPOhoYILsV72Rgrjo16CXoxn0GX/6T64xDQflyRJLAP+7
 In35MTYwSYTp7ZkctUnxDsD2z6mq/1XrBMPn1idkFmshtvAvB9MJZ3ryZl3hpfRh1Qjg
 0s7Sg/mBqpIvS7EmZAZOZSfocLfO+aE/hVnSYGJKh3tsB33UnucR2FyXHPuxwUXTGX/T
 CExQ==
X-Gm-Message-State: APjAAAX9pknamU2ilNH4+u66aBi9L1eCa+oPTBQ2fwINWDSP6dEYOftu
 5ynf12uJEy/0REScyiEeDxASBA==
X-Google-Smtp-Source: APXvYqzAzN3fqk+Sn0S7PSCnrWs48hQdYqyQUYcdLogPdX2Kvo9EOJ9LoB1Ax20VDtUU5rkOZhdoDQ==
X-Received: by 2002:ac8:1a41:: with SMTP id q1mr5928878qtk.185.1556841644635; 
 Thu, 02 May 2019 17:00:44 -0700 (PDT)
Received: from 2600-6c64-4e80-00f1-336a-6920-3806-8b87.dhcp6.chtrptr.net
 (2600-6c64-4e80-00f1-336a-6920-3806-8b87.dhcp6.chtrptr.net.
 [2600:6c64:4e80:f1:336a:6920:3806:8b87])
 by smtp.gmail.com with ESMTPSA id o55sm553683qtj.14.2019.05.02.17.00.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 17:00:43 -0700 (PDT)
Message-ID: <f5a96a36e68fcf4e15f902bd3c9257acb77d6e08.camel@redhat.com>
From: Laurence Oberman <loberman@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 02 May 2019 20:00:42 -0400
In-Reply-To: <20190502194208.3535-2-daniel.vetter@ffwll.ch>
References: <20190502194208.3535-1-daniel.vetter@ffwll.ch>
 <20190502194208.3535-2-daniel.vetter@ffwll.ch>
X-Mailer: Evolution 3.28.5 (3.28.5-2.el7) 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] RFC: soft/hardlookup: taint kernel
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
Cc: Don Zickus <dzickus@redhat.com>, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Sinan Kaya <okaya@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA1LTAyIGF0IDIxOjQyICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+
IFRoZXJlJ3MgdGhlIHNvZnQvaGFyZGxvb2t1cF9wYW5pYyBzeXNjdGxzLCBidXQgdGhhdCdzIGEg
Yml0IGFuCj4gZXh0cmVtZQo+IG1lYXN1cmUuIEFzIGEgZmFsbGJhY2sgdGFpbnQgYXQgbGVhc3Qg
dGhlIG1hY2hpbmUuCj4gCj4gT3VyIENJIHVzZXMgdGhpcyB0byBkZWNpZGUgd2hlbiBhIHJlYm9v
dCBpcyBuZWNlc3NhcnksIHBsdXMgdG8gZmlndXJlCj4gb3V0IHdoZXRoZXIgdGhlIGtlcm5lbCBp
cyBzdGlsbCBoYXBweS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGludGVsLmNvbT4KPiBDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXgu
ZGU+Cj4gQ2M6IEluZ28gTW9sbmFyIDxtaW5nb0BrZXJuZWwub3JnPgo+IENjOiBQZXRlciBaaWps
c3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Cj4gQ2M6IFZhbGRpcyBLbGV0bmlla3MgPHZhbGRp
cy5rbGV0bmlla3NAdnQuZWR1Pgo+IENjOiBMYXVyZW5jZSBPYmVybWFuIDxsb2Jlcm1hbkByZWRo
YXQuY29tPgo+IENjOiBWaW5jZW50IFdoaXRjaHVyY2ggPHZpbmNlbnQud2hpdGNodXJjaEBheGlz
LmNvbT4KPiBDYzogRG9uIFppY2t1cyA8ZHppY2t1c0ByZWRoYXQuY29tPgo+IENjOiBBbmRyZXcg
TW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+IENjOiBTZXJnZXkgU2Vub3poYXRz
a3kgPHNlcmdleS5zZW5vemhhdHNreS53b3JrQGdtYWlsLmNvbT4KPiBDYzogU2luYW4gS2F5YSA8
b2theWFAa2VybmVsLm9yZz4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KPiAtLS0KPiAga2VybmVsL3dhdGNoZG9nLmMgICAgIHwgMiArKwo+ICBrZXJuZWwvd2F0
Y2hkb2dfaGxkLmMgfCAyICsrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL2tlcm5lbC93YXRjaGRvZy5jIGIva2VybmVsL3dhdGNoZG9nLmMKPiBp
bmRleCA2YTU3ODcyMzMxMTMuLmRlN2E2MDUwMzUxNyAxMDA2NDQKPiAtLS0gYS9rZXJuZWwvd2F0
Y2hkb2cuYwo+ICsrKyBiL2tlcm5lbC93YXRjaGRvZy5jCj4gQEAgLTQ2OSw2ICs0NjksOCBAQCBz
dGF0aWMgZW51bSBocnRpbWVyX3Jlc3RhcnQKPiB3YXRjaGRvZ190aW1lcl9mbihzdHJ1Y3QgaHJ0
aW1lciAqaHJ0aW1lcikKPiAgCQlhZGRfdGFpbnQoVEFJTlRfU09GVExPQ0tVUCwgTE9DS0RFUF9T
VElMTF9PSyk7Cj4gIAkJaWYgKHNvZnRsb2NrdXBfcGFuaWMpCj4gIAkJCXBhbmljKCJzb2Z0bG9j
a3VwOiBodW5nIHRhc2tzIik7Cj4gKwkJZWxzZQo+ICsJCQlhZGRfdGFpbnQoVEFJTlRfV0FSTiwg
TE9DS0RFUF9TVElMTF9PSyk7Cj4gIAkJX190aGlzX2NwdV93cml0ZShzb2Z0X3dhdGNoZG9nX3dh
cm4sIHRydWUpOwo+ICAJfSBlbHNlCj4gIAkJX190aGlzX2NwdV93cml0ZShzb2Z0X3dhdGNoZG9n
X3dhcm4sIGZhbHNlKTsKPiBkaWZmIC0tZ2l0IGEva2VybmVsL3dhdGNoZG9nX2hsZC5jIGIva2Vy
bmVsL3dhdGNoZG9nX2hsZC5jCj4gaW5kZXggMjQ3YmYwYjE1ODJjLi5jY2U0NmNmNzVkNzYgMTAw
NjQ0Cj4gLS0tIGEva2VybmVsL3dhdGNoZG9nX2hsZC5jCj4gKysrIGIva2VybmVsL3dhdGNoZG9n
X2hsZC5jCj4gQEAgLTE1NCw2ICsxNTQsOCBAQCBzdGF0aWMgdm9pZCB3YXRjaGRvZ19vdmVyZmxv
d19jYWxsYmFjayhzdHJ1Y3QKPiBwZXJmX2V2ZW50ICpldmVudCwKPiAgCj4gIAkJaWYgKGhhcmRs
b2NrdXBfcGFuaWMpCj4gIAkJCW5taV9wYW5pYyhyZWdzLCAiSGFyZCBMT0NLVVAiKTsKPiArCQll
bHNlCj4gKwkJCWFkZF90YWludChUQUlOVF9XQVJOLCBMT0NLREVQX1NUSUxMX09LKTsKPiAgCj4g
IAkJX190aGlzX2NwdV93cml0ZShoYXJkX3dhdGNoZG9nX3dhcm4sIHRydWUpOwo+ICAJCXJldHVy
bjsKClRoaXMgbG9va3MgT0sgdG8gbWUsIGNvdWxkIGJlIHVzZWZ1bCB0byBrbm93IHdlIHdvdWxk
IGhhdmUgdHJpZ2dlcmVkCmhhZCB0aGUgZmxhZ3MgYmVlbiBzZXQuCgpSZXZpZXdlZC1ieTogTGF1
cmVuY2UgT2Jlcm1hbiA8bG9iZXJtYW5AcmVkaGF0LmNvbT4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
