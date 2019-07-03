Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 836025EEA0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 23:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58BC96E200;
	Wed,  3 Jul 2019 21:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 121F46E200
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 21:36:12 +0000 (UTC)
Received: (wp-smtpd smtp.wp.pl 10904 invoked from network);
 3 Jul 2019 23:36:09 +0200
Received: from 87-207-42-122.dynamic.chello.pl (HELO atlas.holubowski.com)
 (przemhb@wp.pl@[87.207.42.122]) (envelope-sender <przemhb@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <intel-gfx@lists.freedesktop.org>; 3 Jul 2019 23:36:09 +0200
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <17600c81-03d0-6abe-5083-a488e82910ae@wp.pl>
 <20190701133210.GI5942@intel.com>
From: =?UTF-8?Q?Przemys=c5=82aw_Ho=c5=82ubowski?= <przemhb@wp.pl>
Message-ID: <878d5f08-562d-b4d8-afc8-7935e85dd5de@wp.pl>
Date: Wed, 3 Jul 2019 23:36:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190701133210.GI5942@intel.com>
Content-Language: en-US
X-WP-MailID: 0f0555aefad39f293338e5d0abdf5ada
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000001 [sTIl]                               
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wp.pl; s=1024a; 
 t=1562189770; bh=PHDGHD/hEVmSOywkemiEAEPKZIa9QKNkINsvLD2vOP8=;
 h=Subject:To:Cc:From;
 b=TnnTrnjz0pODfJk7Kkuv6XAiyPYdO+47Fpelh2ysa1RDd4nKtsyfOk/VhDn7w+OLr
 jVXHh09odAxGLRwN2mq/NsdQHDS7I3WhACqts7Y0KgJJANDUCXnUA58c/UQVEMlQJ0
 WXRB9uQZBRJ4CG88hFw4kopqEg/P0dTL/AKSpEvI=
Subject: Re: [Intel-gfx] Graphics issue after upgrade from Fedora 28 to 29 -
 multiple mouse cursor icons
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8sCgp0aGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuCgpXIGRuaXUgMDEuMDcuMjAxOSBvwqAx
NTozMiwgVmlsbGUgU3lyasOkbMOkIHBpc3plOgo+IFlvdSBuZWVkIGEgZnJlc2ggaW50ZWwgZGR4
IChjb21taXQgNmFmZWQzM2IyZDY3ICgic25hOiBTd2l0Y2gKPiBiYWNrIHRvIGh3Y3Vyc29yIG9u
IHRoZSBuZXh0IGN1cnNvciB1cGRhdGUiKSBpbiBwYXJ0aWN1bGFyKS4gVGhhdAo+IHNob3VsZCBt
YWtlIHRoZSBwcm9ibGVtIGxlc3MgcHJvbm91bmNlZCBhdCBsZWFzdCwgZHVlIHRvIHN3aXRjaGlu
Zwo+IGJhY2sgdG8gdGhlIGh3IGN1cnNvciBmcm9tIHRoZSBzdyBjdXJzb3IgYSBiaXQgbW9yZSBn
cmVlZGlseS4KCkkgYW0gd29uZGVyaW5nIHdoYXQgaXMgdGhlIHNhZmVzdCBhbmQgZWFzeSB3YXkg
b2YgdGVzdGluZyB0aGlzLiBEbyBJIApoYXZlIHRvIGNvbXBpbGUgc291cmNlIG9mIGEga2VybmVs
IG9yIGp1c3QgSW50ZWwgRERYIG9yIG1heWJlIHRoZXJlIGFyZSAKYWxyZWFkeSBzb21lIHJlYWR5
IHRvIHVzZSBidWlsZHMgZnJvbSBDST8KV2hhdCB3b3VsZCB5b3UgcmVjb21tZW5kPwoKLS0gCnJl
Z2FyZHMKUHJ6ZW15c8WCYXcgSG/FgnVib3dza2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
