Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0788DA7FA2
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 11:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A46898F3;
	Wed,  4 Sep 2019 09:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D447C898F3
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 09:45:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 02:45:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="187569612"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga006.jf.intel.com with ESMTP; 04 Sep 2019 02:45:56 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Sep 2019 02:45:56 -0700
Received: from bgsmsx102.gar.corp.intel.com (10.223.4.172) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Sep 2019 02:45:56 -0700
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.124]) by
 BGSMSX102.gar.corp.intel.com ([169.254.2.79]) with mapi id 14.03.0439.000;
 Wed, 4 Sep 2019 15:15:53 +0530
From: "Sharma, Swati2" <swati2.sharma@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v10][PATCH 0/8] drm/i915: adding state checker for gamma lut
 values
Thread-Index: AQHVYwN88/GfQOAZBUClkz26HCbZPacbRLug
Date: Wed, 4 Sep 2019 09:45:53 +0000
Message-ID: <9872A5B702A4C6478FE7367F3B7CB4F725E16585@BGSMSX101.gar.corp.intel.com>
References: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
 <87ef0w4ddm.fsf@intel.com>
In-Reply-To: <87ef0w4ddm.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjBmYzkwMGEtMDYyMC00NTM2LWJjYzItNTUxMzhhNzE4MjE5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVExFZTdoVHdybGlBdjM1cXBndTFucVhQQ2ZQVEtmTFBOZldzSVlXMmlsR0xSSW1rcXBuaTc4c0tncDF1azlMaiJ9
x-ctpclassification: CTP_NT
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v10][PATCH 0/8] drm/i915: adding state checker for
 gamma lut values
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WWF5ISBUaGFua3MgSmFuaS4gCgpUaGFua3MgYW5kIFJlZ2FyZHMsClN3YXRpCgotLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQpGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PiAKU2VudDogV2VkbmVzZGF5LCBTZXB0ZW1iZXIgNCwgMjAxOSAzOjAxIFBNClRvOiBTaGFybWEs
IFN3YXRpMiA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCkNjOiBSb3BlciwgTWF0dGhldyBEIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PjsgVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT47IFNoYXJtYSwgU2hhc2hh
bmsgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+OyBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+OyBOYXV0aXlhbCwgQW5raXQgSyA8YW5raXQuay5uYXV0aXlhbEBpbnRl
bC5jb20+OyBkYW5pZWwudmV0dGVyQGZmd2xsLmNoOyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbTsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBTaGFybWEsIFN3YXRp
MiA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+ClN1YmplY3Q6IFJlOiBbdjEwXVtQQVRDSCAwLzhd
IGRybS9pOTE1OiBhZGRpbmcgc3RhdGUgY2hlY2tlciBmb3IgZ2FtbWEgbHV0IHZhbHVlcwoKT24g
V2VkLCAwNCBTZXAgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4g
d3JvdGU6Cj4gSW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8gdmFs
aWRhdGUgZ2FtbWEgKDhCSVQgYW5kIAo+IDEwQklUKS5UaGlzIHJlYWRzIGhhcmR3YXJlIHN0YXRl
LCBhbmQgY29tcGFyZXMgdGhlIG9yaWdpbmFsbHkgCj4gcmVxdWVzdGVkIHN0YXRlKHMvdykgdG8g
dGhlIHN0YXRlIHJlYWQgZnJvbSB0aGUgaGFyZHdhcmUuCj4gVGhpcyBpcyBkb25lIGZvciBsZWdh
Y3ksIGlsaywgZ2xrIGFuZCB0aGVpciB2YXJpYW50IHBsYXRmb3Jtcy4gUmVzdCBvZiAKPiB0aGUg
cGxhdGZvcm1zIHdpbGwgYmUgZW5hYmxlZCBvbiB0b3Agb2YgdGhpcyBsYXRlci4KPgo+IEludGVu
dGlvbmFsbHksIGV4Y2x1ZGVkIGJkdyBhbmQgaXZiIHNpbmNlIHRoZXkgaGF2ZSBzcGlsdCBnYW1t
YSBtb2RlOyAKPiBmb3Igd2hpY2ggZGVnYW1tYSByZWFkIG91dHMgYXJlIHJlcXVpcmVkICh3aGlj
aCBJIHRoaW5rIHNob3VsZG4ndCBiZSAKPiBpbmNsdWRlZCBpbiB0aGlzIHBhdGNoIHNlcmllcyku
IFdpbGwgaW5jbHVkZSBhZnRlciBkZWdhbW1hIHN0YXRlIAo+IGNoZWNrZXIgaXMgY29tcGxldGVk
LgoKUHVzaGVkIHRoZSBzZXJpZXMsIHRoYW5rcyBmb3IgdGhlIHBhdGNoZXMgYW5kIHJldmlldyEK
ClBsZWFzZSBwcm9jZWVkIHdpdGggdGhlIG5leHQgc3RlcHMhIEl0IHNob3VsZCBiZSBlYXNpZXIg
bm93IHRoYXQgeW91IGNhbiBmb2N1cyBvbiBlbmFibGluZyB0aGUgY2hlY2tzIGZvciBvbmUgZmVh
dHVyZSBvciBwbGF0Zm9ybSwgYW5kIGlmIG5lZWRlZCwgb25lIHBhdGNoLCBhdCBhIHRpbWUuIDop
CgpCUiwKSmFuaS4KCgotLQpKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
