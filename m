Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA8A39F396
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 12:31:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869C26E0DC;
	Tue,  8 Jun 2021 10:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64EF96E0DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 10:31:28 +0000 (UTC)
IronPort-SDR: kpp3Ts0ThVZo9GFViAM3KV1PNTaqgWewDuNuzpqjQA154mgCTDGQbcvf7dfLJbOKg3BU14LMO6
 t1dh6LuCfgEw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204841133"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="204841133"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 03:31:27 -0700
IronPort-SDR: oqfLXUuNbS7aAIgOv4berDdOhxi0n8JkxyemV4kxoxBZvp02eQGjp68RcF03Z63/VWFpVZ0t1b
 Lc+V8OMxWxHQ==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="447849059"
Received: from gazumbad-mobl.amr.corp.intel.com (HELO [10.249.45.184])
 ([10.249.45.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 03:31:25 -0700
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, x86@kernel.org, jose.souza@intel.com
References: <20210608053411.394166-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <8b2e9971-2e70-b68f-ab0f-8dff26c8805b@linux.intel.com>
Date: Tue, 8 Jun 2021 12:31:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210608053411.394166-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH V3] x86/gpu: add JasperLake to gen11 early
 quirks
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDgtMDYtMjAyMSBvbSAwNzozNCBzY2hyZWVmIFRlamFzIFVwYWRoeWF5Ogo+IExldCdzIHJl
c2VydmUgSlNMIHN0b2xlbiBtZW1vcnkgZm9yIGdyYXBoaWNzLgo+Cj4gSmFzcGVyTGFrZSBpcyBh
IGdlbjExIHBsYXRmb3JtIHdoaWNoIGlzIGNvbXBhdGlibGUgd2l0aAo+IElDTC9FSEwgY2hhbmdl
cy4KPgo+IFJlcXVpcmVkIGR1ZSB0byBiZWxvdyByZWZlcmVuY2UgcGF0Y2g6Cj4KPiBjb21taXQg
MjRlYTA5OGI3YzBkODBiNTZkNjJhMjAwNjA4ZTBiMDI5MDU2YmFmNgo+IGRybS9pOTE1L2pzbDog
U3BsaXQgRUhML0pTTCBwbGF0Zm9ybSBpbmZvIGFuZCBQQ0kgaWRzCj4KPiBWMjoKPiAgICAgLSBB
ZGRlZCBtYWludGFpbmVyIGxpc3QgaW4gY2MKPiAgICAgLSBBZGRlZCBwYXRjaCByZWYgaW4gY29t
bWl0IG1lc3NhZ2UKPiBWMToKPiAgICAgLSBBZGRlZCBDYzogeDg2QGtlcm5lbC5vcmcKPgo+IENj
OiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KPiBDYzogSW5nbyBNb2xuYXIg
PG1pbmdvQHJlZGhhdC5jb20+Cj4gQ2M6IEJvcmlzbGF2IFBldGtvdiA8YnBAYWxpZW44LmRlPgo+
IENjOiAiSC4gUGV0ZXIgQW52aW4iIDxocGFAenl0b3IuY29tPgo+IENjOiB4ODZAa2VybmVsLm9y
Zwo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBUZWphcyBVcGFkaHlheSA8dGVqYXNrdW1hcnguc3VyZW5kcmFrdW1hci51
cGFkaHlheUBpbnRlbC5jb20+Cj4gLS0tCj4gIGFyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3Mu
YyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQg
YS9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgYi9hcmNoL3g4Ni9rZXJuZWwvZWFybHkt
cXVpcmtzLmMKPiBpbmRleCBiNTUzZmZlOWI5ODUuLjM4ODM3ZGFkNDZlNiAxMDA2NDQKPiAtLS0g
YS9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMKPiArKysgYi9hcmNoL3g4Ni9rZXJuZWwv
ZWFybHktcXVpcmtzLmMKPiBAQCAtNTQ5LDYgKzU0OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cGNpX2RldmljZV9pZCBpbnRlbF9lYXJseV9pZHNbXSBfX2luaXRjb25zdCA9IHsKPiAgCUlOVEVM
X0NOTF9JRFMoJmdlbjlfZWFybHlfb3BzKSwKPiAgCUlOVEVMX0lDTF8xMV9JRFMoJmdlbjExX2Vh
cmx5X29wcyksCj4gIAlJTlRFTF9FSExfSURTKCZnZW4xMV9lYXJseV9vcHMpLAo+ICsJSU5URUxf
SlNMX0lEUygmZ2VuMTFfZWFybHlfb3BzKSwKPiAgCUlOVEVMX1RHTF8xMl9JRFMoJmdlbjExX2Vh
cmx5X29wcyksCj4gIAlJTlRFTF9SS0xfSURTKCZnZW4xMV9lYXJseV9vcHMpLAo+ICAJSU5URUxf
QURMU19JRFMoJmdlbjExX2Vhcmx5X29wcyksCgpJIGNsZWFuZWQgdXAgdGhlIGNvbW1pdCBtZXNz
YWdlIHNsaWdodGx5LCBhZGRlZCBjYyBzdGFibGUgYW5kIHB1c2hlZC4gOikKClRoYW5rcyBmb3Ig
cGF0Y2guCgp+TWFhcnRlbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
