Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 240567DFE6A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 04:32:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E4210E383;
	Fri,  3 Nov 2023 03:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C76A10E383;
 Fri,  3 Nov 2023 03:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698982321; x=1730518321;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GyOlJsPAwTAGOaJKaiD+3cyVjh3pmzn9Vxr9NwQ0TgM=;
 b=GhBsVT3F1iAkJxrQefcvsaapCW824xlj1fOjPV9g3cSQTtYfUil0EPWm
 wUozssDRznXFUav9ZIAHWexyZEejdi7E+Px+1RYzjkx9sq4vzFXWzOhzo
 3qofc2y4t2nNbXhq+SbGe93XrbiDSuPBGooby2G/pIh+kA3/+LQLWWukC
 UCz8Tpsw0F8jK8+V6XMlChLDRImCeCV3JkPzhlpuyZ91kuuTcAlPVeCVS
 83WyC0qW6pPu8FWLFKjVijJgzV9Osia0UluhFDOV9RLMcJHX7x7ZAZFsp
 P72VXnbyUHsxwoUgxKWE5YmmG8AZ0332Dwxn5lT723P90Uhknf2MBgG9W w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1803838"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="1803838"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 20:32:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="934983846"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="934983846"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 20:32:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 20:32:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 20:32:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 20:32:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITp1FV5v7Ygd6LvD5g0B9qpDxig5qov4ZuBFWd3HHFkmB2W24giq8HhLVfaAb1VS//17TjOBZC6iScOmDqSdtGGliXydRTyhb7elD1wn1NvTtdf152SvS/9FuLSMQib1FyHVriwUw1bbXXcNzFzE8Ss/prGFW3rpa3vrvJ7emSct20FPEuc5WcwIP/EsMSONf7fDJgmnrb2uSY3MYccPEOHZptvFJI92xqSSq6f+megyykmE6WgDA9TZ8PaBnZ+u5Nq+g3Zb8Fy8r5CJuI+lYpbWMnBfLiyCKc25ZVsMmiRFXQZUmW41dyowxqhhj4Beu4W9ktvC1zhJOdgskddc9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GyOlJsPAwTAGOaJKaiD+3cyVjh3pmzn9Vxr9NwQ0TgM=;
 b=B66kPrdPG2lDicGwNQe8Un1HR35XssEwpRHQNI6PlYcTWh30CXluIdi9Bd4wS9Gzb5c6E90Gya//QxQpJkuWpUa2meyHKlwu+skIBHPXWkSQWrIUPVIo3q/hD5BtJN5gpctmBEZk3O0J/o7KZoLmhvDFA5IISs7h+okBBZYTlU5EnrHFNLWC57CJZM9daF61jcFofc4HWEMHL8WXaxehNzCIeRUhLoJ7xjPdP+WKKe1jLbWkEg2h56IrgwZEjel9CU57JcbFCerC/X1cctyspJmeT1zFG/ue5GdxIJDucaOX5jO6edsH23Rs9pZGbmO+jSoLKaGk5Ox58rYCwuTTbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7193.namprd11.prod.outlook.com (2603:10b6:930:91::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 03:31:53 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::dc77:69e0:a3bc:e3e]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::dc77:69e0:a3bc:e3e%6]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 03:31:53 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Coelho, 
 Luciano" <luciano.coelho@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when not
 available
Thread-Index: AQHaBZxmZ5r+EvBsUEyl8l8ekkOMK7BaTe2AgAAB4wCAAAIQgIAABzWAgA2oQ4A=
Date: Fri, 3 Nov 2023 03:31:53 +0000
Message-ID: <d31820ec905a17c38e513653024368d702e8ccbf.camel@intel.com>
References: <20231023103328.1495942-1-luciano.coelho@intel.com>
 <cf874768-7951-4dcc-90b1-7f3457c4923e@linux.intel.com>
 <463b540d-fd0d-4988-9ad1-63447a5d6948@linux.intel.com>
 <86c395f6b2e529943007aca94dd0862c1bb0004d.camel@intel.com>
 <1dedcd11-ac0c-465e-bbe4-079767f5813e@linux.intel.com>
In-Reply-To: <1dedcd11-ac0c-465e-bbe4-079767f5813e@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.48.4 (3.48.4-1.fc38) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6059:EE_|CY8PR11MB7193:EE_
x-ms-office365-filtering-correlation-id: 69a358e0-c2a4-469a-2145-08dbdc1d6c4f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ND7CyqXrM8wKKjv7fD/K8rZePI7u+fT1CKLBFrJMRwwqa0QrbTabPWAW3K5Ek9w27HoUZwZZx8o7iQxUzEZ+ZZsZ8HGB1DKlL2jXuAHGMkg5uSzrxa0/fxyQ1HRoq0TsSYvqzje2Xj/j30ldPNVFpIhZbPOXMsDALbWUM4wSFreVhWGvUp6jxQSsG7QeyyJXa+uoQD3YGl4G7XHmKqrkrRE74/tn+/tHqF1F3jVAPMGtXZ9cTctiIXtMQdpd2VSlJktXGlcB4xMaUCndwP85Ati/kx6OsgLx+ssEehd4wag4j6TqKgrqfDP/NIzMePEsTecxFAfwMhh71kJegG7ro2sn2UzJNdHV2ysAEEn8qsUfslO66Y4F+kTL0IduqIHD9ZIwiVnSgz93wMkOaB6G8vq185qrCZekrXDDi2iiy9VGhSg2Z9R2JlXZUHOjOYIKrI6Myc4mSB5MS4HsGhL8bHu6Z0Dp/5/9JJ5RVyQF2h0Pdm6tVGPnPMsJ8FpF+jZauOj5D+zl3tqQZK/4kdBSu5YjpeSyjDVfj1hAEyTDvcrudURZ+3qg5h99dlOGzaDOwe+NlAFKW8cM0+SsegAHFXy275mGCvTb/wTljIVCi7Hby7vBLBADdSpnzJT1tCOP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(366004)(376002)(346002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(36756003)(26005)(2616005)(6512007)(38100700002)(38070700009)(86362001)(122000001)(82960400001)(83380400001)(2906002)(478600001)(6506007)(71200400001)(8676002)(4326008)(8936002)(6486002)(66476007)(66556008)(64756008)(6636002)(316002)(66446008)(66946007)(76116006)(5660300002)(91956017)(41300700001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUhyK0ovaWdHUlVndWYzUm9PbnVMWEdIUjFNMndlWmUzOVZuTmZmQm9LSnFG?=
 =?utf-8?B?SzM5SW5tQVBwem9iSk1wQ203R0dJTEMzVWhpQXczYmsyTi9LcnZhcGhkYnBM?=
 =?utf-8?B?K1h6eHRXQU4xTkpwZUNHb3dRNmpsa0NuS0p2bHRXNm5iQXJiUkxsVWQ0bEdx?=
 =?utf-8?B?TnpNNWxESUtpbkhMSzAzVDhSNDl0cVFGN3RVUEVxcHJMQk5Lb0RwR01acCs1?=
 =?utf-8?B?dmxLdDB3VVp5RGRJWmgxZWcvUHlXUHI4U2dmZEFYMStndFl2NHNjU05pSkpi?=
 =?utf-8?B?dm5MTjFZd2cvbUtHS1BKOGV6UktiUVF0V1QwNmdkeDltdG1mNHZUcGZya256?=
 =?utf-8?B?b2hISXhIMGNZanFxdDZ3NC9LYk5WNmtXVmFlZlBVVlAwVXBVZXlucWUvWDVZ?=
 =?utf-8?B?dDVqSzJkNlcyUkNXQ3UyK0YxYTNLanJJNSt5OW5YeTlpL01tUGpEWTlzQmtI?=
 =?utf-8?B?a0NLWTc0dC9HZ0VHSDJ3NXdlb0JxcXNWZVJ1SzB6UHVTbXU1bDJFV21SQ0Fa?=
 =?utf-8?B?Rkc1RWoxbzY3OWJEMjQwZ2dDVmVVdFMzWG5EdTdyV3RqekxjS2liYXBmeG1n?=
 =?utf-8?B?UUFESWtnV1lVandtbzRkQkJLMGcyUU9CclNuYmVzSG4wdHhUb1dLMmI4KzJN?=
 =?utf-8?B?eWkxbjBEcWRublFTVFpENEREVVA3WGNYanpzaWlTSVNKNHpCVThzR3k5SWpm?=
 =?utf-8?B?bHZ0Q3d4QTZJU0huNm5abk96Y3dsTFdjaWFNTlhvSUpMQktPUDlic2RUL0ow?=
 =?utf-8?B?Y1VhT0Uxek52SExKbFpSMnNDb2U4WHVOdkpoVmxvVDNpS1BhLzIva0NnaDlD?=
 =?utf-8?B?d1BSanpFZXdmK1NvVWpDNm44SGlWVHlObzJrYUZRNlZ1Q2NtZjVwQzluZWRW?=
 =?utf-8?B?VHZWZk1uWTNRSXcrOVFnNGhSSGk2amc4VXRMUDhEVzhOK1BmUjI1QVliejJ3?=
 =?utf-8?B?ZnpnTXQ5REFlVUpvTW5oV1VIWGMwOEhsSWVHVnR0cXZxMmxtdE1RRjNEalFW?=
 =?utf-8?B?cEdxMFJWZVltY1dpR1R4NHYrMUZBaTlTREhZSU9RVUtoKzd0eFJjSW5pdDBi?=
 =?utf-8?B?Mi9RUjIvd3h6VnF1bHdDMUpVb0MrZE95YXRZSWlJemI1ZFUxc3BXc2w1NEoy?=
 =?utf-8?B?K2QxV3BlZkVYSHNTcG1paHNDOVBjaVM5TFRYYVZ0bU5GZVpxOVdyNmN0RlBp?=
 =?utf-8?B?eU9XamlYZGt2MmUxaDNVMVlvbHhidnRSakR3cXZRaW5Db2I0MVpUMXdDcWdQ?=
 =?utf-8?B?WlFDcUNpaDNXT2FTR2FqTGp5MkRMMEovUG5RL0pqOUtmZTFyY25PUnBIUk5u?=
 =?utf-8?B?UGRUKzU3Tkp5Q1gzcU13MStIK1ZPR3ltYjJyQlV5RWdOSVFhd3krd0NqSUdK?=
 =?utf-8?B?WjlTVHV4VGYxbTRETklGeHZpVVc3WC9FSTl2T1RzMG8wZmVqRDVkSStUK2VL?=
 =?utf-8?B?SHlnVmYyU2RVMVpiSk0xbDdkZ0I5VWJaOG5udFBRMTA1RHQ4UGFtS0NvRE8x?=
 =?utf-8?B?VmVGUVl0ckpVcVlUWWRtTTA2N05uano2YmRZZGR3eCtjaUhWUzFJWjdpR0hx?=
 =?utf-8?B?OTJuTnpZV2FiMWwrT09kT2xoenpBUFZNZHA1S1RoT0RVSkdzUkNkRWJ0ajBk?=
 =?utf-8?B?ejdWelBhdk8waU4rdU5lRG53ZUtzaGdTSXU2WWdFM3lJeHZ0aTZxRFp3NXFv?=
 =?utf-8?B?T2habzM1dDR4dUQ5ak9KSEZ1bCtEZlRFKzN0MHpmYkN4SmE2c3pKV2Q5c3Va?=
 =?utf-8?B?VTRzazIzT2xpQTRvRUN5ZWo1RktCS3c2K1JpaWN6SVB4TkowMVZuVUFqMEl6?=
 =?utf-8?B?K3Y4L1J3bEs0RXRiS2FtTTFmMnlpc3FtZE1qUXdMQWdKUDRVbU1CNGVaSVBp?=
 =?utf-8?B?dDV6SHE4WDBwakhJSFhRZllNZTZyNCtsbDgwSXlUdVJzNzA0TFBweDFVVUly?=
 =?utf-8?B?VnBBc1lBYjBvYWgvbGFxdkRWeU1WZ3U2RWZvd015US9Nbnh5bkc4RFpsV2p0?=
 =?utf-8?B?emZUMzhKSjVMYWg5WEQ1QkMrb0xCNXoxWndFdFhUV2lrNU5ieitkc0M3SWtZ?=
 =?utf-8?B?aDBOTlRMY24xSEN2T2lBT2NJK0FuVHEzdDc0MGsvTkgzL3NhbkIyRWtHdVM1?=
 =?utf-8?B?T2paVlhoQ3UvblIwZkFoQ09zVUowY2NLZlNpMlZMRjM2L3R3UklJWFJNTjE4?=
 =?utf-8?B?dnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FDF5A756355D284C8C0E28157F054EDD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69a358e0-c2a4-469a-2145-08dbdc1d6c4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 03:31:53.2114 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o6feIiei063nGeXUZszUWhNH6JeWtJZ1S99+cgY63joYXm8Jz8FrKyZ5aHYyr8Zmlpbejz8lMSJt9h+htluxSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7193
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQo+ID4gDQo+ID4gQW55IG90aGVyIHN1Z2dlc3Rpb25zPw0KPiANCj4gSSB0aGluayBpdCB3aWxs
IGJvaWwgZG93biB0byB0aGUgcmVhc29uIHVuY29yZSBsb2NrIGlzIGhlbGQgb3ZlciB0aGUgDQo+
IHJlc3BlY3RpdmUgc2VjdGlvbnMgaWUuIHRoZSBjb21tZW50IGluIGk5MTVfZ2V0X2NydGNfc2Nh
bm91dHBvcy4NCj4gDQo+IElmIGl0IGlzIHRpbWluZyBzZW5zaXRpdmUgdG8gdGhlIGV4dGVudCBp
cnEgb2ZmIHdhcyBuZWVkZWQgaXQgbWF5DQo+IGFwcGx5IA0KPiB0byBYZSBhcyB3ZWxsLiBMaWtl
d2lzZSB0aGUgbmVlZCB0byB1c2UgbW1pbyBoZWxwZXJzIHdoaWNoIHJlbHkgb24NCj4gdGhlIA0K
PiB1bmNvcmUgbG9jayBhbHJlYWR5IGhlbGQuIFF1ZXN0aW9uIG9mIHdoZXRoZXIgdGhlcmUgaXMg
Y29uY2VwdHVhbCANCj4gY29tbW9uYWxpdHksIHdpbGwgcHJvYmFibHkgZHJpdmUgdGhlIGJlc3Qg
bmFtZSwgb3IgdGhlIGJlc3QgYXBwcm9hY2gNCj4gaW4gDQo+IGdlbmVyYWwuDQoNCnllYXAsIHRo
aXMgaXMgaG93IEknbSBzZWVpbmcgdGhpcy4gSWYgaTkxNS1kaXNwbGF5IG5lZWRzIHRoaXMgZ2xv
YmFsDQpsb2NrIGFyb3VuZCBtbWlvIG9wZXJhdGlvbnMsIHRoZW4gd2Ugd291bmQgbmVlZCB0byBh
ZGQgaXQgdG8gdGhlDQp4ZV9tbWlvIGFzIHdlbGwgYW5kIHRoZW4gc29sdmUgdGhlIG5hbWUsIGV0
Yy4NCg0KSG93ZXZlciwgSSBkb24ndCBiZWxpZXZlIHRoYXQgb3RoZXIgdXNlcnMgb2YgdGhlIG1t
aW8gd291bGQgbmVlZA0KdGhpcyBsb2NrLiBTbyBJIGJlbGlldmUgdGhlIHJpZ2h0IHRoaW5nIHRv
IGRvIGlzIHRvIGNyZWF0ZSBhIGk5MTUtDQpkaXNwbGF5IG9ubHkgc3Bpbl9sb2NrLCBhcm91bmQg
dGhlIGludGVsX2RlX21taW8gY2FsbHMgYW5kIGhlcmUuDQoNCldpdGggdGhpcyB3ZSBlbnRpcmVs
eSBraWxsIHRoZSBkZXBlbmRlbmN5IG9uIHNvbWVvbmUtZWxzZSdzIGxvY2sNCmFuZCBoYXZlIHNv
bWV0aGluZyB0aGF0IGlzIGVudGlyZWx5IGluc2lkZSBkaXNwbGF5IGNvZGUgc28gaXQNCmRvZXNu
J3QgbmVlZCB0byBiZSBwb3J0ZWQgdG8gb25lIG9yIGFub3RoZXIgZHJpdmVyIGNvcmUgY29tcG9u
ZW50cy4NCg0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KDQo=
