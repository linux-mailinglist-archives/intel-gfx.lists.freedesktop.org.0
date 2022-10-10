Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 790365F9E7D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 14:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFEF210E6F1;
	Mon, 10 Oct 2022 12:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E96CD10E6F1
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 12:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665403893; x=1696939893;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jvWC9yEvcZNkkZh585KRmKe+sG1vDH1qblh9UGhieBk=;
 b=NKOBUc/Ex2RAuUi8dLlxLvRFRE0hQESIC0Yf/+wH53/EBoBLY9GVWFGD
 OhrcvZaLFv/OMXvXM+5EEyyT5gHbSLG1NVKZwndDYsDb1sqx4gqjlJ6m8
 3SlLovqFxWxIoRpNOiJdJupxNZvAwjmWii3qZEbIyVboexf+Yxkrefzb9
 CJTre+m9tRSA5pepPcS7mm9GcDgpr6iy0CdYeo22JJE4RDF2rWqEXY7nO
 qPHOPhGAgpv8oYxzHiSaO09okxDxZGVsQTCjybXywM1vjS78SttBtCGRZ
 /0RkroT3nfyA64Glay/hFR0ikVidw1lAvXSdJECnQUgp4/VOZBYXDHZRv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="284589151"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="284589151"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 05:11:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="620999138"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="620999138"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 10 Oct 2022 05:11:31 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 05:11:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 05:11:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 05:11:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 05:11:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4ZrG479bHATPck5m9k3Vaa5sdBNT+82KITCo4fNO9nXxyi+HB1Yq0pDDRiCJzm4VS8zUADudUQGhx2W6z5aLY5WEsLUWyxDiI2dVvw51aKHPAUwzbjBrc5k8QmhiGnxP6H8N9UMjFZXfca2NiVs/PiRNHF36C/49KK2HWhrLhl1tNgbFatESmSgpxh7W1toc7xl222sVRyHgBFkzQmNydscYXMtv8IVA85krnvBxOVuNLs65ZNlCEbjFw2/WBd2hPqH1gXFqC5xpyqv1xrNakNAphIuaOh/U1FUUXOSd1DdO+AFmUiJQvg2umH/hCUlm8pKPzZ3ZpzMdolOay90+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jvWC9yEvcZNkkZh585KRmKe+sG1vDH1qblh9UGhieBk=;
 b=nMupscYxyJSj0SQ9Yk0L93PPuYNwsACxIy+mz7A5sM7468Drpvoc0tFYRiKhoVEBFK8IwLjmOHIAU8JBIMiUhPG6UGmNnEpErgiCYfZzd9Rx/T7QuR6Bo5zVdeRebqE4AMrZCpbypOyuO44ZN7KAOGZ65EzdXnQhbiqUr4dd92cvSahBmTOtxEJvm/JhD6eFep3PB33Zzm33JhdZN6DQ/c6YAosOpfadcSnPl2cW0TSpSRUj5XCfWviHMpx/eyg2Hu2vxenpYJ+Zlo6rwgklMTWjUMDVHhdqyiXqAQiYHJ2wQTIrW/iVb/wWBEm2jHlsQ3IrtCZRTcxx6V51bwDprA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH0PR11MB4839.namprd11.prod.outlook.com (2603:10b6:510:42::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 10 Oct
 2022 12:11:27 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::8d5f:f673:eede:6def]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::8d5f:f673:eede:6def%6]) with mapi id 15.20.5676.038; Mon, 10 Oct 2022
 12:11:27 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: ignore long HPDs
 based on a flag
Thread-Index: AQHY3INIK2cDYxJRg02KZztZNfuYWK4HiSAAgAAAsAA=
Date: Mon, 10 Oct 2022 12:11:27 +0000
Message-ID: <5144d7810a4cf11dcd8dfb5ef194511ac81940a6.camel@intel.com>
References: <20221010083447.139768-1-vinod.govindapillai@intel.com>
 <20221010083447.139768-2-vinod.govindapillai@intel.com>
 <18be1fa7-4d91-f04b-f19e-15c360691586@intel.com>
In-Reply-To: <18be1fa7-4d91-f04b-f19e-15c360691586@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH0PR11MB4839:EE_
x-ms-office365-filtering-correlation-id: cadff8c8-d951-4fad-847f-08daaab88f08
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IPiAmXLHILo021wuQFRaPbiOPAAaDm7CsMAwgJyQUIvpDsAjOVJbMS/RxeHw4yR4DlT8EZqYLe7Dz05ddEoELTMoAe+G1h/a37yRJTCyS3i8jtBWWyA81hciICyFjHABchyqg1BOMlWy5b9C2yCoW4+iRJAzWhP+d4FDVvzkCYBTIlU0eb6wz55w4tJAsTWVyZ/9vrHr0Zq9gAlikLcNttDDZrZOn0CiLJb7Z6b0j3zNSks4lmJxlhL5Ouls+pcoSWOQ0T5DLG4aLVOIXhMw2Y/fEX+wltPKVKyjCbB27bSIrEtCeJEjHffjHj7mE7kvzKBppSmCpDSqyx+hwpX3lQpitd7pc5xgbeo8WS3hJMLuaPgkSIpDZmXcy9T5FiO6xFRKebgmq7F+NLYprJ1538SvsVlLdFRbL5IK1S2kucDiBq8a9EI3qYYSZp8ZArccnvdSUd2+NwbJHWWSqoiF76FGwl4XgrcLQ3xRCtcjheNjF2emkQWKIU5KccY2yKju+wU7ecXChyc8dFeRUUaMMipK8zP7gPDaxWUBmupI362w7JGG9lfAIWlBmnwLtVeSeZBanuGT4tflKKM5QS1NOVBP3pO1Z6LVQd6He1i3D3JHco4eRQDZQoyFyKyFnzwzEBSyNLWROARi67bYUZFBrFXHo0+Mp7bYfkljSbsjmjroCgqgI3PNuuEZy6GbJMWZhNLQrjl8If+rJPt547TpGMzrm1Ffykgofqx/zSuakRA887M9gltQ/6mPNDH56DTwArrVkvpTiIPRo6+9jRwGiLRyNqtbVHIHl7/e797Mr4g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(39860400002)(396003)(136003)(451199015)(6506007)(6486002)(4001150100001)(53546011)(107886003)(26005)(6512007)(71200400001)(478600001)(2616005)(186003)(5660300002)(8936002)(83380400001)(36756003)(41300700001)(2906002)(110136005)(38100700002)(316002)(966005)(64756008)(8676002)(4326008)(66476007)(66446008)(66946007)(76116006)(66556008)(38070700005)(82960400001)(122000001)(86362001)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NHpsRFBvTEVsbzRTSklzUW9lQjBKNkhZenZocTRIYmJVSlF6UWxWOFZ5TW5L?=
 =?utf-8?B?bDZBaEJienFwVHEvTDhnYS9QV21VWWwrbFl2YUhLeFJzajJrU2hWa0pHM25J?=
 =?utf-8?B?NEJzdFZ2bFhKcXpZOXE1dHNXaCs4b0NjSnNYK3NwSC9xS1lZZ0JjbnErcUdF?=
 =?utf-8?B?MVFBaFc4emJuTVNTb0hFbERQRmNVL2NUYlUwdjd1WWJwVG5vcUVVbXRyTkZq?=
 =?utf-8?B?MEN3L054SWlKeGJuaDU5d3JCbmliaENhTHA0eGNzYWZjdTlLY3llcWNvbkMw?=
 =?utf-8?B?WGQ1MndzMDAzOWxRNFpid3prSEVlM3ovL2kvQysrYnRRcDB2a3RrOURrK1p5?=
 =?utf-8?B?RVBubFBiNFVGaE5KcWEwaXNBTkVldEN2OUowV1lPSmNIallmeFkxT2wxOU5C?=
 =?utf-8?B?RDJtaTRWSDBtMENWV3AzdXFGWGVoWnh2bDNBWXNOblJDMEIxUW1ubXJtZlZJ?=
 =?utf-8?B?dTAvUFBQUTV0YkFnZUhrYTNlazROdjhjNkJxQ3FPOFB1cnYzVFZlbzJqSk91?=
 =?utf-8?B?a0VkQ3VFZ0FkRkVWT3RnTUw1WGgydTV3QkJrV3ljUlVnbTloNGppcURDUHBH?=
 =?utf-8?B?M1pSNXJxRnVtWFo3U1FvNEl6S0pvOHVxT1FGdGF3V0NSYkFPeHk5N2JDRnRI?=
 =?utf-8?B?eWQvQUVnUkFpRWhSdUtqY0oxb0hZOEZzazAvOTBCamxQQkVRclJ2TTZOS001?=
 =?utf-8?B?dzJGUzhZbUh0WWJNWkhWM2ZoNU1iMlpwOFd4THNpYzNtbjUrdmFWd2dGb0I2?=
 =?utf-8?B?U2Q3UytQLzBhUk9oQkFxWmRsSzFLbFlQOU4vWEpMdi8weHF6ckJMZmVqVkNy?=
 =?utf-8?B?OFJrNTdTNGpiS1M5RTdmeW1MRDhFVFJBelM5QTFhZmU5NTJTRElEeDJXdmRi?=
 =?utf-8?B?V3JLeElVNlNvcUxLenRxNmRScGdFVWlDSkZVRThnNFRmSGJPeWxQQVBQSzV4?=
 =?utf-8?B?Q2RKTTZzVDBnWFloTnN1RFVnYXFYeC9nd201dkpESUEvRktUa0lVK3gxY1NB?=
 =?utf-8?B?aHdGUk9aNithSGY4Vy93TEFoazBhVnZaZDltVjBTR0wyOXdZYW9RMXVLUmZE?=
 =?utf-8?B?cFpBT0JvdVRXcUFnQnRyMlEzdXR4ZFN0NDNsSTd1WEpLaXlDNjNZUWdKQUNF?=
 =?utf-8?B?cnEvWjljcG9TWjFnUVdBRHRMa21LUTlEYlFuSExpUis4WW9BTnRuRzBmK2Jk?=
 =?utf-8?B?STJ2QUM5NUZyUG1kaUhiKzJaTXErMU9hUmJMa1cvMFVZNnpDZDRQQjUrSUtl?=
 =?utf-8?B?c3UySFhJQ0tKMng0R0hMc0dObEVXQ3hVdlZWSmxuY21CeHNPZWJKb2lyN2Vl?=
 =?utf-8?B?dEFrczlNV0ZaQXcxeUFJVE9ZRlRmRDQ2b2k3NEJzbUxlT0Z3YS8wcUZuNjJJ?=
 =?utf-8?B?OE0yVmtjMFN1TzJXamZTaEhseWJVOSsyTGdDdWg2a0cyNWgxYXN6dDJVY3VY?=
 =?utf-8?B?YUcyaVBDNWM0YjJ2T2NsbG9XMklsTWMxaXZ6Nkd2R1hPYUwyM25FQ29INVNz?=
 =?utf-8?B?ZUxjdStJb0hFSC8yaDE4bkZER2VPMWQ4SDc5aWNReno1VERCNnI1YmRCWHZq?=
 =?utf-8?B?QkJiWXEzMk0yZlBaemt0ekI2czZnOWdJWFFyMUhKNlUvbVNUTjVrMVpYYVRD?=
 =?utf-8?B?OUVLSnZUYXhGQVNsWTB1RUhrWEI4U1kxeGI1OXVwSnk3THJiUjlzVjhRanNZ?=
 =?utf-8?B?ZksxUllpZDBvcUdxNXZGRHBXWEJ4VSt4Y1ZOYWdQUzl6bkdpOVhqWjhJMllk?=
 =?utf-8?B?VGd1bUJhcE9JeUpoMXFHOFpBTDdmQTN1OWlMUlRkV09OeHF3ZGR0MDFIa0lI?=
 =?utf-8?B?MDMwSE10emlkbER2dzlMc1g1QTM4MTVLZ05xKzR1c01UUUNEYXZMMWM0M3V4?=
 =?utf-8?B?RXpwVzBOOWZPekdVVnRzQkVnNlIxaDU2OUxQaFdFWWVRalJYQnhLNTIvNFN4?=
 =?utf-8?B?bUZReGRZQnNMbUhwWlNPcVkycjNGdUsxV0UxcmRQd1J3czBjc1dFVmI2QVd0?=
 =?utf-8?B?TGlMc3JpMmVkYURhMHIrWWxLTkhqamVYUWQ1ZUVrOSszcWxWaitVOVNYZHRX?=
 =?utf-8?B?alZkL0w0UDV3NWNQbm1EM0JrYThNdDFUbFMxblBnVDN0dW8zSnptcVN5Tkdl?=
 =?utf-8?B?UGhOM3RwSDAvWG9GaEZhaTV5ZmRiRWRBT1pSN0lteitTUElocXJyTFNVYXJX?=
 =?utf-8?Q?lvHV9KCn3X06Oxb4hX2iH44=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BAA2DDA7625D414591FBEC5278F5DAF4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cadff8c8-d951-4fad-847f-08daaab88f08
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2022 12:11:27.6282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Ccjq4Xb+d5V64WSsZxHqaOsulmG50AhvkLnBYDh6pcljzTp/j/Ot++FGR9B/BWHUhXrBkdC9YJ/HTXv1lx9V9w/rFjRMTg7OFql2cnsMNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4839
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: ignore long HPDs
 based on a flag
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTEwLTEwIGF0IDE0OjA4ICswMjAwLCBBbmRyemVqIEhhamRhIHdyb3RlOg0K
PiBPbiAxMC4xMC4yMDIyIDEwOjM0LCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdyb3RlOg0KPiA+IFNv
bWUgcGFuZWxzIGdlbmVyYXRlIGxvbmcgSFBEIGV2ZW50cyBldmVuIHdoaWxlIGNvbm5lY3RlZCB0
bw0KPiA+IHRoZSBwb3J0LiBUaGlzIGNhdXNlIHNvbWUgdW5leHBlY3RlZCBDSSBleGVjdXRpb24g
aXNzdWVzLiBBDQo+ID4gbmV3IGZsYWcgaXMgYWRkZWQgdG8gdHJhY2sgaWYgc3VjaCBzcHVyaW91
cyBsb25nIEhQRHMgY2FuIGJlDQo+ID4gaWdub3JlZCBhbmQgYXJlIG5vdCBwcm9jZXNzZWQgZnVy
dGhlciBpZiB0aGUgZmxhZyBpcyBzZXQuDQo+ID4gDQo+ID4gdjI6IEFkZHJlc3MgcGF0Y2ggc3R5
bGluZyBjb21tZW50cyAoSmFuaSBOaWt1bGEpDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogVmlu
b2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+IA0KPiBZ
ZWFoLCBlc3BlY2lhbGx5IGJhdC1ycGxzLTIgaXMgcXVpdGUgYnVnZ3lbMV0gKDUwMCBsb25nIEhQ
RHMgcGVyIGxvZykuDQo+IERvIHlvdSBwbGFuIHRvIGludGVncmF0ZSBpdCB0byBDST8gSSBndWVz
cyBpOTE1IHNob3VsZCBiZSBpbW11bmUgdG8gc3VjaCANCj4gbWlzYmVoYXZpb3IgYW55d2F5Lg0K
PiANCj4gWzFdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9D
SV9EUk1fMTIyMjgvYmF0LXJwbHMtMi9kbWVzZzAudHh0DQo+IA0KPiBSZXZpZXdlZC1ieTogQW5k
cnplaiBIYWpkYSA8YW5kcnplai5oYWpkYUBpbnRlbC5jb20+DQo+IA0KPiBSZWdhcmRzDQo+IEFu
ZHJ6ZWoNCg0KVGhhbmtzLiBZZXMuIElHVCBwYXRjaCBpcyBmbG9hdGVkIHRvIHRha2UgdGhpcyBp
bnRvIHVzZSBpbiBDSQ0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8x
MDk1MzEvDQoNCj4gDQo+IA0KPiA+IC0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmggfCAxMSArKysrKysrKysrKw0KPiA+IMKgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoMKgwqDCoMKgIHzC
oCA3ICsrKysrKysNCj4gPiDCoCAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykNCj4g
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2NvcmUuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2NvcmUuaA0KPiA+IGluZGV4IDk2Y2Y5OTRiMGFkMS4uZjg0YTJlNzYwZWY0IDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9j
b3JlLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfY29yZS5oDQo+ID4gQEAgLTE3MCw2ICsxNzAsMTcgQEAgc3RydWN0IGludGVsX2hvdHBsdWcg
ew0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBibG9ja2VkIGJlaGluZCB0aGUgbm9uLURQIG9uZS4N
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgICovDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCB3b3Jr
cXVldWVfc3RydWN0ICpkcF93cTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgLyoNCj4gPiAr
wqDCoMKgwqDCoMKgwqAgKiBGbGFnIHRvIHRyYWNrIGlmIGxvbmcgSFBEcyBuZWVkIG5vdCB0byBi
ZSBwcm9jZXNzZWQNCj4gPiArwqDCoMKgwqDCoMKgwqAgKg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAq
IFNvbWUgcGFuZWxzIGdlbmVyYXRlIGxvbmcgSFBEcyB3aGlsZSBrZWVwIGNvbm5lY3RlZCB0byB0
aGUgcG9ydC4NCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBUaGlzIGNhbiBjYXVzZSBpc3N1ZXMgd2l0
aCBDSSB0ZXN0cyByZXN1bHRzLiBJbiBDSSBzeXN0ZW1zIHdlDQo+ID4gK8KgwqDCoMKgwqDCoMKg
ICogZG9uJ3QgZXhwZWN0IHRvIGRpc2Nvbm5lY3QgdGhlIHBhbmVscyBhbmQgY291bGQgaWdub3Jl
IHRoZSBsb25nDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogSFBEcyBnZW5lcmF0ZWQgZnJvbSB0aGUg
ZmF1bHR5IHBhbmVscy4gVGhpcyBmbGFnIGNhbiBiZSB1c2VkIGFzDQo+ID4gK8KgwqDCoMKgwqDC
oMKgICogY3VlIHRvIGlnbm9yZSB0aGUgbG9uZyBIUERzIGFuZCBjYW4gYmUgc2V0IC8gdW5zZXQg
dXNpbmcgZGVidWdmcy4NCj4gPiArwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiArwqDCoMKgwqDCoMKg
wqBib29sIGlnbm9yZV9sb25nX2hwZDsNCj4gPiDCoCB9Ow0KPiA+IMKgIA0KPiA+IMKgIHN0cnVj
dCBpbnRlbF92YnRfZGF0YSB7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiA+IGluZGV4IDcwYjA2ODA2ZWMwZC4uODdhMGQwMWQ4MDAzIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IEBAIC01MDkyLDYgKzUw
OTIsMTMgQEAgaW50ZWxfZHBfaHBkX3B1bHNlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0LCBib29sIGxvbmdfaHBkKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIElSUV9IQU5ETEVEOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+ID4gwqAgDQo+
ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGk5MTUtPmRpc3BsYXkuaG90cGx1Zy5pZ25vcmVfbG9uZ19o
cGQgJiYgbG9uZ19ocGQpIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJt
X2RiZ19rbXMoJmk5MTUtPmRybSwgIltFTkNPREVSOiVkOiVzXSBpZ25vcmluZyBsb25nIGhwZFxu
IiwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBkaWdfcG9ydC0+YmFzZS5iYXNlLmJhc2UuaWQsDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGlnX3BvcnQtPmJhc2UuYmFzZS5u
YW1lKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIElSUV9IQU5E
TEVEOw0KPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sICJnb3QgaHBkIGlycSBvbiBbRU5DT0RFUjolZDolc10gLSAl
c1xuIiwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkaWdfcG9y
dC0+YmFzZS5iYXNlLmJhc2UuaWQsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZGlnX3BvcnQtPmJhc2UuYmFzZS5uYW1lLA0KPiANCg0K
