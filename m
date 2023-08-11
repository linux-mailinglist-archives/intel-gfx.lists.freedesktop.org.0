Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE6D778701
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 07:36:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1375B10E043;
	Fri, 11 Aug 2023 05:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C67510E043
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Aug 2023 05:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691732201; x=1723268201;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5WzJCWLi9t9Onyz8ZoS0ElGFEzqEfnrXK090zpryrjY=;
 b=WTsEPFicT1ve/mfen0odyC4IFj4StjBdejVzLAk5bnYXnmV7xFtecCWe
 /2DFbdIs77APr9AvdOMO/ZAs4lUyo4eRbKc9RQStv1XV/4cPE5u98bLoX
 BEz+QdIY5nsw51bAObgjzCj5b/8xzJt5B/PQsgW3nD2QuI3N858wITMiZ
 LwVHU02to5lf6i8F3jde2TADT9hZIRP82lTEysYuB5VN5XDA5yGWDk0I2
 SL8RjxjXJ2CMw+2+doxAccCqIHwyBDu29osg7VCzNcr/AEFOKU6GI8F3V
 7U7R62ye5fSCudYbTuwFnHkmLgwDIkySbowly3AVg36SK7OG3ZoTO7Pyw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="356565936"
X-IronPort-AV: E=Sophos;i="6.01,164,1684825200"; d="scan'208";a="356565936"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 22:36:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="726123898"
X-IronPort-AV: E=Sophos;i="6.01,164,1684825200"; d="scan'208";a="726123898"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 10 Aug 2023 22:36:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 22:36:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 22:36:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 22:36:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 22:36:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWvyVlA9qKX4Kig3Nk5jFPADuCjKR5g3l+8oBzakxDpPblZLeAtGGv4NTXJIaeNmPSBRSMcpwnScoTzNiffpxYgpUCpemxjCPXTOfM7/bDBVn3lc9OgW3Z1C7ENwJm0KghX+/kuGjyR72pRCcH3ealAjH0UOPFgBJH3SQ7OVdWzlPKydDaClDXdsfMF/gHwStKaQJiXMkj88EYPa9pRGNQ1IbJ9DRzHVh/OuFJInE0gineB19pg+Zt4+ouCRrNxrDiyrq1p4Ej8RNqxSKvgFHBZXkUMO6kZFwpuYnXfnf5C4JQmAySn78QoGm0XvajWetrTf/nNppWke7OrPHHfFNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5WzJCWLi9t9Onyz8ZoS0ElGFEzqEfnrXK090zpryrjY=;
 b=jR1CHUAq7Xs/jpFZKRHIAftNctmNnNeKs/7XAzy/ZNwWuuJ31325pvNUgP+c1d/edb4SxTpS0QQPVATKAULZ9JpCydGENKFUNSelk/zySnfyf/IuvtH+QBM01aFixbESKjsRP7pfGeWrZMtnu8fV8nkefeZ0KwGNxfNm/+VWsnohFcMGKGIPS/mjU1owu/1Bu4SOTtw9/I2NNeZ0vWrGH5hSSvqx8hYINJLXN05f4W6WjuqmIsWDqFLleo/bc6uWjo6Xajl9Mw6fYaTF+Hv7vmGCfdO86hcngvJMa3r5zrEf4SsZdocrwFrLSZVCNyZLWdn5p6lUq1H8yl2lfoAKPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by BL1PR11MB6003.namprd11.prod.outlook.com (2603:10b6:208:387::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.20; Fri, 11 Aug
 2023 05:36:16 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::ac59:194a:b2ac:11f9]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::ac59:194a:b2ac:11f9%7]) with mapi id 15.20.6652.029; Fri, 11 Aug 2023
 05:36:16 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Manasi Navare <navaremanasi@chromium.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Dual refresh rate fastset
 fixes with VRR fastset
Thread-Index: AQHZyxkbWuMV6AtuP0yChFEUW9Zk5a/klEMQ
Date: Fri, 11 Aug 2023 05:36:16 +0000
Message-ID: <DM6PR11MB4204BD9DFA4797CE840DB0338910A@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20230809232646.1947120-1-navaremanasi@chromium.org>
In-Reply-To: <20230809232646.1947120-1-navaremanasi@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4204:EE_|BL1PR11MB6003:EE_
x-ms-office365-filtering-correlation-id: 505ad874-6392-4656-1ce1-08db9a2ce1d8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nAKifnjxYRvSTLnDIG8tZKh8wQWAxPuvgyTqCz7wClOSkxX6PYvglIoL022iFjIn0HjLxDCTLP/QwOPfKra7NmZ1oYuL/Us5X/nHDoKDyfKbAUkbeloogjsp29qZji91LldWkbTrruZFR8bdh+2fG0vDpey+fWYjHjIuqrp1VMw+4xnIHpWEpQa1eYBNiAOQWAwbSERZ7yhWsea7GulmHKWx49TxmZe3PQMeIINCMott3Ju/ThntRnXBtWik8APS/Z0n6X5axHVoP3dV04b06OLa8hiwg/OYn+llsv8JdF2KpWSO3cHw9GtF7072mnndFsx4pTG7XFAal9mDAaXcL6t5Swtm/uSu9czLtHGUXv2kh3q3flajgtyBFxNRCjZtCcewn/qK1/NWRSZSuTyKM8hJIpxAo84hBImi8+QtkGVHU0GbGvCMiUtwaMERLJZ3xBcBMEYyG5m1gEtKkav6cV9S6+J0ccU2IivYXG+V2T0Squ2+nczQck6XqNBwoIsIXVwsXP9uxDALwk0J8za8o/eYWhD7P2WkFy/0bvx1X62n62n516vIuNTY34kNtAo5SI3JQG5wqoylBJrh3KdxnxJZjMAqdw8A4+0mFC2jrXU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(396003)(39860400002)(136003)(346002)(186006)(1800799006)(451199021)(9686003)(966005)(478600001)(110136005)(71200400001)(7696005)(66574015)(54906003)(83380400001)(6506007)(53546011)(107886003)(26005)(2906002)(52536014)(76116006)(64756008)(66946007)(66556008)(66446008)(5660300002)(66476007)(4326008)(8936002)(8676002)(316002)(41300700001)(55016003)(33656002)(86362001)(38070700005)(122000001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1RFRjl1SExReVNOSDhFZTdKV2dEbFQ4V1lOMkZ2elpsN3BmQmRnYUJlakFY?=
 =?utf-8?B?bjBOYjVGOENBNzd0cVgvMU1JbVNxeEVVVUxnTVFoQVo3dmhBL3U5UFgvZmQ0?=
 =?utf-8?B?UmpRK0gwZW14d3ptK3VRQ3JWU0J3bldHV25NZ1hQUHoxdmpsSjVWcStzVCtw?=
 =?utf-8?B?cWhnbFl3ajJzVzZlVHpVcWFNS3VMOWdTeG9odFRwdFRINHVCcTYrNWc5ME5J?=
 =?utf-8?B?ZEQyRGF3end5U0FVYjhJYzBPd0dQckE2aDNDQUxXK3dsTFZTbDdhend3VjM4?=
 =?utf-8?B?OFpGb1IvZ0FTVlNQdS9VUkpKbkFmekJlRG01V3RoVVhXaU1LOGRqcTVpaGtB?=
 =?utf-8?B?VWkwNzRRdVNSNTRwRHlRVVB3VERTc2d2L3JGVXE3WEg1U3NjWUx5TTJSakVM?=
 =?utf-8?B?eTl4dmo1TWZ5K3dhSHFESE95bGprdXBSY04vbmpJcG91ZXc2cHhFRzd6dGV6?=
 =?utf-8?B?RlhHOGlnaDNSYVNhRmwzZTc1UDRWNlBUeDhsYld6VWU0UStzV1p6RXVmd0I2?=
 =?utf-8?B?K1FGRkJzTUl5Mk1GUGhhS3Q4WEo4QzhLNE5qYmxiNTVmbzBuWnlCQzVaVCtN?=
 =?utf-8?B?eWZNdE5nS3ZPVGZRL1ZPamM4b3ZwTnZhcmlNWjdOOVE3V0JRVnVWTE9IMDlv?=
 =?utf-8?B?TFVlcEFaVy9aRE10ek5uMnFCOGpWSCs0UUJTaXl0YVhoM1JQZ3R2VUJ6ZDJv?=
 =?utf-8?B?U200TDJnTzY3YVBXZHVaRVlkNWtHSW9EbFRaak8wV01vRllXQ0lSTWxhb0pZ?=
 =?utf-8?B?dldZQ3VBK0doeUdHOWs2aGZoV3hiQ3dxUU54UHozMjRGVVI0OXpVYVRpeGZL?=
 =?utf-8?B?OFpZNjZLNEdkN0tmTDBMenp0NS85YkhiVXZQeTZ2cUJwOEwrWUlIMS8vVnRN?=
 =?utf-8?B?RXZRd2JEbkVZM0ZHZ3RFakVMR1F6T2dMTjNJcHdlNlFnS2llWjhkR0Y1Um9R?=
 =?utf-8?B?WUY5T3RoTFlwQ3oxdUtpN1pXbDVBa3NUcFo3MVRlcEx4d3VCaWQ3MnI1Mnpa?=
 =?utf-8?B?ZmNFK0w3RURqbjdyMzV3K1JoSE50NnlIY1VFc3d0QzM2ZGhDVXNCWk45Rlo3?=
 =?utf-8?B?a0dWNW1GVDBta2NmZzlRL0hJSitsd0VuazRsVk5vZ1BNSzgxT2YyVlJjN210?=
 =?utf-8?B?VzNpVU54Q2pyYnd0c0hmdlJON05Kak0rbFlyc2NoMENObG1oWlVTbjBXbk4r?=
 =?utf-8?B?Qm1IUUNEWGZlRnRPVHUyVEE5L0Q5SktsbHB1K1Q5QmN2RzJKRk5yOEJuc21W?=
 =?utf-8?B?NU1PSW5Gd0I2bnBxbFJ2RU9oYTRsRDdib2M2VHorRjYzSTU3UUdsUElNdS9E?=
 =?utf-8?B?dks5em5xNWVqakFiMVgzdHVmcC84MndlSzg5Q3poTFd0N085aUJHNVFTeXhU?=
 =?utf-8?B?emxCUks5VkhoVDJvek81c3dWaFB6N0VwbHVnWkRkMEtnVlJMdkhuQzVHUHcw?=
 =?utf-8?B?bTJKR1RzaDNYaEliVmd6TkVlbFl3dUxpeXJoUHJmWDdwRTU5YTZCVHFxeWEr?=
 =?utf-8?B?c1pXeGsxcFhVbGVWdmtUeTdNM3MzMXBCL2FBU2k2Wk43dG51R3luald1WFNv?=
 =?utf-8?B?QkN4YUxHNFE2b0I3S0lkVU1lazBXWkRQay9CcXYybVd3d3g1Mm5Qa09KVU9O?=
 =?utf-8?B?OVB4NTVFd1B0eE9Nd3lJOC9FaDZDSzlCU0VRUm9jazdFamNjNWZXUzFHK1F0?=
 =?utf-8?B?ZGFsZ0NSa1VOSHg2SHJXMGdGK290WUs4eGgxRlF4OE5iVVN3eEpySGw4R2VN?=
 =?utf-8?B?TTY2d2o0WWdiVUpSWnc2SmpzeW11cVRsT1lhSUUyZ09BdUtrTWxaUzZKa0Vv?=
 =?utf-8?B?UktuVmdIbWNOQk5DMW5WYWR5TXpNb0RWa1VsbHJwUmM2b1ZBVklvdTF5SURX?=
 =?utf-8?B?T0xibFVWUG1tZHJydzc5eFJNb05peFg4WTU3YWp6aHBOWlRodHdPUnM4Wk9K?=
 =?utf-8?B?dGJKYlZXZ3g2cmVaTmpVaW5ENXBtSUUxRFZTQ1BjNURFM3RHM3VFbXZSendo?=
 =?utf-8?B?cVRpYndpU3FobEF3N05KZmFRT0xzNkIyR1NBSG44L3poazI0VDA1YnQzM2Fa?=
 =?utf-8?B?V2Z3empNbzErem8zWVZkUkdSMi84czF2bXRqd1QxaG5vRGJwaFU0ZW4vNG5p?=
 =?utf-8?Q?rkF1UBClZZad/hUCXG7gT++/0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 505ad874-6392-4656-1ce1-08db9a2ce1d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2023 05:36:16.0739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vt1r5ETS9po6jCXRvdabDIQ+gDceU1da9mi8GFqCVXgJr4zEEs/zHEsmXwuN5MnsjnXFRDhJnTa1aPbBDaooCZEObEx59ClIywbIyTT1gr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6003
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Dual refresh rate fastset
 fixes with VRR fastset
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
Cc: Drew Davenport <ddavenport@chromium.org>, "Nikula,
 Jani" <jani.nikula@intel.com>, Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8gTWFuc2ksDQoNCkkgdHJpZWQgeW91ciBwYXRjaCBmb3IgdGhlIFZSUiBwYW5lbCB3ZSBo
YXZlIChidWcgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vl
cy84ODUxKS4NCkhhdmUgdXBsb2FkZWQgbG9ncyB3aXRoIHlvdXIgcGF0Y2ggdG8gdGhlIGJ1ZyBh
cyB3ZWxsLg0KQnV0IGRpc3BsYXkgaXMgYmxhbmtpbmcgb3V0IGFuZCBhbHNvIEkgZ2V0IHVuZGVy
cnVuLiBDb3VsZCB5b3Uga2luZGx5IGhhdmUgYSBjaGVjayBwbGVhc2U/IE1hbnkgdGhhbmtzLg0K
DQpSZWdhcmRzDQpWaWR5YQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBC
ZWhhbGYgT2YNCj4gTWFuYXNpIE5hdmFyZQ0KPiBTZW50OiBUaHVyc2RheSwgQXVndXN0IDEwLCAy
MDIzIDQ6NTcgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IERyZXcgRGF2ZW5wb3J0IDxkZGF2ZW5wb3J0QGNocm9taXVtLm9yZz47IFNlYW4gUGF1bA0KPiA8
c2VhbnBhdWxAY2hyb21pdW0ub3JnPg0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRy
bS9pOTE1L2Rpc3BsYXk6IER1YWwgcmVmcmVzaCByYXRlIGZhc3RzZXQgZml4ZXMNCj4gd2l0aCBW
UlIgZmFzdHNldA0KPiANCj4gRHVhbCByZWZyZXNoIHJhdGUgKERSUikgZmFzdHNldCBzZWFtbGVz
c2x5IGxldHMgcmVmcmVzaCByYXRlIHRocm90dGxlIHdpdGhvdXQNCj4gbmVlZGluZyBhIGZ1bGwg
bW9kZXNldC4NCj4gSG93ZXZlciB3aXRoIHRoZSByZWNlbnQgVlJSIGZhc3RzZXQgcGF0Y2hlcyB0
aGF0IGdvdCBtZXJnZWQgdGhpcyBsb2dpYyB3YXMNCj4gYnJva2VuLiBUaGlzIGlzIGJyb2tlbiBi
ZWNhdXNlIG5vdyB3aXRoIFZSUiBmYXN0c2V0IFZSUiBwYXJhbWV0ZXJzIGFyZQ0KPiBjYWxjdWxh
dGVkIGJ5IGRlZmF1bHQgYXQgdGhlIG5vbWluYWwgcmVmcmVzaCByYXRlIHNheSAxMjBIei4NCj4g
Tm93IHdoZW4gRFJSIHRocm90dGxlIGhhcHBlbnMgdG8gc3dpdGNoIHJlZnJlc2ggcmF0ZSB0byA2
MEh6LCBjcnRjIGNsb2NrDQo+IGNoYW5nZXMgYW5kIHRoaXMgdGhyb3dzIGEgbWlzbWF0Y2ggaW4g
VlJSIHBhcmFtZXRlcnMgYW5kIGZhc3RzZXQgbG9naWMgZm9yDQo+IERSUiBnZXRzIHRocm93biBv
ZmYgYW5kIGZ1bGwgbW9kZXNldCBpcyBpbmRpY2F0ZWQuDQo+IA0KPiBUaGlzIHBhdGNoIGZpeGVz
IHRoaXMgYnkgaWdub3JpbmcgdGhlIHBpcGUgbWlzbWF0Y2ggZm9yIFZSUiBwYXJhbWV0ZXJzIGlu
IHRoZQ0KPiBjYXNlIG9mIERSUiBhbmQgd2hlbiBWUlIgaXMgbm90IGVuYWJsZWQuIFdpdGggdGhp
cyBmaXgsIERSUiB3aWxsIHN0aWxsIHRocm90dGxlDQo+IHNlYW1sZXNzbHkgYXMgbG9uZyBhcyBW
UlIgaXMgbm90IGVuYWJsZWQuDQo+IA0KPiBUaGlzIHdpbGwgc3RpbGwgbmVlZCBhIGZ1bGwgbW9k
ZXNldCBmb3IgYm90aCBEUlIgYW5kIFZSUiBvcGVyYXRpbmcgdG9nZXRoZXINCj4gZHVyaW5nIHRo
ZSByZWZyZXNoIHJhdGUgdGhyb3R0bGUgYW5kIHRoZW4gZW5hYmxpbmcgVlJSIHNpbmNlIG5vdyBW
UlINCj4gcGFyYW1ldGVycyBuZWVkIHRvIGJlIHJlY29tcHV0ZWQgd2l0aCBuZXcgY3J0YyBjbG9j
ayBhbmQgd3JpdHRlbiB0byBIVy4NCj4gDQo+IFRoaXMgRFJSICsgVlJSIGZhc3RzZXQgaW4gY29u
anVuY3Rpb24gbmVlZHMgbW9yZSB3b3JrIGluIHRoZSBkcml2ZXIgYW5kIHdpbGwNCj4gYmUgZml4
ZWQgaW4gbGF0ZXIgcGF0Y2hlcy4NCj4gDQo+IENjOiBEcmV3IERhdmVucG9ydCA8ZGRhdmVucG9y
dEBjaHJvbWl1bS5vcmc+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiBDYzogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+DQo+
IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG5hdmFyZW1hbmFzaUBjaHJvbWl1bS5vcmc+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCAxNCArKysrKysrKy0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDc2M2FiNTY5ZDhmMy4uNDQxZDVmM2UwNmMwIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBA
QCAtNTM1Miw3ICs1MzUyLDcgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1
Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsDQo+ICAJaWYgKElTX0c0WChk
ZXZfcHJpdikgfHwgRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDUpDQo+ICAJCVBJUEVfQ09ORl9D
SEVDS19JKHBpcGVfYnBwKTsNCj4gDQo+IC0JaWYgKCFmYXN0c2V0IHx8ICFwaXBlX2NvbmZpZy0+
c2VhbWxlc3NfbV9uKSB7DQo+ICsJaWYgKCghZmFzdHNldCB8fCAhcGlwZV9jb25maWctPnNlYW1s
ZXNzX21fbikgJiYNCj4gKyFwaXBlX2NvbmZpZy0+dnJyLmVuYWJsZSkgew0KPiAgCQlQSVBFX0NP
TkZfQ0hFQ0tfSShody5waXBlX21vZGUuY3J0Y19jbG9jayk7DQo+ICAJCVBJUEVfQ09ORl9DSEVD
S19JKGh3LmFkanVzdGVkX21vZGUuY3J0Y19jbG9jayk7DQo+ICAJfQ0KPiBAQCAtNTM4NywxMSAr
NTM4NywxMyBAQCBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKGNvbnN0IHN0cnVjdA0KPiBpbnRl
bF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywNCj4gDQo+ICAJaWYgKCFmYXN0c2V0KQ0KPiAg
CQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTCh2cnIuZW5hYmxlKTsNCj4gLQlQSVBFX0NPTkZfQ0hFQ0tf
SSh2cnIudm1pbik7DQo+IC0JUElQRV9DT05GX0NIRUNLX0kodnJyLnZtYXgpOw0KPiAtCVBJUEVf
Q09ORl9DSEVDS19JKHZyci5mbGlwbGluZSk7DQo+IC0JUElQRV9DT05GX0NIRUNLX0kodnJyLnBp
cGVsaW5lX2Z1bGwpOw0KPiAtCVBJUEVfQ09ORl9DSEVDS19JKHZyci5ndWFyZGJhbmQpOw0KPiAr
CWlmICgoIWZhc3RzZXQgJiYgIXBpcGVfY29uZmlnLT5zZWFtbGVzc19tX24pIHx8IHBpcGVfY29u
ZmlnLQ0KPiA+dnJyLmVuYWJsZSkgew0KPiArCQlQSVBFX0NPTkZfQ0hFQ0tfSSh2cnIudm1pbik7
DQo+ICsJCVBJUEVfQ09ORl9DSEVDS19JKHZyci52bWF4KTsNCj4gKwkJUElQRV9DT05GX0NIRUNL
X0kodnJyLmZsaXBsaW5lKTsNCj4gKwkJUElQRV9DT05GX0NIRUNLX0kodnJyLnBpcGVsaW5lX2Z1
bGwpOw0KPiArCQlQSVBFX0NPTkZfQ0hFQ0tfSSh2cnIuZ3VhcmRiYW5kKTsNCj4gKwl9DQo+IA0K
PiAgI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19YDQo+ICAjdW5kZWYgUElQRV9DT05GX0NIRUNLX0kN
Cj4gLS0NCj4gMi40MS4wLjY0MC5nYTk1ZGVmNTVkMC1nb29nDQoNCg==
