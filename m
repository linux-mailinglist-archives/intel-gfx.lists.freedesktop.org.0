Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C26E5AF4CC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 21:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90C910EA60;
	Tue,  6 Sep 2022 19:51:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DDE010EA60
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 19:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662493886; x=1694029886;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1o0sEGyvbOb8uERrNgEHM527NFpSKnETAl9wmrV0Ntg=;
 b=LfjfPyyRLbkQ2d55ouGmfiZEFfGbXBiw1TCYLxSULXsE/XWnQ2Q2aZUl
 Hll30xzaAKMe4jjqpg70AZeom/YBazOUXxoBGjZaIg1rPaVzU4WMVCleZ
 aP3K7T68ZKkNBt5nTaP/v6Yz4XMjLjwUEeatCEt+sIdaYn7fgCutEXNVd
 N1ZRcqVC6wjgu0DFe4nlGbKmHeYZEYAb6nFVU504AJrzh7dy4Yw/sVhcK
 SGZIVnHL6Dj3+Wjje4/MJElgI2BCC1QcvPgR4rzea8z1jF8Zff1YB5qwJ
 2GPHwTu4a3TXpL3L/Y4ZWwpiiTRycWUYUEWV2qutJ3xK/zlQohN/k/QQx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="279703755"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="279703755"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 12:51:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="756494787"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 06 Sep 2022 12:51:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:51:24 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:51:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 12:51:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 12:51:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O654S/ySCytm9V2+J2Hz/Vi+flOz+jflMZ1TGO2g3y88kyYDJSUnTJDBZyhhX/9DGXeqxH73jfa5LKGbHwj2aX4Sle8xofbMpKfjofFUKZZDyYLUH+JQi0X1inlt9wzaRUDT1cr3cdPm8/y3W4IhY8NRJDzUsfwuqsEL/EeDVRxUmhiJbfz7aBOu7O5qEk5/mSrubAlcq4YvzQqOnfofcOwP25a6Qy49MAAliZdNnAdLwoXREw+hIVJGTUE4JVzd8XIdfcNQ3fpc5yhckaSjrfwoaScElEBG+uRXMr1q1RVeZ484eSlsueHHjV5hQNRyHNOrBo0WiP1SGcqSy6clUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nvzJIlVaWkhc1ZhlpM6Uw/VVj0nHMG06qJn338Qi+N0=;
 b=nM9amgrxyOAdMVOW4E2IOr/PKN9Ktz7nO4tARB3TvlOQSw3zUo7qvVgKkFLSkHqoUR4hbMeU/hZGblMWnPk0los4Pjg7DZwSkRBIwmLa6RolxIpPg9zS8SdCW3jSwHomQCsLCOD1okqMUf+cgKZk3fIH1h0k/PftZpFjo8n6dqf0F6NbosASE69EGl6D1+Ec+g5TFdahwIsdNPUFFIoGHvjiX3HyescYEqDC+BMmv9fkXTloYUQqI8SmnsSpgtCYy1dcaQEJ4F00qoGN5pWMacNXR5YGeMfbMD4KCEl/VEqOvnsXhC7HqO+mGWr9kNnPli2UGkvE5bNl8Sujc/LklQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BYAPR11MB3254.namprd11.prod.outlook.com (2603:10b6:a03:7c::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.11; Tue, 6 Sep 2022 19:51:06 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:51:06 +0000
Message-ID: <eb0ad59d-c282-4103-f80b-f056f70b1eea@intel.com>
Date: Tue, 6 Sep 2022 22:51:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-6-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220823204155.8178-6-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0123.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::9) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 47e58e52-1614-4cf4-5fa2-08da904122ed
X-MS-TrafficTypeDiagnostic: BYAPR11MB3254:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pjSzoumA5H864NFmgl+yrs7GC96ktbHbYjSwYL9sXZkvs5gcyldUriczpDhepeH/Rv+5jlUYjp9EELz6gmDhGbZYXCvfaqQ9gnWRjYMuR689BtW5pOfrdfn5HQJTSEcRX4KBSAiIJ8W7jcW94nLsVVE5Ee0dWBOsFtv+TP+92/QsuYtT5NYFHSBJ3wOaTPCOruqIGOoNX2EgQWmya86ZZIQ2shxVfsMHi+A1QRTeSwcFfukbdCduNVj+xPOTfYoVyh2OT4MpE+bE24/ChoBQ7edvqiCtGoSj0pLwaBJK6Ua6za7sVIVce8prtgLxxI96fOeZ1bxeGZEbWOCVT5Z8pz4k9IXI6RmhSMaK9K90Lqn00jDM/4QJxsHg0sLMPTO19yNIqFJgB0RqUu5M6KJ0sl16+rzizwgHPFWxNcZ5hAke4qjiFwbkrTT/s19ICbbH0i4K93mD3oI82gICfUvynbbN2bSI0/QN/YISq86SbYNQV2EA0dHVCHy2Q0xCPSyBCMSkA2vRYk9zPEnFl+d8lZbsvUSN7byEkVlFPtoZi7X9GQyFpTPIaquGVh70KrtIV/yR6FY5ILqRq7TUQIP0JLMZQtTaT62zo/YRbWpW/afQBn8Bzzg18NRsaYfqra01Dtq3+FTbbTG7mUB3v+cIPKT/PhaeL/EbIvh1LMNQpesTeUOL5uPNY3bQA8WBLqtYzfcPhL146azt3DuorUHF/RbEeioxjuQHE1y9LMK03StqkY4a/aFZ8sh08ROV9FgC7Zf8UeCz2R4z+81N48Im7Im59/pmq/5gIdTjIdUW7zY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(396003)(376002)(346002)(39860400002)(5660300002)(8676002)(186003)(2906002)(6666004)(36756003)(31686004)(83380400001)(41300700001)(4326008)(2616005)(8936002)(26005)(66556008)(66476007)(82960400001)(38100700002)(6506007)(53546011)(478600001)(6512007)(86362001)(107886003)(66946007)(316002)(31696002)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWNGMXoybDBFdDNScVl6Q1lNSzJCTlRmcWc1VllHSzI1RzlpMzFabUFxckd5?=
 =?utf-8?B?R0p0Zm90Wm5GMXY1eDJIUlhhTjFiQzFhRkxxYkNxZFpRUW9uakcya3JZcHMx?=
 =?utf-8?B?cS9vSE1HQzVaWTFZR1kwdnc0Z1lhdUxMM1c2ZkJtQ3VrOXZwWkZJVlE4emFU?=
 =?utf-8?B?Z0NLYTZrOFkzeUZNdUl6TEExdTZaMDc1MWY2TnprMS9JQmdBUkFYYUVTWnZF?=
 =?utf-8?B?anlJaUhvZm1Rd1hlV3pTT0NsZ2dMN3NCRGdKZ0ZleWtmaUF2OEtqa0gwZVdL?=
 =?utf-8?B?RmZRRm9aaHphdmdydnZQMEFrZFYyelJRYlFNZEZFMWtFK3hTOVhuZDZaNDM4?=
 =?utf-8?B?aHRUY0huR0lXN3pOTlZjeFlFNGVhdjZ0dEJGa1grMUNIVHRLUG0wYUY0UVRs?=
 =?utf-8?B?dGlQN29CRUlFKzBtT1drTjJCcVQyeWVxZnNVbVpHZkVIck1ua3l4TURNRitH?=
 =?utf-8?B?N1JoSFRWSmlaMk5rRUNVQjdqdVlDbFY3aUd0SkdmTTl1OUhJQnpwVVdkb1lm?=
 =?utf-8?B?NGFhdDBKZWNrMGJkZVRhRGxjOGlQbmpqRVNocjBObWE1bUl6ZzdHb3IxSWRy?=
 =?utf-8?B?WnU0ZFpjbUY3cUhkRnl4aHNnMCtSUHhkMXJVanlrRHJIVGxHNmVCc2ZkdTNv?=
 =?utf-8?B?MVdPbkJObHRibVlUK0U2YnNWcmhDQVIzTjhZTXpqY0hyVDMwUW1qaVdNbXNt?=
 =?utf-8?B?RHROVE1Gb21JOFlLZE81anU1SHhPUkNKM3MxWkRRdUY1eitFYWY2a3pBdmNy?=
 =?utf-8?B?RVdPOXptM1pQWC9BK241MEQ0OVlRR3dJeDRlcnNGNWxwcnh3Kys2M1Z6L052?=
 =?utf-8?B?azdvYzFrSkhrMGJMZEJRUys2NU11RTJPbnlFcVlvbFFKaEt6cWNNU2doZGcz?=
 =?utf-8?B?WCtBclUwM3Vybk4rZ213enN1ODhQd1NmanF6MmZrZHg2M2tTQnZVVGpFLzl1?=
 =?utf-8?B?MTM0S1UrdURSUUpDc3dGR2ZZOUlYeWdCdzhJYTB1N2RtMVZHcEhITGlFWml2?=
 =?utf-8?B?dEJGekE2SjY1N0o0VE5VZ3VkQS9MVFlDTXRQK1NxbFZsejVKMTZYc0gvQUY5?=
 =?utf-8?B?UlR3NnFOMFFUbmlCOGFVakRDZGY3R1pWVkt4WWVzQzIvdHNXU1kwNk4zM3NF?=
 =?utf-8?B?UUhaMHIxWFpsNHhkeENYa2FFOE94dnZjVHRSaXFhT2VuK2hvTUZHdGJ4UVJD?=
 =?utf-8?B?ZDZ0dlNFRjZGZUxSNStQMTBJNmwxVVpRelhmalAvd09EVkxKL1RxeFF4bFFX?=
 =?utf-8?B?RDU2NHRzVjFkY2RkejZ6SXc1VmtETHEzZTZWeEZHOGI2UzEvM09XOUxHSFFR?=
 =?utf-8?B?MVNBc3MxT1ZsZ3dEMDV5d21DVXVzNlFxMWtSSXR3SjFXeDUxems0WGtOM2Y3?=
 =?utf-8?B?MldFc3BIRDEyWTRvd09rVTV3NnEwaTkwMmxsRXdmR0duZzVmZEVkeTZpdDJh?=
 =?utf-8?B?N2lzZDNmWUtvSDE5UjJSWFZWQWdJM2pOZzNJYnVETXJsam53SXNrT3l3WS9i?=
 =?utf-8?B?dnpLV0lZV1d1dmdSTXFvc1Qyelh6UTc4Y1p4MDh4UlJ1dHhMWGpyc09FUHdq?=
 =?utf-8?B?TlR5a2twR0NHNVVSVXFxREtBSjBPTitzQTgyZURSdCt5YktSL0s3U3NjWm1M?=
 =?utf-8?B?a0NvUU0wa2hMSDRFQUtVaTBRZ0pQVUNWWkcvdWJCN3VtdmRQbGhWUHRiZXRY?=
 =?utf-8?B?UlRyTXdMTDBLcFJ2NEU0YnQ0WlI0dDdzZ0Y3NDFJdVRYL1JMcEhvWUVQK2lR?=
 =?utf-8?B?MXRZSU1lU1RPLzc5TFVvZ2hZZ0VRQlR5RjQrMlJwQndWTVczZ2FQMy9UOWZI?=
 =?utf-8?B?UURQb04zVTdIdGZWdjZUWTJNU1BLMlNZRmlPemRKODgrMms2RklqWGw1QmFO?=
 =?utf-8?B?MzZaMWRxRkRzWlpFakh3NDAzV0hyMnJTdUR4QVpDN0loOHY2dCtQSFNjMVZy?=
 =?utf-8?B?Yk9kMVJrUmtnZzFoN2Y0dEpPdWgvUFVWOXVMM2lxV2w5ekc5ZjNtTGlxTUE3?=
 =?utf-8?B?d0NLS0YzczRIbGJsVDRUaERaRW5DeE5OTHJPZURVeXp5Ry9RWGJaWjZXU1VO?=
 =?utf-8?B?b2oxbVgydTlGeURWUkhNRm9WSHJkb2dZYVBYZFpmZ3BkRmpMYnJaNWxWNDhQ?=
 =?utf-8?B?TEdMcExRQ1BRM2dQcUhNWktBa0VUR05YMlBsZmp0UXE0RC9hQjJJSW1aL1BI?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47e58e52-1614-4cf4-5fa2-08da904122ed
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:51:06.2883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TkiVFGjpzA/r9fk0jH6EMKUBIWc2K0x1C2/E5girfGPRF/09mALFgiA4GhkREErEJk1GRP3ZXO5FV2Ck/XN+mNvb28qOBXxVtBw+E8Au/qA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3254
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/19] drm/i915/perf: Enable commands per
 clock reporting in OA
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

On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
> XEHPSDV and DG2 provide a way to configure bytes per clock vs commands
> per clock reporting. Enable command per clock setting on enabling OA.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h          |  3 +++
>   drivers/gpu/drm/i915/i915_pci.c          |  1 +
>   drivers/gpu/drm/i915/i915_perf.c         | 20 ++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_perf_oa_regs.h |  4 ++++
>   drivers/gpu/drm/i915/intel_device_info.h |  1 +
>   5 files changed, 29 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index b4733c5a01da..b2e8a44bd976 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1287,6 +1287,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
>   #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
>   
> +#define HAS_OA_BPC_REPORTING(dev_priv) \
> +	(INTEL_INFO(dev_priv)->has_oa_bpc_reporting)
> +
>   /*
>    * Set this flag, when platform requires 64K GTT page sizes or larger for
>    * device local memory access.
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index d8446bb25d5e..bd0b8502b91e 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1019,6 +1019,7 @@ static const struct intel_device_info adl_p_info = {
>   	.has_logical_ring_contexts = 1, \
>   	.has_logical_ring_elsq = 1, \
>   	.has_mslice_steering = 1, \
> +	.has_oa_bpc_reporting = 1, \
>   	.has_rc6 = 1, \
>   	.has_reset_engine = 1, \
>   	.has_rps = 1, \
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index efa7eda83edd..6fc4f0d8fc5a 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2745,10 +2745,12 @@ static int
>   gen12_enable_metric_set(struct i915_perf_stream *stream,
>   			struct i915_active *active)
>   {
> +	struct drm_i915_private *i915 = stream->perf->i915;
>   	struct intel_uncore *uncore = stream->uncore;
>   	struct i915_oa_config *oa_config = stream->oa_config;
>   	bool periodic = stream->periodic;
>   	u32 period_exponent = stream->period_exponent;
> +	u32 sqcnt1;
>   	int ret;
>   
>   	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
> @@ -2767,6 +2769,16 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
>   			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
>   			    : 0);
>   
> + 	/*
> + 	 * Initialize Super Queue Internal Cnt Register
> + 	 * Set PMON Enable in order to collect valid metrics.
> +	 * Enable commands per clock reporting in OA for XEHPSDV onward.
> + 	 */
> +	sqcnt1 = GEN12_SQCNT1_PMON_ENABLE |
> +		 (HAS_OA_BPC_REPORTING(i915) ? GEN12_SQCNT1_OABPC : 0);
> +
> +	intel_uncore_rmw(uncore, GEN12_SQCNT1, 0, sqcnt1);
> +
>   	/*
>   	 * Update all contexts prior writing the mux configurations as we need
>   	 * to make sure all slices/subslices are ON before writing to NOA
> @@ -2816,6 +2828,8 @@ static void gen11_disable_metric_set(struct i915_perf_stream *stream)
>   static void gen12_disable_metric_set(struct i915_perf_stream *stream)
>   {
>   	struct intel_uncore *uncore = stream->uncore;
> +	struct drm_i915_private *i915 = stream->perf->i915;
> +	u32 sqcnt1;
>   
>   	/* Reset all contexts' slices/subslices configurations. */
>   	gen12_configure_all_contexts(stream, NULL, NULL);
> @@ -2826,6 +2840,12 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
>   
>   	/* Make sure we disable noa to save power. */
>   	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
> +
> +	sqcnt1 = GEN12_SQCNT1_PMON_ENABLE |
> +		 (HAS_OA_BPC_REPORTING(i915) ? GEN12_SQCNT1_OABPC : 0);
> +
> + 	/* Reset PMON Enable to save power. */
> +	intel_uncore_rmw(uncore, GEN12_SQCNT1, sqcnt1, 0);
>   }
>   
>   static void gen7_oa_enable(struct i915_perf_stream *stream)
> diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> index 0ef3562ff4aa..381d94101610 100644
> --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> @@ -134,4 +134,8 @@
>   #define GDT_CHICKEN_BITS    _MMIO(0x9840)
>   #define   GT_NOA_ENABLE	    0x00000080
>   
> +#define GEN12_SQCNT1				_MMIO(0x8718)
> +#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> +#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
> +
>   #endif /* __INTEL_PERF_OA_REGS__ */
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 23bf230aa104..fc2a0660426e 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -163,6 +163,7 @@ enum intel_ppgtt_type {
>   	func(has_logical_ring_elsq); \
>   	func(has_media_ratio_mode); \
>   	func(has_mslice_steering); \
> +	func(has_oa_bpc_reporting); \
>   	func(has_one_eu_per_fuse_bit); \
>   	func(has_pooled_eu); \
>   	func(has_pxp); \


