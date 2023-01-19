Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E4C6745F8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 23:30:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B7410E281;
	Thu, 19 Jan 2023 22:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABC610E27D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 22:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674167426; x=1705703426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=b/Z+ISv44se21cbM5K6RHheX9bvRJe8uKtsfaUmWj9g=;
 b=aMzcR3orpyIQAwj/9AJWTVgK+34jZTKEa/XgI2lVdRM2VqKj3BX3Bn0m
 Oap/3cCSCO/Q4ARIGNqvyIFxs1KlyjzFb3WPhRUXq+iGxr+DP+6IPbgvZ
 n+77ISrUzzR2zIX0iZ+fr/hkbQ8FBDj3dVxvz6UzGMwlD1zy9tVQPUjdz
 pKCZgnfG43WZ9sVwZ5IlsW3hrLGp3E5oePhM/Ye2i6UVP9sZWlCknz7Sy
 rB5dgyxZkb5BrEa+KRH/jKLo9/iYKFtvgXhchbs5+59EnCw0Xpmc57Dp4
 uVYkQkyKPzpj81+0IHo0WCnQrjk6pILw7lPXdJOwb7HbbxpbLKIF5dUYL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="389964753"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="389964753"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 14:28:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="768408037"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="768408037"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2023 14:28:22 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 14:28:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 14:28:21 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 14:28:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mMF2GPud3dKp1nyuLSVAx+dMpQ+xdyCRM7xsINJClZVM55pj62h95cx9EZc1pnqtLdmJPmGS3p0AGrA5HiOf7uwaU0WYYc6kw2hE1bkBQsHcuF99O42UBdbrdzhLkGU6dBzOiHx6ICjn4yxUXA/BbgR1+OCJHdN5m0g1AbDuLv3K+tOk+JmElkK7e6KtQTo91SLFXoD9pUuvgZpPwRCDkdjHjxSSpIamSAKW7O+mXjLKojS4ZZ6bt4CmlpSwODP4CAAIg2gcRR28yPCSuHmWnvgINNYgSYKMPnAyrUklJj51zY4irhQvcr5t4z4l788ZrdmX5hr8R1iemxhSgPMgcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b/Z+ISv44se21cbM5K6RHheX9bvRJe8uKtsfaUmWj9g=;
 b=k4STLOjo4K0NYKhptb6vLhLKWoVfumorhTBfrKk/qS+BjbBKMFQBbvZ8otY30OaSj2ht3fD7ijArfInYXAXB1ynV9KfcPNmcqZjeJIY8f4aKz4AIyaDcim8bxj1Q0culGAGdjDSUHv8fWPblDsRBFcUQW14hVgwsxPD6SRox/iMlaIzEz+5K+v8hSf7mLjCDxtgTxPkrHvGVxLkUeZDH+Pvplxuh8O46B1a4uHu97Lbv/Gqv+0qNKOg3pZnJXN0OhIi8hE81KqKvJ3WLJguEp3rBqXAQ8WYHJ0FlcWGqP2ZjffVbUwL6N18zByYizi/QsQDRb/9DRr5E9Gl/pq7fLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB7297.namprd11.prod.outlook.com (2603:10b6:610:140::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Thu, 19 Jan
 2023 22:28:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Thu, 19 Jan 2023
 22:28:13 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: Move LSC_CHICKEN_BIT*
 workarounds to correct function
Thread-Index: AQHZK1T4XpIUKbHrmEmpdl0cVkQJ2a6mS0qAgAAHo4CAAAEJgA==
Date: Thu, 19 Jan 2023 22:28:13 +0000
Message-ID: <243ee40a43dcfae555de7ab4186fb4ede70f9741.camel@intel.com>
References: <20230118155249.41551-1-gustavo.sousa@intel.com>
 <20230118155249.41551-3-gustavo.sousa@intel.com>
 <Y8m8tYS9Oma09+7i@intel.com>
 <20230119222429.exavqg6mjmj5aeqt@gjsousa-mobl2>
In-Reply-To: <20230119222429.exavqg6mjmj5aeqt@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.3 (3.46.3-1.fc37) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6059:EE_|CH3PR11MB7297:EE_
x-ms-office365-filtering-correlation-id: 2eb64d89-969b-4ac9-9bda-08dafa6c7405
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3ri6s33q9+HPvg8v17jtXMvsZ8w6NuQxUniiQ5nnn15yIwqIZl0NiSuNdwKdcxdTvYp2Gz1VZdX4sqMaEZW4eEFfYHstYPxHlrJS30JLhAU7UaC9g2eTMhoEgm2f1KSNOiQxobkltPWD45SOlD1Rncibt3DQn8FvMgc3c8cR67Mmb0o63qGK6KDi5VPSz4vG0CR4xgQ5eq4yVus7B5VqXZkQIum3mbwr+QsJRapOy74rrEKZpNlxuj9aooyB5euXqDlOf/4UrQRhUWB4jNLPLFE+qffCVUCWpPL79MdiOhDV6pVOm2IUA9Qpq9fv0r8Ut0R3bd3v818ardVCyvkv9i+XpXuSMtdRKaggOue2N7R4JJRKJdK72kl4bipFIK/06jhR4VMtU/9zu9bTK2K3ytRYWTSZPtkjMSgmwFVMAM62STy9NsE5zMDRuMqhn4ovxPfKbUZOEsK1O8IMTnAkz9O1M1BnjP7ooVPtd23/0cWLL1lUSZPnWpZqViIl7eKxP/94jFbFVbk0w7oiTn4n2mUPnpKtoEib+7OPK28YDpGttJdCAP2XzkxF1FYMp7VVTANa243BFsNlo7FCnHixTOlxE/N1bk2oYbEeqOywpPgtLfvh2E8IXO5p1jU1Mi7TSAX+HdgGiVbzDSI7xGSASErxlqFEIr7ydEwAthsekzd/acrvu1+ruWx4WLQj3HRUCsL7yTF9dMWlPro1mo3eLg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(136003)(376002)(39860400002)(451199015)(86362001)(66556008)(66476007)(91956017)(6862004)(5660300002)(2906002)(8936002)(76116006)(82960400001)(38100700002)(122000001)(66946007)(64756008)(107886003)(38070700005)(6636002)(54906003)(37006003)(6486002)(6506007)(316002)(478600001)(36756003)(41300700001)(8676002)(71200400001)(66446008)(4326008)(2616005)(186003)(83380400001)(26005)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VE9YT0lzSXJJenVBSTZidW91Vm53WXJvMm9IRmJEc1lISTRVZmVkaDRJZHVF?=
 =?utf-8?B?OWJlM2FQUmtmNnBvTlBYaU9XeFdSNXpIemFBd3ZTb0RwRGovVk1uWmk3Q3lp?=
 =?utf-8?B?MXZvZU80aW5HUW1qQUd1T1BoV2trWVErOXpxRUUyeGpMSzU5VzNieTJqcUsw?=
 =?utf-8?B?NFAxVEt5UjJUSG9Pek9ja3pXcmFoSFZBRVVpWTBqWkRKOVVrcVA2UHluQU9K?=
 =?utf-8?B?Y2t1UHZNcXBYeGNRckhyTUc3UlBSc3plRUxWRlcwaWxoQnRFR3d4a3JTejBR?=
 =?utf-8?B?UG9YazRWVXdoS2R1d0JvbXNJaDRlSmNHR0Q3YmFUOTAwaldKRHV6aFVSdEll?=
 =?utf-8?B?RHoxWmVUMktHQ2ZDQVVqODFZcTk1YlhFTVp5VFFORUxUVWxGMWQzN0syb1hD?=
 =?utf-8?B?VHRzYzRObW9HTExnaUtPN3hxcnFUM2VHbFRoYUtQMjU3MzljSDdPdDRLMEo0?=
 =?utf-8?B?Y1o2UmEyVUplSlM3T3hrUkl0MTdlTDNEVXJiOEFwSGI1emhTQVRhbDEvQlBv?=
 =?utf-8?B?QjRNSUhaK3JPVXdUVFBCWlUxYUpHVUFmZUlwOTZsNmlCNE9FeFlJTWcwOWxC?=
 =?utf-8?B?NU9qcFU3a1ZsdjkxQjRmU005Y3JjeW5UejlocWZscW1iVTh2SlBEdXl5bFA4?=
 =?utf-8?B?eGJGeWp1SVczL2ZDS1Jielp2aHJYc0ZaZlhqcGJPQ1RVUEFteWQ2eG9oaDNS?=
 =?utf-8?B?bE9KQmZsdDBRM1EvMzN2Z1Z4bGZlZ2NaaWwvNjVMZmVCc0NLYlRwSTNwSDUv?=
 =?utf-8?B?SzBiNkJGcVF3b1ZuZmxZay9oeE1EL2hKUFZFbk1paUxoU0hCaSt1MEpYY1Rm?=
 =?utf-8?B?TmJFZ2pmVGRwa3dTa3BzVmJja2l4WVhJZ09qN2xoL3RHZHVZeTIydnUwQk1Y?=
 =?utf-8?B?OFN3dzJtVkZURHYxQXhtQTJQdWpSQUIyRDhMSEkzbHY5cVdINDhLVUtsZFBS?=
 =?utf-8?B?bDdoWDRKN2t1WGJ0b0ZDUkh4K3NtSWxuQ3F6akEveTBnRWZ3akYrMExVVTF6?=
 =?utf-8?B?cExmRUd4VUFpSmVJbTVobklSYnZxK25FMC9yTDFJamtMeGlZd2NMQXlnZXhD?=
 =?utf-8?B?NjM4UE9jM0hxVmppRytDSHAzYWhoa01jYTQ2ODRNWWlFdXdkN1ZDSU02L0Ja?=
 =?utf-8?B?YWY0VkpNbkR6d1lEYjJ0TWtzQ3hSaDlFcTlnZDNTcVptaU5wMTR1dWR0N21x?=
 =?utf-8?B?eVdOekNjVDRIekttMkgrTkxiTGwxeFJoWkluWWkvMnFKY1ZyYlZvcFkydWFh?=
 =?utf-8?B?aWxzR01ZTUFWdFZEYjhJT2MxMWdSckhpbHE1N1VWYVRUM29uakhqNmNZdVp4?=
 =?utf-8?B?Nk0vTG9wdEtqdWRuRmFxYVlNT2JsNXQyR3ViR040U1drS1c0Y0dKajh5SVdH?=
 =?utf-8?B?N05OSENKQllsY2Q0WDZBTUNia1c5VW5ZdHVjOUkwVTJTWDM5NXNFbFBucS9z?=
 =?utf-8?B?elZ1SThzdjljcmNFakRJQ3pzeXhFZURCa1NxcUQ0Z2U0TWJLQW9iazlLS0hk?=
 =?utf-8?B?SUdEOGoxbWczaW5EaStvL0ZIaEV3d1U1anVCU1RBK3kvalhYd3p3MGY4SEtZ?=
 =?utf-8?B?dit0cGoxeVlOVUQrR1BFSXN3YTR6QVhZRTdLZXJLYjI0bGd0Sit2Vk9pTVBu?=
 =?utf-8?B?R0l0S3ZXTnA2dDNPYnRIazVqMnpDVjNnZ2N6YXlvNEljYzZiTzNDNXBTSXJm?=
 =?utf-8?B?bU43T0JkMEdHbGNkU09xNDhYVDIvWDZ3akZaUDRUeXlITFdYVHo2T2VxYnJM?=
 =?utf-8?B?aGxhL0phMnRWcU9LQk52MXViWTdFb2x1MGdCa0JIcncyM3dtaVVaL0dScnVi?=
 =?utf-8?B?RXhxSHFvZ1FhbGVETm16TTFlUkpFZEs4dU95UTNyK1BQSk12cnJUazhsMUVk?=
 =?utf-8?B?bnM2WStNUXlieGMxK2VudzQ1L2psMjNRMGFwKzZ3YVdYOUdSS3hyQnp6YVoy?=
 =?utf-8?B?eHVKR21pc1IrUkNoTUFwQnd5dmZjemZmQ0hNL1ZXSklPRWIxdjMrWnJzVnZq?=
 =?utf-8?B?RGJWYlRCRGFzT0E3dTc4NUs3QUJFUXZucE0xdFQ4NkI4UXVZMEJ2dkU2UEVC?=
 =?utf-8?B?MHlVOUVrS1RwRTZGd0x0WkNzbXlxek9pS0FGS0pOaW9KMVJsNXl1SWoyY1k1?=
 =?utf-8?B?SE5yYTJwR28rSjBtN2xEelUzckY3TFE0TmNBMUtuUGorbnAwNDJlWUd5QXZQ?=
 =?utf-8?B?bmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9C5A1E1E58839647A5609E9F5D2E27F9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2eb64d89-969b-4ac9-9bda-08dafa6c7405
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2023 22:28:13.5814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kbFYx5JXU/ER3BNWteEey7T8spMqJNlJw0X/GOGWBwfRnnjVpxJdcxOjS1d+TW3Tu/uEdsbCYoN2jMB4R+69tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: Move LSC_CHICKEN_BIT*
 workarounds to correct function
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTAxLTE5IGF0IDE5OjI0IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOgo+
IE9uIFRodSwgSmFuIDE5LCAyMDIzIGF0IDA0OjU3OjA5UE0gLTA1MDAsIFJvZHJpZ28gVml2aSB3
cm90ZToKPiA+IE9uIFdlZCwgSmFuIDE4LCAyMDIzIGF0IDEyOjUyOjQ5UE0gLTAzMDAsIEd1c3Rh
dm8gU291c2Egd3JvdGU6Cj4gPiA+IFRoYXQgcmVnaXN0ZXIgZG9lc24ndCBiZWxvbmcgdG8gYSBz
cGVjaWZpYyBlbmdpbmUsIHNvIHRoZSBwcm9wZXIKPiA+ID4gcGxhY2VtZW50IGZvciB3b3JrYXJv
dW5kcyBwcm9ncmFtbWluZyBpdCBzaG91bGQgYmUKPiA+ID4gZ2VuZXJhbF9yZW5kZXJfY29tcHV0
ZV93YV9pbml0KCkuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIFNvdXNhIDxn
dXN0YXZvLnNvdXNhQGludGVsLmNvbT4KPiA+IAo+ID4gUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiAKPiBUaGFua3MgZm9yIHRoZSByZXZpZXcsIFJv
ZHJpZ28hCj4gCj4gTGFzdCB0aW1lIEkgdGFsa2VkIHdpdGggdGhlIHRlYW0sIEx1Y2FzIHN1c3Bl
Y3RlZCB0aGVyZSBjb3VsZCBiZSBhCj4gcmVhc29uIHdoeQo+IHRoZSB3b3JrYXJvdW5kcyB3ZXJl
IGluIHRoZWlyIGN1cnJlbnQgcGxhY2VzLiBJJ2xsIGluY2x1ZGUgaGltIGFuZAo+IE1hdHQgUm9w
ZXIKPiBoZXJlLCBzaW5jZSB0aGV5IGhhZCBhc3NpZ25lZCB0aGVtc2VsdmVzIHRvIGNoZWNrIHRo
aXMuCj4gCj4gSSB0aGluayB3ZSBzaG91bGQgd2FpdCBmb3IgdGhlaXIgaW5wdXQgYmVmb3JlIGFw
cGx5aW5nIHRoaXMgcGF0Y2guCgpvcHMsIEkgaGF2ZSBqdXN0IHB1c2hlZCB0aGVtLi4uCgo+IAo+
ID4gCj4gPiA+IC0tLQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMgfCA2NSArKysrKysrKysrKystLS0KPiA+ID4gLS0tLS0tCj4gPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
PiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiA+
IGluZGV4IGVmNjA2NWNlODI2Ny4uOTE4YTI3MTQ0N2UyIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+ID4gQEAgLTIzNDEsMTAg
KzIzNDEsNiBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcwo+ID4g
PiAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgLyogV2FfMTUwOTcyNzEyNCAqLwo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHdhX21jcl9tYXNrZWRfZW4od2FsLCBHRU4xMF9TQU1QTEVSX01P
REUsCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAKPiA+ID4gU0NfRElTQUJMRV9QT1dFUl9PUFRJTUlaQVRJT05fRUJC
KTsKPiA+ID4gLQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogV2FfMjIw
MTMwMzc4NTAgKi8KPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHdhX21jcl93
cml0ZV9vcih3YWwsIExTQ19DSElDS0VOX0JJVF8wX1VEVywKPiA+ID4gLQo+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERJ
U0FCTEVfMTI4Ql9FVklDVElPTl9DT01NQU5EX1VEVyk7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB9
Cj4gPiA+IMKgCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfREcyX0dSQVBISUNTX1NURVAo
aTkxNSwgRzEwLCBTVEVQX0IwLAo+ID4gPiBTVEVQX0ZPUkVWRVIpIHx8Cj4gPiA+IEBAIC0yMzcz
LDIxICsyMzY5LDYgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MK
PiA+ID4gKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4g
PiA+IEdFTjEyX0RJU0FCTEVfSERSX1BBU1RfUEFZTE9BRF9IT0xEX0ZJWCk7Cj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqB9Cj4gPiA+IMKgCj4gPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChJU19ERzJfR1JB
UEhJQ1NfU1RFUChpOTE1LCBHMTAsIFNURVBfQjAsIFNURVBfQzApIHx8Cj4gPiA+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoCBJU19ERzJfRzExKGk5MTUpKSB7Cj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAvKgo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICog
V2FfMjIwMTI4MjYwOTU6ZGcyCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KiBXYV8yMjAxMzA1OTEzMTpkZzIKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAqLwo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgd2FfbWNyX3dyaXRlX2Ns
cl9zZXQod2FsLCBMU0NfQ0hJQ0tFTl9CSVRfMF9VRFcsCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE1B
WFJFUVNfUEVSX0JBTkssCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiA+IFJFR19GSUVMRF9QUkVQ
KE1BWFJFUVNfUEVSX0JBTkssIDIpKTsKPiA+ID4gLQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgLyogV2FfMjIwMTMwNTkxMzE6ZGcyICovCj4gPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB3YV9tY3Jfd3JpdGVfb3Iod2FsLCBMU0NfQ0hJQ0tFTl9CSVRfMCwK
PiA+ID4gLQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoEZPUkNFXzFfU1VCX01FU1NBR0VfUEVSX0ZSQUdNRU5UKTsKPiA+
ID4gLcKgwqDCoMKgwqDCoMKgfQo+ID4gPiAtCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBXYV8x
MzA4NTc4MTUyOmRnMl9nMTAgd2hlbiBmaXJzdCBnc2xpY2UgaXMgZnVzZWQgb2ZmCj4gPiA+ICov
Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfREcyX0dSQVBISUNTX1NURVAoaTkxNSwgRzEw
LCBTVEVQX0IwLCBTVEVQX0MwKSAmJgo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5lZWRz
X3dhXzEzMDg1NzgxNTIoZW5naW5lKSkgewo+ID4gPiBAQCAtMjQxMiwxNiArMjM5Myw2IEBAIHJj
c19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzCj4gPiA+ICplbmdpbmUsIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKi8KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3YV9tY3JfbWFz
a2VkX2VuKHdhbCwgR0VOOF9ST1dfQ0hJQ0tFTiwKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBNRFFfQVJCSVRSQVRJ
T05fTU9ERSB8Cj4gPiA+IFVHTV9CQUNLVVBfTU9ERSk7Cj4gPiA+IC0KPiA+ID4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKiBXYV8xNDAxMDkxODUxOTpkZzJfZzEwCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgKgo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogTFND
X0NISUNLRU5fQklUXzAgYWx3YXlzIHJlYWRzIGJhY2sgYXMgMCBpcwo+ID4gPiB0aGlzIHN0ZXBw
aW5nLAo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogc28gaWdub3Jpbmcg
dmVyaWZpY2F0aW9uLgo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4g
PiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3YV9tY3JfYWRkKHdhbCwgTFNDX0NI
SUNLRU5fQklUXzBfVURXLCAwLAo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgRk9SQ0VfU0xNX0ZFTkNFX1NDT1BFX1RPX1RJTEUgfAo+ID4g
PiBGT1JDRV9VR01fRkVOQ0VfU0NPUEVfVE9fVElMRSwKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDAsIGZhbHNlKTsKPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoH0KPiA+ID4gwqAKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChJU19ERzJfR1JB
UEhJQ1NfU1RFUChpOTE1LCBHMTAsIFNURVBfQTAsIFNURVBfQjApKSB7Cj4gPiA+IEBAIC0zMDA2
LDYgKzI5NzcsMTUgQEAgZ2VuZXJhbF9yZW5kZXJfY29tcHV0ZV93YV9pbml0KHN0cnVjdAo+ID4g
PiBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGkKPiA+ID4gwqAKPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoGFkZF9yZW5kZXJfY29tcHV0ZV90dW5pbmdfc2V0dGluZ3MoaTkx
NSwgd2FsKTsKPiA+ID4gwqAKPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKElTX01UTF9HUkFQSElD
U19TVEVQKGk5MTUsIE0sIFNURVBfQTAsIFNURVBfQjApIHx8Cj4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoCBJU19NVExfR1JBUEhJQ1NfU1RFUChpOTE1LCBQLCBTVEVQX0EwLCBTVEVQX0IwKSB8
fAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVNfREcyX0dSQVBISUNTX1NURVAoaTkxNSwg
RzEwLCBTVEVQX0IwLAo+ID4gPiBTVEVQX0ZPUkVWRVIpIHx8Cj4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoCBJU19ERzJfRzExKGk5MTUpIHx8IElTX0RHMl9HMTIoaTkxNSkpIHsKPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFdhXzIyMDEzMDM3ODUwICovCj4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3YV9tY3Jfd3JpdGVfb3Iod2FsLCBMU0NfQ0hJ
Q0tFTl9CSVRfMF9VRFcsCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERJU0FCTEVfMTI4Ql9FVklDVElPTl9DT01NQU5E
X1VEVwo+ID4gPiApOwo+ID4gPiArwqDCoMKgwqDCoMKgwqB9Cj4gPiA+ICsKPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoGlmIChJU19NVExfR1JBUEhJQ1NfU1RFUChpOTE1LCBNLCBTVEVQX0EwLCBTVEVQ
X0IwKSB8fAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElTX01UTF9HUkFQSElDU19TVEVQ
KGk5MTUsIFAsIFNURVBfQTAsIFNURVBfQjApIHx8Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgSVNfUE9OVEVWRUNDSElPKGk5MTUpIHx8Cj4gPiA+IEBAIC0zMDI3LDYgKzMwMDcsMzMgQEAg
Z2VuZXJhbF9yZW5kZXJfY29tcHV0ZV93YV9pbml0KHN0cnVjdAo+ID4gPiBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGkKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqB3YV9tYXNrZWRfZW4od2FsLCBWRkdfUFJFRU1QVElPTl9DSElDS0VOLAo+ID4g
PiBQT0xZR09OX1RSSUZBTl9MSU5FTE9PUF9ESVNBQkxFKTsKPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oH0KPiA+ID4gwqAKPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKElTX0RHMl9HUkFQSElDU19TVEVQ
KGk5MTUsIEcxMCwgU1RFUF9CMCwgU1RFUF9DMCkgfHwKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgIElTX0RHMl9HMTEoaTkxNSkpIHsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoC8qCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBXYV8yMjAxMjgy
NjA5NTpkZzIKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFdhXzIyMDEz
MDU5MTMxOmRnMgo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3YV9tY3Jfd3JpdGVfY2xyX3NldCh3YWws
IExTQ19DSElDS0VOX0JJVF8wX1VEVywKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTUFYUkVRU19QRVJf
QkFOSywKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiA+ID4gUkVHX0ZJRUxEX1BSRVAoTUFYUkVRU19Q
RVJfQkFOSywgMikpOwo+ID4gPiArCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAvKiBXYV8yMjAxMzA1OTEzMTpkZzIgKi8KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHdhX21jcl93cml0ZV9vcih3YWwsIExTQ19DSElDS0VOX0JJVF8wLAo+ID4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBGT1JDRV8xX1NVQl9NRVNTQUdFX1BFUl9GUkFHTUVOVCkKPiA+ID4gOwo+ID4gPiArwqDCoMKg
wqDCoMKgwqB9Cj4gPiA+ICsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKElTX0RHMl9HUkFQSElD
U19TVEVQKGk5MTUsIEcxMCwgU1RFUF9BMCwgU1RFUF9CMCkpIHsKPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKiBXYV8xNDAxMDkxODUxOTpkZzJfZzEwCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgKgo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogTFNDX0NI
SUNLRU5fQklUXzAgYWx3YXlzIHJlYWRzIGJhY2sgYXMgMCBpcwo+ID4gPiB0aGlzIHN0ZXBwaW5n
LAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogc28gaWdub3JpbmcgdmVy
aWZpY2F0aW9uLgo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3YV9tY3JfYWRkKHdhbCwgTFNDX0NISUNL
RU5fQklUXzBfVURXLCAwLAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgRk9SQ0VfU0xNX0ZFTkNFX1NDT1BFX1RPX1RJTEUgfAo+ID4gPiBG
T1JDRV9VR01fRkVOQ0VfU0NPUEVfVE9fVElMRSwKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDAsIGZhbHNlKTsKPiA+ID4gK8KgwqDCoMKg
wqDCoMKgfQo+ID4gPiArCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfUE9OVEVWRUNDSElP
KGk5MTUpKSB7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogV2FfMTYw
MTY2OTQ5NDUgKi8KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3YV9tYXNr
ZWRfZW4od2FsLCBYRUhQQ19MTkNGTUlTQ0NGR1JFRzAsCj4gPiA+IFhFSFBDX09WUkxTQ0NDKTsK
PiA+ID4gLS0gCj4gPiA+IDIuMzkuMAo+ID4gPiAKCg==
