Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 482B88FA77
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 07:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C10206EAC8;
	Fri, 16 Aug 2019 05:47:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283036EAC8
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 05:47:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 22:47:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="188716095"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 15 Aug 2019 22:47:40 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 15 Aug 2019 22:47:39 -0700
Received: from bgsmsx104.gar.corp.intel.com (10.223.4.190) by
 FMSMSX119.amr.corp.intel.com (10.18.124.207) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 15 Aug 2019 22:47:39 -0700
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.124]) by
 BGSMSX104.gar.corp.intel.com ([169.254.5.178]) with mapi id 14.03.0439.000;
 Fri, 16 Aug 2019 11:17:37 +0530
From: "Sharma, Swati2" <swati2.sharma@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v7][PATCH 00/12] drm/i915: adding state checker
 for gamma lut values
Thread-Index: AQHVU0FwUMqq09u47EuM9UM7EqGW1ab9RXTA
Date: Fri, 16 Aug 2019 05:47:36 +0000
Message-ID: <9872A5B702A4C6478FE7367F3B7CB4F725E02160@BGSMSX101.gar.corp.intel.com>
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
 <87r25mg816.fsf@intel.com>
In-Reply-To: <87r25mg816.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTZjNTU3MDctYTZlNi00ZjI1LWIxMzQtYTQ1NWMyOWJmZDNhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoib1hyc3pnWWpKSlpzUEpUbGllcTE5UFwvNHptVTd0ZHpYb09uVWhuSjBNN1ZRQzhFV3k0bXMrOXVDVm51RE1GenQifQ==
x-ctpclassification: CTP_NT
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7][PATCH 00/12] drm/i915: adding state checker
 for gamma lut values
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFuaSwKCkkgd2FzIGludm9sdmVkIGluIG90aGVyIGFjdGl2aXRpZXMuIFdpbGwgcmVzdW1l
IHdvcmsgb24gdGhpcyBub3cuIAoKVGhhbmtzIGFuZCBSZWdhcmRzLApTd2F0aQoKLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0KRnJvbTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4Lmlu
dGVsLmNvbT4gClNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMTUsIDIwMTkgMTo0NCBQTQpUbzogU2hh
cm1hLCBTd2F0aTIgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW3Y3XVtQQVRDSCAwMC8xMl0g
ZHJtL2k5MTU6IGFkZGluZyBzdGF0ZSBjaGVja2VyIGZvciBnYW1tYSBsdXQgdmFsdWVzCgpPbiBX
ZWQsIDI5IE1heSAyMDE5LCBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPiB3
cm90ZToKPiBJbiB0aGlzIHBhdGNoIHNlcmllcywgYWRkZWQgc3RhdGUgY2hlY2tlciB0byB2YWxp
ZGF0ZSBnYW1tYSBhbmQgd2lsbCAKPiBiZSBleHRlbmRlZCB0byB2YWxpZGF0ZSBkZWdhbW1hIGx1
dCB2YWx1ZXMgYXN3ZWxsLgo+IFRoaXMgcmVhZHMgaGFyZHdhcmUgc3RhdGUsIGFuZCBjb21wYXJl
cyB0aGUgb3JpZ2luYWxseSByZXF1ZXN0ZWQgc3RhdGUgCj4gdG8gdGhlIHN0YXRlIHJlYWQgZnJv
bSBoYXJkd2FyZS4KCldoYXQgaGFwcGVuZWQgdG8gdGhpcyBwYXRjaCBzZXJpZXM/CgpCUiwKSmFu
aS4KCi0tCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
