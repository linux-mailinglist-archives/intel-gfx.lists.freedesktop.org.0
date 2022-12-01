Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C61263FC3B
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 00:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02EB10E691;
	Thu,  1 Dec 2022 23:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6211610E691
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 23:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669938343; x=1701474343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RSnXPOhs9v1wNeOdplhpK8xCPRlA1bh0IU3TFG6uNXU=;
 b=XImYolEEDaqf3qqlurY414R2DODBptknmKtjQl5rck4aRcS4i2WtUKns
 8sGu4PJwCCajXEiTP6JTnuoJ5QBq2iyK9aEp9ZcGq5iVl4YR/Moz+fnRA
 Q+hmEI4cczfEtUc0y4Bn1qyqJ2Nr3H5O9THYBVewXdQOo88zm24hjm6Un
 w2iaavnZ0cvcG5LIybbqK/SPKtg//jF1zh8njJ1CMqLIkUMAH+z4eLdAc
 wV33h7+PLIH1uBrq+D/yqccb8yj827O54+qS8dtjOPd2X8j8bgl9IC/KL
 p8CiRpqWiqnxFml3etWdHeaXCbRxnSx/x/eilecA8zw9VInfnw9vCzvwA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="299193935"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="299193935"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 15:45:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="787078557"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="787078557"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2022 15:45:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 15:45:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 15:45:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 15:45:39 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 15:45:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=APXNYENh/EJgdDUBOt101M4rVIQAyzUORKWg8GU1EiUrbbQBXraeplXPSTdQVfv+oUbT7PLxL94/GsCjlghRoSFmMlu6N8eaIJChhhmFNpLPtTiUgt9BHR1J/4PkMOnpAnYbX4sGH6ji57UXuMehZrykmKOgwZEk2C9mJwyMPXHELl1E5u/Z0PIP5zU4d5sMTjx0P2nXXYiVDrPSdrmBVJC/I/XDVxYmb2/rEOP1tj4N2TSygZI37kwbEOL7v5f7Oxei4bKIiYbUtR0zu4CHuaaBacypPNOCqhm/UDBkknFiq22T8IOKEdC7/ekl/1UuCB5UHVWaIUX/L3np1X9xxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RSnXPOhs9v1wNeOdplhpK8xCPRlA1bh0IU3TFG6uNXU=;
 b=g2w178sSXz4nLq05JHQoVrjWKV5cQIW5Mlt/NFl+ykkEIJ2uuWrdHGSYtgsw7RXOD5Ps+YK7B7sGzplu2eyHaKOCc3aZpYfbIPEAawdocHANwquGNY0B3w6isolJ/i6HYU3nWXDzzRiR3OQBh0JmRbQEueyJdjkcKla6Elgt+3UKzlnlkOS5nG/3dvIuH6e7Uq1kGmG1skp73uMLUs0ctCxWf658mMyCjbrXqrta6ZgaskQaRNvT/sS1p7lucYWhkWuDuj5OEVI+Bny6PEh3g+7byOAO6PXCmZQ4QIjHm1AVM1+Esfbq1H0OPzJQOxRwLusBf+knzG2PWPYfIGFWFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA3PR11MB7413.namprd11.prod.outlook.com (2603:10b6:806:31a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 23:45:37 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 23:45:37 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
Thread-Index: AQHZA4nHZz/omAjLo0WDAgip6sYJSa5Wa+EAgANLwAA=
Date: Thu, 1 Dec 2022 23:45:37 +0000
Message-ID: <06c39e0c79faedac1646dd7da89727ef224b2de9.camel@intel.com>
References: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
 <20221129003152.3652072-2-alan.previn.teres.alexis@intel.com>
 <Y4Z5ajHrt3hllvUZ@intel.com>
In-Reply-To: <Y4Z5ajHrt3hllvUZ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA3PR11MB7413:EE_
x-ms-office365-filtering-correlation-id: 5f38cd17-eebe-43e4-3640-08dad3f625e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jW3utQ4CN44tfsSglYGAJZsaExJ0zCVPFtoP7sBVmIXexixzR0YvJWI0swFImXdct3ML2WwPBmB8sOm2MvZaz+26m0Ky5mmDWImvOWZ7BEDAtDJCKIvdj2qWKFDtq3m000+GKqZZhCnkx/ZInKYCtYzaHRNFDePxZoLlZasr7/SR3Xb8iLv+OsMGr8fl5oWO14Frei1XsV8ct2V1gBgb08Eakn1hHHT9UoVtcOPWO2SJ7U4FEZ++WwvfcfvlXHr3Wix6Z3eaQRiiVWv3Tz1833ruV6WB1V3W3/dbLtGHdfxEJn8zf2RZc5jFxT8KqMIEEIVDz6wt6aw2M5GdLUUaIIslSwqGgdazTBzCkzcSzBqVeaHa4AhHnMpLirmjab1vz2BdBgr64OQjI2M4S1b/0Jx26w5stVnpukakRj7Miw+ilzt9+kjZCCoAGRs2oOcUBhOD4ECfEdwhA7cNC0oAe/XjI2RoKA0JD+uRciN4VRpbjhKxwwVlAscS1Ch/sCwvEiHzhboITVBVKJi0e7oThZk9Aj7AHU3bSEEB8bRWgRwdzCgt6I+BbQj/fiCkSGbXoX/LdnT437XX4hQF5NeJ+6TN45VPrvp4FVyBReEXWf5gfyJo80Sc8Adt5zdpZ4Je9rFuOlU61DVGkWqNZfmaazdRxGoT+Eenemnb9sTQnEdsBFWlQhuiHETl4Wf8DSMW+Yxghz30+3qLZZsXj/1S7g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(136003)(366004)(346002)(451199015)(122000001)(38100700002)(558084003)(36756003)(26005)(82960400001)(37006003)(86362001)(38070700005)(6512007)(316002)(6636002)(71200400001)(478600001)(6486002)(6506007)(2906002)(5660300002)(76116006)(66556008)(91956017)(66476007)(8676002)(41300700001)(66446008)(186003)(66946007)(64756008)(6862004)(2616005)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WlNUZ1Q1cHRSWC9DTFF0ejMwYTZyc0k0dUV6akVHeFdFeTBmTUVjc1VVc1Bu?=
 =?utf-8?B?WExyZW9zT3VCNVI1bk04N0pVZ0J1K043TVpQTmtQWWNXcmkveVl2MjFBY1Yy?=
 =?utf-8?B?RndhUk5LRjZ5eHJCZnpGOWo0Q3NtZExGWGt0ajlwMTlwWWgyT0dleDZZaFVw?=
 =?utf-8?B?N1ZKZmlRUmh5SllTdFpDYUhnN0JWbnI4aHNwL0NSMGxteDh0bTlpaW9ocDFt?=
 =?utf-8?B?V2J3OEFCV3pvWTZIeENuV2pHaG5aRHpiMXVrVEdtOXpXZEFxazlFb21qT0g3?=
 =?utf-8?B?R1p2WVlaYkpYZ2NBU1BSdnowRDZNQ0M3clRZMEp5S0VNejhSMFVFMC92WERB?=
 =?utf-8?B?V2VOOUVHaDVDcGRRV0pxQVF2TGd0VlltRnR4UzBWTlVZcGVOZFpBOWZ4SWFV?=
 =?utf-8?B?MFBmZldBUEVDMDJ0dmVBU0RaVXNJaGpMM2h3ekc3dEYrSnpRS0dqc2hTTGg5?=
 =?utf-8?B?VTcwZ0xDQWV0dS8xUkFmZFJoakI0MHJLcGRXSkF2UmM3czlGRis5blh4RHhE?=
 =?utf-8?B?TEhDZzlzb2ZESWNEb2htN2prVzR2UEdyeFMzNCsvQUdhM2VZcEJiQ3NndTEr?=
 =?utf-8?B?R1kvaVBEMXhEeUFPVE9KbDJHQlUwWU1zSlN5Rlc2a1hkcG56bFRYME9Jak9a?=
 =?utf-8?B?bXVLWkZ5czBKTTU2b2l5RDRiWElHWjNRUVlTZVMyR1RyZm9hSVY0dnMxU0M1?=
 =?utf-8?B?UWYxeGxuMWZFdWRRNThUNlRVZlhFUmFuSVVaazVJbG56aTVqVE1BQXlsK2Nm?=
 =?utf-8?B?akUrMUpLUGExQ1JqUVV2OGFEeEdSRUVNU3NYMGlWS1lmaHIvbFY1bENxSlRJ?=
 =?utf-8?B?R2NiVVF6ZThqcUMzcExpZmVHaXFOMVBOc0pXcThOMzBvYlpxUzY0V09YcHRy?=
 =?utf-8?B?M1gwajQwVTg3cVM0ZS8xSVhIMEtEY2IyRnpCY3JDMGVES0daekpzYkFCSVF6?=
 =?utf-8?B?ZU1McEJDU3hjbUQ2bFd6c0dqaTZic3h0ZFc4aDZBMk5TOTF2bU9nZi81R2tG?=
 =?utf-8?B?NkhzdmZRcTJOdHJtY0VUVUdLWDMzSW5XOXBOMXhKUW1XeFhkQjlmVUw0VENM?=
 =?utf-8?B?MENWQ3RXMWIxRVBSRG5OQ3diT3o0K3hnTC9NK0JxRE5wMkpyUjlEbmh6RTRR?=
 =?utf-8?B?QXhGRm1MblhxSXhpOFZoVTBLdGZMeEI3OG1BcXVWQ21IS1cxckE3NStIcVpK?=
 =?utf-8?B?Q0ZsOHdQSmVReGVpRVBlM3VLTnYyMDk5Zkd4YVhKd0JDVDc0YjVjUlpXaFZs?=
 =?utf-8?B?Z01sWGFDbWNwT0Fld29XVm8yTU5pOTRNeXUxRDZzcUI3MVg0cHpjMGVTY0xa?=
 =?utf-8?B?Q2ExeWxMaEtSaXBSa0dnRzdVbWNEWXZ3cS85UFM4ZVlDMHJUOGxKUVZ4ODlW?=
 =?utf-8?B?VzkwQTIyeVVEUEQ1V1ZlV0MxZHFuVGdhZ1I1QTIxVXFVT2doZEQ0NkNSQmhx?=
 =?utf-8?B?NE84ZVpMWGFzNzRXTUlSMzM0Sy9iM2NvWllhT096bjdxUHF4Z1d1c2lqMnhF?=
 =?utf-8?B?ajVlc1hwSVFwbTNaMXFIVCtMTXBGSWw4cjgvTnI0cmt5N29Gd2lOQWcxSFRU?=
 =?utf-8?B?a2habGMwWEdVenprdTkwOUx5SlZua3poenNZbVozVzd6ZDVzNmJEaWF3NnZX?=
 =?utf-8?B?QW9XRVhFMG9XYUZFcmlPR1V6aUJxUmNYZTFEbWxTekJsVm5RRk5hN3lkeHZJ?=
 =?utf-8?B?R3RSeXJPV3A0S2FZRXdLOHJsUzg0TWN6T0FVYThuVUc2RzVnSDJQNXd2UmRq?=
 =?utf-8?B?S1Zndm14US9hVlAxMFBGelFLTkhCVlh4OHJNeVpWdEZUQXN1c0hjWjJtTnpj?=
 =?utf-8?B?OHFyTzZIa3RvaXpmVUhQSURQS1NWUWwyOGR5ZGtxQU5MQ3ltMFVoamNka2Nm?=
 =?utf-8?B?cTh2T0grQ2NZamYrZW90T2ZtUG90dFJFTTZ4Yit6ZklJNjMrTnZjaHE5aTAx?=
 =?utf-8?B?WEhqNUQyTnJ4d3hyWUpJeUdaNVdYY0pyY3ZpRVltVHZYZlhBMWJsRkRXZU0z?=
 =?utf-8?B?b2VNNUVaeVNTQ3NrOUxma2hvYis2ZVJ6ZDBJQnlQVTJsSkliMTRsRExEbmdC?=
 =?utf-8?B?UXV2WHVFWDFBRjBXYk9zRUF3MWtpUUhWOWxBb05VdTVldzZsenVMM3ZicjIy?=
 =?utf-8?B?QnVNbGJ6QjZ0WlZubUc0SzhyaHlBR3o5cjhkOURsYU43aVZPT0g3QlRFaDJZ?=
 =?utf-8?Q?GFcEeRYCHoEv8iMnlr3/rJw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D518F76AD1C6ED489C473E060084CC23@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f38cd17-eebe-43e4-3640-08dad3f625e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 23:45:37.7187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fTuwtcNZEcZqdGEBiFfh6ywymtT0w2PKIlfVMcJq74lK6wOtse6MkqcBWiTsHIxl6mWL1y9sjnVQr1X/MDtNIGHrieXGZKQd9S5TTsLbOCWRZi0yY/Xw6pxaFE5+HunZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7413
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiA+ICBzdHJ1Y3QgaW50ZWxfcHhwIHsNCj4gPiArCS8qKiBAaTkxNTogYmFjayBwb2luZXIgdG8g
aTkxNSovDQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsNCj4gDQo+IGRvIHlv
dSByZWFsbHkgbmVlZCB0aGlzIHBvaW50ZXIgYmFjayBoZXJlPw0KPiBvciB1c2luZyBhIGNvbnRh
aW5lcl9vZiBzaG91bGQgYmUgZW5vdWdoPw0KDQpJIHJlYWxpemUgaSBjYW4gZHJvcCB0aGUgaTkx
NSBiYWNrcHRyIGFzIGkgY2FuIHVzZSBweHAtPmN0cmxfZ3QtPmk5MTUuDQo=
