Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EB75063E0
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 07:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F33F10E80C;
	Tue, 19 Apr 2022 05:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 041B510E80C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 05:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650346146; x=1681882146;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=7QTfsyd98HY6Pb75XhoMm0+ho2+ma9p++HQqH9ZqeG8=;
 b=DVwhnuNBaRG/jEg34IpIqq5pZDFtngcmd3/p4R2hXhlz7Ryeuc9jbH6i
 IIXeKQ4Vsu92R8ysfXnInWjBsxb8qW/bz8tzUBLjxoA86FIbcbt9xI1uT
 xVqpx+XE8n+ywGxaOt8Re8syMJmFmTyPvSvw7ZrVbg+aY0GjeyOi++Pxh
 GHmf0L5ZM7Bt9lo7qdglQmpXFWBztuFeI01IYVnMRseeBUV4fH1HshlXE
 2Dx7uDAxtPVefdDteT9cUfWHbJ7RdCia1CwxybEaf4a851RE/xByDI0m6
 dEcDET8Bi6eHzkwGQdyMoHbz2N9D5qo/dPVZAxz2KIYhe615q+kPUsoTK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="263140664"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="263140664"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 22:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="554566736"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 18 Apr 2022 22:29:05 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 22:29:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Apr 2022 22:29:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Apr 2022 22:29:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQg2aS8NbAupZgrqLxDnWRlUDqNbN0LW/vZTCeVfaN9HIzJ0UgFbXKQ17agZS2+addoyoEan27yvCBpkeDIEGb7AFjPdGQ4ZY49uVAbnO87rL6cpj2QGhC73PF4LKFt35QDHqGL4dLqAEfZFoEihcvKlyWpYfuxSLxPolem0X/vPZ5SfUE5Y6jNldDfZQ42SaIZIPvpoW3/42agtvGwG3hPf71WujN/iDur7gTmkpDaE0387q0djfyG7dNbWJ91KHJD2l8jP5mXHp/l8n6k7AnxDCWgLzGOL0BmRn8jKAmftJOrNSzN63K5PO3tI+TWaXk1TBhdvL3cYZQSpX1hqzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7QTfsyd98HY6Pb75XhoMm0+ho2+ma9p++HQqH9ZqeG8=;
 b=njwBDDd3EkEoTBAUVbvP0qxhmvtAgMvPFP/+14+opIvjtzIX5ATSXp9bDtCcqmr4HWaHhnpDKCfVsLUPZfr0rpQDq5dmEdYpRxNRqsgRC2p1l1wlbIQ9dJ1McRxSIBBlQNL2CEXaatNv4Mc64sK4gsXJc9QPl5SzIl33FqW7pEWKNX7PjOhEVSYesGDBGm4zTBn3qHNIIWmPCzys3Qa7IXYbL4ptDgvoUa45GWx4RxyEjOACQEdvIND9nt56cAAhOCEKbS79ZX/IPDSCOVvctLxykbznR11sWs5cRxlbl5vTx7f0ie4TI0n5E9EwiQlBvsItrhBZXJdPvVxj+BKZqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY4PR11MB1973.namprd11.prod.outlook.com (2603:10b6:903:123::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Tue, 19 Apr
 2022 05:29:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90%9]) with mapi id 15.20.5164.025; Tue, 19 Apr 2022
 05:29:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v3 2/2] drm/i915/display/psr: Clear more PSR state during
 disable
Thread-Index: AQHYUBG2gjtzo/m6DkWR7e/O6Pk94az2vJ4A
Date: Tue, 19 Apr 2022 05:29:02 +0000
Message-ID: <0f47d9b151f1570720fc62cb4aec68bee550fbea.camel@intel.com>
References: <20220414151118.21980-1-jose.souza@intel.com>
 <20220414151118.21980-2-jose.souza@intel.com>
In-Reply-To: <20220414151118.21980-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed4c28ce-f320-452b-dc25-08da21c583c7
x-ms-traffictypediagnostic: CY4PR11MB1973:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CY4PR11MB1973689A413EE3BD9EB20DF38AF29@CY4PR11MB1973.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q4pcNRt8aoQOnkmKegCx89nimxnW2+s9wkNntIJzLvEHf4ACaIoEe0tIapbkey4547LPqtvzmvX0OlEbR3IYKGz11E/5tvTMFlxcvox6T7o9ptnpmCjh5+F4cOc1RZN75i65F9duMeuC/d6N7Zeb9ZIOhdQxXW5DE/hQAFooucORr09Pzjf2+PXG+fNC+0WQJevRn6HyeJLCIqBxTynzQkfQR/nlIX+Hops0Lk6teo1dZy8TQJJQDSwCwphG1CwAN1zP3UQ2N9DGbNCNrK94f/Pyl2dJOD9Q914emEs9yfrpd1VA93tTLr2/WEj4FO0Bo7JF3gPq1k1/moznODR7SnyLoWGx0Kn8J7BBeezz86wxEs2qv3RjD2MM7ymNdbjt7O0kAopyXL+Rf7FLe7Mwwg9Ke8ElA6lSnWkSayIRNpwzU0SCAPVaLq8dqsbtuGQrYUGYxITWlRsVOxr9J0CDnjRRo3d6Ce6v11HVW75jVMzrQ17HkVm5SAAGswqA50l/RjqaBlMXbB4r3cvA6TEB9FmascLitU7Um2rT2R5hkvqU38ATlkpmjJmwcEieleQLGeYX4+Vp6tGVlzdrOGYLOxAV/T02TxSO/fZLINR0sBp862mbuHKP7DFvFsgV5qjXije2PUtA6HlluCj+Ru4NlgFhRxqrTARsyaMP3x5WUcKmHXJhQi42WgZexz6x7v7EbR6EZOXod9GmbbqtTVMifw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(122000001)(86362001)(2906002)(82960400001)(26005)(6506007)(6512007)(36756003)(110136005)(8936002)(6636002)(316002)(5660300002)(71200400001)(6486002)(38100700002)(38070700005)(66556008)(83380400001)(91956017)(76116006)(508600001)(8676002)(66446008)(66946007)(2616005)(966005)(186003)(66476007)(66574015)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RTZPZTJqSzcrZHZTcVcwcER4UjVMazAvOTk1TDBJNkZLd1p1TjdpVlNTZXhy?=
 =?utf-8?B?NGt3OUY5ZXBBa2poRzFVeSthRE5TYTc5ZGU1clRDZTBRUnpmZGxaWFJvNHow?=
 =?utf-8?B?MnFQL21ZYk9iQys3a3JiM05mTVhESENxTUJjZit6SXRCUVl6M1JhSlF1WWVa?=
 =?utf-8?B?U0pqSThVOW9ZQldMeCtrNUdkRHFrNmk1WEViSHhuTUJDUXlCSHJYYWRjS3NM?=
 =?utf-8?B?ZEZmeENjS29JY21CcWpDRExJOHlnLzBVQW9zVExIajhqVzhKMnJKaldtN01x?=
 =?utf-8?B?SkdnNXdFSStnWXdGemhxMGF1Rmd5Q25SaVJJUUN3bU55bjZKZW1MK1VtcThF?=
 =?utf-8?B?VW5JbHp4eXRiaCtqVVE2N0lOL01IUXdvaE1TUkZIWU5KWHRIeDdjc3VORURQ?=
 =?utf-8?B?RGI3NklqT0tibGFHQ2dPTFFhK1VIUG5wYXVya001WUlSdExIeFYyNjh0QTds?=
 =?utf-8?B?QkxjRGFSOHFBbUlKeVVlTFdlT0s2WDNmeHZTamVNM3dFV2szZ1Mzc2d3RVV1?=
 =?utf-8?B?ZXRPRUMwV3hhR0Zkdk1IM3UxajUrTUlqTkwxVzJlL1pkRWxxdDdHMG4zb0hW?=
 =?utf-8?B?OGFBaVUwY3ZWei93RWc1L0hkVXlqQ3o0RUlSL09SYytmb1RrSWlxelo1UUEy?=
 =?utf-8?B?eWlEWmI3bXc3TTRKdm8vc0dtRkw1VXdyTHZmTkdwWWxweWJBclB5b1FwV1pG?=
 =?utf-8?B?M2RlOHBIRGNQUW1lUDQ0b0h4Tk54eEZ1ei96eXJiRHpBRTBrUHFxTkRQZndn?=
 =?utf-8?B?eXdjUEFiTXZGWVArVlhvMHlKLzNWTFg4QmhxQWZHaFNYMUhTMmVxU29yUm02?=
 =?utf-8?B?QytsUWwrbGthSHc3V3JGeGFaVEhFajdvWnlzUlBHV0ZKMEI0NmkvRURuU21u?=
 =?utf-8?B?TkdVWE5YVTV4aTdCMm1zYUFacmVCWjlTU2lDT3AxTkJMNStUU3RsMWFwMVZm?=
 =?utf-8?B?TzV0Y3N4cStESlozd09vMmhwblhsR3dBM1kyQVNFNFh0WlRjeGU1dE1LcVU0?=
 =?utf-8?B?Sm1mUXFweGFKNGp0cTN1UkdUQS8yMEFqbVpwM0EwZjgxRUR1RXFrZ09zT1hI?=
 =?utf-8?B?elVKdXlVQzBNNFR3ZDIxbHVqejVQdy9HNERyS3RSeUQzNDNwRUNzK0NoSW52?=
 =?utf-8?B?Kzllbjk5UWdjdGgwY0ZwYXpLOHB0TzMwczVlSGJ6cHBodmY0bUlQMGZHd052?=
 =?utf-8?B?dE9YMEZ5TVNMZ1JmYkZDeFl5OExIZmY1cmJjUjhPUkpScnd4VG9aR21vemhD?=
 =?utf-8?B?T0l1QWRNb0dyQzNYUHZOUktGeTc4andRWExHdXlwLzZHNC9kZXEzVnVOdnd4?=
 =?utf-8?B?QVlzeDZUbmk0QU4yV0VISnMxaVhzcytNYWxaRElNOE4yYWdmUGtDTTc3NWV4?=
 =?utf-8?B?TFhLS3N6SkYrVmYyck9EVVd1a3hrWG9yVXBycVZrSzErN01yait5Q2NVbU5L?=
 =?utf-8?B?RGowbllGQjM2OThEeEl4N0tPREJrSDlnU2Q0VzZIYjF1NDFHc3lReDV4VUZB?=
 =?utf-8?B?UktQb2o2blZMUjJCVC9pVi9UclFwVXJHVlNqZGxOVVZyUU1IZk1jUjJWa0tQ?=
 =?utf-8?B?alYzNDJYU1FxZFlTZzVvOWIxYnR1SmZaMWxYdUVVUU9PMXMzU2VaYUh2WW9B?=
 =?utf-8?B?b3VRbm96RG91VG1abG9KNkNpQ1lLOThESmNWcW54U3NOL2pqb0EyME1NRTRm?=
 =?utf-8?B?YkRKdU9ITzIzWGViTUMzVTJpZHRaeFRhd1hnNUdXOFdFOUtNNmd1MzM3RFly?=
 =?utf-8?B?ZGVVa3lxK2xPNkVyN2ZVa3JlRk1obDVUVXdTU0kvdUlCUi9NaFZDVVdRWndG?=
 =?utf-8?B?ajNlbDJvNW1ONnFibSszRGN3MGpueXhqQldBMHVvd2k4OHByZlVhWE5hOFh4?=
 =?utf-8?B?N0pCYlFWRytha2dOQ1BpaUd2WnFOQWxUN2hHemZ6Wld1UmlDUUd5bEJpVkhu?=
 =?utf-8?B?eS9uRzhab1g4cVpibGdaNkFYRmxEb1Y0M2Y1Ty9CQXZVejJMR2J4aFhqSGgz?=
 =?utf-8?B?UElSMWxSU0l6VnFpQ0dyTDQ5MHJmUEJ0T25ZTFFid1JTbnA4OUdvUDIzUExN?=
 =?utf-8?B?bFBYMkRhQkNuWFF3b0x2eUZpZVZqZ3FPNlpJblVnNTZiK2c3SWhYUkx2YVZY?=
 =?utf-8?B?T0N6d0VuUUVKVmQ0NUEzY0R6UXZtRkZBOExsVzcwdEd0dVdUQTljd0FEaWZw?=
 =?utf-8?B?QVV0OWlYeXhBN05wSWRxSFo2V1NQTVJNOCtTMjUrZm44aDcrL0V6M0hCL1dk?=
 =?utf-8?B?WUhtVkJEb0hqTmlZazRmWEtNV2ZPU0dGMkFDTWpmL3gxY0FLQXlseWNMeWFK?=
 =?utf-8?B?Q0dqME1WVXNJZXVNNzNBRDBKYUpyRHA2NVdaQjVJZG1SOHJXTUpIenB1b29m?=
 =?utf-8?Q?2kaVjPUpJ2qYK2yjNAkIO3VfD/OTURcKgt9wm?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <32AF439135A1F549AC56866D31315EEE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed4c28ce-f320-452b-dc25-08da21c583c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2022 05:29:02.8596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bPYF1w0x3aKzWTou/MBs8rCNXQsE43Vr7du24dhLlAYgBFjsiUtGSq4xtCjtWyAOCLHCmJ/M4K7dBpTBJ58UrzWyma6tC9AiypNFFryldKg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1973
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/display/psr: Clear more PSR
 state during disable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTA0LTE0IGF0IDA4OjExIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBBZnRlciBjb21taXQgODA1ZjA0ZDQyYTZiICgiZHJtL2k5MTUvZGlzcGxheS9w
c3I6IFVzZSBjb250aW51b3MgZnVsbA0KPiBmcmFtZSB0byBoYW5kbGUgZnJvbnRidWZmZXIgaW52
YWxpZGF0aW9ucyIpIHdhcyBtZXJnZWQgd2Ugc3RhcnRlZCB0bw0KPiBnZXQgc29tZSBkcm1fV0FS
Tl9PTigmZGV2X3ByaXYtPmRybSwgISh0bXAgJg0KPiBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRSkp
DQo+IGluIHRlc3RzIHRoYXQgYXJlIGV4ZWN1dGVkIGluIHBpcGUgQi4NCj4gDQo+IFRoaXMgaXMg
cHJvYmFibHkgZHVlIHBzcjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkIGJlaW5nIGxlZnQgc2V0IGR1
cmluZw0KPiBQU1IgZGlzYWJsZSBpbiB0aGUgcGlwZSBBLCBzbyB0aGUgUFNSMl9NQU5fVFJLX0NU
TCB3cml0ZSBpbg0KPiBpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoKSBpcyBz
a2lwcGVkIGluIHBpcGUgQiBhbmQgdGhlbg0KPiB3ZSBnZXQgdGhlIHdhcm5pbmcgd2hlbiBhY3R1
YWxseSBlbmFibGluZyBQU1IgYWZ0ZXIgcGxhbmVzDQo+IHByb2dyYW1pbmcuDQo+IFdlIGRvbid0
IGdldCBzdWNoIHdhcm5pbmdzIHdoZW4gcnVubmluZyB0ZXN0cyBpbiBwaXBlIEEgYmVjYXVzZQ0K
PiBQU1IyX01BTl9UUktfQ1RMIGlzIG9ubHkgY2xlYXJlZCB3aGVuIGVuYWJsaW5nIFBTUjIgd2l0
aCBoYXJkd2FyZQ0KPiB0cmFja2luZy4NCj4gDQo+IFdhcyBub3QgYWJsZSB0byByZXByb2R1Y2Ug
dGhpcyBpc3N1ZSBidXQgY2xlYW5pbmcgdGhlIFBTUiBzdGF0ZQ0KPiBkaXNhYmxlIHdpbGwgbm90
IGhhcm0gYW55dGhpbmcgYXQgYWxsLg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gDQo+IEZpeGVzOiA4MDVmMDRkNDJhNmIgKCJk
cm0vaTkxNS9kaXNwbGF5L3BzcjogVXNlIGNvbnRpbnVvcyBmdWxsIGZyYW1lDQo+IHRvIGhhbmRs
ZSBmcm9udGJ1ZmZlciBpbnZhbGlkYXRpb25zIikNCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzU2MzQNCj4gQ2M6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMyArKysNCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBpbmRleCA4ZWM3YzE2MTI4NGJlLi4wNmRiNDA3ZTI3NDlmIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTEzNTMs
NiArMTM1Myw5IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QN
Cj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2Rw
LT5hdXgsDQo+IERQX1JFQ0VJVkVSX0FMUE1fQ09ORklHLCAwKTsNCj4gIA0KPiAgCWludGVsX2Rw
LT5wc3IuZW5hYmxlZCA9IGZhbHNlOw0KPiArCWludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkID0g
ZmFsc2U7DQo+ICsJaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID0gZmFsc2U7
DQo+ICsJaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9jZmZfZW5hYmxlZCA9IGZhbHNlOw0K
PiAgfQ0KPiAgDQo+ICAvKioNCg0K
