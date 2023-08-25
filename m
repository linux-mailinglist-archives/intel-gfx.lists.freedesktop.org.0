Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C26B67880FA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 09:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42FD910E622;
	Fri, 25 Aug 2023 07:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2F910E61F;
 Fri, 25 Aug 2023 07:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692949024; x=1724485024;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wBTlUxYgPq6gfyrVSRRZSmEUEyy5bpJATaYZpHuw/JA=;
 b=D2dhhwERTgQK1V2widhxxi2LNt8KpYfwny1911Obm0zUpJ3ntIlfbdDI
 Ma5L0WL1R95Vj9S3jiOL/omvk32s6yMxYMkNRUZb/1AlQyb9T7FhwoW8h
 2Tcde4irltdScfCwFE49Zhq2DPgn9dtD40FXzs8HZITq2FSJWQTsyETli
 NurizFrTOzDT9XR3guVDqolWMKIIuPCyXFkDAT26CCTKuTj9u69Kim2dj
 incYeeZ8T2LjJsSUe16IliMyPh8lC8XlCBbtDWcvNneEDJwPIPV1KWl8j
 eC86ncSn35va7unOUGQX+Mk6aGgQ+9d8uygyd2WckcpiV5ZM179Qlyt9y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="378440635"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="378440635"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 00:37:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="740519163"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="740519163"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 25 Aug 2023 00:37:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 00:37:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 00:37:01 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 00:36:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DNQAvBG7J2fZWcbyMpsZbjd76fJ4M0y06Ee57/o8rw4Ug9bFWCwIOFBR1Pa0FR90R7JLwPirXAqYiRUyXovrk3+r0pK9C+RnW/fjs02NvpaEaoP5J0v0Bxx1qLVCWKf4Ext7gE7bnkbe7bH54j1fYKPMW4PjnmIUWMCtFTs/E6cMjM5sKxP1B4DZ+/yEwpnUZwzCVXQUMR2V1WowQdJyoejxkw4rVN8LokTu+oK87GjGdh85SjoSeIZuAKBknuPdUwaoovpDQjymsiB1d3WZXHZS8xxq4yZsjjTrmjycq1cJQKJguGYBFefR9ujsd4IY2QiT4XPIhjFCDOHZC3xUhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wBTlUxYgPq6gfyrVSRRZSmEUEyy5bpJATaYZpHuw/JA=;
 b=Hm8wo0zIeIPSNEWpUuT1jGv66mxMmzUZ7N3XIWkHtDUBgBc+AH8CPH9PO6nzsskhEnTdOlECVP0AUbjVqHl+Dy6rUAK5EQ0FgaAeZ+Ml/wBb5IaZp3bdEjbLZZ7wpVKoNsotb3nZePxrSf4RfhHAHZYGYw5a0797BrdA0YBtsj2qEsO6XV69v3pt8eOCEOq8eI4zwyLJYkPkyPPmbPLuq4J22Xyjqlzh85hOeaNYMJy7GRv5GV60aGL1tD9gpEBDutDgC8caxOGyfVVHTngYzOTnypVTlxGVsjn/w45plCNHzYjLSKh4flUmtZ+onBhLFjGCCt5thp/2eBChMAzDoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB7760.namprd11.prod.outlook.com (2603:10b6:8:100::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.30; Fri, 25 Aug
 2023 07:36:51 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%7]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 07:36:50 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 41/42] drm/i915/xe2lpd: Update mbus on post plane updates
Thread-Index: AQHZ1eSYVmIm77iHGEqv233+goaiia/6oe2Q
Date: Fri, 25 Aug 2023 07:36:50 +0000
Message-ID: <MW4PR11MB7054339D5307762F2DEDE3FBEFE3A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-42-lucas.demarchi@intel.com>
In-Reply-To: <20230823170740.1180212-42-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB7760:EE_
x-ms-office365-filtering-correlation-id: 59513d39-a69a-4678-2626-08dba53e0bea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MOQnDi1py+g0mq+LFOhGxZ4xBiCyhKTjZpBfaYXo2AK5SjOzP27ZqNI/QhO+xtcJ1lJ9wanvCh98BYQdeh+VUJg0LkoiAnlDInDizmfn7lPnAzhwt9R05oqWeiZsfAP0vj/C4wqREf9XfzkXNYhe3D6ufmZklrDM0hwSA2qwO09gLhFZmrwvsXhhfnpDa0SharGEW1vnhnRyW4u8AzNGd+WuSXhIQ9VlG8MEGveGJhzQYnG+oIDErdDLtZjdeoAFBAUk266EulCwP0itWEf75YTkKdqN/B0Bi/aAd/QXoEzQcugX7QwjgIsCE6bp5+BDx8nASVEr6IlF8w3hVkz6aVs8A0v7pMUl0cs9ucuAedQugaNvH3w++nPYMCczmJgtdIT7DWeGiH2eeVEQvlAgLUJPtmZV4D6IzRTSq8Y+AJ0mC7HVRjDlLBfYod7ROvs2XZKk+hppgeqzS77ieuhseIsZZxZms+OBuKtD4tglBvHkfA8HA76NsMg2gBlYxM+xr0DDOYmlMtFJ8bvFgDkp7ipPo6yvkim7/nnQj5qMZhiSg/kM3UDLHgR/ub+emNH+2Vi8XL8dewOe+lAnm7UK4aDOGVidPcU5vpwNAZtCIjQH3HQ2zI8q1qG3JBS2g/3t
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199024)(186009)(1800799009)(76116006)(66946007)(66446008)(66556008)(66476007)(110136005)(86362001)(9686003)(53546011)(107886003)(26005)(478600001)(71200400001)(6506007)(7696005)(33656002)(122000001)(38100700002)(38070700005)(83380400001)(82960400001)(55016003)(8676002)(4326008)(8936002)(450100002)(52536014)(5660300002)(316002)(2906002)(41300700001)(64756008)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2x1dkN2WCt2WWxuYVRKempaVUM3eXdtbStrWWVGTmdnajRuTW12TEtwNEU2?=
 =?utf-8?B?a2MyTzVDV2JuZTAwKzc3bUM0UGN2ejJsKzgvdU1GbWEwc2orK0I2MnJFcXZ4?=
 =?utf-8?B?RGUyVC8vSnRpRk0xck4rSTYvd2U5Vy9iSkovUklzWGtqTjVoS3VXTk5LQ283?=
 =?utf-8?B?K0YxRFFTTTR0dGlTUXhXMFJBejZseUF5TXRacFo2ZWFSeXVOUzBzUzhkZW9Q?=
 =?utf-8?B?Mmk2a0x0QU1WZUpVczJsTjdhVEdKS2ZRUDBMMU9nSUxpMDYxUk5EZldQR2h3?=
 =?utf-8?B?WlhBaHlpeXZyMWg5UThMSVVGQU90cW9nYm51LzJuZURvdlhrMjV6MXRHWW5E?=
 =?utf-8?B?U3FtS3F3NXc2TEpoOG1WUXl3ZzJXd2YyckcwL1JtZzNRWHkyeG1OYU5JclBP?=
 =?utf-8?B?am85K1UzRDBac3cwVXBRY2N6dnZLdmNsSjRlb3VRUkVmZE1WZkh3dk5WakYr?=
 =?utf-8?B?K3RUR2FqWkRDa0dFRG1VcUFsT0kvdW9rMXFHSThNN1RoQndpaXRrQXRTU0tR?=
 =?utf-8?B?ZFYxRWViang1cFFGQTYzNG9ITXhLWUNPY2tIUW1aUjE2ZW9tdlRqT0ZtQ0d0?=
 =?utf-8?B?eGppd2g1b0FqUElYTy9UOFNONENHdGoydEhjSC81OXp0eWplN2xVR3pTN0hO?=
 =?utf-8?B?T3JURHc3cXFtV1JCNndDQlVwb2Q2cGdLbW52ME5ZdnhSbFBHNmY1YTlEMnR6?=
 =?utf-8?B?N0pOWmdzZFlnTk9TNkJBOTRlalBqZTBzeFdBcWZOSGFFOFZUaVZveS8yQVA4?=
 =?utf-8?B?a2E1OGxBUDIySzFJUXNJZTVjTzY4QUtQcWZaTHdxZVY0aTRQb2p4M1YwVzIx?=
 =?utf-8?B?RHZrdWdXT3haZVFYSGFWSmcyQ05NbVNLQlZvVTY0S1NPbGZmbDZ4bHhHYzV4?=
 =?utf-8?B?RjllcWhobjRSTEhMcElFOUh5S2xVamZDVm1nSFhMVmhNWXd6U2MyNkxxWmRY?=
 =?utf-8?B?QzFYSEd4ZmN2SllWRkNrbk5hcGFySlpQN21TOFc4NWRTaVVWSVZBTUZvK01z?=
 =?utf-8?B?T0FXcjBzVmRxMlVWMXk5SlcvMnVlaTlqMzFrQllHOU9LOHB0VFVtU280MVo4?=
 =?utf-8?B?a2FIYVlsSHh1c3pDcU44Nm5JRlJBcmJCZkJsWVp5YU5HKzBJWTVGZktYajk3?=
 =?utf-8?B?NElzMk1BTWVtTWhIdXF4QjBjQ2ZzeWZVYjNNTC9wMjVLK0tCbkZkaGdrWXV2?=
 =?utf-8?B?QUtPU3Iyci9QckFzSk5HZGlLdmI2dDZjTUM0dnJpZEM1N1N2V0w4eXI5RmNv?=
 =?utf-8?B?VnUraE5TM0Q1QVU1eGJtRktmZWIyYUpmTm1qQzdWYXhCZVhHQVEwSlo1UFVG?=
 =?utf-8?B?cURvZ2JEVVpTQVVRNkswdVFXT01xZUFrc2FjSm9zL0hWTHFnZjlETHBvN1Zr?=
 =?utf-8?B?elp6R2pYWHBiMXN0Q3N0OVBWT3RHc2xhWEVsRWFpVkFEc0tFOXRoMGtnWFJG?=
 =?utf-8?B?RXNOTzhyaFlIY2xBSDk0RktaMGRaNFRWMlgrWEsvTHFnRmtaQVpISkJuM1Zh?=
 =?utf-8?B?eE96S2JTeXRaVFZtc2tLV1h4RTFmM3hlMHFtRklSb2VvNlpSTVdMRFFkU3NE?=
 =?utf-8?B?ZUMwcW1lS3FDYVNiMmw5Q2xNaU5rK0JMdCszMkxveU4ybTM1TWkvNXZObXM1?=
 =?utf-8?B?Z3VHUldBeXR0dG9IbUNUMXBjTWUxRUlEQW5BeGoyaGU1aDRnajh2Q1p5bDFM?=
 =?utf-8?B?cS9zbzh0OXNyQWdIWmg1NXZxU3hkOE1yaHBCSk5RQmd5S0hxcnQ1cHQ0cWFV?=
 =?utf-8?B?VmpkTS9ybkJzQmhubmIvTWVsZy9YVXFveHpZaUVmbHV3UTVKcnFGZ3dISnpr?=
 =?utf-8?B?OWJDdWpaTTZPekc3NUorR3c3VjhnQWN1RnBBRUN6eXI5UWlHSzNQbHEwYWg3?=
 =?utf-8?B?SWtQdjhTR2hDeTVyVitGOWRxMzBFcm1JTm9zdGg5aUwyMmpYSnVIMlUxMmlZ?=
 =?utf-8?B?OTlIZEVvZytTVkpYTXZxUUJNVWZsN0xWK0VOaFQ0bjhobFNLbGptT1hqOGhk?=
 =?utf-8?B?ZnNvSWFkYXJMMkMwR05melpRSDR2Nm45dCszc05ma2JPNkd3bi9CVTM2cFlC?=
 =?utf-8?B?dUlWRE5vZlRNbmxuL0Q1WWx5d2N5N1pPbUw2d1UrdzNRdFp6dDlCUEdOemhO?=
 =?utf-8?Q?f7fPwYQqlXGIAv3ShKONIcrFN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59513d39-a69a-4678-2626-08dba53e0bea
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 07:36:50.9281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OJHo7F5PrLOXoPGcokga91XHtb1kADYtw8A1iS29Ph6juQ4qTgEC/YSvMo0yK5yTpuFwGp8Uz6M90oFeZZPzKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 41/42] drm/i915/xe2lpd: Update mbus on post
 plane updates
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZSBNYXJjaGksIEx1Y2FzIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDIzLCAy
MDIzIDg6MDggUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTGlzb3Zza2l5LCBTdGFuaXNsYXYgPHN0
YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+OyBEZSBNYXJjaGksIEx1Y2FzDQo+IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFtQQVRDSCA0MS80Ml0gZHJtL2k5MTUveGUybHBkOiBVcGRhdGUgbWJ1cyBv
biBwb3N0IHBsYW5lIHVwZGF0ZXMNCj4gDQo+IEZyb206IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0
YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiANCj4gQWNjb3JkaW5nIHRvIEJTcGVjIHdl
IG5lZWQgdG8gd3JpdGUgdGhlIE1CVVMgQ1RMIGFuZCBEQlVGIENUTCBib3RoIGZvciBpbmNyZWFz
aW5nIENEQ0xLIGNhc2UgKHByZSBwbGFuZSkgYW5kIGZvciBkZWNyZWFzaW5nDQo+IENEQ0xLIGNh
c2UgKHBvc3QgcGxhbmUpLiBNYWtlIHN1cmUgdGhvc2UgdXBkYXRlcyBhcmUgaW4gcGxhY2UgZm9y
IFhlMi1MUEQuDQo+IA0KPiBTaW5jZSB0aGUgbWJ1cyB1cGRhdGUgaXMgbm90IG9ubHkgb24gcHJl
LWVuYWJsZSBhbnltb3JlLCBhbHNvIHJlbmFtZSB0aGUgZnVuY3Rpb24gYWNjb3JkaW5nbHkuDQo+
IA0KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQt
Ynk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1i
eTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+
IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5j
IHwgNyArKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3dhdGVybWFyay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJt
YXJrLmMNCj4gaW5kZXggNzk0NTRiNGQ5OWUzLi43N2E0Yzg1NTM4YzIgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0zNDkzLDcg
KzM0OTMsNyBAQCBzdGF0aWMgaW50IGdldF9tYnVzX21kY2xrX2NkY2xrX3JhdGlvKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgICogQ29uZmlndXJlIE1CVVNfQ1RMIGFuZCBhbGwg
REJVRl9DVExfUyBvZiBlYWNoIHNsaWNlIHRvIGpvaW5fbWJ1cyBzdGF0ZSBiZWZvcmUNCj4gICAq
IHVwZGF0ZSB0aGUgcmVxdWVzdCBzdGF0ZSBvZiBhbGwgREJVUyBzbGljZXMuDQo+ICAgKi8NCj4g
LXN0YXRpYyB2b2lkIHVwZGF0ZV9tYnVzX3ByZV9lbmFibGUoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUpDQo+ICtzdGF0aWMgdm9pZCB1cGRhdGVfbWJ1cyhzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gIAl1MzIgbWJ1c19jdGwsIGRidWZfbWlu
X3RyYWNrZXJfdmFsOw0KPiBAQCAtMzU1Miw3ICszNTUyLDcgQEAgdm9pZCBpbnRlbF9kYnVmX3By
ZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+IA0KPiAg
CVdBUk5fT04oIW5ld19kYnVmX3N0YXRlLT5iYXNlLmNoYW5nZWQpOw0KPiANCj4gLQl1cGRhdGVf
bWJ1c19wcmVfZW5hYmxlKHN0YXRlKTsNCj4gKwl1cGRhdGVfbWJ1cyhzdGF0ZSk7DQo+ICAJZ2Vu
OV9kYnVmX3NsaWNlc191cGRhdGUoaTkxNSwNCj4gIAkJCQlvbGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxl
ZF9zbGljZXMgfA0KPiAgCQkJCW5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyk7DQo+IEBA
IC0zNTc0LDYgKzM1NzQsOSBAQCB2b2lkIGludGVsX2RidWZfcG9zdF9wbGFuZV91cGRhdGUoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+IA0KPiAgCVdBUk5fT04oIW5ld19kYnVm
X3N0YXRlLT5iYXNlLmNoYW5nZWQpOw0KPiANCj4gKwlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0g
MjApDQo+ICsJCXVwZGF0ZV9tYnVzKHN0YXRlKTsNCj4gKw0KPiAgCWdlbjlfZGJ1Zl9zbGljZXNf
dXBkYXRlKGk5MTUsDQo+ICAJCQkJbmV3X2RidWZfc3RhdGUtPmVuYWJsZWRfc2xpY2VzKTsNCj4g
IH0NCj4gLS0NCj4gMi40MC4xDQoNCg==
