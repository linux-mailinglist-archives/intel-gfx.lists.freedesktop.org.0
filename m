Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C488B738F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 13:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D5B10E322;
	Tue, 30 Apr 2024 11:20:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I9RVbdoc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8338510E8FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714476033; x=1746012033;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y2vnqfexBmuYSQLTmy5dC6nJ7ThRHcSMtv4KNlwa4/o=;
 b=I9RVbdocuwFLc8sWRhCkRU0nOP0IaL/9dUi/hAwNsJ9rMgWzRk2cN+ic
 GzxWfmFfuZqTq+N4dcc62FUdMjPw2cITpMACV19ODb61+BeuoA0nsHOqR
 Gm07x0M0E+nXmG27vgv7fUOBDHiZ5PeAz7nDxkkBFukARpnUr+FojWvbQ
 8CAWRfPIAmlEd4G7+vc4xi52Urr40ZlJQ1IFGcw7Z10r9jR3wQGxtzSMD
 2FqPCRHz7J0PPDC2FLST2QMRWX+HNrzk/YvB3Q2bgl/DfDwM2vvRIrdD8
 HnB5SVKwfUKkuIScuFrMVNAqaGiXlEyyzbGDK6KzdiBEXCfg3ZZe3/XmG w==;
X-CSE-ConnectionGUID: TvAldO0ARui2CAOuuUEJgA==
X-CSE-MsgGUID: 8dDuJWUASJGUtBwhC207AQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10715923"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="10715923"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 04:20:33 -0700
X-CSE-ConnectionGUID: 8fH9zl8HQQufx1zKrDMb+g==
X-CSE-MsgGUID: B+n/C12ORU+nRfY2W6yviQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26422503"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 04:20:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 04:20:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 04:20:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 04:20:32 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 04:20:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HamOG7UjNXNETIs7+ppj/JdEFpNg/Xq7j6Bm1p0jTe1JxOAJLIaazG5zW85AXTl4htSZ+b02p3emaeitxRqxKqDkXQNXX7ioJgDTu1G8WVWdyJ8Q/AcNYIcpNjViMU/Bpj5MqOT5m90AQmjs7Tc7s2NIJFSqYkW+jvLVz2D2tPHRdBSyh4eH/5y7+ml+z4Y9gwfLH2LopXOVfnexAe4jFZlGDs/bR+9PxmQahqm50xSQPQf+SWX5CDOEw3234N7Y8DZWApzhFE7f+kfL3ye5Qf9vCP5Nc16kRKbs4AqZp3oK6ThbTmSzGpH0yiHrLQS7QCMYMXd4kWMICisD5OGg7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=381KriTJ3dWBJvYj1tiKg3BRy2HhaAxUBIutNWv9Fkg=;
 b=FJ0vwdx6exWLCxyowh0B9SKlt/ScaFJZj+QopfhOm9RuaPoi5jC1idpMYiXF2n1erz4UvYyj8zWS3lElwIalxoPI0hnkv+twkf7MO07cxkglHhvDqdt7jdooLA86tjeuwFhzmtGmsCszhNzNPEt+adDodDAZnGYOmwHqcJ9gP+JpP5TG0D5vBwBgVlQQxEl4yteRXZw0629kN9Z/+UEAJjquDrXmbAcJ9CU9u0p+Iw55l0DhxHxlFRvyWVaUQ7PZDh1SdYy2LZfAV6yinojzvdYTXYED4nZYYg6Bh/ndl4v+WAZqW58MdSNVggB/9CFHZ84tYj9pyHY64YYtVmUyTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4596.namprd11.prod.outlook.com (2603:10b6:5:2a6::17)
 by DM4PR11MB7397.namprd11.prod.outlook.com (2603:10b6:8:103::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Tue, 30 Apr
 2024 11:20:30 +0000
Received: from DM6PR11MB4596.namprd11.prod.outlook.com
 ([fe80::3856:92c9:8589:3200]) by DM6PR11MB4596.namprd11.prod.outlook.com
 ([fe80::3856:92c9:8589:3200%3]) with mapi id 15.20.7519.035; Tue, 30 Apr 2024
 11:20:30 +0000
Message-ID: <c4e0d0c2-e22d-4cef-b6ba-d11970451ed9@intel.com>
Date: Tue, 30 Apr 2024 19:20:23 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/mtl: Update workaround 14018778641
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20240426073638.45775-1-angus.chen@intel.com>
 <Zi9uDRgtkT3IkTyG@ashyti-mobl2.lan>
Content-Language: en-US
From: "Chen, Angus" <angus.chen@intel.com>
In-Reply-To: <Zi9uDRgtkT3IkTyG@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR06CA0183.apcprd06.prod.outlook.com (2603:1096:4:1::15)
 To DM6PR11MB4596.namprd11.prod.outlook.com
 (2603:10b6:5:2a6::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB4596:EE_|DM4PR11MB7397:EE_
X-MS-Office365-Filtering-Correlation-Id: 82c07352-50fc-4b2d-b13e-08dc69078b5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?REZHdDIvUmFncXM4eURhODNtMjNZWFFabUVYZ3lJMnBFT1Zzd1d5ZmUvbzha?=
 =?utf-8?B?TFZPMEl2Z3VOck5LYllFNEV5cTVYeVIzTWxPTW1zY0lwNUVaWjk4TzhjQkEz?=
 =?utf-8?B?S0wyemIraWUwTkkycW9vRkQ3RjIzMUFDK2xtSlNLNWFWeCtkY2V4Ry9oZU5D?=
 =?utf-8?B?NVZka1B6V2t2U1RJSEhPUlFUNjNMMUF6SWNzUCtYZDBZR01ycThWci8zT084?=
 =?utf-8?B?U0RuUnFRTFNxRCtiMzhYL1BjbWx6TGVRbzFYS2Jhb2hIVW04ZFdxUWJDbWtS?=
 =?utf-8?B?STMxMCtyNlpLVGFLTW9hdXo0NFVYOFlCSUhLcnJCZktPenpmQXNNRjN3N21Y?=
 =?utf-8?B?L05WcjJib0F6MWQ5dmxNdXRFaGpjaWw5cFJzRmtieXltOVZZN2Z2V3pHU2dZ?=
 =?utf-8?B?dFB5TXhqazNnZFZuV1pPMU9QcldGanMyTy9uYklPb2lBSSsyTkEvUFdDRk54?=
 =?utf-8?B?VFh1UEtRVTkwYk10b3JOTnozTXBDVnBaWURZQ2FkUkJ3d1ZuaTI5eVg0eEVM?=
 =?utf-8?B?bFdjTzkweWJ4VFR5UjNDL0tuUHZneUhTSzUreUh3Nit4aXBlWm5ia2VYYjcv?=
 =?utf-8?B?ejZ2OGFlRTI2L1k1TFdKRWVmMkNDWnNjbTd1b1RhR3luYk5OMHhtZDg4bGlT?=
 =?utf-8?B?alpEYzZEVytUZS8xVzhTZ0lOeGxSMlM4bFJPRU1ReXpiVUx4MWkzQ21Bcko0?=
 =?utf-8?B?UFF4dThPUzNqa3h2K3daUnFGRWxFbzZpQU95RWZkbFlWSncwN3RwcGFjMGRL?=
 =?utf-8?B?aWpxOUorcm1kYlZZT1FaYnEwZnVpczM2ZHQyWjNzbllSaFVLMGpJeXNzN2l5?=
 =?utf-8?B?Y1N3Qm56OTVnUTBkWGNVbFpCOGo4UXNqNUM2dHM1V0h3S1YrNFdnUnYydm1y?=
 =?utf-8?B?c05TWHNWbEh1VkhiS0wzS080Y3pTcHRXRk5HWkE5dWh5VjZ4OXhCSkZhaHVu?=
 =?utf-8?B?OE9FcTQ5ZUdTOTN6MDQ2a0VRbWJNbHBSUm50VXFxRWs2cS9QRUNZR1lLNDN6?=
 =?utf-8?B?K0hZLzRjWkNsWHBMcXkrR05XcStiQlN0K0ZmaW9sRkFGV01Zbk4xT2R0U0xp?=
 =?utf-8?B?NjcwWVlTOE43QUN2bFBhU2R6Tm9oYW9YVERlMnkvQzcxMzUrZUZTM2p3NUM2?=
 =?utf-8?B?T0FyNUJ0NFB4MDNJdDYxeTJiNWtnems5bXN1RXV5RjNuaU5sWjVDM2JROElX?=
 =?utf-8?B?VVVHTnVhZ2xQVHo3bDhjbXFEVU5ZZVpzTWMzUmVjN0xhREppeVFpemJaQ0dz?=
 =?utf-8?B?K1ExL01OdGFHZ284b0lqZjNYQWRkY05ISFE5VXc0aFh1TForNVkrNWtRd0hO?=
 =?utf-8?B?Vmp0bmliNVJ3Nzd1VnlvL3cxWVp6K0JidlllOFpKZVVHZnZJckhLR2VUdnFH?=
 =?utf-8?B?ZWVZYnlLVGFxSlJMQktlTE51dmJMVHpCOGl6T0xjTmowcmVVWlRXSG5PWFYr?=
 =?utf-8?B?WDBYNVc0alRFZlUrVnhCOFZkOTM1dDBrb2hIOEh2Mlo1eEtuN3ZnOVZ1Yk10?=
 =?utf-8?B?aG15N1h2R1IxNG1PRTdRQ1JNWGVVVitGbUF3NGJ5MHRTTTFaaDdrOENTQ0s1?=
 =?utf-8?B?ZkNoeGtTcWM3cmUxcmFJUzIxNkhGTi9xKzVoY1lxUG84L1laUEdzZDRoV0x2?=
 =?utf-8?Q?hbwWwkcA+H6kp0EPAusmFaxU+EeUz8hfhrGNESyQUcUk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4596.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVRwTUFybjB3OE04SzAyUTBkZFNHdlBBZW94ektNMTZKT2crdjBJRkMzZGxs?=
 =?utf-8?B?R2wrVE1zS0dzRTllWDB2RmJKcWRwWTIzN3MvY05DL21EaGE0V1R6U2JaVzhi?=
 =?utf-8?B?dmlLVGVyTVl3ZFVLY1NhWGRvT1AwRGtCcU5NNWQvSmp4cGx2ZzJScGVkZHFP?=
 =?utf-8?B?QmpETE5YekcvMlgwZkwyWWxqWld0N0pCQWlOd0srTUE1Ump5amZFRWcrU0VG?=
 =?utf-8?B?UHRiQVhsWnQ2MDVtZWxDOVFGaUpHNFRvb0RJWWVWRU82NXN6eFlVRGcrd2JK?=
 =?utf-8?B?NTlZVGQ5QzhrUTFJMklFMXFwc09nOG9TdmRGbmhqOUlVblZOb21oOTYxdFFi?=
 =?utf-8?B?RmdjL0c4c2pEeHdDNzBCK01rT2UwSFE1dmUyVGphQ0l6VzZXZDVWbytqM3lN?=
 =?utf-8?B?ZUNiekRPSzE5bjlKeS90cTl5eGJsVUFNQmJPZUZwalZrSTNiYW82Ri9GWjFF?=
 =?utf-8?B?QUk0Zld1U2VzVWgwNmZMdnoyeVR1enFuVUFVK3pldWpPRFFxSWRWeGRGZzd2?=
 =?utf-8?B?ZlpDeEZMbzdpOUYxRlpIczJ3MG4rTGxta1E2aThYWEt3MkRtZi9zcU9Pek1a?=
 =?utf-8?B?a1ZHcys3aTZZSnBRWVhQWFF3MGcxQk1OTThhNkN1VjBHMjVSYW9GeVZYRGll?=
 =?utf-8?B?YzRvSVY2N2VYa1pvTDJETHJMdEFXb3BNeVhYTi96aGhhSHZ2MTRsOHArMEh1?=
 =?utf-8?B?ang2M0V3L3paSEJKMXZ1czNBZkVYNU1LanJsMWVVWDhLSjRjRWx3cGpvMkMy?=
 =?utf-8?B?bGZNUEc5Y1BYdWhTVk1nRWRZallHb3Y5cThyVm9yZFpWRU9zV2NUU2ZTNXBU?=
 =?utf-8?B?dHdZMm9xdVYyVVJ0c2U2U0VLVlh4eXAyQXIxWVB3bVQ4YlpXZmxId0JyVXBm?=
 =?utf-8?B?NHg3S0l2d1Nabm1RYjZGaGFyOE9uNS93T01YQjMzT3I2L3FJSVArU1RQbVBB?=
 =?utf-8?B?eThCSHlBcFFpQUY3WHBiRlk1SDZ0WStSeDdkK3Q0dFd6RDJoYzhyVnRSbTUx?=
 =?utf-8?B?OVdlYXNNbDFmRjFPSk9lbUFyY3hiTkhHNHpmVTd0TmUvMXJpNWpaeDQ0czZH?=
 =?utf-8?B?YWFRSVd5T3hkTENFbjRBdVVvcTZNYnVXeWR6Qy95eldsdW5EaWpnTnFuMTE3?=
 =?utf-8?B?dk1IdWc4Yi9XRXNQTDBPZjZRaGJRWjM4NmljcjlvcGNqVlo5SGs2UEY4NWpQ?=
 =?utf-8?B?RkxtcVVmZGVlUVJpUytWVHdGSkNJMEUxUVZKUGVTS0pEeFNLNnUyOHJzNm5C?=
 =?utf-8?B?NkxRQkh4bjZUUTMwZHNFZ3d5ZkpBY2NEV1YzTHdUU0FHTnJIenA3UnFiaGQy?=
 =?utf-8?B?WGI0Z2d2VUlqWUI4S2JaUC95TGMyRWhMMVBTczZGTnU5djZnckl0OTVHTURM?=
 =?utf-8?B?V2FzMjM2cXVEb212amF0YVk5dUpuTjYxRkplRHlRTVQ3aWpRazRQZ1VHVThW?=
 =?utf-8?B?Mk0wcTkwcHVIenFJRTdQRXZ0RnJ3emg5bU9XRFdZMFgxSEo5eWpDbDRWUWpw?=
 =?utf-8?B?aStRbUI3U1ZKeU9GNFA0RWdGbEJmNndPcUJsaC92Q1Btb3lWV1E0c3ptOTFH?=
 =?utf-8?B?NkRIT2o5bm1PcFFMUE8zUjZjMys5SEhvNTZDeDlBc1lDRFNZNnRVMGpFWUV6?=
 =?utf-8?B?cVpoMUV3anBvcjMyRzhOcUQraS9qUmY2MDZqcGtIem93KzM1VVhmdXdaaVUz?=
 =?utf-8?B?NC81U25CWWZBWkQvcGRaT250R2xGUHN3QmhTT0lsT0h0b3QvM0VURElwR3di?=
 =?utf-8?B?T0xCNXlPeWVqZnAvWlZLS3JiVWpvWkovc2lxemxlcHA4VGo2b0VnL2NLVUhp?=
 =?utf-8?B?dzFjd1FrQ3FWUUNsaUVCRWhJR296a1RxTnkzaDlvZ1I1RVd2YmF4a1ErMmMr?=
 =?utf-8?B?YXNlTUNRMktyZFNEUm1HV09uVHhFRldmc2VJTXRROWlLdUw5WmNKSWwzRGVO?=
 =?utf-8?B?Q2dwa3RMNXl2a0txTmZ3bGRFRWhER0g2QzJ1eG92d2w1Nm1odHRHWXlrcUdN?=
 =?utf-8?B?c0tBdkVjS1RNTGhUNDNjcVJXZ0FiQzRBQTNubnNyOEx2S2t5L0g1TVBzdklr?=
 =?utf-8?B?WFZ5TDlaTEVkOStHYmQvWHgrNisvOTBuYjZMRTdQQzJHRzVmOTZFSDVoNmo0?=
 =?utf-8?Q?+OR6HHUA+LbtTGzC+1pUlDzEC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82c07352-50fc-4b2d-b13e-08dc69078b5b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4596.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2024 11:20:30.6944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: im/DdWOXLjWf1tQKosE1F5B3pFkN//UhR+b77ngvtNB9+IcD+8BU6EFidzhTNab0CojZkpvWSB4XV5DQxwoorA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7397
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

The original workaround was from 
https://patchwork.freedesktop.org/patch/533574/
Then, we don't apply WA to VDBOX, VEBOX and RENDER engine with
the following patch 
https://patchwork.freedesktop.org/patch/543117/?series=119517&rev=1
But now we need this WA to cover VDBOX.

On 4/29/2024 5:53 PM, Andi Shyti wrote:
> Hi Angus,
>
> ...
>
>> @@ -1586,6 +1586,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>>   	 */
>>   	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
>>   
>> +	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> Can you please add the reference of the workaround in a comment
> here?
>
> Thanks,
> Andi
>
>> +
