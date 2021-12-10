Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B79B64701AF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:32:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFAD10E335;
	Fri, 10 Dec 2021 13:32:44 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D8810E335
 for <Intel-GFX@lists.freedesktop.org>; Fri, 10 Dec 2021 13:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639143162; x=1670679162;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:mime-version: content-transfer-encoding;
 bh=TFCLEXsy5YrmcNpaHWjSSBxsAlk7Dc7XwrteAeU6qN0=;
 b=TB8hzPI+RIV2sASqIck4lrCN/rLQ6t4jfF6q2w3AMeNAc0RWGts3fb/Y
 UCwGMaH1BJgdYuLu6no8lL6svP98rHBZ917QDtM4XbBaWw6/nssRpsIXw
 1H7R71YjPuGj7N7lorS6UQWo4/I5aTkWdRuLU2HGyYEG7IXOusgHrsl5C
 CaIIgxzqxZIl1qTC/mCkCyWDj6ogBBZSnSyDhF4ey555XoY/Eb+Ep2zz+
 Fp9O7cUDsUebjTFEa0RSgKkj6aILwRNNnEekZ9AxL8opNCYBchs+ewci0
 Snv7KvO8qq5ufA87YNi4xeZKZefhZgWC6UiT1m8McN0nX/zNs8dGulDCO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="219033172"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="219033172"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:32:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="602111014"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Dec 2021 05:32:38 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 05:32:38 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 05:32:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 10 Dec 2021 05:32:38 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 10 Dec 2021 05:32:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ibT92pdSZKNoOSoR25tE/17pbOVs5myyU4yqDLdBXPCNUgZcHbIH4EYJoOCc+5+k0DTtHp6Zdv4mAAjkvz+6N3B6HInME49iL5/mYSU4nDh2YPch14ZmZNoTedjYVTLMDpJOjVcesuvVoxiilfNV9Mbakbv8OEw5ynQ73/D15CWRnnU4XXKkNI4uRfSgLnuVtwPgK8DHDezXWQ/HniDWPfyp60KF95uenLq85qnBzSDmEjm8DWVv7XviKzhrL1X+5jK0KVP5w5Gha6HvFYbbGWK4w8atd3HzyTSDeY1cOZzp9SdwyQ4uDuPZx3fhLUIlH1texgjn2Qb4e+MFfMPIog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MsogZAz7gxkYa6LVlZRLvdG1oKwk4TQ52UX1jXFZnkg=;
 b=INFG8TI4YW6o3VD2SnuhKNt6fDgMoM7W8e9YqoPUBIw7e2RJj+IZKejEFVFomQ9H80JMdzM53WH0jXaKpzHzTcrImWlzoNDgTZVMA9laQuHwxKkyXtpbyhQ7cTefk57lrAcsuEZgCjrsx2yfARCu/M5Riycj7umvmZ6ftNJ1WG7EyNMxM9fO5ETiqBUi2WfcqlEElnMdM14OAILO7qjJWqmdR9UXaXIBbI6F4UDoF9pUUZ7GS8u4LWB028m+6sCSYL5ke6GdXYsoHOPj6IkGHlwUq79bIZNCZan5ZyFo1BUAJPKJ+7GlP31PDKil0cBS+veYXx6LASJBm0JqxBWUlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MsogZAz7gxkYa6LVlZRLvdG1oKwk4TQ52UX1jXFZnkg=;
 b=mbGY3d6Pr/l5U6vY3g3Xm5ZEWLt4AmL5WPCmGcxsPYzpHYNUlhq4a8trITYov9djwIxxA8jRygHTyMkzg1C1SytPN4fEPu1mzqtdAbejI8Ayl/rG/6urkItySrLW0gcnnB5+kOX+CpzqQJvdWIB1cuZz2hK12QZn2t/0cCRpWNY=
Received: from DM6PR11MB3114.namprd11.prod.outlook.com (2603:10b6:5:6d::11) by
 DM6PR11MB2746.namprd11.prod.outlook.com (2603:10b6:5:c9::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.11; Fri, 10 Dec 2021 13:32:34 +0000
Received: from DM6PR11MB3114.namprd11.prod.outlook.com
 ([fe80::243f:4e1e:b728:efd4]) by DM6PR11MB3114.namprd11.prod.outlook.com
 ([fe80::243f:4e1e:b728:efd4%5]) with mapi id 15.20.4755.026; Fri, 10 Dec 2021
 13:32:34 +0000
From: "Hellstrom, Thomas" <thomas.hellstrom@intel.com>
To: "Newsome, Jasmine" <jasmine.newsome@intel.com>,
 "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
Thread-Topic: [PATCH] drm/i915/gem: Use local pointer ttm for __i915_ttm_move
Thread-Index: AQHX7JC9N/pGrmP97EmLgavmuXm6pqwru6SA
Date: Fri, 10 Dec 2021 13:32:34 +0000
Message-ID: <772c62338bc2d5bc65fad13b8dcfd4ac5dd71169.camel@intel.com>
References: <20211209000533.1670512-1-jasmine.newsome@intel.com>
In-Reply-To: <20211209000533.1670512-1-jasmine.newsome@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-2.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10aa916a-1338-445b-ff08-08d9bbe18655
x-ms-traffictypediagnostic: DM6PR11MB2746:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB2746F11F448E93FA56FBBA2097719@DM6PR11MB2746.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ogPleseEjFWCZvq1FsrMYvEZ37jGSLkqBYXxAMtDmV4K/QFN9+FygiDnYMjm+mUtifPK5AHHN4q+5i9kT/ibbQdSMMtoMHSZk6EN+TAW3yX+qMT5poRn3BBt2rm7NtaUtwwuCoXN5fPWF40pG91wabIUsvPZy37ySwK65q5dIIFqVuVKUB6LswiErHC67/jYd/qbaDz86WJ1HLQyGOk2rrVBy4SyuwyC48bP6GtPA1mHIQV/Da/hmVVyIB9VwRphx8v3Fdu65LYR0dmFcyhv2RB/2hin0TTfvKx/bUTRthxUHDkxqnXOwjVxL0bKP2m4SHn3dHES5bbOOBEwcMgriMTebCAEeYUrNtXDjamnlHx9/LSE6DfPnOSPKWRxm+dxOG6YnxGDO5lajihcsWLVqX322jDa5ZD2pJNQ1gDWiNPstxoVT4NT9XC2r00oUGKlBhf9EDGLBKcVngIMOR2ZsEMirYw9HxeIfZDp1r47Zk86bMJKkZgrVEJOBKYrhrvWf9DZGx/jtEYnWexULhJprCREC9RxzI5Ux+EeNtij0p3R+7CLkYhypqNO+tyEDMm2mMt7NF744ARg0BAAqw2N/rDz9YgKMZFj05J0amyyhUptN7aTr5MMRz777h9FC9PmU/hAjh1FVn4jhaUZhqG4nLR5tnoIQH62BakcjhG52QvfAALeX/nXXXJLN0jAAE99sNzno3twgOFwLagKu7MGpw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3114.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(71200400001)(4744005)(38070700005)(66574015)(38100700002)(110136005)(316002)(2906002)(36756003)(2616005)(107886003)(91956017)(76116006)(6506007)(508600001)(8936002)(66946007)(6512007)(6486002)(186003)(8676002)(66446008)(64756008)(66476007)(66556008)(86362001)(4326008)(122000001)(82960400001)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTE4aVZmODY4aHQzbXBQa08xcjlINUluOHNpUVZjcjR5Tk9EZEVPRkRWYU5F?=
 =?utf-8?B?b3BmK1E4T0xUalVnSElQbTBidVpzNW1lZXU4TTN5K09zOEFOMUNibWlxL2pX?=
 =?utf-8?B?S3RkN29pQVhycmlVcmNRUmFmMUIzaEVXakNUc1lwYkoyRTl0TjgxeVhwRHpj?=
 =?utf-8?B?REorVncrTjdQdHMvR1hrdXBPaDVERkwyNmJmYUMxT1dLNHo1RGdsSmN3MHd0?=
 =?utf-8?B?T1ZUMlRRRlg4MUUxYm5uR3VxVTAxem5JajNpVFlHTTd1ZWhrNkd1S3VvbFBj?=
 =?utf-8?B?VzBXVU51Vm5nNldVSTlOb3hEUXFSdkpXR3lIRW1uSlJCaFg0WVR1cVhHTlRR?=
 =?utf-8?B?V3hWOW9qd0puc0djTlRQVzFEZHlya2l6elB1cVppMnRtWCtEN1RQd2VlcmNY?=
 =?utf-8?B?dk1zcnRIWkY4WHBTaDczK3hsSS9ydCt1eUY4cjJEQ05WK2dNT0szenJDSDgr?=
 =?utf-8?B?bFUzTTVOT0pmMTF0dVl3T3piWnJxU3FSSDJHaENkekd0anRsbytrN29RRFdD?=
 =?utf-8?B?VEVTb2F5L2tJNHdSQ052Z1A4N295QzFta3NwSXU4YTRzU2tzVzJHNXJuaFFx?=
 =?utf-8?B?a0JXbkpxdGVSQmgyc3NmZjlEb2hCTzZaTUVkWHRxVVNYbGFUc1g2WHJDa1lK?=
 =?utf-8?B?NEVQbXNRSXZYUWNrTnZId1d2eXdpR3ZINGVORm5QTkJkS0pDcy9va2ZmWDBy?=
 =?utf-8?B?OW9ESC8wOTJIcWo0L3hWbFBid1FmWWJWaEtaNmtyODlJSEtweDZyMC8wcFlE?=
 =?utf-8?B?SlNoTHFMV2tQNDJkcE5MN2ZmY3ArcGk4VllsVk9LSzZOWlZzRHVNb0ZuczZv?=
 =?utf-8?B?b1JrdmdJaGRPNUFjU1J6QmcvTTY1cGhYUlFxRk5yZ0pVNzk1bzVLSVoxeTQ3?=
 =?utf-8?B?cHhXSHpTRTNyNWVoVVpxenVTeFQ2LzFmVTVtUkxiRVBDRGpnUFZ6Wkk1b2la?=
 =?utf-8?B?RFF5OG9heTB0T0FzaEcwRU0wTkdkK29lSnYveEN6VC9WdEM2RWZacUlDS3hU?=
 =?utf-8?B?MnlhWWZ4czVoZ0dyTWl4algrZkxKdGFqZkhZY0ZTN0tyMjFVaGcxOUZ1SGxo?=
 =?utf-8?B?TU1jRFhRZ29hVWFKU2Qva0ZyNlIvOGRLM2VTNzhpN09nK3Z0aml2NE8zTlJI?=
 =?utf-8?B?Y0FvMjRPSmlGV0RZRW80N1gvK2NhdlpJOTBCc3NmalJwUWxRVm1IVVNPNzNQ?=
 =?utf-8?B?QW0yQTU4ZDNZRk1iMEdMUWtPMHN5SHh5MXZ1VDJ1OFNmdmFoL3grM3NQcHFm?=
 =?utf-8?B?enRUQkJJa1p0dFg0RnRLUGoxN0hXSWxyUm1abHVndjFnU3BvWUk5NktpdTVR?=
 =?utf-8?B?aUFIUFNueE5OWVBWQ00yRFZubnp1cEVTT2ZjSTFSOEZVeVVtSUpjWWZDeUsw?=
 =?utf-8?B?Uk81ZGN2VG9iVVcvUzM2U041S3JBR2xLVllnMTExdVpDU0hhS1Fqd0RCdnlW?=
 =?utf-8?B?U3NJTVNTSUFCME1hNURFVGRvODhVR04xK09CcXBTejdHckxkNUlYZDFFUVFl?=
 =?utf-8?B?Y2Z1TjgvRHVnRlBZUGlTeHN0MnhvejJHcy9rbU1mMHN5aC9uYmQreHlxZ3cy?=
 =?utf-8?B?MmdycTFDbEFhenVtcEdWV1N3QjBlcG9hMUpETUFVdnJPT3JNeDZBNGRoYlhJ?=
 =?utf-8?B?SVR0VGNoTHlmM0ZiYnlrMUZMWU1zV1FKN0Q5L3kzWklnN3JINjFLQTJXZlFX?=
 =?utf-8?B?eU44RENKQzlvdThEQkdPcFlia2RqR1dJU1p1elJQb2l0N0tjK2hLdHV1ejdR?=
 =?utf-8?B?VU16YlFYUHpBNGRQUEFQZmgxQXplWm12bU9JTXlZRmgyVEtuNWtabnhjQUds?=
 =?utf-8?B?VnpNdHlhdzZjb2t3cGhCeGpzNkVqd2tvemgrNlI2aUxxSUpXTjcrSi8yZDh2?=
 =?utf-8?B?bE40bDQrQ1RtU3F1U1ZjbC8ra21idFhVTklKaXN2bEVaZzB6MjdzTklxZ2Fs?=
 =?utf-8?B?d0U4RUl6WTJ4R0M5MFpoYklQS0tMMUM5bVZ0aEtqelZ0dUpCeTN3aU5EeVFi?=
 =?utf-8?B?TEpkTEpNOXpNNlF3WTlvcm52OERIWWFoR0NKeWRLVTg2NDVhejVHL0ZUTzdV?=
 =?utf-8?B?UGhlamNiQjlUU0pPUVFmc3d3TWNaSkFDamFGZ1hYczNhZ0duQVl1MEVGL0tN?=
 =?utf-8?B?WHRHM2NUMzR3YjlsLzhJQTVZVldYUHBBbUJrcWYxSnBVRlNuN0drOEc2bjkr?=
 =?utf-8?B?M1J4bkxnenZQcEFySTVtVEZ0TUZMMk1hLzE2RERNYVZnTytZcnZncjVoY1NG?=
 =?utf-8?Q?dEVITHC+cGsNZbe9YYhjVTiOdoPUciBvxc4pUSHvG4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1DA52C8C7B61954BAF26C8698A4CC8B7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3114.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10aa916a-1338-445b-ff08-08d9bbe18655
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2021 13:32:34.4516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GFfOsRsRWtymP4bwJXB9kiHrs35vkYU85ZFHbezsOpRGFABPIA97roZbfBiHgH4nes00eI5ATz3g3UZHxixjSZqMRFqfThb+5GZlby/qrSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2746
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: base64
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Use local pointer ttm for
 __i915_ttm_move
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

T24gV2VkLCAyMDIxLTEyLTA4IGF0IDE2OjA1IC0wODAwLCBKYXNtaW5lIE5ld3NvbWUgd3JvdGU6
Cj4gVXNpbmcgbG9jYWwgcG9pbnRlciB0dG0gYXMgYXJndW1lbnQgaW7CoCBfX2k5MTVfdHRtX21v
dmUKPiBpbnN0ZWFkIG9mIGJvLT50dG0sIGFzIGxvY2FsIHBvaW50ZXIgd2FzIHByZXZpb3VzbHkg
YXNzaWduZWQKPiB0byBiby0+dHRtIGluIGZ1bmN0aW9uLiBUaGlzIHdpbGwgbWFrZSBjb2RlIGEg
Yml0IG1vcmUgcmVhZGFibGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFzbWluZSBOZXdzb21lIDxq
YXNtaW5lLm5ld3NvbWVAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KCgo+IC0tLQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bV9tb3ZlLmMgfCAyICstCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bV9tb3ZlLmMKPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG1fbW92ZS5jCj4gaW5kZXggODBkZjlmNTkyNDA3Li41
NmI2NTczYjVjOTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3R0bV9tb3ZlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dHRtX21vdmUuYwo+IEBAIC03NjMsNyArNzYzLDcgQEAgaW50IGk5MTVfdHRtX21vdmUoc3RydWN0
IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPiBib29sIGV2aWN0LAo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBQVFJfRVJSKGRlcCk7Cj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgbWlncmF0aW9uX2ZlbmNlID0gX19pOTE1X3R0bV9tb3ZlKGJvLCBjbGVhciwg
ZHN0X21lbSwKPiBiby0+dHRtLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtaWdy
YXRpb25fZmVuY2UgPSBfX2k5MTVfdHRtX21vdmUoYm8sIGNsZWFyLCBkc3RfbWVtLAo+IHR0bSwK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkc3RfcnNndCwgdHJ1
ZSwKPiBkZXApOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1hX2ZlbmNlX3B1
dChkZXApOwo+IMKgwqDCoMKgwqDCoMKgwqB9CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIFN3ZWRlbiBB
QgpSZWdpc3RlcmVkIE9mZmljZTogSXNhZmpvcmRzZ2F0YW4gMzBCLCAxNjQgNDAgS2lzdGEsIFN0
b2NraG9sbSwgU3dlZGVuClJlZ2lzdHJhdGlvbiBOdW1iZXI6IDU1NjE4OS02MDI3CgpUaGlzIGUt
bWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlh
bCBmb3IKdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIEFueSByZXZp
ZXcgb3IgZGlzdHJpYnV0aW9uCmJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5
b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2Vu
ZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy4K

