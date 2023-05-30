Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 519D371546A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 06:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC68110E32A;
	Tue, 30 May 2023 04:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FEA510E32A
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 04:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685419764; x=1716955764;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=w1JMmJXoLmIh0ubU2zGQMcvdgN2FVeR9SlteR+019RY=;
 b=U95mIIZL5biyiAWBgkryo2wtwAyEUZLxxdHmSt37eXb3pNi05JzaCWRi
 0iXuYSVnt4FaSBS77j0yaDRvP0YiOMX5A4pj0aG46eJmZR73pNPlco/d1
 ozH7NIlDJIj6f8n4Sj+EcQUOz0oWAZBcA94Yz5nMtw5xlrlrS/o5Wx7DB
 /Vo8oQa+jlzxhryx+lcegqffDRltyWBrx+8Mpo7i+so4TM7j55DogGx7r
 3KHDxXTdubOr480PozJm9+TMHiuWtorSeyo2Mmw7UYV8R5s87m9XgMstE
 O39szDiB2bfUAIEVkgxRmGDoYjrxmxCtJDn5A0iV3+WV1raVTNXf11sZ8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="418295572"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="418295572"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 21:09:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="776139083"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="776139083"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 29 May 2023 21:09:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 21:09:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 21:09:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 29 May 2023 21:09:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 29 May 2023 21:09:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/XE/Jus/1QG8firVwKkMJMgcdr17CHGQqPwnmkTj3IkBT8HCjpeab0/JzHzOKhHzF2R+vYzYUJHEGw4nhDJRCUVKePF47kL3v82gc09j0W1+v1O6CR9vOeQEk8EZzy0GumGPKEefv4WVHThfPoHze4tQAZ0QkcduZtkQ5OEEeR65rSk4JofJBZLgVY6sdBt47dCt7SzA0IiHjCqhkE4QfOv6hOCWKBuTBiGUn63nvM8TcvT5xZJs0Pa5Mjn6krllhD/uliY8HeQ/QJnpX0hFkf0JYQL2s+fpKh91W3PpmIcFtll6gPaBSR2oxFDiJC3UWs8y+i45e98NavQE3wBGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KtNfRMHehAzcAMiBjJgITAPwB8XtnOIGJlKrC5ZHk1g=;
 b=E8AI1GOicO/or+EkeyJspZEUbtP0otdq6AaccBSk7PpO8QxPKA97LQLnnupB4LI9bjXVcoLr02+R6ZOzS15cWKx6/l2fC/QIL04HS1EgSt9h1NvYGNzK5+jCoU/79Cw19oFQU5tEgPMgV3MnOKvIRdqUkbii3wAepWWRFdRmBqe9M84mRz6LK/khjPUstma0bABnhSu0abQsDcABwwyyW+r2VCFmE4he0y/GwqJ+A8zjBBc1ySMS5HN4iWW7OdeyK8R5Pv5aaTGtpYzSix8UQzSTeohHBobRlhMvmASSx/6D84FiOuzqdtuRHAGFPqxgxKHzbPNwKPO1/z9fLO2f8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7742.namprd11.prod.outlook.com (2603:10b6:208:403::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Tue, 30 May
 2023 04:09:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 04:09:20 +0000
Message-ID: <5e55093f-3c7b-5b9c-2ed7-0f106db3d70a@intel.com>
Date: Tue, 30 May 2023 09:39:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <edf72904bc3bfcb9471cda19f6ef725c722e3f21.1682077472.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <edf72904bc3bfcb9471cda19f6ef725c722e3f21.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0212.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7742:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d80a1b3-21d0-4447-7f1c-08db60c3a4db
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IF4jtV3Eg183+VO3gWCMIcQx2v/ZAQcis09rhMr8ZqZbyR5q4unmLWGDT94sJmMQ7lU63aQridittl8GPmg6/wj9W8GSrk9Acu2qqI71rp08ApWkbGQ11FjlsCo67JsBUpJUcrmHtEtqDGop5Lz6ee5I896LxpwYvL2JSiALUqlajMXtcaIcpOHSKxQSl2AYnLffFhMWJzQKvHExOalwWz4OgKaQGyrvknljWoR5ka78be7nvXDdvCDiqWxZK0gamFNW/pYiuJRXcxCfxyQdmcMQcoZjUQ5GQRaZMk8EmSFgHoUFSM9XF+D8W/PczHtx40IjcvUDyEnqTRmPGmNxHssDvgkOpz/et1qNXGYCKKpGnWJOnUgAUKtLs/mfi2bs/2w7w93U75E9XJ++WYnD+9tEvUZ+CNQLHONW8xKyadUdaGeK+p2fwIbq0Iw+d4KaAb6fIgUGuzxYf/xR6VM4tnaNqiAwBvO6HUQ6R6NxmsAvi1H5tTGLK0wwMn9dUrU8LkludFfTuZwSvS0dOyIz84kviW8ZBKW46G185TJrh9orpho4gcqcA8AXxWeWDBWlwzZIQ0KGrv2DSQkWeEuSdZMa7K1peJRPGyNEXLTvIBpFXt0+TZWEsTmX7dND4wbYowtPxMgVpnbGZQEvXFgM2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(136003)(396003)(346002)(39860400002)(451199021)(66946007)(2616005)(31696002)(186003)(83380400001)(31686004)(5660300002)(2906002)(6512007)(26005)(6506007)(36756003)(53546011)(86362001)(478600001)(8936002)(66556008)(66476007)(8676002)(6666004)(82960400001)(316002)(38100700002)(6486002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXphUWJNMEpHNEJuMXFvdG9mL3Z4Vzl5Mk5QSVNjU2ZHTTIyYXV0MWRZME5Y?=
 =?utf-8?B?RHVScTJxM3YwK3hNT3RoTlhlYm1CZldJWTlHeUV5WVZnTDQ5RXNpbS9TUnEz?=
 =?utf-8?B?bGxjb2I1VGNRQ1REYzAwbFJydDBMTWRjSlhlU2VmUTdLR1ZuNlcxZWZFc2x2?=
 =?utf-8?B?YldJV3VkNXdyaCtqNEVadU5mQkR1aE84LzB5c0FwamhtaGVrN3hqQlZLSU1E?=
 =?utf-8?B?VlVlTHZQL2pVU2tMSnVQRHlPU1dWMWFaNWhWQk0vVUJiN2prMThiWDg3TWhu?=
 =?utf-8?B?eUJWdytnMmw2ZHI3cFdPOWpsQTNaWkR4VE14ajhIck9tbndsclN6Vm5rSk4x?=
 =?utf-8?B?WkJObEovZDZ5Vmd2R0dxUmNxMFdtNmkrNVhxYmJSNlZuZXY5alREZzVvZHRV?=
 =?utf-8?B?MTFIREJKckFENTBaNmY4dkFHUGE0NUsxZys3cTB5cXE0dFNtcTA5c1pVd25a?=
 =?utf-8?B?TnRtVEJjSmJiR09JbW8zdktjUkU2Nzc3MlZ6L2dhbllpbWwrT2R0TENFQ2ox?=
 =?utf-8?B?SVAxcHRHeFczVHppN212V3pvMFRrd3dnSmp6Z0RFc2RGWkx0eCtFR2NxK2Ru?=
 =?utf-8?B?OWxjSXJSUllwSW02WXZxaFFsRThRZXErd1M4ZElFY1l3aHdjZXdCWXVDUE5h?=
 =?utf-8?B?czVaQ3diUm9wZFlvOFlGbEdvTDI1NkZ3MWJUdFlHWmtGeVFZM1A1MnV5L3Iz?=
 =?utf-8?B?MkdxNHJwZTExNTBMY2JUQTk3bWFPVHNMbm1CZTNMNEw5dkNGUGlJcVFudnRy?=
 =?utf-8?B?NlpXWXJMMGZHWHVNN3VybWpkSXphQnh0L3lRcnJKMnNyTHE1NEJGR0tjN2xv?=
 =?utf-8?B?cGRKYUZWRFNLZmQ1bHllWTRQZ2tLZXE0aXRGK09NVTlNRHU4N2ZsVXhnOW1Z?=
 =?utf-8?B?RWhyaGZ6NDcyWitqa1ZRR0lYNkVEUUlySlhQakNrYlhkUmpERFpzWnI0TWtx?=
 =?utf-8?B?Ullxa3JRUU9aUU5EOXo4K2wxTFhKQXIxZXZWdUpIUDFFZWR2elN6eXhuclJC?=
 =?utf-8?B?RFlMUEtLQ2V0eGJ6b3pQaC9vemJUVTFaRmhDQ0llQjF6ckxTeDJuVkdtb1V0?=
 =?utf-8?B?czh2WXVBVUlYTVd1ZDhSNUMzZ2JSazN6N2F0YUhlV21HeUdwQTE5YzBlTE9W?=
 =?utf-8?B?ci9aWXlyNGN6ZnZQYThQWjhUbXVCOFJWYVJ5R3ByYWlVcHJ0djJkV3A3RmJo?=
 =?utf-8?B?UHFOZUVSMVNSUXpzREcrUFZaWXFhRjJQdXhibFhBWnNzMzZFNlh5Q0M3M3ZG?=
 =?utf-8?B?TWtvVmVkRHl2NGRnWDUvRU9xZGE3NjREVTkyb3JGWWpUS2tBS2pqZkJPTEtV?=
 =?utf-8?B?bTNDb05Hek4ybUZHVVZUZXZBb3dVcGZ2NmxRMGFubk9jNEVpYkdoSDZHeHk4?=
 =?utf-8?B?OUc1aE4wd3ZMYUVVU29zYU5aa3FMYzRyaUdDdmpsRitqc051RmtPS3VjVDVo?=
 =?utf-8?B?alljTmlGOW9LN2VMWmpYOVNyTktSazZmRXNMa1Y5QVF2RWl3dXl3SEUyelZm?=
 =?utf-8?B?WGlDK2ZHRTJlRlhuU2FSUDY1cU1FS203Nmk2aUNONGoyajN0VVlTNkVFVU15?=
 =?utf-8?B?NFdVenhKNWFVZFQva2tYK3NSYjN3WUZZYjdxeU0yZ1EwakxxelV2UGlmWXk0?=
 =?utf-8?B?VVNUSnMwZTd6WGw4R3d0SHp6SmFIdjYrYS9mQ21LbXdNRnl3a3luQ3hUSjNX?=
 =?utf-8?B?b0xkVUM4Wkl5TXRzbVJJOFZCaDl3MHJkSXU5Sjc0TXU3RUVSV01CanNNbC9j?=
 =?utf-8?B?b09PNnZ0dUdtK0JOaGhEUm5SZm10NTNWUDNWNzdILzY4czAyTjhzS0ZKZTcy?=
 =?utf-8?B?RlU5RHhEY3djOFU0SWsvbWcra09UcUdZTWZpdU5iazFuZE1QOHFKcnlzeTNW?=
 =?utf-8?B?UVF6S0VURStBYUtwZitCU09pTjdtZHdlaFRkR05hMXpSdjN5S3F1RGpObjMr?=
 =?utf-8?B?RXl5b0d6emFVMjlzNzdSaGF0Vkt1WFNVd1doaTB1TEZpOEZjQzBQcEVKaW43?=
 =?utf-8?B?U3VxRWhYQkVUN1FuTkF3NGFpNlMzRll5djByVllmU1IyUitBYXRKeEpkaFhs?=
 =?utf-8?B?RWMwYmZZTFRWaEozSm9nK0MrZ3dObEd1a2xrL1JMM3RVRHhaSTJwNWRZamlR?=
 =?utf-8?B?d1ZZVXdzcm1kaTNZYVZyVWgrbDdSTDlKaVdlMFVqT3JIKzRKR3pIN0c1YmNa?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d80a1b3-21d0-4447-7f1c-08db60c3a4db
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 04:09:20.7574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EvzxD1rldHWiUyszuEN6fUTVErLZT6tjAysXEp2n4JGJN3b0swYDowRXF3mvdp2qaI9tICe998GpQWUtmnT9mc7aSOs3iKztuflPNuvq0Mw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7742
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/edid: add
 drm_edid_read_switcheroo()
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 4/21/2023 5:17 PM, Jani Nikula wrote:
> Add a switcheroo variant to the struct drm_edid based EDID read
> functions.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/drm_edid.c | 29 +++++++++++++++++++++++++++++
>   include/drm/drm_edid.h     |  2 ++
>   2 files changed, 31 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 813ce00a106a..941f3d53a701 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -2844,6 +2844,35 @@ struct edid *drm_get_edid_switcheroo(struct drm_connector *connector,
>   }
>   EXPORT_SYMBOL(drm_get_edid_switcheroo);
>   
> +/**
> + * drm_edid_read_switcheroo - get EDID data for a vga_switcheroo output
> + * @connector: connector we're probing
> + * @adapter: I2C adapter to use for DDC
> + *
> + * Wrapper around drm_edid_read_ddc() for laptops with dual GPUs using one set
> + * of outputs. The wrapper adds the requisite vga_switcheroo calls to
> + * temporarily switch DDC to the GPU which is retrieving EDID.
> + *
> + * Return: Pointer to valid EDID or %NULL if we couldn't find any.
> + */
> +const struct drm_edid *drm_edid_read_switcheroo(struct drm_connector *connector,
> +						struct i2c_adapter *adapter)
> +{
> +	struct drm_device *dev = connector->dev;
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
> +	const struct drm_edid *drm_edid;
> +
> +	if (drm_WARN_ON_ONCE(dev, !dev_is_pci(dev->dev)))
> +		return NULL;
> +
> +	vga_switcheroo_lock_ddc(pdev);
> +	drm_edid = drm_edid_read_ddc(connector, adapter);
> +	vga_switcheroo_unlock_ddc(pdev);
> +
> +	return drm_edid;
> +}
> +EXPORT_SYMBOL(drm_edid_read_switcheroo);
> +
>   /**
>    * drm_edid_duplicate - duplicate an EDID and the extensions
>    * @edid: EDID to duplicate
> diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
> index 571885d32907..169755d3de19 100644
> --- a/include/drm/drm_edid.h
> +++ b/include/drm/drm_edid.h
> @@ -613,6 +613,8 @@ const struct drm_edid *drm_edid_read_ddc(struct drm_connector *connector,
>   const struct drm_edid *drm_edid_read_custom(struct drm_connector *connector,
>   					    int (*read_block)(void *context, u8 *buf, unsigned int block, size_t len),
>   					    void *context);
> +const struct drm_edid *drm_edid_read_switcheroo(struct drm_connector *connector,
> +						struct i2c_adapter *adapter);
>   int drm_edid_connector_update(struct drm_connector *connector,
>   			      const struct drm_edid *edid);
>   int drm_edid_connector_add_modes(struct drm_connector *connector);
