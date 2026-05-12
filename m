Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FsKIfwWA2p10QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 14:03:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB7951FBC1
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 14:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CEF610EA80;
	Tue, 12 May 2026 12:03:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ehdY/3fO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342C710EA7B;
 Tue, 12 May 2026 12:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778587384; x=1810123384;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jdUsR+ZlJzEg95KwdqmIQUspgA1s4tppaORwm9LAyBY=;
 b=ehdY/3fOwNoVEo3t+FJfaEOcxZus2mWrW/sxPqMajbDqICN7MMy5539o
 wK1Jlnd4cb1Cbrnb7OxbMleigUjg9C+8+IwNpFyaJ2ljI9YdIYCcwOv0h
 VnRKUzdWVJmI/6pj5ntPXQFjfO/B7kEp3X0aM1ifbAduVkRQ+5OOPqT6q
 0NK1Lm+l1FAagB6SCA6x0/Fcvk2RCHKvGxREsNB7t/6yPZ6RevNKITIHZ
 RyGciCMwrT4k7s5dKZbg4nKZcCTCCP4B6fZhJJy3YcshuugqrgUwOX7dO
 ldTxyoMWOusuzcAXdJKLSdVgwO4yLFBVckv2OQJK/DXKhh8RCl7ko5P9D A==;
X-CSE-ConnectionGUID: 2uMO3kPTTU+px2dfQxLTbg==
X-CSE-MsgGUID: zQYbBedJSQaCjjaZ9I64UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90191611"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="90191611"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 05:03:03 -0700
X-CSE-ConnectionGUID: 3UKSs1QZSDKVKGUHCXBYHw==
X-CSE-MsgGUID: WCuOa60ATy6HS0oqynsDTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="237989893"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 05:03:03 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 05:03:02 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 05:03:02 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 05:03:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BpZiH199JzuESWHUagEKKTEes0UJibKrJ6V16bcL5QXk9Pf9DkGVT+Vcbe2bE0fi25LU41ercwuOqr6fvalVpeKr8KESGqcJ6qYSYDBWGY+RlM+GokIcRcWP4YXo7BcEJc1ZRCgk2MnRkI8vvWVuuiM6KAEL8soaQyNDG1Gi3DG/1kiOAe1TJx6lsNebgudaJ5178tI2XdaYnfBe611iNH12uL51EJxe7cEqy8xjuLIB7zVf9Y9p+S8fzZrzd4E4rn2yVdxSRRpgaRBDACVxt3dmnlaEhpsnAi5tU6k6VvJqaJrZ8aLHm49JueVbyNsg6Rp4r+0gtFBWUwJTGiDp6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jdUsR+ZlJzEg95KwdqmIQUspgA1s4tppaORwm9LAyBY=;
 b=Hvf5ROLgrrCX+AFYQxojxfJvzg/iTjkj6LD4+GM8BpVdrp3LGb85vTt6pQx+gqgwsl58BQzh3yJX+88lLxMVouifArqbv0vRMRTBdquKb8gsErbmPrEj6I1mDlhCHbOkOFbK2t0rGSPOAx0GfgGf5iV6JF+tfbSfYKmV8jVZ3B+lNNMpnzM6cnlNSiTeP0ss9ORfrU0bPQQHdQtIrz7J3CAxCfCoH41G4p8PzZumE9R0A/JL6PG/09D0JeJrXOnFhEkn2ZcbDrEguho4cq1xRMJDLt9K3l8SHibV7wAETFmyiKbfdjjeYRlSNWFYoM31nNciTlCQqKxT79TV/RWsOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY8PR11MB6843.namprd11.prod.outlook.com (2603:10b6:930:60::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Tue, 12 May
 2026 12:02:54 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.20.9913.009; Tue, 12 May 2026
 12:02:54 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 11/11] drm/i915/bw: insert a sw bw info entry to cater
 low data rate usecases
Thread-Topic: [PATCH v2 11/11] drm/i915/bw: insert a sw bw info entry to cater
 low data rate usecases
Thread-Index: AQHc4UHJTgzb1ED2iE6LilqSO8nsI7YKSOOAgAADHgA=
Date: Tue, 12 May 2026 12:02:53 +0000
Message-ID: <d87b96028d085d23407514d2f310bc89eba91819.camel@intel.com>
References: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
 <20260511122816.1235478-12-vinod.govindapillai@intel.com>
 <72b13fe8baa13cd54791b1c4ab9898e4e2c421e2@intel.com>
In-Reply-To: <72b13fe8baa13cd54791b1c4ab9898e4e2c421e2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY8PR11MB6843:EE_
x-ms-office365-filtering-correlation-id: 451d5ade-fd26-428f-5424-08deb01e660f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021|22082099003|18002099003|11063799003|56012099003;
x-microsoft-antispam-message-info: TC01Yh2m+3vJfLdHpbBFpTviIJ3M2MYAxE0M/yEgqbmBSA5T3CDSOMszSv5aSaAODKdvSHZ6eybn/30MTyX9qpn3o2ScXPeUMRzhx4JZ9jj+vlOlSxkIS3eEA7nw2eWgVmgv+KTRAdHzzUxxZnr5mCMx7eFM9Drpa/nWne1VOZ2nAqjyOzPBwf0dD+9UTmlqXSqBAlsoCdXUsc0Y6dgdujLCZPAiu2DtxoUG38PCuEv9cC4SQHpD9IkE4YDrtnWoLAcLfneTyMdmHX9iziwGKkrFaP6jSy/qbBhUjO60PG15BVGtxFjhkOrXIyAm/jvmo7OoEZRXrZhaJAHLFI87/otSuOeAAwhT6HDi+3vU2c+BsTM719yUSdd6Dze7u5HfOFf1Ufi23lzYDmzS11wA0jEAUOl+vYAKUrEOxv08FoEkrnqxLQauGaxyJivPboFiH0VIKBLJp7wtuXGRulJqJufElH0Btrot+VOjK8Kjl4TitMA6GSJoYBvY03eade6+fgXodqy6XnLeY1W/xqaEgfKimFLWKNbun5neI3KePRemtvG77wC1zqogrhKDGe1JczP7lQDUHe9MYrY5fmuLCSoSQlR1reT26tVmrbgjJ3hXmbg2YCClfOyqtQKklK/ubEtmMaSAD44fSP6xPUEbhWsI7fZvDA1lwikeXoqfK8SfZ6gbtdsE0q7NlKLjECtjDfNelSOkfNiS8wnCcqhRGPZxvK7onv/pGoPEUVXAJosy2xgoCQIXHHfkgwpud+wM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(11063799003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S3I0amxBNVg5SnVVd3lwdU0rblhybm5rVmJicXZhNGpTVGR0Yy9ON2tJTjBG?=
 =?utf-8?B?clhpK1E5bjA2YUtlYnMxS2paS3Z1YVJOelVHMVpXdG5iaitZb01wUXFqSmox?=
 =?utf-8?B?aU91d0FqSXJ2Um1PSjBoYVFwbUJEa1MzU0tCRzB4UmVkWEsrZndUOEQ0ZVp3?=
 =?utf-8?B?d3ZqOFUxUm9GYjVvS0ZZclI4c3ExLzdzYkxOT1VIZlZrdFdYclVieFoyQnFa?=
 =?utf-8?B?RUU4R3NWbVBZakttU2RKS0pCaG1ibHoxYndYM1lhWEYvcy9JM0poWExGei9o?=
 =?utf-8?B?RCtKSkwxNW9CQTR6OUl2S2hpaEE0WkRaanZXZ2lxdTFyaVIrNGNldHJJRjYw?=
 =?utf-8?B?TisyS2pNVGd3eGxHekVmUTBTQS8vUzlWb2pBYzNCY0pHQXpHNHdaYTMyemtk?=
 =?utf-8?B?cmRFdjQxVXJUcXZEUEZPOUtiekZmYWg1RHhzRXp5WDVMd2ZseFF4NG8yWXN0?=
 =?utf-8?B?THI5eFhRWUttUDVETllEWFVOUHFBK09QdHhUZjM2SW5oMzE4Z0l4MjUyYjdV?=
 =?utf-8?B?QzR3ZTMxa2g3WE5kenQzMS9uRFNtWkdqS3Q2UVN3czkyd055T0IxdjN2bW5M?=
 =?utf-8?B?WG0rdlhPeFNaL2prWmZpeUVmeE9KR25sK0xCU2tHUGF4dTF1K2V4UDZUTS84?=
 =?utf-8?B?dU9xc1Q3Z01hclhvWU04SE5rOHBFelJiZVRJemxvQnBabFdsaDJsZkJ1ditx?=
 =?utf-8?B?OXBqa1MxRmprZHJuUVo5b28zMTFxRkE5YmFWQ0l4bEZQNXFZNldDU2Q1YkRW?=
 =?utf-8?B?NHRFUXBzTTFEblJRd0pqYWVGd1dWL3doZzNhME4wSWVrQ3VxT1BFaVg1ZkxV?=
 =?utf-8?B?OWdXbC9MakR0cFRDSDkxU0s3NllJRFpaejZsbEZTS3BuYnlmMFVndkw5cWwx?=
 =?utf-8?B?RklGS2NGYXUycU1hNG9tSXd4RzhIS2UrMTRiRmYrM09JbStBNjdJelhwMVZU?=
 =?utf-8?B?ZGF0T0R2eUl4S2QwamJ3QjRKY0Jla1BhVC9oNGpDM20wV3hUN0JvL3NuMFRR?=
 =?utf-8?B?SjJPc0U0eHA5bnlRVjFNMWdJUUVvRE05UzhEZ1RjcUVaQ08rNzNOSGRvOUtD?=
 =?utf-8?B?dWMvL3dDUEI2VWZ4K2hqcVZudVQ0TGRMa0EwYWVOcDdFajhCa1M3WXpJVjBP?=
 =?utf-8?B?dWU0bWZwMklXNW5WME4xTGpScU9YaC85YVc5aVJhWWdiQzlqNE1wTEdQeCtt?=
 =?utf-8?B?TnFkakllekVqQ3NkcnNLNy9wWjMwZ3haY0dPano1UnNUMUlNbXdvU01xOXI1?=
 =?utf-8?B?T3JudmFMb2xTanV0ZHNxZjFmdVltQUR1MDNYb2JsQ3RTbllNUUR4cG5CcW42?=
 =?utf-8?B?cytGNE5JdnRxdUt1UzlsdlQyeWRKRnBxTUFpYmhWR3JlS0EwUkh0Z0pyTnly?=
 =?utf-8?B?SHk1K3ZwVVF4UHdnQUZvWlkxaU5wbHdNU0xKNXQ5eW9HTjZtQ3pnMnRIYU85?=
 =?utf-8?B?WXJEOHBDUDM1SFNXLzBOWFZVMy9WRUpTb3JZM09WbTVXNzFraFp0dlVEdEZL?=
 =?utf-8?B?WitvbTZsVEpYdHUrc2NjTXJSdjluK1VrRyt0K05vKzUzV055T3MxODRVVVI2?=
 =?utf-8?B?MEJ2T3l0K0llWTdWOEhEdXhBeFQvZWtTVDFKLzBnSmNtb1U0VlFiNzUrK1Nz?=
 =?utf-8?B?L1NSYWM0djhSNUJndVdBVkdiNkJXTDY4K0ZxeE90UnN6ZUJhbmQ5Z0JIalVQ?=
 =?utf-8?B?ZXRlRC9BNVJYOW9CcTZROXFNU3djRitlWC9Odk5mejQxSy9JaVF2SkxNSDFG?=
 =?utf-8?B?ZzM1WTFkZzY0NDNSby9GUkNWa3IzSWpRZWZQZE9mVWRmRnp3dHJSUVRLNVJt?=
 =?utf-8?B?SFN4Y0RNQ0JRUml3YU5YM1J6NDFWMjJWSndBUmNxSzVIVmdReEFudnA5NHdD?=
 =?utf-8?B?LzFjTEV1d29IaFpwS3dxWW1JOXNCdnhVQ05LZ1FETEE3RXRMRjVyd0JMc0Fm?=
 =?utf-8?B?VFpZZlRmQW85RXdZeU9VTEord3h2OUhwN0h2WTRjcnNnTEdDWWd0aVVUQWVY?=
 =?utf-8?B?d21DcUNydEJwQ1VDeWpNb3RwdlNjNFpaRUw5Y1FCeS8zbHhYL1F2U3Jaanor?=
 =?utf-8?B?U2dIdGlvU2R3amkrS3d2Ynk4dUpJbHdlck1LREoxMGZGTGk0Ull3VnozTHhv?=
 =?utf-8?B?ZDdqWFBJYlI4UGxpV1hETWZraElRZmpIOGtHTGtxc0wvWWxreTBCSGpSUXg0?=
 =?utf-8?B?WDNlbitONDRJUXBqZHdvUitKUjVaUUttT05Mc0QzcjBNbHM1ZnlOcjhWWksz?=
 =?utf-8?B?ejdFZDg2QTF1NTBtcE1VQWRKU1YyQkROdFRienpXZUFPa3diZFlhNmZ3ZGEr?=
 =?utf-8?B?bjFSUzRZRHlubEh0elBvZ2lNVFQ0REgvVUVONTFjMmhWRlB4YkpqODNDZVdQ?=
 =?utf-8?Q?bNbTqEVjYs5n2t46LJQuY1AjRKLq4RhhhG8AKg6RjZgJE?=
x-ms-exchange-antispam-messagedata-1: SU0ZD9cyKeefFGnafuzevQk8CwHgkyPZEqE=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2686EF659661774982C3C1E2511D3C32@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: I+ZbXZYnSGmfva/Qwz+X1abp42oxu2WMpqqWjQfJglB4OyS13Jk2E4HugA5yfgxzthSjzrzB5xOnOt7UVd2PmVGghs03vK6R5qMKtztjE60Yhp/ONLMjlJgJxkfuLemAG6V93yAexjtXCfBlz25bvIoxRcY9R6B1qQYUmrBO4SvBBL3ptkucMqeh9oKq/w9rTTWZGvrQdg7j34f6V1sOz25D41S9xuljwqaamoKa8IruMRwbOFEOX5wqXUqDbOd70+UHC1gwRhD1g1GhCgAJNjaYoK9S5XlPyag0rTq78Vd515UMzeTBfy8VwMaeqtR5yzAKKGVpeei9P43tittBNQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 451d5ade-fd26-428f-5424-08deb01e660f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2026 12:02:54.0386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gLCv+nVMLhbrqYYJfCpSZK+9CS6Ut8djs7iuYGlTAb26f2Zw0g4mQkKvQne70XIv3sKGH16XecXvYQT7ezAu4qgJNyDLpmE5eyaOGXHocFE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6843
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
X-Rspamd-Queue-Id: 3AB7951FBC1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gVHVlLCAyMDI2LTA1LTEyIGF0IDE0OjUxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAxMSBNYXkgMjAyNiwgVmlub2QgR292aW5kYXBpbGxhaQ0KPiA8dmlub2QuZ292aW5k
YXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEluIHhlMyssIHNvYyBjYW4gbG93ZXIgdGhl
IGZhYnJpYyBmcmVxdWVuY3kgd2hlbiB0aGUgZGlzcGxheQ0KPiA+IG5lZWRzIGxlc3MgYmFuZHdp
ZHRoIHRoYW4gdGhlIG1pbmltdW0gR1YgcG9pbnQuIFRoaXMgdGhyZXNob2xkDQo+ID4gaGFzIGJl
ZW4gZGVmaW5lZCBhcyAyMEdCL3MuIFRvIGVuYWJsZSB0aGlzLA0KPiA+IA0KPiA+IEFkZCBhIG5l
dyBsb3cgYncgaW5mbyBwb2ludCB3aXRoIHRoaXMgcGVha2J3IHRocmVzaG9sZCBvZiAyMEdCL3MN
Cj4gPiBiYXNlZCBvbiB0aGUgZm9sbG93aW5nIGNvbmRpdGlvbnM6DQo+ID4gMS4gT25seSBmb3Ig
eGUzKyB2ZXJzaW9ucw0KPiA+IDIuIFRoZXJlIGlzIGF0IGxlYXN0IG9uZSBRR1YgcG9pbnQNCj4g
PiAzLiBOdW1iZXIgUUdWIHBvaW50cyBpcyBsZXNzIHRoYW4gOA0KPiA+IDQuIExvd2VzdCBwZWFr
IGJ3IGFjcm9zcyBhbGwgdGhlIFFHViBwb2ludCBpcyBsZXNzIHRoYW4gMjAgR0Ivcw0KPiA+IDUu
IEFuZCB0aGUgZGVyYXRlZCBidyBpcyBpbiB0aGUgbG93ZXN0IHBlYWsgYncgcWd2IHBvaW50IGlz
IGFsc28NCj4gPiDCoMKgIGxlc3MgdGhhbiB0aGlzIHRocmVzaG9sZCBvZiAyMEdCL3MNCj4gPiAN
Cj4gPiBUaGlzIHdpbGwgbWFrZSB0aGUgZHJpdmVyIHRvIHNlbmQgdGhpcyBuZXcgdGhyZXNob2xk
IG9mIDIwR0Ivcw0KPiA+IGFzIHRoZSBwbWRlbWFuZCByZXF1ZXN0IHdoZW5ldmVyIHRoZSBidyBy
ZXF1aXJlZCBmb3IgYSB1c2VjYXNlDQo+ID4gaXMgbGVzcyB0aGFuIDIwR0Ivcy4gVGhlIGN1cnJl
bnQgcGNvZGUgY2FuIGhhbmRsZSB0aGlzIGxvd2VyDQo+ID4gcGVha2J3IHZhbHVlIGFuZCBhZGp1
c3QgdGhlIGZhYnJpYyBmcmVxdWVuY3kgYWNjb3JkaW5nbHkuDQo+ID4gDQo+ID4gQnNwZWM6IDY4
ODgwDQo+ID4gQXNzaXN0ZWQtYnk6IENvcGlsb3Q6Y2xhdWRlLXNvbm5ldC00LjYNCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuY8KgwqDCoMKgwqDCoCB8IDU0DQo+ID4gKysrKysrKysrKysrKysrKysrKw0KPiA+IMKgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaMKgwqAgfMKgIDEgKw0KPiA+
IMKgMiBmaWxlcyBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gaW5kZXggOTM4YzAyOTRjMjUx
Li43NDcyNzkwNzVlMjkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9idy5jDQo+ID4gQEAgLTU0LDYgKzU0LDggQEAgc3RydWN0IGludGVsX3Fndl9wb2ludCB7
DQo+ID4gwqANCj4gPiDCoCNkZWZpbmUgREVQUk9HQldQQ0xJTUlUCQk2MA0KPiA+IMKgDQo+ID4g
KyNkZWZpbmUgUEVBS19CV19USFJFU0hPTEQJMjAwMDANCj4gPiArDQo+ID4gwqBzdHJ1Y3QgaW50
ZWxfcHNmX2d2X3BvaW50IHsNCj4gPiDCoAl1OCBjbGs7IC8qIGNsb2NrIGluIG11bHRpcGxlcyBv
ZiAxNi42NjY2IE1IeiAqLw0KPiA+IMKgfTsNCj4gPiBAQCAtNTg5LDYgKzU5MSw1MCBAQCBzdGF0
aWMgaW50IGljbF9nZXRfYndfaW5mbyhzdHJ1Y3QNCj4gPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
LA0KPiA+IMKgCXJldHVybiAwOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gK3N0YXRpYyBib29sIHhl
M19jaGVja19sb3dlcl9wZWFrYncoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4g
KwkJCQnCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9xZ3ZfaW5mbw0KPiA+ICpxaSwNCj4gPiArCQkJ
CcKgwqAgaW50IG51bV9jaGFubmVscykNCj4gDQo+IE15IHBldCBwZWV2ZSBpcyBuYW1pbmcgZnVu
Y3Rpb25zIHdpdGggImNoZWNrIi4gSXMgaXQgYW4gYXNzZXJ0PyBXaGF0DQo+IGRvZXMgaXQgZG8/
IFdoYXQgZG9lcyB0aGUgcmV0dXJuIHZhbHVlIG1lYW4/DQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4g
DQoNCmhtbS4uIEludGVudGlvbiBpcyB0aGF0LCBpdCBzaG91bGQgY2hlY2sgdGhlIGNvbmRpdGlv
bnMgZm9yIGluc2VydGluZw0KdGhlIGxvdyBwZWFrIGJ3Li4gDQoNCk1heSBiZSB4ZTNfbmVlZHNf
bG93ZXJfcGVha2J3X3BvaW50KCkgPw0KDQpCUg0KVmlub2QNCg0KPiA+ICt7DQo+ID4gKwl1bnNp
Z25lZCBpbnQgbG93ZXN0X3BlYWtidzsNCj4gPiArDQo+ID4gKwlpZiAoIUhBU19QRUFLX0JXX1RI
UkVTSE9MRChkaXNwbGF5KSkNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICsJaWYg
KHFpLT5udW1fcG9pbnRzID49IEk5MTVfTlVNX1FHVl9QT0lOVFMpIHsNCj4gPiArCQlkcm1fd2Fy
bihkaXNwbGF5LT5kcm0sICJDYW5ub3QgaW5zZXJ0IGxvd2VzdCBRR1YNCj4gPiBwb2ludCwgbm90
IGVub3VnaCBzcGFjZVxuIik7DQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJfQ0KPiA+ICsN
Cj4gPiArCWxvd2VzdF9wZWFrYncgPSBESVZfUk9VTkRfQ0xPU0VTVChxaS0+cG9pbnRzWzBdLmRj
bGsgKg0KPiA+ICsJCQkJCcKgIHFpLT5jaGFubmVsX3dpZHRoICoNCj4gPiBudW1fY2hhbm5lbHMs
IDgpOw0KPiA+ICsJaWYgKGxvd2VzdF9wZWFrYncgPD0gUEVBS19CV19USFJFU0hPTEQpIHsNCj4g
PiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ID4gKwkJCcKgwqDCoCAiTG93ZXN0IFFH
ViBwb2ludCBoYXMgcGVhayBCVyAldSBNQi9zLA0KPiA+IG5vIG5lZWQgdG8gaW5zZXJ0IGxvd2Vy
IHBvaW50XG4iLA0KPiA+ICsJCQnCoMKgwqAgbG93ZXN0X3BlYWtidyk7DQo+ID4gKwkJcmV0dXJu
IGZhbHNlOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCXJldHVybiB0cnVlOw0KPiA+ICt9DQo+ID4g
Kw0KPiA+ICtzdGF0aWMgdm9pZCB4ZTNfaW5zZXJ0X2xvd2VzdF9xZ3ZfcG9pbnQoc3RydWN0IGlu
dGVsX2Rpc3BsYXkNCj4gPiAqZGlzcGxheSwNCj4gPiArCQkJCQlzdHJ1Y3QgaW50ZWxfYndfaW5m
byAqYmkpDQo+ID4gK3sNCj4gPiArCWlmIChiaS0+bnVtX3Fndl9wb2ludHMgPj0gQVJSQVlfU0la
RShiaS0+ZGVyYXRlZGJ3KSkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJbWVtbW92ZSgm
YmktPmRlcmF0ZWRid1sxXSwgJmJpLT5kZXJhdGVkYndbMF0sDQo+ID4gKwkJYmktPm51bV9xZ3Zf
cG9pbnRzICogc2l6ZW9mKCpiaS0+ZGVyYXRlZGJ3KSk7DQo+ID4gKw0KPiA+ICsJbWVtbW92ZSgm
YmktPnBlYWtid1sxXSwgJmJpLT5wZWFrYndbMF0sDQo+ID4gKwkJYmktPm51bV9xZ3ZfcG9pbnRz
ICogc2l6ZW9mKCpiaS0+cGVha2J3KSk7DQo+ID4gKw0KPiA+ICsJLyogS2VlcCB0aGUgZGVyYXRl
ZCBiYW5kd2lkdGggYXMgdGhlIHRocmVzaG9sZCovDQo+ID4gKwliaS0+ZGVyYXRlZGJ3WzBdID0g
UEVBS19CV19USFJFU0hPTEQ7DQo+ID4gKwliaS0+cGVha2J3WzBdID0gUEVBS19CV19USFJFU0hP
TEQ7DQo+ID4gKwliaS0+bnVtX3Fndl9wb2ludHMrKzsNCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHN0
YXRpYyBpbnQgdGdsX2dldF9id19pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0K
PiA+IMKgCQkJwqDCoCBjb25zdCBzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtX2luZm8sDQo+ID4gwqAJ
CQnCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9zYV9pbmZvICpzYSkNCj4gPiBAQCAtNTk4LDYgKzY0
NCw3IEBAIHN0YXRpYyBpbnQgdGdsX2dldF9id19pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+
ID4gKmRpc3BsYXksDQo+ID4gwqAJaW50IG51bV9jaGFubmVscyA9IG1heF90KHU4LCAxLCBkcmFt
X2luZm8tPm51bV9jaGFubmVscyk7DQo+ID4gwqAJaW50IGlwcWRlcHRoLCBpcHFkZXB0aHBjaCA9
IDE2Ow0KPiA+IMKgCWludCBkY2xrX21heDsNCj4gPiArCWJvb2wgaW5zZXJ0X2xvd19wZWFrYnc7
DQo+ID4gwqAJaW50IG1heGRlYncsIHBlYWtidzsNCj4gPiDCoAlpbnQgY2xwZXJjaGdyb3VwOw0K
PiA+IMKgCWludCBudW1fZ3JvdXBzID0gQVJSQVlfU0laRShkaXNwbGF5LT5idy5tYXgpOw0KPiA+
IEBAIC02MzYsNiArNjgzLDEwIEBAIHN0YXRpYyBpbnQgdGdsX2dldF9id19pbmZvKHN0cnVjdA0K
PiA+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4gwqAJICovDQo+ID4gwqAJY2xwZXJjaGdy
b3VwID0gNCAqIERJVl9ST1VORF9VUCg4LCBudW1fY2hhbm5lbHMpICoNCj4gPiBxaS5kZWludGVy
bGVhdmU7DQo+ID4gwqANCj4gPiArCWluc2VydF9sb3dfcGVha2J3ID0geGUzX2NoZWNrX2xvd2Vy
X3BlYWtidyhkaXNwbGF5LCAmcWksDQo+ID4gbnVtX2NoYW5uZWxzKTsNCj4gPiArDQo+ID4gKwlk
aXNwbGF5LT5idy5tYXhbaV0ubnVtX3BsYW5lcyA9IDA7DQo+ID4gKw0KPiA+IMKgCWZvciAoaSA9
IDA7IGkgPCBudW1fZ3JvdXBzOyBpKyspIHsNCj4gPiDCoAkJc3RydWN0IGludGVsX2J3X2luZm8g
KmJpID0gJmRpc3BsYXktPmJ3Lm1heFtpXTsNCj4gPiDCoAkJc3RydWN0IGludGVsX2J3X2luZm8g
KmJpX25leHQ7DQo+ID4gQEAgLTY3OCw2ICs3MjksOSBAQCBzdGF0aWMgaW50IHRnbF9nZXRfYndf
aW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiA+ICpkaXNwbGF5LA0KPiA+IMKgCQkJCQkJCcKg
DQo+ID4gcWkuY2hhbm5lbF93aWR0aCwgOCk7DQo+ID4gwqAJCX0NCj4gPiDCoA0KPiA+ICsJCWlm
IChpbnNlcnRfbG93X3BlYWtidykNCj4gPiArCQkJeGUzX2luc2VydF9sb3dlc3RfcWd2X3BvaW50
KGRpc3BsYXksIGJpKTsNCj4gPiArDQo+ID4gwqAJCWZvciAoaiA9IDA7IGogPCBxaS5udW1fcHNm
X3BvaW50czsgaisrKSB7DQo+ID4gwqAJCQljb25zdCBzdHJ1Y3QgaW50ZWxfcHNmX2d2X3BvaW50
ICpzcCA9DQo+ID4gJnFpLnBzZl9wb2ludHNbal07DQo+ID4gwqANCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4g
PiBpbmRleCA2NTI4MzI4Njc3MWEuLmIzMWVjNDJjMzI0OCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4g
PiBAQCAtMTkyLDYgKzE5Miw3IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5X3BsYXRmb3JtcyB7DQo+
ID4gwqAjZGVmaW5lIEhBU19NQlVTX0pPSU5JTkcoX19kaXNwbGF5KQkoKF9fZGlzcGxheSktDQo+
ID4gPnBsYXRmb3JtLmFsZGVybGFrZV9wIHx8IERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0gMTQp
DQo+ID4gwqAjZGVmaW5lIEhBU19NU08oX19kaXNwbGF5KQkJKERJU1BMQVlfVkVSKF9fZGlzcGxh
eSkgPj0NCj4gPiAxMikNCj4gPiDCoCNkZWZpbmUgSEFTX09WRVJMQVkoX19kaXNwbGF5KQkJKERJ
U1BMQVlfSU5GTyhfX2Rpc3BsYXkpLQ0KPiA+ID5oYXNfb3ZlcmxheSkNCj4gPiArI2RlZmluZQ0K
PiA+IEhBU19QRUFLX0JXX1RIUkVTSE9MRChfX2Rpc3BsYXkpCShESVNQTEFZX1ZFUihfX2Rpc3Bs
YXkpID49IDMwKQ0KPiA+IMKgI2RlZmluZSBIQVNfUElQRURNQyhfX2Rpc3BsYXkpCQkoRElTUExB
WV9WRVIoX19kaXNwbGF5KSA+PQ0KPiA+IDEyKQ0KPiA+IMKgI2RlZmluZQ0KPiA+IEhBU19QSVhF
TF9OT1JNQUxJWkVSKF9fZGlzcGxheSkJKERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0gMzUpDQo+
ID4gwqAjZGVmaW5lDQo+ID4gSEFTX1BNREVNQU5EKF9fZGlzcGxheSkJCShESVNQTEFZX1ZFUihf
X2Rpc3BsYXkpID49IDE0KQ0KPiANCg0K
