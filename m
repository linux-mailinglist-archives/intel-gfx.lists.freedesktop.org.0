Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19261824C2E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 01:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CAC10E569;
	Fri,  5 Jan 2024 00:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BBB010E569
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 00:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704415030; x=1735951030;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xFTJVqyHEFnhHVC6a6GYv0nINd6EAS925yLT9HQzFaE=;
 b=f4qcHY3EPzkRYJj/tdBCEyn4vpaoXG+8TEOzi+MTlShCyPNIJknFQTtT
 1BO15i0z93pX1VjE3oXj2i6SkrbHRkqwbWy82jYCYWeLICv4tn2WZaEI9
 XB2NcBmqCAeapibr8HoXjPEu57CWmDFV5Tj2NcplRA28ozFqad43sSE1X
 9WsNy5lEK0e7+BdZvnKNq4FQBiBI2785vssrcBSEoy7R6lP1YZeeWN5wB
 ewpugigN99XM0RILvFnVldUdj8jwlbCUOaofGTnJdMyFlt/p6SILJ/M2u
 iIWZTAEqLxmuLbv9pPRjfMDEDonmWTyi88OwA4YBnrmdzMsbgl27mWtrm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4761963"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; 
   d="scan'208";a="4761963"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 16:37:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="773697916"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="773697916"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 16:37:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 16:37:04 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 16:37:04 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 16:37:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZwVOalmsJqAWhgzTUnQAqUGaHJUR8IT3a8K/m7pyrFMSjFxBTIodns6GZhC0Lk+G+oAQk4IFwsxCnHpCeMcj02kOVyPLyl3NOedc6HrrlbEINAPNJAAGa3mLj6nqPbtsRbtW3qdp1gSWiaXseJruUazauVicTJKXX194T+HsDStfsd0p9kA1LPOjFKcXLcLcadiyGixn6b2qbZVIeXe9fo+BIf/FXKNMLor6p7kP+g1QOt+7hI2Mm6tm/j+YoDEBj4DFBEGJ2Up4UYQ9xSSbELcmKUTkXByqxNIq5MrOnRb6gWSjhoNYd+L1Q7ysIeWcTkvHAcd9eJJDN3qEZ737jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xFTJVqyHEFnhHVC6a6GYv0nINd6EAS925yLT9HQzFaE=;
 b=SFNuAxpFZJ008xey/uYWIuerCWmS5uBJZ9X8ZRV7gp9qrH3hCWADKx/18sUdSXmYyuDXcVJxg7gLKp9T7qkDNiEA8Wn1fWl0EY47NtpiY4fVxfs8IcjH47Kn4zfsWK1vVl7lx6ie4msRCuOUTqMR8xN2l5Ighuc7RSF3SjOf1cX54pwdyrD1QiOfpWKqTQGfZYHZmXUC97+VINXUuuDoTzDrgvfiArkm+sRiln9/ACYJqOpFz/K9k+bMoBI+FivPrAxEXxW+WBZVxWXZvINsDmNylZLwKMkFYc4Q143VPwC5ttnDTJefFkF/keMpyXyEShl9IP8B8q8hG+CeXn+CGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12)
 by CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.15; Fri, 5 Jan
 2024 00:37:02 +0000
Received: from MW4PR11MB5823.namprd11.prod.outlook.com
 ([fe80::43bf:fc47:ff4:9783]) by MW4PR11MB5823.namprd11.prod.outlook.com
 ([fe80::43bf:fc47:ff4:9783%3]) with mapi id 15.20.7159.013; Fri, 5 Jan 2024
 00:37:02 +0000
From: "Sworo, George D" <george.d.sworo@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: clear the QGV mask set by GOP while booting
Thread-Topic: [PATCH] drm/i915: clear the QGV mask set by GOP while booting
Thread-Index: AQHaP0Dsk04Gyv/wzU2AW1ZBhWRFRrDKYBaA
Date: Fri, 5 Jan 2024 00:37:02 +0000
Message-ID: <202deb75922576c9e2d763802a50b7724168258d.camel@intel.com>
References: <20240104190436.456114-1-george.d.sworo@intel.com>
In-Reply-To: <20240104190436.456114-1-george.d.sworo@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5823:EE_|CY8PR11MB7828:EE_
x-ms-office365-filtering-correlation-id: 522e258c-ec78-4aaa-cab2-08dc0d866f5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8OoBitFJ1KTvTEz55ayHnA7JgUxOb/z394o8ggnhksDbbHcv0K/zKmQc+l5FgahEysDHvdLHNHLQoER4AfxFlM1pDl6jC+LdojQisecyxsNVhCBWY1Uzgw7E5NEkZSw84iO61ucy/8SjkdG6A2QE/s2E42SOO+eu5Ful2AMER04E3yUm8lBA6vNRsxUor5G2eLKUMsJaza2r90KbJKVRP9JXQnwiKO2+lXyqgcbPxbBgb7BphkIuAF/ZWrWLnSPY3j+ES8rZ9TVRktRWZ/kabg6YF5v4oz3PEKFuGP916nKPQTjqGpkJYN3gRyVP4WeMak78z4YEpbdMB3L0HefAVHscoy2y5yailtkDepdzNOKXtKrI/OAMduV4pC+XgjNXB2Qhmp1V/NthFeGqiuQUFOdQlAwaJCoGTe1gAZvCAskJQTHG/Q+nSEE0imw9w70kz0o/EEJFj6KYyQ/juGgdPDziI1lq53Z+gV9Au0PkCnFiyVXbrE2/TeHbrCqUpssL31dV+m7P6p1b8Gu0sictqbeLxqcz06NM8IEmM4QZGojv3bDnFdje2NU03PMombW1rAfjtyT1qBIJLHE2yclWru/2Gt2tVC31Bfc++fPlK0s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5823.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(346002)(396003)(366004)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(2616005)(6506007)(6512007)(71200400001)(478600001)(6486002)(966005)(26005)(122000001)(86362001)(38100700002)(82960400001)(36756003)(5660300002)(2906002)(41300700001)(4326008)(107886003)(76116006)(38070700009)(66946007)(66556008)(66476007)(66446008)(316002)(6916009)(64756008)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dlB0eGZMNVJDSzQ3T2l2UzFVQi8yVFMxaytxdzdyRDBzUmsyTm05aXVRM05a?=
 =?utf-8?B?RW4xTVNxRXFBRWYzYUVqS1RmMzdBaWRTNHZoMzFBSjlRdDhhUUlGYlF2djNO?=
 =?utf-8?B?SjFBTklmZjEvSndiZ3M4ZTVCMmtIeXVXVmJlV3pMOUFmRmxJT09mM2t2eDBr?=
 =?utf-8?B?TUo0VTdHZ0lMWWVsMEhwZHpGYWo2TXRrZ1JmTUg4d2h2Q3JNcHk4dVZrcngz?=
 =?utf-8?B?UnRsZUVpSlQ4aWFWNVMxRkFOeFlyVjVnNUhvRGkrdVhSUVhYN20wMW80L2U3?=
 =?utf-8?B?Z0dJc3NZbmFmZ0xRY05BTVVLMGhacTFhQnAzNXFWc3dtRDZNeUdaL3dVZFBJ?=
 =?utf-8?B?c0tPZUtrVTRzdEZUU05JSnlqWGdJMW9GVGVIZkpxNWxHTi9lK0FJb0NRdWo0?=
 =?utf-8?B?ZVhoVWMxS1ZrVS82ZGIvQ3IxZmowWlRVY0FWZDFaNUh2T3AzSFdYQ1gzWGF4?=
 =?utf-8?B?cE9ZVzR3WkVLK3lpVGhsdVl3dmVBNlV5TjlPRk4yR0hsZFpwSmlqb0tQSTRw?=
 =?utf-8?B?YWJrRS8va05XSjdKcVBVOHVMaUptUGlkeEFvc0dsdWNUbk1NNnVaRmlJOEJK?=
 =?utf-8?B?M0xjV3V1SlJORXF3dGpTLzJJZlRlVGtBdU9sdkhkT1hoVy9CTGxMREtKV05w?=
 =?utf-8?B?TlMrd3VSa09xK1J4VzNSV2RzVjNVNzNtRHBwSGRCMHE1bUYxeVFMVSszZE9B?=
 =?utf-8?B?MUIrWDMzZTA1VENtZXpQRUxaT1VhdVJkclJqOVZnTXpKT3p4eWFnZ29XRXEw?=
 =?utf-8?B?bXF2STdEN1NMYVNkdFZsd1JwOFdsK2VCeWJDczFxdFVkbTIwWXh4amlSK3dE?=
 =?utf-8?B?REF0OW01cURJN3ZJbUlvTVVva2FlVkpaZyt3bThoZHNSQi81aStiNjhXZnNP?=
 =?utf-8?B?RTQxTmhFVFRCK3h1YTdueHJSS3dCRExKV1ZSYnpBZHlJbXRRL1U0Qk0wMEtk?=
 =?utf-8?B?MDExd0ZjTTJuMUF3Y1ZlREY5L2hqN0d6UmNTZG55MnZSL09qOFNhcGZIMVcy?=
 =?utf-8?B?bnVzQ0tDY2lKM0JRVXUwWnFqUTFrYU5KUTc2djFqYkRlS3d5dmVSNEViY1Br?=
 =?utf-8?B?cUtXcWhLSnJncWoyVkZ4SWorekJXRDJsQmRuckhUTWt0Z3lSay9TWjgyYkR3?=
 =?utf-8?B?dkd5NVB2ak51SjFocFV6UWw3TVhjN1hLSmtUQ3VES0NJWmZONDNPYVFkWG5L?=
 =?utf-8?B?RWNIS2Fjd3BnYnI5cGFueEF5Z1RmNkJkK2EvMkNES3UvRHRTWGFvRWJhcnJW?=
 =?utf-8?B?a2ptbGp4OXlnRjJ6VFhVeVhLMmhwVG9nL3Zad0hOUC9RL2ZhRVZkQzBhVk5n?=
 =?utf-8?B?ZFFHWWE2ang2T1dJNlIrUTV2YjhPdjhRTTY5SkpOUDlKLzcyTFZmL0UvOWFz?=
 =?utf-8?B?NWloTlh3MHVDRlppcTVhbkpHVHVqVlo5dkp5TVAxbmR0M1dQR0xadWlrRHJy?=
 =?utf-8?B?YmFoT2xvUXRpNkNNT2lGRWx3WUxkU0VQNER1c2FzVnZuekdlQUpNSXg1SS9H?=
 =?utf-8?B?RkRuM3YvTFBrZk1raWVRNjBDc3l0Zk5xd3orZTJmTDEyRnhHOFNQeDhFN0pN?=
 =?utf-8?B?ZFFCUnZpVFhESElQejNRaWJlR2tSZGpTTWhmVjBJNitUSkUwYU1lTHRrWE83?=
 =?utf-8?B?ZVRUMEt1NFJQcnhpM2NMOThMZXVlQXdtLzl1SDQ1MHpoaXVJK1J6Z3Q1dXNi?=
 =?utf-8?B?OVQ5VGVHdll2SDl6Z0lBSWFVRU5WZFAzQVg5ak5OUk16VmxvZkNkOFJjZlB1?=
 =?utf-8?B?ZGNZKzFIUHUxVGVnWHY3elhtOWV1MG1ZckpKT3krQmtNelJyQkkvM1FXZ3N4?=
 =?utf-8?B?TDdMTWtjcEF4ekhFRU5SSTd1Wk4ya0ZGL1F2ZFFKQUp2TmZXVmFiZzMyMVlM?=
 =?utf-8?B?N0JiNGNWQVpVUGI5T1JEa2J2TXQwL2oxaXBkdHlFSG5PaGtmb0ZwT1hvM2xu?=
 =?utf-8?B?N2ZlNnkrZnhQZ0RDMlNnWWVQM2NHVG5PZUx5VjNWZmpxT2pkKzVYcWRLajVI?=
 =?utf-8?B?dnhZSjlsclhDc0h4aThvdnJkTUhveFJDL1A4c1hrVGhQV2JXUzJGVU5uUFlu?=
 =?utf-8?B?UER1WTdadTQ0aEc1ZWIrS0lxc1VMUENCcEl0RXdkTXRraGMrdkI0WGMrVjFo?=
 =?utf-8?B?N01xUWNiVGdzQUNlYUI1aHJMNWxrY3hCbVk5aFNJYW5CRkpZWUszdGNDWE40?=
 =?utf-8?B?NEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6E2B21D4EDF90D4F9799554AB2DDA172@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5823.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 522e258c-ec78-4aaa-cab2-08dc0d866f5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2024 00:37:02.4218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3XTJa7DL+b9988phw/1107JC6kzdWVBZ2BYbHq7bt+OnNYe9s3o+et2b90JWeOk6/267BrN8YRrnB8BixuUxnA1I6RxnMHzJIuZKTSSk74o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7828
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDExOjA0IC0wODAwLCBnZW9yZ2UuZC5zd29yb0BpbnRlbC5j
b20gd3JvdGU6DQo+IEZyb206IEdlb3JnZSBEIFN3b3JvIDxnZW9yZ2UuZC5zd29yb0BpbnRlbC5j
b20+DQo+IA0KPiBHT1AgZHJpdmVyIGluIHRoZSBmaXJtd2FyZSBpcyBtYXNraW5nIHRoZSBRR1Yg
cG9pbnRzIGV4Y2VwdCB0aGUgb25lDQo+IHdoaWNoIGNhbg0KPiBwcm92aWRlIGhpZ2ggQmFuZHdp
ZHRoIHJlcXVpcmVkIGZvciBwYW5lbC4NCj4gDQo+IE9uIGJvb3QgdG8gdGhlIE9TIHRoZSBtYXNr
IGlzIGFscmVhZHkgc2V0LCBhbmQgaXMgbm90IGNsZWFyZWQNCj4gYW55d2hlcmUNCj4gaW4gdGhl
IGk5MTUgZHJpdmVyDQo+IGV2ZW4gdGhvdWdoIHNhZ3YgaXMgZW5hYmxlZC4gVGhpcyBtZWFucyBQ
Y29kZSBpcyB1bmFibGUgdG8gc3dpdGNoIHRvDQo+IG90aGVyIFFHViB3b3JrIHBvaW50cw0KPiBl
eGNlcHQgdGhlIG9uZSBlbmFibGVkIGJ5IGRlZmF1bHQgaW4gdGhlIEdPUCBkcml2ZXIgYXQgYm9v
dCB0aW1lLg0KPiANCj4gVGhpcyBjaGFuZ2UgcmVzZXRzIHRoZSBtYXNrLCB3aGVuIGk5MTUgZHJp
dmVyIGlzIGZpbmRpbmcgdGhlIFFHVg0KPiBwb2ludHMgYXQgdGhlIGJvb3QgdGltZS4gU28gdGhh
dCBQY29kZSBjYW4gc3dpdGNoIHRvIFFHViB3b3JrIHBvaW50cw0KPiBiYXNlZA0KPiBvbiB0aGUg
V29ya2xvYWRzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogR2VvcmdlIEQgU3dvcm8gPGdlb3JnZS5k
LnN3b3JvQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmMgfCA2ICsrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBpbmRl
eCBiZWY5NmRiNjJjODAuLmUyNTc2YzBmYjcyOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBAQCAtMjEyLDYgKzIxMiw3IEBAIHN0YXRpYyBpbnQgaWNs
X2dldF9xZ3ZfcG9pbnRzKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4g
IAkJCSAgICAgIGJvb2wgaXNfeV90aWxlKQ0KPiAgew0KPiAgCWNvbnN0IHN0cnVjdCBkcmFtX2lu
Zm8gKmRyYW1faW5mbyA9ICZkZXZfcHJpdi0+ZHJhbV9pbmZvOw0KPiArCXUzMiB2YWwgPSAweDAw
LCB2YWwyID0gMDsNCj4gIAlpbnQgaSwgcmV0Ow0KPiAgDQo+ICAJcWktPm51bV9wb2ludHMgPSBk
cmFtX2luZm8tPm51bV9xZ3ZfcG9pbnRzOw0KPiBAQCAtMzExLDYgKzMxMiwxMSBAQCBzdGF0aWMg
aW50IGljbF9nZXRfcWd2X3BvaW50cyhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsDQo+ICAJCQkJICAgIGksIHFpLT5wc2ZfcG9pbnRzW2ldLmNsayk7DQo+ICAJfQ0KPiAgDQo+
ICsJLyogY2xlYXIgdGhlIFFHViBwb2ludHMgbWFzayBzZXQgYnkgdGhlIEdPUCBkcml2ZXIgd2hp
bGUNCj4gYm9vdGluZyAqLw0KPiArCXJldCA9IHNuYl9wY29kZV9yZWFkKCZkZXZfcHJpdi0+dW5j
b3JlLA0KPiBJQ0xfUENPREVfU0FHVl9ERV9NRU1fU1NfQ09ORklHLCAmdmFsLCAmdmFsMik7DQo+
ICsJaWYgKHJldCkNCj4gKwkJcmV0dXJuIHJldDsNCj4gKw0KPiAgCXJldHVybiAwOw0KPiAgfQ0K
PiAgDQoNCmhpIFN0YW4sDQoNClRoYW5rcyBmb3IgdGhlIHF1aWNrIHJlcGx5LiB1bmZvcnR1bmF0
ZWx5LCBTQUdWIGZyZXF1ZW5jeSBkb2VzbnQgc2VlbQ0KdG8gYmUgc2NhbGluZyBldmVuIHdpdGgg
dGhpcyBwYXRjaCBhZGRlZCANCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvMTI2OTYyLyAuDQpBcG9sb2dpZXMsIHRoZSBmaXJzdCBwYXRjaCB5b3UgcmVwbGllZCB0byB3
YXMgc2VudCB3aXRoIGFuIGVtYWlsIHRoYXQNCndhcyBub3QgcmVnaXN0ZXJlZCB3aXRoIGludGVs
LWdmeC4gSSBoYWQgdG8gcmVzdWJtaXQuIA0K
