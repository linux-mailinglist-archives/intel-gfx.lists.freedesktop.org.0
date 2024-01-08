Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 884BA827652
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 18:28:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AE710E288;
	Mon,  8 Jan 2024 17:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3273F10E288;
 Mon,  8 Jan 2024 17:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704734909; x=1736270909;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Ra3HTnxk6x8ZEpOA0/v7cTM6XjG/Ld48d1HJuWeQE90=;
 b=BZJJIPOsO6fjDUJVOPbEXLRZqacJGnK3gMiZpaspyIqhhn566HN0YyYg
 ovb1YoVhEjDZSibHwj6LoHeeFX++QrtFX2uZU1jeDnK8p2Az/aGcfDB0D
 LK/Yrm9pnhfoBeUFXBJCK4X+qGAt4nondz9EXaGsX+9rLIz0fbkR8OHWY
 OSziJTscwmoet4qS9vbU6kY4XlcbMQNFl76ym3MU8juDA6OXUADbvSolH
 tuprY17PM0wDXhSa3weugc/ievgjNHXeWOvaZ7s195ep8EbMgBTTwjdGZ
 /+EyHYBlwvLqkqLgI9rzukZZMjMTaAzsr8NZ4N0BYbaE5huQ1J/0QbCfq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="429132094"
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; d="scan'208";a="429132094"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 09:28:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="924932936"
X-IronPort-AV: E=Sophos;i="6.04,180,1695711600"; d="scan'208";a="924932936"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 09:28:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 09:28:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 09:28:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 09:28:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 09:28:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mA9WF8ptdp61dO/fPJBnpnRAD3V3XxKtpoHDEb1nwB4S7Ocuwu9FdcVe92Sra688GpBfRhmKoov0lrildDw14/oDGOUzFqOXUV1Y+uv0rfdvaENUmweeG8vgb8cTFEkUoa51YpuPGbaiCZ6jEDvLnoT3CZmCPz3N9gXqBCZeV08H2rnWqgY+ahgk050Sztig+mdGy1RNSksf3RdvUAwjkq/1hpo1Knp7pL+qRpsADLG97RTLx+U4vHU2RBfIuMHcCWgx8gajprkRD5YGmwmPqVUK4tZmxnOmtzUcqvFXhknyTelVwIIBvuAYeOHBRzZuUqXcCXrVhyL1zW6BdQaD2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z30Sj3xfhg+92xCZYZgsabPUkbzpGbCyecNQPn/hD1g=;
 b=YUHRBy73gjT9Yz5BXJG2jXlFzizY0WLYdv2R54eElWeGejhMoqwUJumFOwBhyhaUKdp3VdqArx6Ku+3Zuaox61QYIcSkA5txESC8UuzsYfsWiKgNfqYhrmx+z82WeY1+Ir1aQO3wBMgnFAQP6OytdvKJ9t1zOzf+jKSfkwJTjUTlf2FUrfWllKN5Mw92CxYZv58v0HxuFx7FrbsGBxs1CekuX65EXG1RZKCbk2jAKyeNLx/cCAcLxZYRbNzRNv/DQDfspR/fgJIDTBvJMNzI/24rgtp9LfNewaX02JU3LGuWyt3so2XvEPJzDKrKDz0688e+s290Ae8b/Dbef/E29Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 17:27:51 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2d19:7dae:86c0:7513]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2d19:7dae:86c0:7513%6]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 17:27:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <170472095605.1993.691108924719228706@gjsousa-mobl2>
References: <20240105140538.183553-1-gustavo.sousa@intel.com>
 <170450007739.57734.9730932781578833450@5338d5abeb45>
 <170472095605.1993.691108924719228706@gjsousa-mobl2>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.IGT: failure for Update
 bxt_sanitize_cdclk() for Xe2_LPD (rev3)
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 8 Jan 2024 14:27:46 -0300
Message-ID: <170473486617.2509.12334250289552057392@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0203.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6557:EE_
X-MS-Office365-Filtering-Correlation-Id: b01c6fa3-ed55-4463-2c0c-08dc106f23ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JSj1rqfGPbAl8Sh1tsRN0MSE0flJa/NojCZ/sqCwVrslOMHzmJhG3HphGZ4QYWam2W3o5FyiCA5k+U5nNDjZdX4jkoker5cvB2zt0tosi3blOFRLFT61z7xIq5hWzeddYT1OetX/IPBfEwzPO862bD/4XzvgEG0aWCeg6J+d956vaRoUJi+0OslN1Gk4xPgoSHajgZwBplDiUlXtqVLoARkfbZ3hKKJKZnobScVsw3w8h30Iu8rhTttZqp7QEQtGAtaCi0BIOxO7DpY0BbWGrzGm2uRnedwuCZq2WGt1GnEtLL8TczhuxZj20rwNb1C6dslAJwGx8/dl4kGcoh9eZ29pvUbhfxIT85WpIzx5X5QJzlMq1wxZjwfWWD44ZIrEg7jan6gv8nNdivoJ37a19AwJtubbexVOrLaZQy2k4SIqMxdbXXzK9Y24Z/rX4oKBwLo7lVL4HopX+q/JpysUYQgvcFueX9cCWuuiDrmH7aFYdh6ByWR1dHBydORJ2hWGofb10aMSa5uOfULMIUzz+4V+84C7uOtpcOdBnPloUXwOOi3UaWtdYNvzP6oAawABKRu54nDO4wwVubzTVkMeyWb/HtkCcYzEc24lWrEfVQA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(366004)(396003)(136003)(346002)(376002)(230922051799003)(230273577357003)(230173577357003)(1800799012)(186009)(451199024)(64100799003)(2906002)(30864003)(6486002)(26005)(66556008)(66946007)(66476007)(41300700001)(86362001)(82960400001)(33716001)(316002)(5660300002)(4326008)(6506007)(15650500001)(83380400001)(9686003)(6666004)(6512007)(478600001)(44832011)(966005)(8936002)(38100700002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1RiNCtXNnVjaGtyT1hsUzhiUVVuTTBXeDROREZQYlVmTTQ3Wm1PcTZDY2hu?=
 =?utf-8?B?ZEhNQkwweXQ0YlpVMjVwK3FXZkFhUVNENjE2amg1NFlHRlpWWEdsWVZPYkZw?=
 =?utf-8?B?UTJ6MVYvY0Z6VTdESnBJMHFyYVQ5Wk1hNi9QaDJ6SE1IbjlmRUlIOXRDeFdU?=
 =?utf-8?B?dTdLdjJYcFgvbUg5TkQ0a2tYa21JeUpSaHl2ZDl4UlI2UW5lREFFQmVWeXE1?=
 =?utf-8?B?ZHpRdk9wKzJBaUY4Qmo2b3B1Ry9PUTZDcGQzUXpPVUtPUEJCUzhkSTEzUDE2?=
 =?utf-8?B?MlVnUmliVk1Hd0hUTURJU21rck5XTXJQWkF5UGttb2ZRcnJZeDhUNWZkemFY?=
 =?utf-8?B?d2JiVW5IeGM5VmFUa0NSZkNnZGdwbXFORmVMQ3U2UnIwUk0xT0FleW9WVTFY?=
 =?utf-8?B?NklBbkJ0c0gzMWZtRXFXOUJYYnVQRzhXRFdGNjhXTXVLekZnUXhaU2FJajdt?=
 =?utf-8?B?VWpJMTU2V3VHRU1XdWo1cU1uSTBpSGoxQ0Q0eDA4NjZVVUdvZWJranpkSjZt?=
 =?utf-8?B?a3h5TDBtSzNxVHFRcXdiWVlJUzlrbkNkSHl2NlI1bk9QMFc2ZVJXcVB0N2VS?=
 =?utf-8?B?aTRoODJDSVVOWFV2VVd2Sjd3Mm4xOUE4UmhEYkhsb3NWVmZ2WWs4TWgwbndX?=
 =?utf-8?B?Vk16dTZLNFFOMExkTEdaalNoQktiQVE1ZFQzeCt4YXBWRHFyaDR4U1RrKzZT?=
 =?utf-8?B?UjVvb0xBSHZXRW01UFdrS3pLK29TcFRSdjc3Rkk1SG1FQmZzNnVmVG0wcXI0?=
 =?utf-8?B?MEdZcjF6alRjRHNENzhNVlZFN3p0cEpBYkgzTlU1MUgvc1RKOUNhQ2VzSXFQ?=
 =?utf-8?B?WitlRkQzY3ZWUmQvWVl2S0M1bVBjWWRmc3NiR1B5YnU1bldWY3BZWWpwV2Y3?=
 =?utf-8?B?WUFFK01iWURibTljdmlKY2ttRE5ITlNTYjlNTk9ScDcvZ05JSHE1d0FqVmVR?=
 =?utf-8?B?ZnVGTTFjUFdxZkpoczg5clJHRDVCMnFTQ2Z5YTZpN1JvRjRiYXJ2blFIRFZi?=
 =?utf-8?B?REtHUjJFbVFIdDNFUnVPb2NQM0ExQkVuMEFEWUcyb0tWeVd5TkN0a2tiakRz?=
 =?utf-8?B?a1ZFSk5iSFVTWWFyVzFESWY3M0hsZHNTM21ad0pSNGFadzJtSUYxT0dHRHho?=
 =?utf-8?B?Q0RFS283ZU5zb211cjlIWjhnOXhuQ2dTZUl0L3JXZktnMStSbTBHZ2piemM0?=
 =?utf-8?B?WXlILzRmYVNYZERScUdGYUJFWWF2d3RZZHRmN2RzSGNkWCtKTkpDdkIrVHJW?=
 =?utf-8?B?ME9KenlTTTR5YlpPeEhLaWZYbVpSSFlPeFoxTlJCTDMrRGJnVzV2cFhzVGJH?=
 =?utf-8?B?OXVGc1dZR2dya21SaHozVG8zTHdOVjB6Rk5LTy9kLzJvS1haVTMvUzhHSm5m?=
 =?utf-8?B?UFRnUnQzZWh6UlZOUS9UT1piL2tFTG03ZElEcllLa3BNV1lLeHFqMUIwc1Rk?=
 =?utf-8?B?dHNWejBnNzcwZ21jQVR3RUxxYmFkU25EY1RuWUE5TDcvMURaaXoyejZleGNv?=
 =?utf-8?B?K2Y5enJmUG9ZQTh6eWliRm9YTGYxaE5MODJKL042ei9DZnFmMysxOXFJbEFX?=
 =?utf-8?B?cGJDTmVTQk43RjIyeFEvTmE5ZFEya3pVZDd0SHJxeUVRUS9Kd2VnRzh3MjhR?=
 =?utf-8?B?YkZwTm5oSWZjYmpnRGQweE84anZrTVhubnprUFhpNmo0Q21SMFc0VUtFYnQr?=
 =?utf-8?B?TTl0Ry90dzV6NkxQTnNEdDI4T29jVFNNNUN1UjVJZ3V1TWEwcXNVOGcveU5j?=
 =?utf-8?B?QzBJRG1lWVpsR2lKbnJuSEM2WTdPQ3NzRjQwWVZRWG5TRnRpS2JrYXc4RlJa?=
 =?utf-8?B?eFRtbitacXIrNU1adzgya3F6SjNUSUViaVJ5YVlvVzhwOEFycTNsWDdVaEFT?=
 =?utf-8?B?ZE1KMjMyWVZMcmd6SmlXbW8rZHg1N0hXVG5xOGhwc1pwSE9mcEtZWFhXTlVX?=
 =?utf-8?B?Z0o3UEFZUWp4NTUxeTA1NW8xdW9nOWY5MnhjUmEvWTF4MzJwVHQ3bkJyQzVM?=
 =?utf-8?B?L2pOb0s2akliTkduOWo0Zk9DdE9yNmkrTThWRHRSZEgrTVNLdHhlY0V6MGk4?=
 =?utf-8?B?NmE0ZEM4SGJVWTBWdHdHUUIwVGorQUtHY1VTQXNLRGozZWtpV09EekMwU045?=
 =?utf-8?B?aS9YejlEci8wamFMTHlodkg5dGNEMS9WOUlMbHEvOW1BLzRPV2N3MmM2QVY3?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b01c6fa3-ed55-4463-2c0c-08dc106f23ec
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 17:27:51.5955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h/sI5mgY2IZqy/HiXiT3eqDxaKYRSaC1tJHNto7pVlfL8cpOx6p9w1BC6nMsSNx9Jcb0YrtpRqrYt0IowhohLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Gustavo Sousa (2024-01-08 10:35:56-03:00)
>Quoting Patchwork (2024-01-05 21:14:37-03:00)
>>=3D=3D Series Details =3D=3D
>>
>>Series: Update bxt_sanitize_cdclk() for Xe2_LPD (rev3)
>>URL   : https://patchwork.freedesktop.org/series/128175/
>>State : failure
>>
>>=3D=3D Summary =3D=3D
>>
>>CI Bug Log - changes from CI_DRM_14080_full -> Patchwork_128175v3_full
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>>
>>Summary
>>-------
>>
>>  **FAILURE**
>>
>>  Serious unknown changes coming with Patchwork_128175v3_full absolutely =
need to be
>>  verified manually.
>> =20
>>  If you think the reported changes have nothing to do with the changes
>>  introduced in Patchwork_128175v3_full, please notify your bug team (I91=
5-ci-infra@lists.freedesktop.org) to allow them
>>  to document this new failure mode, which will reduce false positives in=
 CI.
>>
>> =20
>>
>>Participating hosts (8 -> 8)
>>------------------------------
>>
>>  No changes in participating hosts
>>
>>Possible new issues
>>-------------------
>>
>>  Here are the unknown changes that may have been introduced in Patchwork=
_128175v3_full:
>>
>>### IGT changes ###
>>
>>#### Possible regressions ####
>>
>>  * igt@kms_vblank@query-busy-hang@pipe-c-hdmi-a-2:
>>    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
>>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk6/=
igt@kms_vblank@query-busy-hang@pipe-c-hdmi-a-2.html
>>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shard=
-glk7/igt@kms_vblank@query-busy-hang@pipe-c-hdmi-a-2.html
>
>The dmesg output do not provide conclusive data for the INCOMPLETE status =
and I
>believe the issue is unrelated, since the real functional change is on the
>driver initialization path.
>
>However, for sanity sake, as GLK takes the bxt_sanitize_cdclk() path durin=
g
>initialization, could we re-report, please?

Re-sending this now as a member of I915-ci-infra@lists.freedesktop.org; my
previous email went into a moderation queue because I was not a member.

--
Gustavo Sousa

>
>--
>Gustavo Sousa
>
>>
>> =20
>>Known issues
>>------------
>>
>>  Here are the changes found in Patchwork_128175v3_full that come from kn=
own issues:
>>
>>### CI changes ###
>>
>>#### Possible fixes ####
>>
>>  * boot:
>>    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [P=
ASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][1=
3], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [FAIL][18], [PASS][19],=
 [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([=
i915#8293]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30],=
 [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [P=
ASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS=
][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48])
>>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk9/=
boot.html
>>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk9/=
boot.html
>>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk9/=
boot.html
>>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk8/=
boot.html
>>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk8/=
boot.html
>>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk8/=
boot.html
>>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk8/=
boot.html
>>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk7=
/boot.html
>>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk7=
/boot.html
>>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk7=
/boot.html
>>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk7=
/boot.html
>>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk6=
/boot.html
>>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk6=
/boot.html
>>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk6=
/boot.html
>>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk5=
/boot.html
>>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk5=
/boot.html
>>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk4=
/boot.html
>>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk4=
/boot.html
>>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk4=
/boot.html
>>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk3=
/boot.html
>>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk3=
/boot.html
>>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk3=
/boot.html
>>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk3=
/boot.html
>>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk9/boot.html
>>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk9/boot.html
>>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk9/boot.html
>>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk9/boot.html
>>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk8/boot.html
>>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk8/boot.html
>>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk8/boot.html
>>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk7/boot.html
>>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk7/boot.html
>>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk6/boot.html
>>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk6/boot.html
>>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk6/boot.html
>>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk5/boot.html
>>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk5/boot.html
>>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk5/boot.html
>>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk4/boot.html
>>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk4/boot.html
>>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk4/boot.html
>>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk3/boot.html
>>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk3/boot.html
>>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk3/boot.html
>>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk1/boot.html
>>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk1/boot.html
>>
>> =20
>>
>>### IGT changes ###
>>
>>#### Issues hit ####
>>
>>  * igt@drm_fdinfo@most-busy-check-all@bcs0:
>>    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#8414]) +19 other te=
sts skip
>>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-1/igt@drm_fdinfo@most-busy-check-all@bcs0.html
>>
>>  * igt@drm_fdinfo@virtual-busy-hang:
>>    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#8414])
>>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-8/igt@drm_fdinfo@virtual-busy-hang.html
>>
>>  * igt@gem_busy@semaphore:
>>    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#3936])
>>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-8/igt@gem_busy@semaphore.html
>>
>>  * igt@gem_ccs@block-copy-compressed:
>>    - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#3555])
>>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-4/igt@gem_ccs@block-copy-compressed.html
>>
>>  * igt@gem_close_race@multigpu-basic-process:
>>    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#7697])
>>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-tglu-10/igt@gem_close_race@multigpu-basic-process.html
>>    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#7697])
>>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-10/igt@gem_close_race@multigpu-basic-process.html
>>
>>  * igt@gem_ctx_persistence@engines-hang:
>>    - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#1099=
])
>>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-snb4/igt@gem_ctx_persistence@engines-hang.html
>>
>>  * igt@gem_ctx_persistence@hang:
>>    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#8555])
>>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-1/igt@gem_ctx_persistence@hang.html
>>
>>  * igt@gem_ctx_persistence@heartbeat-close:
>>    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#8555])
>>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg1-19/igt@gem_ctx_persistence@heartbeat-close.html
>>
>>  * igt@gem_eio@hibernate:
>>    - shard-dg2:          NOTRUN -> [ABORT][58] ([i915#7975] / [i915#8213=
])
>>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-10/igt@gem_eio@hibernate.html
>>
>>  * igt@gem_eio@reset-stress:
>>    - shard-snb:          NOTRUN -> [FAIL][59] ([i915#8898])
>>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-snb4/igt@gem_eio@reset-stress.html
>>    - shard-dg1:          [PASS][60] -> [FAIL][61] ([i915#5784])
>>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg1-=
17/igt@gem_eio@reset-stress.html
>>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg1-18/igt@gem_eio@reset-stress.html
>>
>>  * igt@gem_exec_balancer@bonded-true-hang:
>>    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4812]) +1 other tes=
t skip
>>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-1/igt@gem_exec_balancer@bonded-true-hang.html
>>
>>  * igt@gem_exec_capture@many-4k-incremental:
>>    - shard-mtlp:         NOTRUN -> [FAIL][63] ([i915#9606])
>>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-4/igt@gem_exec_capture@many-4k-incremental.html
>>
>>  * igt@gem_exec_fair@basic-none-share@rcs0:
>>    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#2842])
>>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk4=
/igt@gem_exec_fair@basic-none-share@rcs0.html
>>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html
>>
>>  * igt@gem_exec_fair@basic-pace-share:
>>    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3539] / [i915#4852]=
) +1 other test skip
>>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-2/igt@gem_exec_fair@basic-pace-share.html
>>
>>  * igt@gem_exec_fair@basic-pace-solo:
>>    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4473])
>>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-7/igt@gem_exec_fair@basic-pace-solo.html
>>
>>  * igt@gem_exec_fair@basic-pace-solo@rcs0:
>>    - shard-tglu:         [PASS][68] -> [FAIL][69] ([i915#2842]) +1 other=
 test fail
>>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-tglu=
-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>>
>>  * igt@gem_exec_fair@basic-pace@rcs0:
>>    - shard-rkl:          [PASS][70] -> [FAIL][71] ([i915#2842]) +4 other=
 tests fail
>>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl-=
4/igt@gem_exec_fair@basic-pace@rcs0.html
>>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
>>
>>  * igt@gem_exec_fair@basic-throttle@rcs0:
>>    - shard-glk:          NOTRUN -> [FAIL][72] ([i915#2842]) +1 other tes=
t fail
>>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk8/igt@gem_exec_fair@basic-throttle@rcs0.html
>>
>>  * igt@gem_exec_fence@concurrent:
>>    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#4812])
>>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-8/igt@gem_exec_fence@concurrent.html
>>
>>  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>>    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3281]) +7 other tes=
ts skip
>>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>>
>>  * igt@gem_exec_reloc@basic-range:
>>    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#3281]) +7 other tes=
ts skip
>>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-8/igt@gem_exec_reloc@basic-range.html
>>
>>  * igt@gem_exec_suspend@basic-s4-devices@smem:
>>    - shard-tglu:         [PASS][76] -> [ABORT][77] ([i915#7975] / [i915#=
8213])
>>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-tglu=
-2/igt@gem_exec_suspend@basic-s4-devices@smem.html
>>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
>>
>>  * igt@gem_lmem_evict@dontneed-evict-race:
>>    - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#4613] / [i915#7582]=
)
>>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-tglu-10/igt@gem_lmem_evict@dontneed-evict-race.html
>>
>>  * igt@gem_lmem_swapping@parallel-random:
>>    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#4613=
])
>>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-glk8/igt@gem_lmem_swapping@parallel-random.html
>>
>>  * igt@gem_lmem_swapping@random-engines:
>>    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4613]) +1 other tes=
t skip
>>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-8/igt@gem_lmem_swapping@random-engines.html
>>
>>  * igt@gem_lmem_swapping@smem-oom@lmem0:
>>    - shard-dg1:          [PASS][81] -> [DMESG-WARN][82] ([i915#4936] / [=
i915#5493])
>>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg1-=
18/igt@gem_lmem_swapping@smem-oom@lmem0.html
>>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
>>
>>  * igt@gem_madvise@dontneed-before-exec:
>>    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#3282]) +2 other tes=
ts skip
>>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-8/igt@gem_madvise@dontneed-before-exec.html
>>
>>  * igt@gem_mmap@pf-nonblock:
>>    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#4083]) +1 other tes=
t skip
>>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-4/igt@gem_mmap@pf-nonblock.html
>>
>>  * igt@gem_mmap_gtt@zero-extend:
>>    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4077]) +6 other tes=
ts skip
>>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-1/igt@gem_mmap_gtt@zero-extend.html
>>
>>  * igt@gem_mmap_wc@write-wc-read-gtt:
>>    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4083]) +1 other tes=
t skip
>>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-1/igt@gem_mmap_wc@write-wc-read-gtt.html
>>
>>  * igt@gem_partial_pwrite_pread@reads-uncached:
>>    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3282]) +2 other tes=
ts skip
>>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-10/igt@gem_partial_pwrite_pread@reads-uncached.html
>>
>>  * igt@gem_pxp@create-regular-buffer:
>>    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#4270]) +2 other tes=
ts skip
>>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-7/igt@gem_pxp@create-regular-buffer.html
>>
>>  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>>    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4270])
>>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-1/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
>>
>>  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
>>    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#8428]) +3 other tes=
ts skip
>>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-7/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html
>>
>>  * igt@gem_tiling_max_stride:
>>    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#4077]) +6 other tes=
ts skip
>>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-4/igt@gem_tiling_max_stride.html
>>
>>  * igt@gem_unfence_active_buffers:
>>    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#4879])
>>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-8/igt@gem_unfence_active_buffers.html
>>
>>  * igt@gem_userptr_blits@map-fixed-invalidate:
>>    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#3297] / [i915#4880]=
) +1 other test skip
>>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate.html
>>
>>  * igt@gem_userptr_blits@unsync-unmap-cycles:
>>    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#3297])
>>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-4/igt@gem_userptr_blits@unsync-unmap-cycles.html
>>
>>  * igt@gen3_render_tiledy_blits:
>>    - shard-mtlp:         NOTRUN -> [SKIP][95] ([fdo#109289]) +2 other te=
sts skip
>>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-8/igt@gen3_render_tiledy_blits.html
>>
>>  * igt@gen7_exec_parse@basic-rejected:
>>    - shard-dg2:          NOTRUN -> [SKIP][96] ([fdo#109289])
>>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-10/igt@gen7_exec_parse@basic-rejected.html
>>    - shard-tglu:         NOTRUN -> [SKIP][97] ([fdo#109289])
>>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-tglu-10/igt@gen7_exec_parse@basic-rejected.html
>>
>>  * igt@gen9_exec_parse@bb-large:
>>    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#2856]) +1 other tes=
t skip
>>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-mtlp-4/igt@gen9_exec_parse@bb-large.html
>>
>>  * igt@gen9_exec_parse@bb-oversize:
>>    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#2856])
>>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/shar=
d-dg2-1/igt@gen9_exec_parse@bb-oversize.html
>>
>>  * igt@i915_module_load@reload-with-fault-injection:
>>    - shard-rkl:          [PASS][100] -> [ABORT][101] ([i915#9820])
>>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-7/igt@i915_module_load@reload-with-fault-injection.html
>>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-6/igt@i915_module_load@reload-with-fault-injection.html
>>
>>  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>>    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#8436])
>>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
>>
>>  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>>    - shard-tglu:         NOTRUN -> [WARN][103] ([i915#2681]) +3 other te=
sts warn
>>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>>
>>  * igt@i915_pm_rps@basic-api:
>>    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#6621])
>>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@i915_pm_rps@basic-api.html
>>
>>  * igt@i915_power@sanity:
>>    - shard-mtlp:         [PASS][105] -> [SKIP][106] ([i915#7984])
>>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-mtl=
p-8/igt@i915_power@sanity.html
>>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@i915_power@sanity.html
>>
>>  * igt@i915_suspend@basic-s3-without-i915:
>>    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#6645])
>>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
>>
>>  * igt@kms_addfb_basic@basic-y-tiled-legacy:
>>    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4215] / [i915#5190=
])
>>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>>
>>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-=
y-rc-ccs:
>>    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#8709]) +7 other te=
sts skip
>>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-=
a-3-y-rc-ccs.html
>>
>>  * igt@kms_async_flips@crc@pipe-c-hdmi-a-3:
>>    - shard-dg2:          NOTRUN -> [FAIL][110] ([i915#8247]) +3 other te=
sts fail
>>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-7/igt@kms_async_flips@crc@pipe-c-hdmi-a-3.html
>>
>>  * igt@kms_async_flips@crc@pipe-d-edp-1:
>>    - shard-mtlp:         NOTRUN -> [FAIL][111] ([i915#8247]) +3 other te=
sts fail
>>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_async_flips@crc@pipe-d-edp-1.html
>>
>>  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
>>    - shard-dg1:          NOTRUN -> [FAIL][112] ([i915#8247]) +3 other te=
sts fail
>>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-17/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html
>>
>>  * igt@kms_atomic_transition@plane-all-modeset-transition:
>>    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#1769] / [i915#3555=
])
>>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition.html
>>
>>  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panel=
s:
>>    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#1769] / [i915#3555=
])
>>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-p=
anels.html
>>    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#1769] / [i915#3555=
])
>>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-=
panels.html
>>
>>  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>>    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#4538] / [i915#5286=
])
>>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-16/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
>>
>>  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>>    - shard-tglu:         NOTRUN -> [SKIP][117] ([fdo#111615] / [i915#528=
6])
>>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
>>
>>  * igt@kms_big_fb@4-tiled-addfb:
>>    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#5286])
>>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_big_fb@4-tiled-addfb.html
>>
>>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>>    - shard-mtlp:         [PASS][119] -> [FAIL][120] ([i915#5138])
>>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-mtl=
p-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>>
>>  * igt@kms_big_fb@linear-64bpp-rotate-270:
>>    - shard-mtlp:         NOTRUN -> [SKIP][121] ([fdo#111614])
>>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_big_fb@linear-64bpp-rotate-270.html
>>
>>  * igt@kms_big_fb@linear-8bpp-rotate-90:
>>    - shard-dg2:          NOTRUN -> [SKIP][122] ([fdo#111614]) +1 other t=
est skip
>>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_big_fb@linear-8bpp-rotate-90.html
>>
>>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>>    - shard-tglu:         [PASS][123] -> [FAIL][124] ([i915#3743])
>>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-tgl=
u-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.ht=
ml
>>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-f=
lip.html
>>
>>  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>>    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#5190]) +7 other te=
sts skip
>>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>>
>>  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>>    - shard-mtlp:         NOTRUN -> [SKIP][126] ([fdo#111615]) +5 other t=
ests skip
>>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
>>
>>  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>>    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4538] / [i915#5190=
]) +2 other tests skip
>>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
>>
>>  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>>    - shard-tglu:         NOTRUN -> [SKIP][128] ([fdo#111615])
>>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
>>
>>  * igt@kms_ccs@pipe-c-bad-rotation-90-4-tiled-mtl-rc-ccs-cc:
>>    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#5354] / [i915#6095=
]) +12 other tests skip
>>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-4-tiled-mtl-rc-ccs-cc.html
>>
>>  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
>>    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#5354] / [i915#6095=
]) +31 other tests skip
>>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc=
.html
>>
>>  * igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:
>>    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#5354] / [i915#6095=
]) +3 other tests skip
>>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-16/igt@kms_ccs@pipe-d-ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html
>>
>>  * igt@kms_cdclk@mode-transition:
>>    - shard-glk:          NOTRUN -> [SKIP][132] ([fdo#109271]) +100 other=
 tests skip
>>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-glk8/igt@kms_cdclk@mode-transition.html
>>
>>  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>>    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4087] / [i915#7213=
]) +3 other tests skip
>>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
>>
>>  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>>    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#4087]) +3 other te=
sts skip
>>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
>>
>>  * igt@kms_chamelium_color@gamma:
>>    - shard-mtlp:         NOTRUN -> [SKIP][135] ([fdo#111827])
>>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_chamelium_color@gamma.html
>>
>>  * igt@kms_chamelium_edid@vga-edid-read:
>>    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#7828]) +2 other te=
sts skip
>>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_chamelium_edid@vga-edid-read.html
>>
>>  * igt@kms_chamelium_hpd@hdmi-hpd:
>>    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#7828]) +4 other te=
sts skip
>>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_chamelium_hpd@hdmi-hpd.html
>>
>>  * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
>>    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#7828]) +4 other te=
sts skip
>>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html
>>
>>  * igt@kms_content_protection@atomic:
>>    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#6944])
>>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_content_protection@atomic.html
>>
>>  * igt@kms_content_protection@atomic@pipe-a-dp-4:
>>    - shard-dg2:          NOTRUN -> [TIMEOUT][140] ([i915#7173])
>>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html
>>
>>  * igt@kms_content_protection@lic:
>>    - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#6944] / [i915#7116=
] / [i915#7118])
>>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_content_protection@lic.html
>>
>>  * igt@kms_content_protection@srm:
>>    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#7118]) +1 other te=
st skip
>>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-6/igt@kms_content_protection@srm.html
>>
>>  * igt@kms_cursor_crc@cursor-onscreen-256x85:
>>    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#8814])
>>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html
>>
>>  * igt@kms_cursor_crc@cursor-random-512x170:
>>    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3359]) +1 other te=
st skip
>>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html
>>    - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#3359]) +1 other te=
st skip
>>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_cursor_crc@cursor-random-512x170.html
>>
>>  * igt@kms_cursor_crc@cursor-sliding-max-size:
>>    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#3555] / [i915#8814=
]) +1 other test skip
>>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_cursor_crc@cursor-sliding-max-size.html
>>
>>  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>>    - shard-tglu:         NOTRUN -> [SKIP][147] ([fdo#109274])
>>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
>>    - shard-dg2:          NOTRUN -> [SKIP][148] ([fdo#109274] / [i915#535=
4])
>>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
>>
>>  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>>    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#9227])
>>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
>>
>>  * igt@kms_display_modes@extended-mode-basic:
>>    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#3555] / [i915#8827=
])
>>   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-7/igt@kms_display_modes@extended-mode-basic.html
>>
>>  * igt@kms_display_modes@mst-extended-mode-negative:
>>    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#8588])
>>   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_display_modes@mst-extended-mode-negative.html
>>
>>  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>>    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#3804])
>>   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
>>
>>  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>>    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#3840])
>>   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>>
>>  * igt@kms_dsc@dsc-with-output-formats:
>>    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#3555] / [i915#3840=
])
>>   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_dsc@dsc-with-output-formats.html
>>
>>  * igt@kms_feature_discovery@display-3x:
>>    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#1839])
>>   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-7/igt@kms_feature_discovery@display-3x.html
>>
>>  * igt@kms_feature_discovery@dp-mst:
>>    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#9337])
>>   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_feature_discovery@dp-mst.html
>>    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#9337])
>>   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_feature_discovery@dp-mst.html
>>
>>  * igt@kms_flip@2x-dpms-vs-vblank-race:
>>    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#3637]) +7 other te=
sts skip
>>   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_flip@2x-dpms-vs-vblank-race.html
>>
>>  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>>    - shard-dg1:          NOTRUN -> [SKIP][159] ([fdo#111825] / [i915#993=
4])
>>   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-16/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
>>
>>  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>>    - shard-dg2:          NOTRUN -> [SKIP][160] ([fdo#109274]) +2 other t=
ests skip
>>   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
>>
>>  * igt@kms_flip@2x-flip-vs-rmfb:
>>    - shard-tglu:         NOTRUN -> [SKIP][161] ([fdo#109274] / [i915#363=
7])
>>   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_flip@2x-flip-vs-rmfb.html
>>
>>  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling=
@pipe-a-default-mode:
>>    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#3555] / [i915#8810=
])
>>   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downsca=
ling@pipe-a-default-mode.html
>>
>>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-dow=
nscaling@pipe-a-default-mode:
>>    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#2672] / [i915#3555=
])
>>   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs=
-downscaling@pipe-a-default-mode.html
>>
>>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-ups=
caling@pipe-a-default-mode:
>>    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#2672]) +1 other te=
st skip
>>   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs=
-upscaling@pipe-a-default-mode.html
>>
>>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@p=
ipe-a-valid-mode:
>>    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#2672]) +1 other te=
st skip
>>   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscalin=
g@pipe-a-valid-mode.html
>>
>>  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
>>    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#8708]) +7 other te=
sts skip
>>   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-=
gtt.html
>>
>>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>>    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#1825]) +21 other t=
ests skip
>>   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.h=
tml
>>
>>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
>>    - shard-dg1:          NOTRUN -> [SKIP][168] ([fdo#111825]) +3 other t=
ests skip
>>   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-rende=
r.html
>>
>>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>>    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#5354]) +35 other t=
ests skip
>>   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.htm=
l
>>
>>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:
>>    - shard-snb:          [PASS][170] -> [SKIP][171] ([fdo#109271]) +12 o=
ther tests skip
>>   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-snb=
7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
>>   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.=
html
>>
>>  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>>    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#5439])
>>   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-16/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>>
>>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-w=
c:
>>    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#8708]) +6 other te=
sts skip
>>   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mma=
p-wc.html
>>
>>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
>>    - shard-tglu:         NOTRUN -> [SKIP][174] ([fdo#110189]) +5 other t=
ests skip
>>   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt=
.html
>>
>>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-blt:
>>    - shard-snb:          NOTRUN -> [SKIP][175] ([fdo#109271]) +73 other =
tests skip
>>   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-snb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-blt.=
html
>>
>>  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>>    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#5439])
>>   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>>
>>  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>>    - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#5460])
>>   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
>>
>>  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>>    - shard-tglu:         NOTRUN -> [SKIP][178] ([fdo#109280]) +7 other t=
ests skip
>>   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap=
-wc.html
>>
>>  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>>    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3458]) +12 other t=
ests skip
>>   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
>>
>>  * igt@kms_frontbuffer_tracking@psr-slowdraw:
>>    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#3458])
>>   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-16/igt@kms_frontbuffer_tracking@psr-slowdraw.html
>>
>>  * igt@kms_hdr@static-toggle-suspend:
>>    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#3555] / [i915#8228=
])
>>   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-7/igt@kms_hdr@static-toggle-suspend.html
>>
>>  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>>    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#4816])
>>   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>>    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#1839])
>>   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>>
>>  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>>    - shard-glk:          NOTRUN -> [FAIL][184] ([i915#4573]) +1 other te=
st fail
>>   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-glk6/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html
>>
>>  * igt@kms_plane_multiple@tiling-y:
>>    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#8806])
>>   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_plane_multiple@tiling-y.html
>>
>>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe=
-b-edp-1:
>>    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#5176]) +7 other te=
sts skip
>>   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@=
pipe-b-edp-1.html
>>
>>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe=
-b-hdmi-a-2:
>>    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#9423]) +5 other te=
sts skip
>>   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@p=
ipe-b-hdmi-a-2.html
>>
>>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@p=
ipe-b-hdmi-a-3:
>>    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#9423]) +11 other t=
ests skip
>>   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-forma=
t@pipe-b-hdmi-a-3.html
>>
>>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@p=
ipe-b-hdmi-a-4:
>>    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#9423]) +3 other te=
sts skip
>>   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-form=
at@pipe-b-hdmi-a-4.html
>>
>>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pi=
pe-a-hdmi-a-1:
>>    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#5176] / [i915#9423=
]) +1 other test skip
>>   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation=
@pipe-a-hdmi-a-1.html
>>
>>  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d-=
hdmi-a-1:
>>    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#9423]) +3 other te=
sts skip
>>   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pi=
pe-d-hdmi-a-1.html
>>
>>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe=
-b-hdmi-a-3:
>>    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#5235] / [i915#9423=
]) +7 other tests skip
>>   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@p=
ipe-b-hdmi-a-3.html
>>
>>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe=
-b-hdmi-a-2:
>>    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#5235]) +5 other te=
sts skip
>>   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@p=
ipe-b-hdmi-a-2.html
>>
>>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-2=
5@pipe-b-hdmi-a-3:
>>    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#5235]) +7 other te=
sts skip
>>   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor=
-0-25@pipe-b-hdmi-a-3.html
>>
>>  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-1:
>>    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#5235]) +3 other te=
sts skip
>>   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a=
-1.html
>>
>>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-=
b-edp-1:
>>    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#5235]) +6 other te=
sts skip
>>   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@p=
ipe-b-edp-1.html
>>
>>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-=
d-edp-1:
>>    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#3555] / [i915#5235=
])
>>   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@p=
ipe-d-edp-1.html
>>
>>  * igt@kms_pm_dc@dc5-dpms-negative:
>>    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#9293])
>>   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_pm_dc@dc5-dpms-negative.html
>>
>>  * igt@kms_pm_lpsp@kms-lpsp:
>>    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#9340])
>>   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
>>
>>  * igt@kms_pm_lpsp@screens-disabled:
>>    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#8430])
>>   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_pm_lpsp@screens-disabled.html
>>
>>  * igt@kms_pm_rpm@dpms-lpsp:
>>    - shard-dg2:          [PASS][201] -> [SKIP][202] ([i915#9519])
>>   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg2=
-10/igt@kms_pm_rpm@dpms-lpsp.html
>>   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html
>>
>>  * igt@kms_pm_rpm@modeset-lpsp-stress:
>>    - shard-rkl:          [PASS][203] -> [SKIP][204] ([i915#9519]) +1 oth=
er test skip
>>   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
>>   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
>>
>>  * igt@kms_pm_rpm@pc8-residency:
>>    - shard-dg2:          NOTRUN -> [SKIP][205] ([fdo#109293] / [fdo#1095=
06])
>>   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_pm_rpm@pc8-residency.html
>>    - shard-tglu:         NOTRUN -> [SKIP][206] ([fdo#109293] / [fdo#1095=
06])
>>   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_pm_rpm@pc8-residency.html
>>
>>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>>    - shard-tglu:         NOTRUN -> [SKIP][207] ([fdo#111068] / [i915#968=
3])
>>   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>>    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#9683]) +1 other te=
st skip
>>   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>>
>>  * igt@kms_psr2_su@frontbuffer-xrgb8888:
>>    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#4348])
>>   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>>
>>  * igt@kms_rotation_crc@multiplane-rotation:
>>    - shard-rkl:          [PASS][210] -> [ABORT][211] ([i915#8875])
>>   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-7/igt@kms_rotation_crc@multiplane-rotation.html
>>   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-5/igt@kms_rotation_crc@multiplane-rotation.html
>>
>>  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>>    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#4235])
>>   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
>>
>>  * igt@kms_scaling_modes@scaling-mode-none:
>>    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#3555]) +3 other te=
sts skip
>>   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_scaling_modes@scaling-mode-none.html
>>
>>  * igt@kms_setmode@clone-exclusive-crtc:
>>    - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#3555] / [i915#8809=
])
>>   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_setmode@clone-exclusive-crtc.html
>>
>>  * igt@kms_tiled_display@basic-test-pattern:
>>    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#8623])
>>   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_tiled_display@basic-test-pattern.html
>>    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#8623])
>>   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@kms_tiled_display@basic-test-pattern.html
>>
>>  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>>    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#8623])
>>   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>>
>>  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>>    - shard-mtlp:         [PASS][218] -> [FAIL][219] ([i915#9196])
>>   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-mtl=
p-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>>   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>>
>>  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2:
>>    - shard-rkl:          [PASS][220] -> [FAIL][221] ([i915#9196])
>>   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2.html
>>   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2.html
>>
>>  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:
>>    - shard-dg1:          [PASS][222] -> [FAIL][223] ([i915#9196])
>>   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg1=
-18/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
>>   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-18/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
>>
>>  * igt@kms_vrr@flip-dpms:
>>    - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#3555] / [i915#8808=
])
>>   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@kms_vrr@flip-dpms.html
>>
>>  * igt@perf@gen8-unprivileged-single-ctx-counters:
>>    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#2436])
>>   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@perf@gen8-unprivileged-single-ctx-counters.html
>>
>>  * igt@perf@global-sseu-config:
>>    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#7387])
>>   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@perf@global-sseu-config.html
>>
>>  * igt@prime_vgem@basic-read:
>>    - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#3708])
>>   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-16/igt@prime_vgem@basic-read.html
>>
>>  * igt@prime_vgem@basic-write:
>>    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#3291] / [i915#3708=
])
>>   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@prime_vgem@basic-write.html
>>
>>  * igt@prime_vgem@fence-flip-hang:
>>    - shard-tglu:         NOTRUN -> [SKIP][229] ([fdo#109295])
>>   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@prime_vgem@fence-flip-hang.html
>>    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#3708])
>>   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@prime_vgem@fence-flip-hang.html
>>
>>  * igt@prime_vgem@fence-write-hang:
>>    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#3708]) +1 other te=
st skip
>>   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@prime_vgem@fence-write-hang.html
>>
>>  * igt@sriov_basic@enable-vfs-autoprobe-off:
>>    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#9917])
>>   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@sriov_basic@enable-vfs-autoprobe-off.html
>>
>>  * igt@syncobj_timeline@invalid-wait-zero-handles:
>>    - shard-dg2:          NOTRUN -> [FAIL][233] ([i915#9781])
>>   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@syncobj_timeline@invalid-wait-zero-handles.html
>>
>>  * igt@v3d/v3d_submit_cl@valid-submission:
>>    - shard-tglu:         NOTRUN -> [SKIP][234] ([fdo#109315] / [i915#257=
5]) +2 other tests skip
>>   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@v3d/v3d_submit_cl@valid-submission.html
>>
>>  * igt@v3d/v3d_wait_bo@map-bo-0ns:
>>    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#2575]) +5 other te=
sts skip
>>   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@v3d/v3d_wait_bo@map-bo-0ns.html
>>
>>  * igt@v3d/v3d_wait_bo@used-bo:
>>    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#2575]) +7 other te=
sts skip
>>   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@v3d/v3d_wait_bo@used-bo.html
>>
>>  * igt@vc4/vc4_perfmon@get-values-invalid-pointer:
>>    - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#2575]) +1 other te=
st skip
>>   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html
>>
>>  * igt@vc4/vc4_tiling@set-bad-flags:
>>    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#7711]) +3 other te=
sts skip
>>   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-4/igt@vc4/vc4_tiling@set-bad-flags.html
>>
>>  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>>    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#7711]) +3 other te=
sts skip
>>   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-10/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
>>
>> =20
>>#### Possible fixes ####
>>
>>  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>>    - shard-rkl:          [FAIL][240] ([i915#7742]) -> [PASS][241] +1 oth=
er test pass
>>   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>>   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>>
>>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>>    - shard-rkl:          [FAIL][242] ([i915#2842]) -> [PASS][243]
>>   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>>   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>>
>>  * igt@i915_module_load@reload-with-fault-injection:
>>    - shard-snb:          [INCOMPLETE][244] ([i915#9200] / [i915#9849]) -=
> [PASS][245]
>>   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-snb=
5/igt@i915_module_load@reload-with-fault-injection.html
>>   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-snb6/igt@i915_module_load@reload-with-fault-injection.html
>>    - shard-dg1:          [ABORT][246] ([i915#9820]) -> [PASS][247]
>>   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg1=
-13/igt@i915_module_load@reload-with-fault-injection.html
>>   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
>>    - shard-mtlp:         [ABORT][248] -> [PASS][249] +1 other test pass
>>   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-mtl=
p-8/igt@i915_module_load@reload-with-fault-injection.html
>>   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
>>
>>  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>>    - shard-tglu:         [FAIL][250] ([i915#3743]) -> [PASS][251] +3 oth=
er tests pass
>>   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-tgl=
u-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>>   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip=
.html
>>
>>  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-siz=
e:
>>    - shard-snb:          [SKIP][252] ([fdo#109271]) -> [PASS][253] +10 o=
ther tests pass
>>   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-snb=
2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.ht=
ml
>>   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-s=
ize.html
>>
>>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>>    - shard-glk:          [FAIL][254] ([i915#2346]) -> [PASS][255]
>>   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-glk=
7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>>   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-siz=
e.html
>>
>>  * igt@kms_fbcon_fbt@fbc-suspend:
>>    - shard-snb:          [INCOMPLETE][256] ([i915#9878]) -> [PASS][257]
>>   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-snb=
6/igt@kms_fbcon_fbt@fbc-suspend.html
>>   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-snb4/igt@kms_fbcon_fbt@fbc-suspend.html
>>
>>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
>>    - shard-dg2:          [FAIL][258] ([i915#6880]) -> [PASS][259]
>>   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg2=
-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
>>   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.=
html
>>
>>  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
>>    - shard-rkl:          [FAIL][260] ([i915#8292]) -> [PASS][261]
>>   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
>>   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-5/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
>>
>>  * igt@kms_pm_rpm@modeset-lpsp:
>>    - shard-rkl:          [SKIP][262] ([i915#9519]) -> [PASS][263]
>>   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-3/igt@kms_pm_rpm@modeset-lpsp.html
>>   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html
>>
>>  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4:
>>    - shard-dg1:          [FAIL][264] ([i915#9196]) -> [PASS][265]
>>   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg1=
-18/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4.html
>>   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-18/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4.html
>>
>>  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>>    - shard-mtlp:         [FAIL][266] ([i915#9196]) -> [PASS][267]
>>   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-mtl=
p-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>>   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>>
>>  * igt@perf_pmu@busy-double-start@vcs1:
>>    - shard-dg1:          [FAIL][268] ([i915#4349]) -> [PASS][269]
>>   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg1=
-16/igt@perf_pmu@busy-double-start@vcs1.html
>>   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg1-15/igt@perf_pmu@busy-double-start@vcs1.html
>>
>>  * igt@perf_pmu@busy-double-start@vecs1:
>>    - shard-dg2:          [FAIL][270] ([i915#4349]) -> [PASS][271] +3 oth=
er tests pass
>>   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg2=
-7/igt@perf_pmu@busy-double-start@vecs1.html
>>   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
>>
>> =20
>>#### Warnings ####
>>
>>  * igt@kms_content_protection@atomic-dpms:
>>    - shard-snb:          [INCOMPLETE][272] ([i915#8816]) -> [SKIP][273] =
([fdo#109271]) +1 other test skip
>>   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-snb=
7/igt@kms_content_protection@atomic-dpms.html
>>   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-snb6/igt@kms_content_protection@atomic-dpms.html
>>
>>  * igt@kms_content_protection@content-type-change:
>>    - shard-snb:          [SKIP][274] ([fdo#109271]) -> [INCOMPLETE][275]=
 ([i915#8816])
>>   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-snb=
5/igt@kms_content_protection@content-type-change.html
>>   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-snb7/igt@kms_content_protection@content-type-change.html
>>
>>  * igt@kms_fbcon_fbt@psr-suspend:
>>    - shard-rkl:          [SKIP][276] ([i915#3955]) -> [SKIP][277] ([fdo#=
110189] / [i915#3955]) +1 other test skip
>>   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-6/igt@kms_fbcon_fbt@psr-suspend.html
>>   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
>>
>>  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>>    - shard-rkl:          [SKIP][278] ([i915#4070] / [i915#4816]) -> [SKI=
P][279] ([i915#4816])
>>   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>>   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>>
>>  * igt@kms_pm_dc@dc6-dpms:
>>    - shard-rkl:          [SKIP][280] ([i915#3361]) -> [FAIL][281] ([i915=
#9295])
>>   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-7/igt@kms_pm_dc@dc6-dpms.html
>>   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-5/igt@kms_pm_dc@dc6-dpms.html
>>
>>  * igt@kms_pm_dc@dc9-dpms:
>>    - shard-rkl:          [SKIP][282] ([i915#3361]) -> [SKIP][283] ([i915=
#4281])
>>   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-rkl=
-3/igt@kms_pm_dc@dc9-dpms.html
>>   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-rkl-5/igt@kms_pm_dc@dc9-dpms.html
>>
>>  * igt@perf@non-zero-reason@0-rcs0:
>>    - shard-dg2:          [FAIL][284] ([i915#7484]) -> [FAIL][285] ([i915=
#9100])
>>   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14080/shard-dg2=
-11/igt@perf@non-zero-reason@0-rcs0.html
>>   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128175v3/sha=
rd-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
>>
>> =20
>>  {name}: This element is suppressed. This means it is ignored when compu=
ting
>>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>>
>>  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109271
>>  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109274
>>  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109280
>>  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109289
>>  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109293
>>  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109295
>>  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109315
>>  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109506
>>  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=3D110189
>>  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111068
>>  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111614
>>  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111615
>>  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111825
>>  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111827
>>  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>>  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>>  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>>  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>>  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>>  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>>  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>>  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>>  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>>  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>>  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>>  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>>  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>>  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>>  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>>  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>>  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>>  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>>  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>>  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>>  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>>  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>>  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>>  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>>  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>>  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>>  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>>  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>>  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>>  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>>  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>>  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>>  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>>  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>>  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>>  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
>>  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>>  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>>  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>>  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>>  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>>  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>>  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>>  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>>  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>>  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>>  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>>  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>>  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>>  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>>  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>>  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>>  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>>  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>>  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>>  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>>  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>>  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>>  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>>  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>>  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>>  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>>  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>>  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>>  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>>  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>>  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>>  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>>  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>>  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>>  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>>  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>>  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>>  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>>  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>>  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>>  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>>  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>>  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>>  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>>  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>>  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>>  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
>>  [i915#8436]: https://gitlab.freedesktop.org/drm/intel/issues/8436
>>  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>>  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
>>  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
>>  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>>  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>>  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>>  [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
>>  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>>  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>>  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>>  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
>>  [i915#8827]: https://gitlab.freedesktop.org/drm/intel/issues/8827
>>  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>>  [i915#8898]: https://gitlab.freedesktop.org/drm/intel/issues/8898
>>  [i915#9100]: https://gitlab.freedesktop.org/drm/intel/issues/9100
>>  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>>  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
>>  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>>  [i915#9293]: https://gitlab.freedesktop.org/drm/intel/issues/9293
>>  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
>>  [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
>>  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
>>  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>>  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>>  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>>  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>>  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>>  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>>  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>>  [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
>>  [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
>>  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>>  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>>  [i915#9878]: https://gitlab.freedesktop.org/drm/intel/issues/9878
>>  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
>>  [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934
>>
>>
>>Build changes
>>-------------
>>
>>  * Linux: CI_DRM_14080 -> Patchwork_128175v3
>>
>>  CI-20190529: 20190529
>>  CI_DRM_14080: d7426b5fc261046501ca418fe0e69ad1d6ba59be @ git://anongit.=
freedesktop.org/gfx-ci/linux
>>  IGT_7656: 149297384db8cab03928c12b37ae1bb61089bdad @ https://gitlab.fre=
edesktop.org/drm/igt-gpu-tools.git
>>  Patchwork_128175v3: d7426b5fc261046501ca418fe0e69ad1d6ba59be @ git://an=
ongit.freedesktop.org/gfx-ci/linux
>>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.f=
reedesktop.org/piglit
>>
>>=3D=3D Logs =3D=3D
>>
>>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128175v3/index.html
