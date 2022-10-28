Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 799AC6116B9
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 18:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A39E10E86B;
	Fri, 28 Oct 2022 16:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8316810E86B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 16:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666972908; x=1698508908;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fhm3nPBHjs4pe85kuctnQUGWE71lIlXeQ7Biucw9EOY=;
 b=eweO8BKTYULfju1GFoy6z+pvtSePte7pYh9acDgCeTBI8cK+wgTeOb5S
 5JleK5DaPM1/sy7l6BIQXdvSFJ/ITo53ss1OvvzkTemp32aFaoQVa8g4g
 g7j2pR9mWJt6LvTLTBEPZM/40/+mU+d4rBs1FB7JnSKr75Yw3Nb2kvc63
 8a1Hbq2JDswAOFjvDPWvjvVOCoog8hSAcWJAVt15QSD8eHK/76uW/kV/5
 FBrzb0TpJex/8Bh/v+FHr66a6N+IPFoIUpsLES1hJKVgLQeegBsHWKPCd
 PROU24e7nT8TmrU24Why74Nf1ALsCcprV9LsWY1D69O2HfZyGO9lTC+z5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="295934390"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="295934390"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 09:01:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="627563851"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="627563851"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 28 Oct 2022 09:01:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 09:01:33 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 09:01:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 28 Oct 2022 09:01:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 28 Oct 2022 09:01:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G6+VWfbJNSFu4m4yf9dvj1z/2seACVmtx2BWjOYtay8h7PNn53X/EUQgxAHBOn/Kily3rJiNeIJZkUq0Y2jVFCbYyqzUI8dqCs4V4yUbw0clrbj/SHMVsJqpvuiUQmZ+Xj8QSi4oNjsy3ACVlwXewF4XBoEVS2W80KguOC5e/RvmtZNLRXP94fcUv58KnuTCHpy4EwnsEuFnBJv1qAYKHE2s4co280JzaD2B5/eSNlCHuEU3ezMedi9KAP8xE5Jk50NG5FFjJOrcI0RaWIDNzQMxYi4RokaLqxeJeUZpPL6Pq+fEYXy5LpptdiPYHw1SGt8nadqCSxF/1NC15+qsUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fhm3nPBHjs4pe85kuctnQUGWE71lIlXeQ7Biucw9EOY=;
 b=JpfOHykpJuNPTXjklIxdAxgtbW/1c0BRP3y4oqxq10N6wdMgpAAyeDzSoK/sj0Lqhy60RJaNvF82kml5BQvI3/WgHCKf0+/sVJwxbqI5WfREgd/aI1ziqa9aD07Htz4zV4p7wBH4+Xc7dFvRbgLoK8sIojfylZk04ofAFyOsgy1jXC+Nu02B08BgvOn/ZRpRV1uY3pBkSzIqXkWUh3VcXZ8XtgdplHlvLLV7DuWWq04jXmLCa9TJmkeuH9/yaOteQ7I5ejeCYlHGkudAQdzpfsR9jfW67VZjtd8LHbTcpV8CsE6MXRMxwxgUQ0cAGyc8bM/dZ/+xD/fyCCn9/FsYxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1324.namprd11.prod.outlook.com (2603:10b6:3:15::14) by
 PH7PR11MB6497.namprd11.prod.outlook.com (2603:10b6:510:1f2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Fri, 28 Oct
 2022 16:01:28 +0000
Received: from DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::793f:3870:4550:8aee]) by DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::793f:3870:4550:8aee%8]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 16:01:27 +0000
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 1/4] drm/i915/dmabuf: fix sg_table handling in
 map_dma_buf
Thread-Index: AQHY6uURDwaywD7p+EmBCFZMsuFyya4j9xrg
Date: Fri, 28 Oct 2022 16:01:27 +0000
Message-ID: <DM5PR11MB1324F6AEDDDEA55599CDC896C1329@DM5PR11MB1324.namprd11.prod.outlook.com>
References: <20221028155029.494736-1-matthew.auld@intel.com>
In-Reply-To: <20221028155029.494736-1-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1324:EE_|PH7PR11MB6497:EE_
x-ms-office365-filtering-correlation-id: d8472920-c0da-4f4b-617f-08dab8fdabfc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9VFaNQGoyoCTqRyckPCE32nnKR12bK3cG/fok4pa/R7LwhGUQN0BvbiOs8GTIqiVY7hWW1NW2BeEpoBhYFmowfiyKwSliBXeYK9wFT4/S/8Qe3vfxwDLMcHJT3HenagXaaG7pFNTIzi+fvwfpLpawIHXP6OAUWyxsp+zKlC3duxp2eQqZGr9NIL3Llj7F9jlAPIMPF83Qa9ow4zyvIyV46W8dlSmvmNz8KcbaYN8/Uzsl2UYTXlNixT4KjLebaAR3PtjR+b05pha2PNCD+gaIsaxk8GSrAqiswDo7KQo17UDZs3Gmu1zanxQJrSJSkXACLBy/1inqp7RS7ME1RymqlJnGAGH58fz62vV9ObkNwJX1yHUGlITelEQOfW7/Tk7tCfBHCexNKtF5XhkLGUI3k7pECMSelZLDoeLCFclzGiKhGh0z36GAodkvyno5ABdeey5t6GGC0ZvHcc3xUmpj1tZUTVrWhakueGX3aG1Svkun2ZjdgD5V5P4qru0J4ICOMC1XDiITKgXH4qQfGny/eECc3Vxn68Oknu0jelOei9RTUf512o9En8Fzl8n7rx0P14pi1u68RT683aey9T35qsOFl9LVc7Qmb3hj5MrpD/2wZqahKlPH5TZBClNWEnlBMes7y7YX408ZFjCPspWcCpYGmzFeTdjs9H4YMSzlQEnHusR5FCIayHNLkDGpbQsJTE9vwaBD9lqie7UOqlHzw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1324.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(136003)(376002)(346002)(396003)(451199015)(54906003)(316002)(82960400001)(55016003)(38070700005)(71200400001)(110136005)(4326008)(8676002)(66446008)(66476007)(66556008)(66946007)(76116006)(64756008)(38100700002)(33656002)(122000001)(86362001)(83380400001)(9686003)(6506007)(26005)(7696005)(478600001)(41300700001)(52536014)(2906002)(186003)(8936002)(5660300002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkpKWlp4ZHlDYkN5KzFtVW1YTmlzS2QvaERtV25ZdzNhK0V1UHdidlJXUVNK?=
 =?utf-8?B?NFRqUWxscU1hRnlSYVZma1hES1hwZHJwbmluNVZzQUlHaURlVkdLU0pLQ3Ny?=
 =?utf-8?B?U0dRQTBrR0xGTlBndDNINlNiTzV6bTFXa0hIZWpKYTZheERGbmxSWjU1NHhm?=
 =?utf-8?B?SE1zVDQ0SUF3eDFrdW0wZyt0bFF1cmNialBaUEJNNUcxZEtjaHV6U1FYTWNa?=
 =?utf-8?B?Qy9XejBTS3MxWWQyS2hVU1BQVjhBQTViU2VHT1Yvdmprdk4yTHNGNEhUVFln?=
 =?utf-8?B?dTJ0cng1VThhUE56Q0h3c1VPL1hvS2kxVG9tRXlCajBsd3BiQ3FaZVhUNkVO?=
 =?utf-8?B?ZkEyTGQzTm12N0U0Yy9qMSt6em9XTkVGQjh0SzZocWp3VXZJWXpMR3RZR3cz?=
 =?utf-8?B?cFJ6MzJTb2MxYWx4R1lIL2p1VFNZbjZjaC9TUXIyRi9VZXRIVDZVZUZxRHFy?=
 =?utf-8?B?c05WM1c1NmpkTlhtQmxDeU9FNWVPcGJhVERUZFAyUDFEQU9Rckh1d2NGZnIz?=
 =?utf-8?B?bDZBQjgzMXNhOStMZE9ORlJCMTViSTZWZUlVY0tXakl4Y2ZUUC9TTmFON29X?=
 =?utf-8?B?UjF2d0h0WEhiR3d6dTd4UFVwWFp1SEQvN3psWmx4VlRic3JFcklXVE1FcDRn?=
 =?utf-8?B?eUNyWFM5bm9IVnhrL1Z6aTlLQ09UbVdWeWdPanRTekg2UmZxWDdjUXI4N0xw?=
 =?utf-8?B?K3ZMdTA3QmVxMGg5YTVYdkptVXZ2VHlwVUdYV0VPbmozMGRsd3pxN0M0T1ZQ?=
 =?utf-8?B?R1ExRkN5cTd5UzFpRkZqVFdGS2JMZzVySWRoL0dvc0VnM016OWlCV3VHbTBY?=
 =?utf-8?B?RStWUmpuWTM0Q2kxenFIT0tjczlEblZhd25pYm9wQmpINlhtWVllZGRUZlRk?=
 =?utf-8?B?M1dsa1kxc3EwS2txK0psWkFydXRTcFJxbTZvSWphazN1NVg2OVlNMzRvcmNB?=
 =?utf-8?B?UWwvdUdUejBjVFM1TFB2dlNCQWRxdWs5dkdQZER6SzV5NnRKcHVqRFJEV1Za?=
 =?utf-8?B?RWdOZDBTalBUWUw0SUtqbjR6NS9FV0RodkZmVVM4MklRZ0lXdld2WGV1bXh0?=
 =?utf-8?B?WDB5K25ubGoyMG1kT0hjeHduRkU0U0tiTmZ3Mk9xVGFPSEdVYlBxWEFUZmJX?=
 =?utf-8?B?VHR6SGdZNFM4NnVrT1J1dm1jb2hHNTJEZXNzcytBb0tSV2dSckQ4KzVJOXlv?=
 =?utf-8?B?QmxXZmIxZTJOeTVXYUJVd0lhNElBQWw2R0x4eVcrS2lCL2NhUWZQU0VHRERr?=
 =?utf-8?B?dXRpeXFoVllZUll1NnBKTUJ5YVIybWRDN3lFOURMMUVkUnd1SXI3KzI3eWJa?=
 =?utf-8?B?ZWRCRFNDZTZNOFpFek4vSTRqNGViOUJZQ3I3SlN4bmtmMFl6V1lHRllFT0dz?=
 =?utf-8?B?UDJ3SU1XdmJUbk1adUxrdlFaZCtPWFMySXB5U1ZWb3pXL1hkVjZpdURFb0dX?=
 =?utf-8?B?R3U3RUdvVk4wUU10TVVCOW1WUzAyZTdsMmdERVNIU1ZWTUlPMFYwSWw2VHEr?=
 =?utf-8?B?RkpHTldVc0VFZS9NdXFBMDNhKzNoZC9oWitsWXJCMnVPaXZJN3FKTmVMQWpO?=
 =?utf-8?B?MFQrQmlTeWhIekFPQXZSWWZUZ1hIeVp3SnRtWmc1R0lSeWUzRkw4NE5PY3hi?=
 =?utf-8?B?NGoxbldPenRhcDQxZFdRdUY5ekxRZ0tKbW05V3llek9Ga3JRQ3I1OWpCOFBC?=
 =?utf-8?B?dDltZ3dCTDA3YkF2bG1OcXp4NDVNMisralg4SG5xNndLcVYycVpTb2xPTW5S?=
 =?utf-8?B?R1JhOEVhZlZZVTd3K3ZMbXY5bjlmbjJXd1VPRmZaaVdFL3hpNU5JUlVuUGpm?=
 =?utf-8?B?QitqTk1udTNNcU5PMkFKK0poMWxQb01VVVRLY0lkbEJmbmp1UVJHR1VpcDJx?=
 =?utf-8?B?KzFSNmFNdXVYenJFUWtTSUh4dnZyaGZBR1JCOExsME8wOVhCRTZCZVRpdmkw?=
 =?utf-8?B?Q1ltbngyTDJGQm1ETjVpMkhua05nSWdyREN1bE5ZdnhHTjlRR2JiRjFsR1ZG?=
 =?utf-8?B?dk1xUDBKSVJpc3NPY0ZjcDZOZ2JFb2tMamx4L2o1RU50SUU5dGpDT3ZuVXU0?=
 =?utf-8?B?NkJZYTVNNmhBN0dTRGdLaE94Vkl1aloyQXJtQ0JNK04wNlFacEhXVDZ0VFBX?=
 =?utf-8?Q?qhFoKt7EdQbaUxNemyaQhBobq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1324.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8472920-c0da-4f4b-617f-08dab8fdabfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2022 16:01:27.7870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ny+ewAPTGgXALNHCXYsLaKWOijHxl4cEErlyxQCIazQVjvU6jyZbsMbibj9ZhdffvL6GbxpVqDBmL4vQFS/bwQ0DkOxa63OxytCnL7oJOts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6497
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/dmabuf: fix sg_table
 handling in map_dma_buf
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

DQo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj5Gcm9tOiBBdWxkLCBNYXR0aGV3IDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPg0KPlNlbnQ6IEZyaWRheSwgT2N0b2JlciAyOCwgMjAyMiAxMTo1
MCBBTQ0KPlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+Q2M6IExhbmR3ZXJs
aW4sIExpb25lbCBHIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT47IFR2cnRrbyBVcnN1
bGluDQo+PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ow0KPlJ1aGwsIE1pY2hhZWwgSiA8bWljaGFl
bC5qLnJ1aGxAaW50ZWwuY29tPg0KPlN1YmplY3Q6IFtQQVRDSCB2MiAxLzRdIGRybS9pOTE1L2Rt
YWJ1ZjogZml4IHNnX3RhYmxlIGhhbmRsaW5nIGluDQo+bWFwX2RtYV9idWYNCj4NCj5XZSBuZWVk
IHRvIGl0ZXJhdGUgb3ZlciB0aGUgb3JpZ2luYWwgZW50cmllcyBoZXJlIGZvciB0aGUgc2dfdGFi
bGUsDQo+cHVsbGluZyBvdXQgdGhlIHN0cnVjdCBwYWdlIGZvciBlYWNoIG9uZSwgdG8gYmUgcmVt
YXBwZWQuIEhvd2V2ZXINCj5jdXJyZW50bHkgdGhpcyBpbmNvcnJlY3RseSBpdGVyYXRlcyBvdmVy
IHRoZSBmaW5hbCBkbWEgbWFwcGVkIGVudHJpZXMsDQo+d2hpY2ggaXMgbGlrZWx5IGp1c3Qgb25l
IGdpZ2FudGljIHNnIGVudHJ5IGlmIHRoZSBpb21tdSBpcyBlbmFibGVkLA0KPmxlYWRpbmcgdG8g
dXMgb25seSBtYXBwaW5nIHRoZSBmaXJzdCBzdHJ1Y3QgcGFnZSAoYW5kIGFueSBwaHlzaWNhbGx5
DQo+Y29udGlndW91cyBwYWdlcyBmb2xsb3dpbmcgaXQpLCBldmVuIGlmIHRoZXJlIGlzIHBvdGVu
dGlhbGx5IGxvdHMgbW9yZQ0KPmRhdGEgdG8gZm9sbG93Lg0KDQpJIGxpa2UgdGhpcyBwYXRjaCBz
ZXQgYSBsb3QgYmV0dGVyLiDwn5iKDQoNClJldmlld2VkLWJ5OiBNaWNoYWVsIEouIFJ1aGwgPG1p
Y2hhZWwuai5ydWhsQGludGVsLmNvbT4NCg0KTQ0KDQo+Q2xvc2VzOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzczMDYNCj5TaWduZWQtb2ZmLWJ5OiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+DQo+Q2M6IExpb25lbCBMYW5kd2Vy
bGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4NCj5DYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj5DYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj5DYzogTWljaGFlbCBKLiBSdWhsIDxtaWNo
YWVsLmoucnVobEBpbnRlbC5jb20+DQo+LS0tDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9kbWFidWYuYyB8IDQgKystLQ0KPiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPg0KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMNCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9kbWFidWYuYw0KPmluZGV4IDA3ZWVlMWMwOWFhZi4uMDVlYmJkZmQzYjNiIDEwMDY0NA0K
Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYw0KPisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYw0KPkBAIC00MCwxMyAr
NDAsMTMgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqaTkxNV9nZW1fbWFwX2RtYV9idWYoc3Ry
dWN0DQo+ZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZQ0KPiAJCWdvdG8gZXJyOw0KPiAJfQ0K
Pg0KPi0JcmV0ID0gc2dfYWxsb2NfdGFibGUoc3QsIG9iai0+bW0ucGFnZXMtPm5lbnRzLCBHRlBf
S0VSTkVMKTsNCj4rCXJldCA9IHNnX2FsbG9jX3RhYmxlKHN0LCBvYmotPm1tLnBhZ2VzLT5vcmln
X25lbnRzLCBHRlBfS0VSTkVMKTsNCj4gCWlmIChyZXQpDQo+IAkJZ290byBlcnJfZnJlZTsNCj4N
Cj4gCXNyYyA9IG9iai0+bW0ucGFnZXMtPnNnbDsNCj4gCWRzdCA9IHN0LT5zZ2w7DQo+LQlmb3Ig
KGkgPSAwOyBpIDwgb2JqLT5tbS5wYWdlcy0+bmVudHM7IGkrKykgew0KPisJZm9yIChpID0gMDsg
aSA8IG9iai0+bW0ucGFnZXMtPm9yaWdfbmVudHM7IGkrKykgew0KPiAJCXNnX3NldF9wYWdlKGRz
dCwgc2dfcGFnZShzcmMpLCBzcmMtPmxlbmd0aCwgMCk7DQo+IAkJZHN0ID0gc2dfbmV4dChkc3Qp
Ow0KPiAJCXNyYyA9IHNnX25leHQoc3JjKTsNCj4tLQ0KPjIuMzcuMw0KDQo=
