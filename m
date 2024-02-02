Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B172846ED6
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 12:21:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1B4C10F065;
	Fri,  2 Feb 2024 11:21:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gQJhclJ3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0F610E4A7
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 11:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706872889; x=1738408889;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=T/aEhzsC9AyF0QfxMK5j5eF/MAYScHVT7B2PDUErobY=;
 b=gQJhclJ3h5Id5VO73wP6wq3uxbFht6/WeE9ULJmJoPgzk43P91j52xmF
 Q2Hpt9xCViIqQxERAVVKnrTbJj8X1AUIJbJAA9ldsySgyE9xMC4n6MS8w
 VxERZ2wUTMU8pyS2AUqXmrTn7F16R6rRyFXdhS5ULSRoDTS9+bOIWRpUA
 weD38ImAyMgf975C6i9OGCsSSBl4bocbP/5ybQTnmcl9i7GYKBXPOIKwX
 qlXHPSqMMouWslEsaxJsGTJCbMaFkumK5P2QvuPgMTtg6axnO4XjS4tIN
 9wdlsMADA6VFudmtEjrSuO8agfDmPQl28BLNd2RxYR8eUP8Fd6xkHzp1Y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="316982"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="316982"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 03:21:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="357631"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 03:21:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 03:21:26 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 03:21:26 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 03:21:26 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 03:21:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kvSCK5WWTFZC+eh2A5uh+a5C7E+47wk/Io2JTeDaqRTO6HRVu5Dr5XciP2nqlY1eSOaNQ9ygyiPwXCOQ9VYqEH2PVy8OlxfayUzOiXfqJb5F6QWjhrUWR4TPzfCzNOogo/YT9WRcevWpFdvXq0DmzigBzeNBqxAfsYGXNtzpd/j2rdwGd2s2Pf1YOSEoonWUHBlqxmqq2gVxzKrfWc2Zqcb77zTWcb1mZuftkVNmPmgNRgn4lXTQ7Ll5/GqQ50C6CSurqO8vCNMTFRvedQ/V/dvyOM/1pHD6xsABwj7YOAyidykXfmPk/7ONtS9C2pTryFbXiXPSrNcR8mbHACIX8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T/aEhzsC9AyF0QfxMK5j5eF/MAYScHVT7B2PDUErobY=;
 b=e7IsAUTCsoMPlFAgKvV0TT6XnRGmqyaSBH+edk7gBaLn+Ioyj6ZOU2Q4qsTHJ+Eaxnxx7ROxSvkT1Btk8P+TsFxWPn5ro3hnlRoGidMW+HlBnATFF8QVdsMIF6sUhzQRFBjOeFhst7NMatGyINYrqEKsD3jxFPWWHcCx7eEY34ioWHSSsvozTNzGkYYriBGdM2ZRtj2qZxieI60y7SKmWucfY1xRm4C46/unmj2oMoDAqaxFyIIvTyEM+ICPl5OEAebDwLiyMYU1kHGEZO5pvXmyhVzMDtZr62dLWXoW0IFDdvYwv1sOvFTKDxDPRa8JoUPzn6OpSDd/LhX9DtXSbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW4PR11MB5798.namprd11.prod.outlook.com (2603:10b6:303:185::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.24; Fri, 2 Feb
 2024 11:21:24 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 11:21:24 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 09/21] drm/i915/psr: Panel replay has to be enabled
 before link training
Thread-Topic: [PATCH v3 09/21] drm/i915/psr: Panel replay has to be enabled
 before link training
Thread-Index: AQHaSr/VrW31aRnvvEmB1Hq/3t9N8rD2/jlg
Date: Fri, 2 Feb 2024 11:21:23 +0000
Message-ID: <PH7PR11MB59814504CA43850A70CE4FA4F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-10-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-10-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW4PR11MB5798:EE_
x-ms-office365-filtering-correlation-id: f5d1c3e5-4348-4b1c-88fe-08dc23e116fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pAGYaaMMAZOppiuNkxlyubRcLKeIqYA0yV92FW+mEMDVY3eCM0QS1/XNNe5nJOhe/5sQemMVrPd0sYpU41WzWQm1utQ2ZsCZ+LzghTJOldJP/THLzMC3Z5z8wg6YEFpngGhREAcj8mVYOWXTPyLLhuGDZ6jheUAA/efzS2eQRWg3G81NUqtwgyol2pgsfekFWxWfdGKYptgX+MXM0KBx77PIAEqf1JVhlU2MHJKRu/Uiheih6dF5jVToaM/J2dgD3C+zGgfXxhSupTPNkqZy+0RhdePDt/1vqR1MioVfYfS6lW13UbTuPyKjIOZ1K+A6kuWmZNrIiUVELBxnZgKLyBmv55u9ztzcudUVW1sU5Sc4cYxh9ZHxqa0otij1TETZiSdYMtafLEIdebcC9knHAkogrEKRhbHLMAjeqex6F/k/Vh7BPb5rrEahw4Ei6o/nKGD1Evi3dxSD99o21a8eVzxTpZud8R6z9T/S3SFgUjxohWASPR63ImA2spK3mQPafIXaaY9ZK3qMY88ypiU9Wahq7xtV0dsmz7NB7vQaNgmGFaxhBtmg3ExVC3ycSvEr5YkDghVgY/wA08icf/LMlitSucsmqJZKrWqbjbuxpNsMoL9CZep9QqgDAJ7gdsXx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(346002)(39860400002)(396003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(41300700001)(33656002)(66476007)(66446008)(5660300002)(52536014)(8936002)(8676002)(76116006)(2906002)(66556008)(86362001)(110136005)(66946007)(316002)(38070700009)(64756008)(7696005)(38100700002)(82960400001)(122000001)(478600001)(9686003)(53546011)(83380400001)(6506007)(71200400001)(66574015)(55016003)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWZnSFp5MjNpN0hSN0p5ZWR5T2dNQkdaVGxZcGdtYWwzZnp6eWg3ZHZKMXlG?=
 =?utf-8?B?Vm5LNjhabXZodFVIQlZyMytiUThXbEduTDZVZTdCc2RDZm1rS01NZFhSUCtL?=
 =?utf-8?B?QnVkaTdyL1lSVjZSM0g4U0UvNzVwWnhOUE04Q0FwZFBLekZvRWwyMWdjWkJZ?=
 =?utf-8?B?WGdnVjVjQkRoWWsvRTd3TE4ybnhRN2tCSlJRUjAxckFkckNTYlhTQ0dyT2Fq?=
 =?utf-8?B?STdTSVVyYkloeFgydmlKeEpTWUx1SE9YSGQzMTFOSXlGOURvUDBINDFoWk55?=
 =?utf-8?B?Z3BYUzJwS0xNc1hmRDR2dGFCZGNjOElYQzhzSFRKSEhZQm9zZGRXR3F4aUsv?=
 =?utf-8?B?L2FQYUpwdCtCTmdrNWFUa1VxMzUya1c3cVBrYmdtR0pKc1E1YlAyem05bVI2?=
 =?utf-8?B?U0ZXSDRWYnE0b3J4Qjc0WFdUQ0JteUxhcDQ4N211bEhBSFVPQVV1cnhXUXRW?=
 =?utf-8?B?c3YvM3VRbitxSGhjZG5jeFUxeHZwR3lUMUxocnlNRjBpeXd2NFNNNUk2WWha?=
 =?utf-8?B?N2xlbkdvR1lUd0pRMXN2c3dlMG5keGpPSDYxUmNXWUdwb3NWbjFvK09JRUxv?=
 =?utf-8?B?WlBFOC9ML0h4VThxMStsdUFuK2g0TGd5YjdMcW9pOXR1T3RBQlJoN2I3bVJl?=
 =?utf-8?B?c2JjSGZyMERlZVFZNnJtd3R3NFZVVXJtZzVzMkVhM09HWGVrUEZrWXNMVDJN?=
 =?utf-8?B?TngrT0g1TGU2RVV4Z3lOU2J1Z2tENXdjRGttNUpDb0RjU2s2dHpwcG8vVlBU?=
 =?utf-8?B?bmZXZitNVkN1cW81VkpqTy9nalprRVg3dkdDbTU0UDJJMWRoZVN0UVd6OWha?=
 =?utf-8?B?VjNFbHg4c1lKU0dLU1V0SDdEcjltaUV0bTdaVjdERE1rVjYwUEY3K1NjbmtU?=
 =?utf-8?B?VW5VOW90ZVlYV2Z2aDhvNklJS2xDR1FVa21oV0l3Q3NVSDNraGhoUVkyQ3R0?=
 =?utf-8?B?eXRmcUc3MWRYNVJya3VtVktjQWpCa1M4K3pETWN4VWdvREpJRjdhd2VPT1pP?=
 =?utf-8?B?cHlEQVliZm5BN0pKV0VxdmVGSTVRMVdqNXlSUmRtM2hTQThaQ2hXUWpHci9L?=
 =?utf-8?B?Vzl5ZzlMR3NRcDM3QUJTdkdRbGQzOGJUUHRVcW9BRkhWdTRsOXlxMzJUTTIx?=
 =?utf-8?B?SWpDb3BSV2RWeTF4eUhSRWdUREdqMVYxdTF3c1VSVjA4d3ZpTGdZcUhkTGRq?=
 =?utf-8?B?NkpxNDNjVnNJWE1BaFBRY2dtQ1VuMWIwcUVDQU1acmJQZ2FPbmwvT0hCL3pG?=
 =?utf-8?B?c0ZidVNDNkYzbWd6MzJaTE43U1huSjViSmNzWnFwZFNKdE9NVjNXcnd6TUNP?=
 =?utf-8?B?d2xscENFc2tLSUhRUzdlL0prb1grNmQwYkFVMUVNMjlQcnZZa05BMExkVmg5?=
 =?utf-8?B?S2k5MFNxS2pYV3hNdUlXM0ZXZGNjdXZKdUxmS3o2V052MjZSSGk1bnM4Smkv?=
 =?utf-8?B?ZjdENksxRlJwR0tTMEgzMG00d1V2YVJBMDhiTis4QU5IblB6RGtJSFBrbyt1?=
 =?utf-8?B?OWtMVXJBL0ExTGhVVFBuKzRuTTM2TGhYVFk3RkJsdDdnZitCdU5pblFjZzI0?=
 =?utf-8?B?c2Uwa1dpTytjcXhUZTM2NVJtN01heEhvMWNWZmVxNGIwby80WDVFV2dvbHJk?=
 =?utf-8?B?alRMZHNyaXNKbVZyK2lETjZNSnc1QW5LSnRnN0YwR1Vpdm1zL1JUWE8ySmF3?=
 =?utf-8?B?VUUyaUJaMW9hdlpjL1ZmWUVnZ3BPckFBanR1V0FWZjRoS1drVWh6TkZtNUI2?=
 =?utf-8?B?dXJJLzc1cnYxQy8zT2dETTUwWkhqUWVFbjdISFVJdUZUSHF2eWltdW9HQ3dX?=
 =?utf-8?B?a0VuNElvVGM3VE5sYUdTalhVMndXRnRhc3ZDMlZUSnliNDk2ekNnVk5MNVFI?=
 =?utf-8?B?VGw0MzZwaEVHdDNLcDdDV1V3aXRsbTR1NXJ3WDRqZWx1T241QkhhSmZPNUFa?=
 =?utf-8?B?blZCYkduK0I0bkQ3ekdoazNSRkxjMVpLdW03U2RFWk5mTjZQSXFmQ0hqYjhS?=
 =?utf-8?B?VitmWUhtcExwbG56MUt4WW51WHlVem5GL251eU5yQU9RRjEwT3l6b2ZEMWQ1?=
 =?utf-8?B?T2RGRjV5dFhUbHhZUldmU3hTVFd2em9oSklueGFmbnZmVGdxNkR1WlVnNGlU?=
 =?utf-8?Q?36rSDwOFOL+NpsetYQaSNPwZJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5d1c3e5-4348-4b1c-88fe-08dc23e116fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 11:21:23.9272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xWVCAUi/3Ty5JOAReu8Qi7bJzX6JoEAhgGza4jj+NY6vBMUKplp+eor4iwf4UgA9mj7JKpoNQD+pplVCQ7+Yuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5798
X-OriginatorOrg: intel.com
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA5
LzIxXSBkcm0vaTkxNS9wc3I6IFBhbmVsIHJlcGxheSBoYXMgdG8gYmUgZW5hYmxlZA0KPiBiZWZv
cmUgbGluayB0cmFpbmluZw0KPiANCj4gUGFuZWwgcmVwbGF5IGhhcyB0byBiZSBlbmFibGVkIG9u
IHNpbmsgc2lkZSBiZWZvcmUgbGluayB0cmFpbmluZy4gVGFrZSB0aGlzIGludG8NCj4gYWNjb3Vu
dCBpbiBmYXN0c2V0IGNoZWNrIGFuZCBpbiBpbml0aWFsIGZhc3RzZXQgY2hlY2suDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIHwgMTIgKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgICAgICB8ICA4ICsrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jICAgICB8ICAzIC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuaCAgICAgfCAgMyArKysNCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjMg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGE5MmU5NTljOGFjNy4uYjdl
NWIyNzc0ZjJlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiBAQCAtNTIxNCw2ICs1MjE0LDE4IEBAIGludGVsX3BpcGVfY29uZmlnX2Nv
bXBhcmUoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLA0K
PiAgCQlQSVBFX0NPTkZfQ0hFQ0tfQ1NDKG91dHB1dF9jc2MpOw0KPiAgCX0NCj4gDQo+ICsJLyoN
Cj4gKwkgKiBQYW5lbCByZXBsYXkgaGFzIHRvIGJlIGVuYWJsZWQgYmVmb3JlIGxpbmsgdHJhaW5p
bmcuIFBTUiBkb2Vzbid0DQo+IGhhdmUNCj4gKwkgKiB0aGlzIHJlcXVpcmVtZW50IC0+IGNoZWNr
IHRoZXNlIG9ubHkgaWYgdXNpbmcgcGFuZWwgcmVwbGF5DQo+ICsJICovDQo+ICsJaWYgKGN1cnJl
bnRfY29uZmlnLT5oYXNfcGFuZWxfcmVwbGF5IHx8IHBpcGVfY29uZmlnLQ0KPiA+aGFzX3BhbmVs
X3JlcGxheSkgew0KPiArCQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChoYXNfcHNyKTsNCj4gKwkJUElQ
RV9DT05GX0NIRUNLX0JPT0woaGFzX3BzcjIpOw0KPiArCQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChl
bmFibGVfcHNyMl9zZWxfZmV0Y2gpOw0KPiArCQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChlbmFibGVf
cHNyMl9zdV9yZWdpb25fZXQpOw0KPiArCQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChoYXNfcGFuZWxf
cmVwbGF5KTsNCj4gKwl9DQo+ICsNCj4gIAlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChkb3VibGVfd2lk
ZSk7DQo+IA0KPiAgCWlmIChkZXZfcHJpdi0+ZGlzcGxheS5kcGxsLm1ncikgew0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGU3Y2RhMzE2MmVhMi4u
MTExNDNmYjliMGYwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IEBAIC0zMzI2LDYgKzMzMjYsMTQgQEAgYm9vbCBpbnRlbF9kcF9pbml0aWFsX2Zhc3Rz
ZXRfY2hlY2soc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCWZhc3RzZXQg
PSBmYWxzZTsNCj4gIAl9DQo+IA0KPiArCWlmIChDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSkg
ew0KPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiArCQkJICAgICJbRU5DT0RFUjolZDol
c10gRm9yY2luZyBmdWxsIG1vZGVzZXQgdG8NCj4gY29tcHV0ZSBwYW5lbCByZXBsYXkgc3RhdGVc
biIsDQo+ICsJCQkgICAgZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUp
Ow0KPiArCQljcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCA9IHRydWU7DQo+ICsJCWZhc3Rz
ZXQgPSBmYWxzZTsNCj4gKwl9DQo+ICsNCj4gIAlyZXR1cm4gZmFzdHNldDsNCj4gIH0NCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBiOTA1
YWVlMGVjODEuLjI0YTgwZjQ3Yjg0ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xOTIsOSArMTkyLDYgQEANCj4gICNkZWZpbmUgQ0FOX1BT
UihpbnRlbF9kcCkgKChpbnRlbF9kcCktPnBzci5zaW5rX3N1cHBvcnQgJiYgXA0KPiAgCQkJICAg
KGludGVsX2RwKS0+cHNyLnNvdXJjZV9zdXBwb3J0KQ0KPiANCj4gLSNkZWZpbmUgQ0FOX1BBTkVM
X1JFUExBWShpbnRlbF9kcCkgKChpbnRlbF9kcCktDQo+ID5wc3Iuc2lua19wYW5lbF9yZXBsYXlf
c3VwcG9ydCAmJiBcDQo+IC0JCQkJICAgIChpbnRlbF9kcCktDQo+ID5wc3Iuc291cmNlX3BhbmVs
X3JlcGxheV9zdXBwb3J0KQ0KPiAtDQo+ICBib29sIGludGVsX2VuY29kZXJfY2FuX3BzcihzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikgIHsNCj4gIAlpZiAoaW50ZWxfZW5jb2Rlcl9pc19k
cChlbmNvZGVyKSB8fCBlbmNvZGVyLT50eXBlID09DQo+IElOVEVMX09VVFBVVF9EUF9NU1QpIGRp
ZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiBpbmRleCBiNzQz
ODJiMzhmNGEuLmU2ODdkN2JkYmIxZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5oDQo+IEBAIC0yMSw2ICsyMSw5IEBAIHN0cnVjdCBpbnRlbF9lbmNvZGVy
Ow0KPiAgc3RydWN0IGludGVsX3BsYW5lOw0KPiAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlOw0K
PiANCj4gKyNkZWZpbmUgQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkgKChpbnRlbF9kcCktDQo+
ID5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydCAmJiBcDQo+ICsJCQkJICAgIChpbnRlbF9k
cCktDQo+ID5wc3Iuc291cmNlX3BhbmVsX3JlcGxheV9zdXBwb3J0KQ0KPiArDQo+ICBib29sIGlu
dGVsX2VuY29kZXJfY2FuX3BzcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7ICB2b2lk
DQo+IGludGVsX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7ICB2b2lk
DQo+IGludGVsX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAt
LQ0KPiAyLjM0LjENCg0K
