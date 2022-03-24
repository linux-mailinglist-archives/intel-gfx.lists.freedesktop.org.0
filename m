Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5C94E6B3A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 00:26:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8D8710E0E8;
	Thu, 24 Mar 2022 23:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EC010E0E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 23:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648164404; x=1679700404;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=cQ2hhwU+SqHpmEYKXrqnO1CRmPzE6WD4S0WVcNWECZc=;
 b=AvNWR+M0ibyOK81FCl06V9PpqA8gh3POuokJ9mtLWjAWIubo/gsVLcN+
 UMXyEtromoMcODJwKDDbINWAlhUQ9iY3HSrcy+VL8oSFpoLESf18Q5qP1
 QbYfg4h/aOnQBhiKjavAj6+z+P13au6/WXzVXzUYcmw7oIjAext4dxbLj
 iUBkJKt2vuaKI1GHXtAMm2BkVQdrdEckq0BuUmfimAN5FG32fJk/9FnI2
 17GyKth2HQRs5yTobKFS7zO5XPH5uq2BhaFPhxotcdK8QjPSxHCSPMWkX
 quCd9+kLspozeAYfc9vMPwz6cK3qj+NRJPhRuL82ALHzkKFNNm2hQboJ6 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="238454014"
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="238454014"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 16:26:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400"; d="scan'208";a="544856356"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 24 Mar 2022 16:26:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 16:26:32 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 16:26:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 24 Mar 2022 16:26:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 24 Mar 2022 16:26:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PYiCXuDXw5uNqzrDlXWmkrhUqDHLRTpqEsXJvq7jnFnt6/Lvvgoslr5Wwr0G//wC+gQ3Unu6RQdblnAKMS8VjfkKPg83S3FMbYv/x2PsxN4QzLDIgEih5wITk2Nto+qWriv0LsxIyQuabucv/ctIckBBhHefPTkqaVC7EFs1g9VyqZdWGBRKeOywCmaRQpj0RsIGUFN1Evs92lHbRa3lERwt954T92WWvovWrtEPZNXIl0l0a4XbgIsy/5D8ltMN5BdmxPMOabR3BUaejr5THvQm9srwXq1Yxu0wSv5Vxp0caBc8hRX+quXkClrV8Shqw/RRcydMuob8XeiT8z+r7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cQ2hhwU+SqHpmEYKXrqnO1CRmPzE6WD4S0WVcNWECZc=;
 b=b0Ph9TvrV7HX/FQtlAUugxfPNomNDG4LquLQwNEjLleP9iiaL2dBGJ6e8GAZ1qIOvKkPZa/MDh686FmkB7lejAJhMBpHzRAJG3rgnoxjDi7lh6Ch0NahfF7Q0Fd+66PImRMoz5cgaXAPOssOxRgRqkSriq5bRYAu3w8vfSKYwpSOyg+jf+1JG1QkdMRoHDIcEzU+rkeW7vtOlB9gERKQYy5tcwnxy6q6zLLbDsfLU8RLU035gwcsBhvBGWPhXdkpdEfgE0ucrz4zKlVh2TjI/6I8gbaxG+e7u5JawiH0U7LVaOUgr9MyObeAEMby/9wQc3CBuT3fFMRQ2oXWCEu8VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by CH2PR11MB4502.namprd11.prod.outlook.com (2603:10b6:610:43::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Thu, 24 Mar
 2022 23:26:30 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%8]) with mapi id 15.20.5102.019; Thu, 24 Mar 2022
 23:26:30 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Handle the DG2 max bw properly
Thread-Index: AQHYPep2MwFiemJ6ek6uoX09Fbu5RazOOZiAgAD3vwA=
Date: Thu, 24 Mar 2022 23:26:29 +0000
Message-ID: <5dd42cd21ded7bb83bf84836f19cef7bfabc76bf.camel@intel.com>
References: <20220322124308.308300-1-vinod.govindapillai@intel.com>
 <20220322124308.308300-2-vinod.govindapillai@intel.com>
 <DM6PR11MB317739510758294133A45FA8BA199@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB317739510758294133A45FA8BA199@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 886aae69-2d9e-457b-bf83-08da0dedb9bf
x-ms-traffictypediagnostic: CH2PR11MB4502:EE_
x-microsoft-antispam-prvs: <CH2PR11MB45021EA8C4FCCB058FA80BB3F6199@CH2PR11MB4502.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q+Gco3b8o06LjCzUKosHeQf+4eIw0m2csOIdxeGyC8Bfx9mfG/ytJ/0qODt5K6gy3ndqx3EZZVJouR+OoUQlr8IBBhHJajw/AhDb1u9v04XXuUDmdVL6A1qGDiuR8f6mpgGkKbPpe360JN5MlDp+AcZYl28VEAWDr7uJmEBAAZ1IlM8CiO47e28uPfsRtasGAv4QgX14/2kPCJWWxcjYW5l5cZ7vG8lQrFJVyMgCJufIgOd/8usmBplyNkf2Xj1e2A4rT2SF5WC73jAKtI/ihVXM5sKArURJTyWhnnsGoHtiLqJaUK3ZuI+Iy/JPjTketTWdNqyMcaOiYttCShWohpBWyOsS95LYE9B9D27jfaSxMm8N5QhfUglGSBrfhN5dc3eErQNCXr61OR8zij1VQAxACMOZi8V5l8a5CL1usq4yDEDgtyO4zURXu4BGOfLOdXQrwJjY6bf0OJSAlbyUMGkRA/3gcKVciHH8Yah6XetE9g3zDu9ypg26QIoyonlbRpXuuq5XLvf6vi8xsiSjHx9tGXibg/ywps7ZLURwEyWtyvyFHeitODz1GJOoOdUq62Y9Egnz+RorenOAIzPt+7J3CQZUUyLNBT6DiWGgTuStPi+023j2weKofrAn2n1sJubEvDYIwdEpbtMEwAdlTRT3sRtOWpPdVpleP6TYfYcVr3mOZy5F3twOnVaDRrGdsHIi6qYfDxcc2Sin2IVcYA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4744005)(64756008)(8676002)(86362001)(66446008)(66476007)(66556008)(5660300002)(8936002)(38100700002)(82960400001)(2906002)(38070700005)(122000001)(186003)(26005)(316002)(2616005)(66946007)(76116006)(91956017)(508600001)(71200400001)(6512007)(36756003)(6506007)(6486002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHBQYS95V3B4YjlQZkwyTE9TSmJqL3VlZW9OZkI3TVFOZ05XZjRyRit6UXBP?=
 =?utf-8?B?MDJqeWxzY2JQRHRQN3MyN2hHdzlsa2FPalMzY3c0M2pVMWkvZTJuUDB3eTRE?=
 =?utf-8?B?MFBTQkhXc0syNEFHRCtJTi9ENVFJSXkzZlZTQmsxdVBwUEE2VXNyd1dPZHVQ?=
 =?utf-8?B?QU8reEV2UkFrM0EvVndHWVhZcGlRQmxoV3RBQkJQRWNWditSelFrZFVkVU5N?=
 =?utf-8?B?eUxEUjZSZUVreS9JQ2srUmUybzJKN1RMUVczTEd1bzZ2aEJWSlRLSHlTSTVy?=
 =?utf-8?B?Q2llUGVRVkQ5ZlhEcWR0clhqbm4wWitkbHVSdzFIanJ4SlVWZDhZc0tOS0hT?=
 =?utf-8?B?OHRTbXlBaUcyalhHMStsNUE5cVNRblVxa0VTZG16OERsR3ZJYko0SHR5UGcz?=
 =?utf-8?B?VGtMTkxCa0tpa3pIL2Rac1hSRDBIVWpJOGJGdEZURXJWRUtIdHd5NitoUk1G?=
 =?utf-8?B?cEMvU3Roc0tjdG5ReGo2Q3o3UFAvTDBOanRNWi93SU56WFV6TWY3VnB2ZmhF?=
 =?utf-8?B?QU1uTGdlSUV6SVI2R292WG82Q2M0RkdscFhrVnAwQ2xjOXBqazI5Vm5KaENZ?=
 =?utf-8?B?dnJTb0RqdFV1RVhJV1pkeGtzSEdaQ01GQ2VzM0taeFNHR1UvZUF2RmZxZktJ?=
 =?utf-8?B?cm1TVjMzbVVLajJmVFI4bDVHUVFVYVN3c1N5dFNVS0FOSlIxa2F0Uzh5Y09k?=
 =?utf-8?B?OThpdGl1bmg5bHhRNXUwNGErYytnY25PZkNPN29VVVpNaE1nZ1FSR29kbmFz?=
 =?utf-8?B?WGIrY2taSUxWMkpwa1NaSUxUaHVsdVVPbGN0MnhKb2NiRTk1NUhWSVd1TTNE?=
 =?utf-8?B?ZUpZVWtyTVRXSHAzclErbkw1dFkraVV5TXNMY1ZPTXJwQ1hQZnhiZFFMdURI?=
 =?utf-8?B?bk4vYnFZMVdyR0Vualc3MWJXbXA3U2VmY3MxaUdsWkQyQTJueU1hRkx2Wmp4?=
 =?utf-8?B?VHR0OEpSZ29rYXEyOTl6QXB2SkZhcWtTWTFIeU41S2h1NVRNalZmRjI4a0hn?=
 =?utf-8?B?alU3Qkc5QzB1c1dSSy9EaENwWlgyM2M0cGJEQzVwWW5vcWJGNzUzbDRaa3U4?=
 =?utf-8?B?UFlzVnlyVFJFUlh0ZEhQcldTOS9oL2JBeTFYbHBNYmFqYlNXT2xIWWd2M2R6?=
 =?utf-8?B?dHUvZ0NiNHYveFVRZVJyMStSZFd3U2hVaDFEV0ZQa0p1NjM5dXhoUlhPU2dB?=
 =?utf-8?B?bGxYbVB0M3Q4RWNVV2NVc2NOem1VV1pFdG11eEQ3RmZnSWtrVCs2eXU5M2RL?=
 =?utf-8?B?NUs4ZXdJcmQybWdCcm5xdmlybFdnd2RGdlpLajk5aHFRMHZlMmJIVWJHZ3Rx?=
 =?utf-8?B?aXpDTUViWThpQ3dKU1c5VjdXTGpseVFYTG56WGpNaGNZT21NbnV5bE5oUURh?=
 =?utf-8?B?WDg1dU9HT1BybVp0NDB5aWJJZ3ptSHVvS3pKc0xjZnZSOXlkSDBqR0dhK1B0?=
 =?utf-8?B?aVZTMXd5dDRWUEJ2eVV3Y2hhSTFaWW0zenE4SWhYb0ZHV3YzRXZoWkdHM2oy?=
 =?utf-8?B?R2FMV0xRMUtvNk5FbEdhekdmNTZMRkxXbXVJQ1plT2kwNWlOQkNIZHZJaG81?=
 =?utf-8?B?NlhSWmRMb2FGb2VvcU5XYUY2aUtqVm5BZHhsU2psVUdjbDB5M0VscndxeVU3?=
 =?utf-8?B?Si9kTEEvR0ZPVkdaSFVOVDk0dkxFSVlmU3pGdk5WS01ERXBTeWRNWUdreDNl?=
 =?utf-8?B?TVpKTXBlTG9BMGZZSS92YVZSa2ttcFAvV1JxSFl1TkdPN3hZMU0zcVVISUlI?=
 =?utf-8?B?a0FndEtlcFBvWG0vV3N0cXJraSt2bFpHVDFzQktHZ2t5R09MZVNLWDdoK3NU?=
 =?utf-8?B?YU5vK0JWQzlGLy8yOHk2ZG5rMXdIb3NIWnVCRnpwVzhmaENHc2tCN3VGSGtL?=
 =?utf-8?B?L3RnYTRQMm9yNXR3Q3QrOXk0OEpQZEsyc29OUWJNTFplODFadWlrYUJSVks0?=
 =?utf-8?B?VW9HN3dTaXh0TEIyTWdFVHNRZWhMbXkrbTgxeUx2MnpIZGs1SHVKbWlPOVJp?=
 =?utf-8?B?ZVV6cEE3d0huYkplSEhZdm5qa0VEczdOempJVjdwV1Y4cWhWNDZZVlozbTJ4?=
 =?utf-8?B?eDR0R3pCdnZNb0h1QXE1OWo2eXhjUWx4ZnJRaS9LaEkwd3gyRHNidm1obC80?=
 =?utf-8?B?eEZ5SEF3K2tib0o5cC9VZmkxVGR3QXJiNEpIM2xaVm1uWllncjl1a2FQUno1?=
 =?utf-8?B?OWxMZCtwUzNITWFndVBJMGI4dFF4elFhT0xUZkppNjFkdEduZGJEWWpKVkt3?=
 =?utf-8?B?WXgycGdaMjIyMTB2OUY5a244M2ROZWJvSmVIVFlnNnY0ZXR4amQrajFzcWZa?=
 =?utf-8?B?TEptZkF2NmE1L2dQQzNUajRWMXN5c1RmK1JrczZ3eHBySUpNQlEyNkZzS2cw?=
 =?utf-8?Q?IiZ0lsxoNPsFFAZ5TbB24ItBgLvJNjcdJn/qK?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9A1E53D08AB0F14F9C8F4A393DC0D175@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 886aae69-2d9e-457b-bf83-08da0dedb9bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2022 23:26:30.0014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xqTJjsX+4I1jD6HkOankY9LmoDbWdgq9ZCzcxaxnRhyaxE+j1UUCyDpMrMhyrux/U7cR7f8u8HFbWY7R2OvQKYu4/XX9MnAADAkt+eHyZ4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4502
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Handle the DG2 max bw properly
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

T24gVGh1LCAyMDIyLTAzLTI0IGF0IDA4OjM5ICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToN
Cj4gPiAgfQ0KPiA+IA0KPiA+ICtzdGF0aWMgdW5zaWduZWQgaW50IGRnMl9tYXhfYncoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpIHsNCj4gPiArCXN0cnVjdCBpbnRlbF9id19pbmZvICpi
aSA9ICZpOTE1LT5tYXhfYndbMF07DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGJpLT5kZXJhdGVkYndb
MF07DQo+ID4gK30NCj4gDQo+IFdvdWxkIGl0IGxvb2sgYmV0dGVyIHRvIGhhdmUgdGhpcyBhcyBh
IG1hY3JvIHJhdGhlciB0aGFuIGEgZnVuY3Rpb24/DQoNCkhleSBUaGFua3MgZm9yIHRoZSBjb21t
ZW50ISANCklkZWFsbHkgcHJvYmFibHkgeWVzLi4gSSB0aG91Z2h0IHRoZSBmdW5jdGlvbiBtaWdo
dCBiZSBiZXR0ZXIgaGVyZQ0KQnV0IGluIGFueSBjYXNlLCBhY3R1YWxseSBWMiBmb3IgdGhpcyBw
YXRjaCBpcyBpbiBwcm9ncmVzcy4gSSBoYWQgYWJhbmRvbmVkIHRoYXQgZXh0cmEgZnVuY3Rpb24N
Cmluc3RlYWQgdXNlIHZhbHVlIGRpcmVjdGx5Lg0KDQo+IFRoYW5rcyBhbmQgUmVnYXJkcywNCj4g
QXJ1biBSIE11cnRoeQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
