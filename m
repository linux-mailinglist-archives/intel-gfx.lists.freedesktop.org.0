Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A23748142
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 11:43:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB2610E33F;
	Wed,  5 Jul 2023 09:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C3A10E33F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688550233; x=1720086233;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DFIbfN7autt9Q1Hdtxfs4F7AizOgwZ/63Y19MfOB8Sw=;
 b=N8wR/PjBM5hnu2WK85NPdTKqGfADK5PT98+9KtirOABlzSukpGWmiLk5
 MFozDR2NbaGWwkmEOq5vux04DDUTxdHeCFPvGKoDiBeA4d/rb/FwmCCjw
 6FlOc+ADzmuYoSfXkzbGVG4og+Ylr/4XliQVk8LsdaY0NnIA3o9f0f84g
 7R7oUqF4epfULQsB7OxBCfLb612ZBWBOLpmq8Wct2EXivqYDtmO7tRAbm
 5vLfWw5g+ks/3JNRu9mDq/AWKUem+FTff6gy30BDsFy3vXYq+K1JmD+Da
 S54XhrKtNe30c7QmPa4OvDCu3VzX/ATmU94TbDBBtSZ+8ElE+v7ugMdgY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="363328674"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="363328674"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 02:43:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10761"; a="748660414"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="748660414"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 05 Jul 2023 02:43:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 02:43:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 02:43:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 5 Jul 2023 02:43:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 5 Jul 2023 02:43:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gauz3eXMkvh5pIiJDKqaypM9ts4/IHlnHJo2aBxXoRSFEhtyVkQuyPhg4Mce5URjZgdofWC2OUmXd1Ge3Ztyw9GFodMIeNElj6DMPwv3nBRaV7+9bHuNCIcxFiA1c8T8DEJCeth0hYcuB38JM2NZU1qVeH5QwvZhcMmUL4uWxBaWJY+OZfG+jrUdIilWD0+Nmpso2jN7ncfalmOmZ7HdUOmSPtn1x8Ree0W/fCYpgYbxgLWVSTRF5Du0p9LqMsfQQ8kv3dUxskMuscUU5xS+Kr8bMI2ypqdyw6U+/+EGubtKBMOHiwQKOunJC7nYPBkbzvAeKecur9CHBxEr6zOxqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DFIbfN7autt9Q1Hdtxfs4F7AizOgwZ/63Y19MfOB8Sw=;
 b=MDiFavdlkJgKob3FKjRz6MT6GDG65So4g1DcKgVEt+PEvlGsako7ZJnx3fC5m0KAC1wrB99L3/WvUrcEyo/Onl127xFDJqC0nf0VlFItM3aWPoBrwa6k4coPjAk+zA6giq7V2lLQAJAJ/H6CmJ27KTYd/3TlM9CmIslYD7X2wJWB7TuQn7wTsUHJWxEnQCtBbBDL8W1+aBFXFGTA6a4kHe0H2QJ3CcFqnROFuwCEHhr/vrAPE8d9Z+7vHoQMi/xjJN7/UsM45d/hfT86rc2aqVQ+SBn1VfWubM1g6AcUekqmKQQoKmXSJrDHCadgAvlevrExsQfXSgsHI8PdgoAp1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS7PR11MB6078.namprd11.prod.outlook.com (2603:10b6:8:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6565.17; Wed, 5 Jul 2023 09:43:29 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448%6]) with mapi id 15.20.6544.024; Wed, 5 Jul 2023
 09:43:29 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 01/19] drm/i915: Constify LUT entries in
 checker
Thread-Index: AQHZmKtGZHPPOdUEZUKS0fqILGOnU6+rGLFA
Date: Wed, 5 Jul 2023 09:43:29 +0000
Message-ID: <PH7PR11MB5981B9C50CB210A70DC063D3F92FA@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS7PR11MB6078:EE_
x-ms-office365-filtering-correlation-id: b4f2f2c9-bf50-4a01-c0fa-08db7d3c49c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hjRjS1P2t093ksrAxoZ08BAQ719KAalcc289Na3jA0Drl6oZQjsUKxyftiMdZs0L2yhOcmX+oKN9fU3yBsgtEp8H2HWyam/7kheQL3CTdmztdgdVq/akdqwmDut7CLCHdfSdstiFcSV9TZOt89vCm0KkDD/Y0LGSu4i/pBOr+YwfCs3MRO1xyg5UY7Tp7GxcxbBq26SXxeG0UJqD5i4isGNMhK8+miR4qY51ajgnFPx2zKvP8Xlx+6YdIDEmbfCNxsZ4Jr8zOcGxKUAVI4sB9HyKyBgX+zhG4UmyJSQ5g0alx/YJti6NeODc0LuN8XbZblltEymtxCFpOl7/tjEIi1oLctwRvJqnVJiiC5vH2sYq+fTCcZv32LWejCm0m+XEC+yGETtb1odsuS+xd6IdqLE4+7YLddulVj4HKv0LZzWFBrnZiPAgI2FuWOItSU0BLPFXidyC4mij8ZSvJeH++mBtUpvmgaCSpZv0hA6cYXWdHHiqadEnxL5VBFKQO7uQxyVgVGgWLtGSI24crkMD9w0mj+c/kqy5G7GaUShoT9jtDeYUB/4so34XMpcOK8YdGmLLv8NURcdzxNpJukpe0VLcz06l9bQwpC10uVOOa0lAIoNxjz6m5k4ysXEKBFxW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199021)(8936002)(8676002)(2906002)(55016003)(76116006)(52536014)(5660300002)(6506007)(53546011)(55236004)(26005)(186003)(41300700001)(122000001)(7696005)(82960400001)(71200400001)(66946007)(33656002)(66556008)(66476007)(66446008)(64756008)(316002)(83380400001)(110136005)(38070700005)(478600001)(9686003)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUN0TG5UYUIwNGNuNmczNHdLL1hKMjVwK0VZdER5Y3BsZWFFZ0xLWlJlblRJ?=
 =?utf-8?B?QTE1aFNwKzBYY3oxVUhISXdVL1lWL2l2MWNuS1NVellFa1ppUFprK2Y0WHYv?=
 =?utf-8?B?SG1JZ0lxdU4vVUFJaHErdTRiRUlSM04vL2YwV2FBb0FQLzdUdllDOFVMc0lq?=
 =?utf-8?B?TzFncGszQ1MvdXYwQjUrRFVuaUNsVWVpMjcrSGRPV0VEbk43enlscEVNdmU3?=
 =?utf-8?B?VUwya01pMTR6c0dYYUxvSllvVmRYR0ZhaitESFRSWDl0ZkU5eDlzZWJTUlBn?=
 =?utf-8?B?WHBDenVhNE03Y2RJcGw3OWdNN1dKekJWbWtPRWwwVXlubXAzdUdKSmY5YWhz?=
 =?utf-8?B?ZStEQXBocksyU01iWGlxZ21hMEhwZGNUd1dWbDQwTFF6U3lVenBBSEkzSm9U?=
 =?utf-8?B?K1Yzczc5cVBjQXRZVXhWSk1obXdmeE9EcUpuNHpvcHBtK0JuSUVhZW5YRis3?=
 =?utf-8?B?VXk0MmlJR3Q4R0JIWVVYRXIwOERXZFRpSjVkWnIzTUxxYmpZL1hMSXh6cmJm?=
 =?utf-8?B?Z0k3cWh5Z2VOcVhXekxwODgzQWwvVFZiVnNscUdXeVpsT0NaQ2g4WTBHZUEv?=
 =?utf-8?B?OUxkazMvbHBOVVl6eGNrQlE3UTR0cGJydEdlSnMvOHRoM2Iyb3FtcXdRclJ5?=
 =?utf-8?B?am83OGdPWXJ0WE5URlE0QVZvaU4vZ1ZDT2wxcitMV1FMTWxrVWd2T1Q1QzQy?=
 =?utf-8?B?ZFBmZmcreHJQd1l6Z0xsc04yUmsxSVZESTRpaTVjbEJjRXlldUFZeFhWdTV1?=
 =?utf-8?B?UmhZeHlQcjJGdGlIRWw0cUt6TktQN0tOWGR3U3BiYkdrVS8vVHA4SEhDdWUx?=
 =?utf-8?B?VTJTY3VLVi9LSnRIWWg4dnlvVmwvQ05ib09XWUhQeDRZVW9IZ0ltV3czK2RF?=
 =?utf-8?B?NFFMRFZNWklRWEM4emRxK3g0dnBEWEdNeC9ZSjdSM0pVWWNtTG05Vm5CamRF?=
 =?utf-8?B?ZVdhZGprOEYwdTBwRy9Vd2lialRCUm9RYmJwcjREM1VYaVU0VEs5SjN4Vkk5?=
 =?utf-8?B?Q3g0U2ZraCtvb2w3L05CeGdQc3RPeUhZQVJHaFdlcVBLWG1FSlVnL1Z6M3lp?=
 =?utf-8?B?NUlRcm1jbWtmRTNJUHpaZ2tpcjVTMENhL2hRbmMwWURETlBTaHYwZGRMVVhH?=
 =?utf-8?B?NzJmN1NVcmh6dU56dVV0c1lVWDBuU2xPdFhVNXU4S0ZmM01DenBoeDY1Y09x?=
 =?utf-8?B?MmFTcnZTdnFjRXlQL3dLZmpqVGkzTElvSmp5MWdpMkhRN2F1eUFQNmd1V1JG?=
 =?utf-8?B?YnZkMWpsd0lZWmUyRkdsQ05zcVBudHNkVUE0b3E0SktIY2RISENuNENBWGVT?=
 =?utf-8?B?NGtDSnlYVStpUEhjZFdmYUJtUHpTYVVBTXQ3WS9VczN5cDVQUXRRdk9PdGdm?=
 =?utf-8?B?a2tzTjNOWGdRN2I1L1lzb1FaYkVXU1ZZcHNmeXVsK0RSQ1J6U0JWN05USWVi?=
 =?utf-8?B?YzJJdmdmZWE4eDVpUDd2bDh1ZWZTUVdHOUVKemtiK2c2RERyOG45MGxlWnF6?=
 =?utf-8?B?MW93QWhpT25ZNWFXLzRDNEVna09vNEY2SDNETlR3dWpzNWFzeFJpWUpUYWcy?=
 =?utf-8?B?bVUyUngvTXlxY01tRmtJU0MrbFZ0QjlyME5XTW9CbzRvQzBWcEorYnc5WGpa?=
 =?utf-8?B?TUdZUEdwYWYrZ3cza3lyYWlYamhEdEE1SmU5NDhuRm5EZ3hKWVl0RUpoL3Ar?=
 =?utf-8?B?R3JrRXVEZ3loamhBUVFGVktuSkRvdzNSdGhNeFIvbkZLcEQrQnZYMmQrcHAr?=
 =?utf-8?B?K1cyeUk2OTlOaE0xM1c1ZnFUQVlsK3NkUkZabzVYYVRiOEo0SUtzTklZTndL?=
 =?utf-8?B?NVdIR0I1K2tUdHdkRHlZUWp2MFh3U2Zyc1pIeTAyeGJ4aWxseVJsY3MvY3RO?=
 =?utf-8?B?MXA2bExvL3VUbVpMcXk0ZWcvb0pZM081NTdjL21zalRocUV4L2QwcC9PeURo?=
 =?utf-8?B?bUZWdzZmM2dDbWRkekJxQVVrMjRMQWZCSjJrbDJPdTdlTU5LRGtaNTRPWWRl?=
 =?utf-8?B?U3hXdWRpNHhldGlOVUtzZWVyL2dLd0NDaEZQUHlubWNmc2ZTV2pDR05TRk5S?=
 =?utf-8?B?Y1NYUmwzTG5GbnRnSjFoRVIwc1diaEtmZDJJTU5ZUWhjMm9OL3QwS0hTcm5D?=
 =?utf-8?Q?EBYJ32RI8KDe6bNYzdvVeoqC0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4f2f2c9-bf50-4a01-c0fa-08db7d3c49c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2023 09:43:29.1735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VyRBK4OFjda+enxhIZopZWIQcJxjmUT8N4dXUPl5RS6s7t+mGBl1Run19tenvVTknx5321rWxeySJ3Jlug+hjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 01/19] drm/i915: Constify LUT entries in
 checker
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAwMS8xOV0gZHJtL2k5MTU6IENvbnN0aWZ5IExVVCBlbnRyaWVzIGluDQo+IGNo
ZWNrZXINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IA0KPiBUaGUgTFVUIGNoZWNrZXIgZG9lc24ndCBtb2RpZnkgdGhlIExVVCBl
bnRyaWVzIHNvIG1ha2UgdGhlbSBjb25zdC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdl
ZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAxMCArKysrKy0t
LS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBp
bmRleCA4OTY2ZTY1NjA1MTYuLjJkNTY0MGFhYjRkOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAtMjg0OCwxNiArMjg0OCwxNiBAQCBz
dGF0aWMgaW50IGljbF9wcmVfY3NjX2x1dF9wcmVjaXNpb24oY29uc3Qgc3RydWN0DQo+IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJcmV0dXJuIDE2Ow0KPiAgfQ0KPiANCj4gLXN0
YXRpYyBib29sIGVycl9jaGVjayhzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MSwNCj4gLQkJICAg
ICAgc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDIsIHUzMiBlcnIpDQo+ICtzdGF0aWMgYm9vbCBl
cnJfY2hlY2soY29uc3Qgc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDEsDQo+ICsJCSAgICAgIGNv
bnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQyLCB1MzIgZXJyKQ0KPiAgew0KPiAgCXJldHVy
biAoKGFicygobG9uZylsdXQyLT5yZWQgLSBsdXQxLT5yZWQpKSA8PSBlcnIpICYmDQo+ICAJCSgo
YWJzKChsb25nKWx1dDItPmJsdWUgLSBsdXQxLT5ibHVlKSkgPD0gZXJyKSAmJg0KPiAgCQkoKGFi
cygobG9uZylsdXQyLT5ncmVlbiAtIGx1dDEtPmdyZWVuKSkgPD0gZXJyKTsgIH0NCj4gDQo+IC1z
dGF0aWMgYm9vbCBpbnRlbF9sdXRfZW50cmllc19lcXVhbChzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAq
bHV0MSwNCj4gLQkJCQkgICAgc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDIsDQo+ICtzdGF0aWMg
Ym9vbCBpbnRlbF9sdXRfZW50cmllc19lcXVhbChjb25zdCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAq
bHV0MSwNCj4gKwkJCQkgICAgY29uc3Qgc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDIsDQo+ICAJ
CQkJICAgIGludCBsdXRfc2l6ZSwgdTMyIGVycikNCj4gIHsNCj4gIAlpbnQgaTsNCj4gQEAgLTI4
NzQsNyArMjg3NCw3IEBAIHN0YXRpYyBib29sIGludGVsX2x1dF9lcXVhbChjb25zdCBzdHJ1Y3QN
Cj4gZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IxLA0KPiAgCQkJICAgIGNvbnN0IHN0cnVjdCBkcm1f
cHJvcGVydHlfYmxvYiAqYmxvYjIsDQo+ICAJCQkgICAgaW50IGNoZWNrX3NpemUsIGludCBwcmVj
aXNpb24pDQo+ICB7DQo+IC0Jc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDEsICpsdXQyOw0KPiAr
CWNvbnN0IHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQxLCAqbHV0MjsNCj4gIAlpbnQgbHV0X3Np
emUxLCBsdXRfc2l6ZTI7DQo+ICAJdTMyIGVycjsNCj4gDQo+IC0tDQo+IDIuMzkuMw0KDQo=
