Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B47F36C9E98
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 10:51:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A65BC10E327;
	Mon, 27 Mar 2023 08:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E6410E338
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 08:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679907109; x=1711443109;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YeSU9HlFRhd5W8yvvzeSWQuqEKZc1Urm4HTTgWKjWtA=;
 b=ZzVfpGWo1ewiqPWDg67EItaEAsI4Amd7aGW2N5kSb+WEec+5NUw77Fq3
 plEwNvNZ4aVNivps+nZz56MrbJCA3ofLZy2Pi2m7x+MKIeS45BHk8fIX9
 u/0t8HnCDv03oRLHHZHCL0kbg9CDQwSO8aKAg2MNllQsyjbPd0zW3be0o
 cDsTI4SxinSgIdh1LFSJx8x8ZBP8nI9jOfV6Vn2RauL0lZpfffh8DD1Vf
 sWHdvxiboEy87DbbtueL3Mm3hvuxJM9xv3q3guaJAdOMg99p1fqNyn1VB
 W63yq99X7ts8Yxh/PpGbQvY8a6Gz+MFWO+RkOsnMKF/XqHq5UCQYpL9zR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="320614537"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="320614537"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 01:51:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="772619822"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="772619822"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Mar 2023 01:51:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 01:51:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 01:51:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 01:51:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 01:51:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XKOttfzPLWQJaUfyVHAG2JvACpW37QVApsW2k014/IYU9bfgUJD4CosSkdxx5ZMUHYpN7sfY3XuLumlTIKMlnMbz1RTNi40DFsvIDAXgz0MW1SnBpd5+Fnq3AOZGJUtQMWL8SVMfDayBYHjkGNpZnZal+yJvOQb5UfnVDUYKb25lYqJ44q2bvabvtc6jRyoCFE+RcdxtuDx0b9F0qoSdCOWuCP7trTBiprdaZEdr2zLAJ7npdPTgPYUGzuenSc2btIOVJ0mXq5uThkEvNhPJI6Rtu03fmxQGNYe/TEt+erEJSJBPB1cSkVDHL15Ef4ts0G7i47b1Y4aTNR3+sZ8opw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YeSU9HlFRhd5W8yvvzeSWQuqEKZc1Urm4HTTgWKjWtA=;
 b=QeQA1lf0OyXGRkbCR6UB8KoA4qmF/xjiG0vrvSRmIhDv/68wUzJD6cv7EWKMd2rqLrWlHXikdjs6AHGauSbmqc1nJVyg5cNWFarn5Uzdi/38P0a731VrAZc/LJMTf/ENAiFxOM5/0dRnr+L1WMhJKICLmZuFFku7tWZYaj5FiBMFs5Ly/N9V89ufJBvWKieDw33itDtQTanWLOebKXgcL8yi3A7XrfW8V+vQymafSf0txH+O7UwS6DGUhVHm+U1d1fOGvam2FFId1acjJZnQrjYMWu8v3zuflcDOF9XeSnSJymR7vMVs8n5egDJRmFcVT9smeb8+xbkNcdI+gbl4RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4968.namprd11.prod.outlook.com (2603:10b6:510:39::15)
 by PH7PR11MB7986.namprd11.prod.outlook.com (2603:10b6:510:241::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Mon, 27 Mar
 2023 08:51:46 +0000
Received: from PH0PR11MB4968.namprd11.prod.outlook.com
 ([fe80::134f:8b27:113c:95f7]) by PH0PR11MB4968.namprd11.prod.outlook.com
 ([fe80::134f:8b27:113c:95f7%7]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 08:51:46 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Use compressed bpp when calculating m/n value
 for DP MST DSC
Thread-Index: AQHZYHdMSIrZuSMuNkOEygKETIC5RK8OUciA
Date: Mon, 27 Mar 2023 08:51:46 +0000
Message-ID: <b6f702e4bf46f8fb6f3e15416c20208f6864c356.camel@intel.com>
References: <20230327064217.24033-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230327064217.24033-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4968:EE_|PH7PR11MB7986:EE_
x-ms-office365-filtering-correlation-id: bbd5169f-6dd6-41c3-2cd5-08db2ea07f2a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qKPsith+XF6GBAY8U6jG+gz24p9AwNCobflQGffmPxGWR/YNOOyR9goSfqdw8U3QovMU4XSQv3REq7wQi4JpUeMOYFFY8M+Bd9t+Hfch4Xj+UA2PgXPkW7Hz3jGD6w3K4iq84Z/Ly3np2dOrnjyKTZO38n6dfwSfemmgrxSPPf5HDiDJyXlhDTgxViHHF1qeI4ZV7Zwot/rSh8/2kUtlmM8Mb6NXOJJ6RR14aMoRXBiKlg2yBC/dnGGTsQRlwu8lr3hLbhMB9qEY5iNcDoiFXTLSM2eJe2072a61lXue4DgCd+SA+SYONDLpFWOsRknm89XnOik6sc/NZHUGIS75I8I3kWBAMZn/WgSf/DpN6NYousXThLQcVnoZ45fLlNaPrCuRhpr+AMB7fpihbLNSLYiM4rivl9ZKArYYwkgHxKSLT56kdV6VR01QsuS3hs9iLsNwUNvUwl3Zmo1NTTAkvdHdOceCjBUaAxl9jtM6q59UjLkm1ryVbW5WZmAIpefJdPU2B9lICVPaxDUi9AiKC85ySWPcvR5vjb7VI83dMi6ZYvfq/fvJ7R9nQ3dXKztvMWivIAUP8ILTCEJElDUcAp2pljpOA5aV9ryBl/csusNG50uTDo7H2XVmZHhqnEOA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4968.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(346002)(136003)(39860400002)(451199021)(110136005)(316002)(54906003)(478600001)(8936002)(5660300002)(122000001)(82960400001)(36756003)(38070700005)(86362001)(38100700002)(4744005)(66446008)(2906002)(4326008)(64756008)(91956017)(66556008)(8676002)(76116006)(66476007)(66946007)(41300700001)(186003)(6512007)(6506007)(26005)(83380400001)(2616005)(71200400001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDBGU2d4TktwTkt4U1piWUhNbk13ZjhDQzdRcVY4NEQ3MC95QnFpeDBud2Fj?=
 =?utf-8?B?NUlSbnl6RlE5OTFjcXVuNnYzeHRJMnJobFd2TmNFZHBpRmpkRWlXcWFkWThZ?=
 =?utf-8?B?R2craFJvbW9GTmg5M0dpenI5eWFmbnZyV2UwY0FBYVZsY29RaFd2MVM2NFlV?=
 =?utf-8?B?YVBpb0c3cVBBL0E2dEtsKytqQTFHMjd5Y2lLVFhVVUZNQ1QrS1MvQVJVYnpV?=
 =?utf-8?B?cFNOOWt6VXNQZy9UN01SdHNPZ3VaMnoxUzVUUStYZDJwOENRdEFQRTA5dXhw?=
 =?utf-8?B?SE1QdjVnQjA2KzkvYndoSVUvRGdNMzQ3NnA1UVhTLytzeFVMMTVacHRacERn?=
 =?utf-8?B?L1QraXl2WlpMQ3QvbEVxT1JCazcxaFZiMkY0WjBZNWlLeWlyUUxsTFc5YUJN?=
 =?utf-8?B?L0U0WW9RbXdmYmJ0MittNncyTEtBYS9SY3R0eVhVdzJnaVVGNHozQmtmVTRT?=
 =?utf-8?B?Y1QrdzBDd0RGY3lBaHNTN25NVUdVYjVlQ2sybC9aWVU3aS8zQ2k5YzlsaFRM?=
 =?utf-8?B?Ym0zLzJoc2ppc2xUKzFwN2luNExyelRWWmkxbGNJNXA5RzAwdjlkcm9ZMXJU?=
 =?utf-8?B?QWhTUTA2ZnFVMkEwQTNqaTcrVUxVL040aUw1aFpOeW9xNmh3RVBXcEFVb1BL?=
 =?utf-8?B?c0IzOUtFSitqc09EUU9OWmZXK1BYZENIK3NOOXZWK3pXenFEU0pWTUtWKzZa?=
 =?utf-8?B?cnR2RFNqV2lCSFgxcjhzME16a2ZiUWZIWmQ0ZHlKQ1hyaWNkMWlHT2NlcU83?=
 =?utf-8?B?OW9QTW5vOVByUTl1emlmcVJsVnVMdWE2UU01ZzZKMVdTL3hsbXg2U2xtU1Zi?=
 =?utf-8?B?L1B6alBrRmNNMkMvZG1tVWo4WGFPVUR5MXdiT0JsMTFhZUpOZ0xESHFQY3JZ?=
 =?utf-8?B?dnNLZ0Y5dTFGZ2FJWm1ZYVBhYnZYR0hobktnZkYyQ0k4cjhwbW05WVE4bFN3?=
 =?utf-8?B?cW5zWlRsRE1IMGw5WXE1TVQ2cVdVVDhNVmpUNVMzblVjMHhIOXJLL3o5M29F?=
 =?utf-8?B?aEtQdmdCVno0dGpMQXJCdDEvWWp1SkJKaFdDclJlN2tYdVlnYVFRZzdaaHhS?=
 =?utf-8?B?UnlZN3pHUUh1YmFjbUJZS0NwK3djb3ZCb1NhSXR0NWNnR2gvcGF5L3g0MVVo?=
 =?utf-8?B?VGJRMlNTVTF6aGhzUDVadTNjaU8zdm1YU1lZdGl4aTBPbExjb0pBUmw4R2lt?=
 =?utf-8?B?TUZoUlBrU2VvR0VYayttbThnc05RV3RmemtiM1BCeFloU3p2OFltMnozTjBN?=
 =?utf-8?B?Z1lURjlSWW5kc1UzcHQ4cW9RRE1pNmFObFZ6UFZFcHFNUWh5Qmp1RFBST3cy?=
 =?utf-8?B?SFhNVVZuODVtOTk4YkJLMWhKZFIrV2xGc2FWeEFhZ0laTjU4MkxyZUlBcjhW?=
 =?utf-8?B?bmV6dG9NZkZtZW1uaUFONENjdTN4eVZOTU52OXNrUzNSKzBzbWtlZW85MmVy?=
 =?utf-8?B?enUwZmtvMmVmMldCTjFtcVNxSGtsTTFqVnY3NHBzWUFrd2w1ZzdMbitERFda?=
 =?utf-8?B?cUhBdHR5N3Y4U0ZEd2FxT3dtZG8zRm11dHZnN2d6VHVmNXc4N3ZTYkVpYUZz?=
 =?utf-8?B?M2RsQzNWK1Nucjhxd2UxNVBjbXBjd1J6bUR2TysvS0hnVk5CSDFJTlZRUThG?=
 =?utf-8?B?Z1ozdHlwdnJIOVNHM3ZmVXdaNmdGaUpDcUF0dnFSZUxEMjdLcG5DaDhWdTVN?=
 =?utf-8?B?TnpGTlAyTEE1UFhpMkU0cHhIK0xrZ1dybXBiMi9vSTBzUXd6eWIxNGk1cll1?=
 =?utf-8?B?K0NHc1JXNXd1aVFyRmc0Q0hWekNjMlM3dzdwQTlxaC9mck5mV1FGU0pvYVBY?=
 =?utf-8?B?ekhwNk1RdkZBMzVyejU1RWdZNGtUOGlrSUFrSFBMMlBmZ01oM21HdHRrK1FC?=
 =?utf-8?B?enhsOFIyS2FKZ1dEaXBaMkkyTFRGcm1BUEFjS2U1ditZVFRDRlZZRVJyT0xr?=
 =?utf-8?B?VFVPT0hyOC9OVVZpTjBRNFJtN3JKcXhZd1hyaWkwaUNjSXdpaVBsdE5iTnJu?=
 =?utf-8?B?SDNCdXY3UDFpZFFoU2RERkRlelZWdGJzcjB0UmE4RS9BQXpTQ3NQNGt6bU1O?=
 =?utf-8?B?dUdINkprZGV4bUxOSzhkWFNZMWl0b0p6M3lHbDVCZ1pPSVhOa0hKdVFlSWp3?=
 =?utf-8?B?OGVscUNQTkdjMGtJc3Nxekh4Y2dBcDErQWszQVd2WWNwNjhPMHF5SldKekdZ?=
 =?utf-8?Q?WYFH5CSd8zQ4nCiHHPC/l0k=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5926C8225D0CE740866F878D6D32A7B8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4968.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbd5169f-6dd6-41c3-2cd5-08db2ea07f2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 08:51:46.5703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jonMjLWPiQsuoJUnRZDeu4mB5nwgaM9Wabv46mCkaf7L67ItojupPKso5DFoGk9bxKM6LarNlDDXwgdW7RCsPbixZOnwQefZpvF/JXm49dw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7986
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use compressed bpp when
 calculating m/n value for DP MST DSC
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTAzLTI3IGF0IDA5OjQyICswMzAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5IHdy
b3RlOgo+IEZvciBvYnZpb3VzIHJlYXNvbnMsIHdlIHVzZSBjb21wcmVzc2VkIGJwcCBpbnN0ZWFk
IG9mIHBpcGUgYnBwIGZvcgo+IERTQyBEUCBTU1QgY2FzZS4gTGV0cyBiZSBjb25zaXN0ZW50IGFu
ZCB1c2UgY29tcHJlc3NlZCBicHAgaW5zdGVhZCBvZgo+IHBpcGUgYnBwLCBhbHNvIGluIERQIE1T
VCBEU0MgY2FzZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFu
aXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAyICstCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFp
IDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4KCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBpbmRleCBhODYwY2JjNWRiZWEuLmMzZThk
Yjk0M2U5YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX21zdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYwo+IEBAIC0yMzIsNyArMjMyLDcgQEAgc3RhdGljIGludCBpbnRlbF9kcF9kc2NfbXN0X2Nv
bXB1dGVfbGlua19jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHNsb3RzOwo+
IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9saW5rX2NvbXB1
dGVfbV9uKGNydGNfc3RhdGUtPnBpcGVfYnBwLAo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2xpbmtf
Y29tcHV0ZV9tX24oY3J0Y19zdGF0ZS0+ZHNjLmNvbXByZXNzZWRfYnBwLAo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0
YXRlLT5sYW5lX2NvdW50LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrLAo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
cnRjX3N0YXRlLT5wb3J0X2Nsb2NrLAoK
