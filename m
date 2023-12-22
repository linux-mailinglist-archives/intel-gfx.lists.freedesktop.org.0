Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA94D81C4B3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Dec 2023 06:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D57C910E73D;
	Fri, 22 Dec 2023 05:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2717810E73D
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Dec 2023 05:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703223669; x=1734759669;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1TGH/9AZ7opBwnF2r53LNWm4yYvkQ9fYvRUi3CE6zoY=;
 b=UUQ04DR8+sKQaWXBh4QgWzTLNCnVzsPrC+dry7C1ZCPGR+JeSgG3eEcp
 MtioaogA9Py+auXqZ04wTggKfR0MwjBjaIugylrrr7x7av144FNdEQC6L
 31btBUlYmNbVqqP+vCB/oDKLnNjvKheXyPVuqNhkceSsOsWprgXy342+m
 GAlPP93KXkxHaW5Fia6lbI7cy1p+7yEXDq+s7U42IHRb17Z0LtX98PYm1
 WpvjgYPndOFytcmCQN/5Ao7WIBsLgoomBUc9nRD+2cg+Zv7oe1AR3DwVu
 /EbOVOjwSkMRbfVyUUaGSbQKG639vMQ2LdYwHUGCA9aI7cZw1aL3eTX6H Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="375567147"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="375567147"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 21:41:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="895360223"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="895360223"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 21:41:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 21:41:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 21:41:07 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 21:41:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SSyZj/gKUgOs5ZrypyPVdFb1GAFB9mOiXteCMGW9YDiZsBYaAwCoMgWgu5gCZiVnoTfRv+A2hjNUuHx3NvsasWVD+DHodxPp0FMceRMqgS7QwPE5i5UPgv63VL/R/hfb0BEQrrojPnAtGI/NyS7FuukyAlRQF6vQzHpk+sWIcNfsMShlmdwqIDF8y1f0JQV+MPt6zcNVRVVh7y3xAp+0TdOTjSVVJx7T2S9tbxurbuqKMGT6kTfUMNS4hYzxheJMSa9nH26TAh1v4G9ZuhXsC7FskJIM5YpJCv6Rpi/q9VkVdD2rQehR0rqN8SGGG6co9zt/xOweFbr6vokdd6eI9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UOXM5n9wmLFgAuXphDLVjZFrUTxW2u5GRylIv1NOCJ8=;
 b=SceMz+0NdO6O3Q97bCEIr7E9BUKLwPicXHrXEDaV0RS0/RCDlGw38FF4R3xz6+E0/kX1PgOP8FI6hwn/wB5//iwUlnuEZRjOLsFikxO1SnhO1aFc3BQtru013a8hJ2xH2dBaYcYZAo6Q+sRzQqvQkASJb1kB+AYpI0UoyfCkbLJ1s+yFW1Z/JMPYwcYnjPZ6tcXHbE048B/r6Y3+4NuhODFCef3zZ5Q5rdN0xRhyHtviHJVED9Tq4O0IuvoL9yCnwJPJE/sTLvAZ62ItDVw0j0PgU23XAfb/+fUvIF64V0xnUpIVQ5lc9wCudVbbNrjbAOt1DzJAvmASZa6ofwQnAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6984.namprd11.prod.outlook.com (2603:10b6:303:22e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Fri, 22 Dec
 2023 05:40:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c%7]) with mapi id 15.20.7113.019; Fri, 22 Dec 2023
 05:40:58 +0000
Message-ID: <70a9a52d-315b-4c8b-bd5b-625dcfcccc99@intel.com>
Date: Fri, 22 Dec 2023 11:10:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Fail Repeater authentication if Type1
 device not present
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231207053513.1740340-1-suraj.kandpal@intel.com>
 <20231215050915.2070119-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231215050915.2070119-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:3:18::36) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6984:EE_
X-MS-Office365-Filtering-Correlation-Id: 3723d9c2-2ed7-4b0b-5a87-08dc02b0928a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ukN5sFHHq3478aaUGnCv5qOpSIy1L7kF59J1xfIAn4VeWylpm59ZCMLaZijViScnxWE/9/kDTdfKPy+pxN8AOlIhCY0GqCBygS/mDx8aA6q2ZyuZgcx3P3Dh0YavdgWQxEgT2lgYPMl7h9RwbUxFT2DiAVwfc7WL4930bsw2DNbYhqFRnKkl9EPthCFkKH0iDfe9TbbgMFWPa59jn9E/dIDUgFK6iSqETg9onV2mXihDWhNgmWBYJoLuQV5o7gstLP1CalD10+Aw7Cx/1GkuuTcwJQYo+Z8rc9qmaijiPLYOEOz+S6uhzd5sp9cXahlNgF71b2DPb+VBcTrAJEwdw0FjGVUGJdW3irlhzGW5JoFiGAdr2trGB0As1KLsRbRtpNvAO2RC8jD4nT8LLwN2A0wy7s5RgtHH4mKLeWJ6eG49Z9h0ZIAKoI4M3Tte5kF+IYL8HO87HIaIo3zab6WisqN2A5wCdM7ttL5SnrxjlKYxjHaR/xTNE9e3HX089ZMhSOXtefKZW2dKX5mUuYG13WckPkif6aN4G0PcXqhtqI/1ThAm/NXaPXuv9mnQZY2w1HTkcvVxI/oIV0COeGT1FZ3ODLyrqSvCd1Lkp8/tYSX3Rr5D3UhMw/AqOQye4t7eWVE03plDWANUx0d4d3Ntdg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(396003)(366004)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(53546011)(6506007)(6512007)(5660300002)(478600001)(6666004)(6486002)(26005)(31686004)(83380400001)(107886003)(2616005)(316002)(66476007)(66946007)(66556008)(8676002)(8936002)(4326008)(41300700001)(2906002)(31696002)(86362001)(36756003)(38100700002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2ZpL3JlVDY5WldTQm5ybDAxYXY2V3Q3eUo3N0pac1ErUDJ2TklmRFRkWmxo?=
 =?utf-8?B?UVhmU0w3RlVyRUdzWGF3WnJ3dHZ6ODVKVFRFK3RKeEFVSHN4Ni80ZUtvL0ZV?=
 =?utf-8?B?WWZGTkZTTmgvWG54UDFwTXo0M0gyRG1uWjRiNHhQemgyM1dGZUhQVDhYZWFZ?=
 =?utf-8?B?UHl3b3ZZczgzZUwvOTRreUhCWnlpTmdLWStGeEVqTHJmNTcvQ2FQMzRORFQv?=
 =?utf-8?B?U0xLTjlPSXZuUUFWMnNLcS9Oakwzc3lOYnhDdFVtUlhpMVZZclZ6V1hONzBv?=
 =?utf-8?B?eTBncEFGdG0yWWwrdmxCdFhweGZyYmJIeGFGMjVlVEh6bDVLRnNuWUNSNUZx?=
 =?utf-8?B?ZG5rWlZYOFY3aVdGVTlLZ1czOCs4cWh1UTZpTUZGMTczak12RFhXdmplM0Y5?=
 =?utf-8?B?NDJKZGpnbVl1aEk3MzVnNVMrM29kMWtOaFNrNWdtdjJBN2N5WXpTRkJrK0R0?=
 =?utf-8?B?QTZWRFYxRW5JZWU4QzNvNnZuRVhMdTdka3Z0V1NEZnlEazhKN0pTK0xVdFJB?=
 =?utf-8?B?UWVSY29FcTgyVFRNWEJENEtLdlRVV2ltLzk1R3Y1cCtZcXpoRjRrZ2VQalh3?=
 =?utf-8?B?TEZZeUpPT3dRTkhiQnkxSjBCWkxyMkN5ZTNrTTZpeUZ4cG0wKzhKV3QzaVpJ?=
 =?utf-8?B?SWY5aXdyNWpKNXFPOVZ4WFk2QVE5LzRVdjJLZzRUcFYycHR0K3B1L3l6ZU1x?=
 =?utf-8?B?eUg5cTUrbGZyVTFRbFljOTRXUkhwUE9oL00vRzk4WGpRMnU0aktZd3VXalYr?=
 =?utf-8?B?bk5NS0pWUnFlSnJMRktxN0lDemx1SXhpeWVqSFRPNVdqNEpqVUdTQk9aMW0z?=
 =?utf-8?B?T3hxY3E1V3ZaTnoyT3NjVmZBbFRpTEZOVlR1VDEwSklHTHA5OWE2cENkSzE0?=
 =?utf-8?B?c2orT256QkdlWTlMMHZoSVdBeFlyNkRkR05PS0dhaktsM2xBOHh6bmtYWlgx?=
 =?utf-8?B?U0dkVG80dldHWEpqd0Z5ODRWdlUyYnR4bDU4VTJGRmVqV1E0TlpEa1huMzBO?=
 =?utf-8?B?RVlOUHYrRDRQWkxSWXRSNzlQMmM2QlB5a2J5bWxHZHVUUHUxT1ZBejViN3NS?=
 =?utf-8?B?d0hMTGViaXJoaGROeGVONFNVUFRnc1RNdlNSSENxRTkrUEdDWi9BQy9Tcmwv?=
 =?utf-8?B?WmRyYWRLem9heFM1b0pqMms2QUdhN2x6akkrWjAwelpHR3ljRnV4cWpoRUJG?=
 =?utf-8?B?MHJ4Z2s4Y0VwWjAwL3E1Z3oxam1xb1hySEk0dG5INjFHMHhudGVHbzN2ejha?=
 =?utf-8?B?enVjL2g3T2hRSGNGd2h5UDNqK1k0RmZtYzFWSDI3TE1uWWF6QXFJemk0RHpt?=
 =?utf-8?B?djdybmhESWNvVjdCY0hXejNhK0VEOE4rNjJPTGVKS0lMN1d0YWpJbHFSNHVr?=
 =?utf-8?B?Uk1Ec05qeU1Rc3JuRi93eTlYZk1zVkMwSVdFUnloUnRFaERkUGhXN1ZrRWhx?=
 =?utf-8?B?SzN3dGJlRWpkbXA4QzdRa0VleE00dXFvcVBidWVxZVpmZmxYc2d5U3pxWGIw?=
 =?utf-8?B?eGc0TzU5V29IaG9FMGhlZDF3Y0t2ZENKQVQ0YjFpL3hoK09jc2d6TzdhR1ZC?=
 =?utf-8?B?OGoxRWVvMlpYZlEwSzFWK1VZSmFrODRtWlJTYWcwZnN0UmZINVEwQi9kZm5p?=
 =?utf-8?B?bU15QWIxSmJtK1VBa3VnNzBNS1RhUjdReUdRbUVTQkVSc29jZzJUMFI1T2NG?=
 =?utf-8?B?UW8wZ2ZpMTM2THpnVDZtdStBMUJjQmI2eGtvbFYwM2xreXJWOU80dVhJb0Fn?=
 =?utf-8?B?KzRIaGh1L0pQeTYxVkdDaHBPRUQ0YS9ZZGVJY1BpMFU0T1M5RXFnVjJoaGgz?=
 =?utf-8?B?ckh6ODYrK0pYOGhvSEt3MTA4WjQ5VjkyeHBRSG5TZ0dFeXdtY2M4dnI5bHll?=
 =?utf-8?B?NEplYkUrV0ZzQVJTVE9GUkdIbXgxaFJGbjlrMXFLYTlnNzlQeXBqWjRaemYy?=
 =?utf-8?B?TWhCZU1uTEFKaHliaGMwQ2lnVFhVTmc2c1BFOEtFRUxEdFczZ0l4a3VzNDB3?=
 =?utf-8?B?VnFSYmQvVWhsU2VZcTBmTW12YWx1Um82YzZPamZiMlpuTkd3ZzNrTkVKZ2Nr?=
 =?utf-8?B?UEgrSlBDTkZoMlRzRkVVV2ZSUkpBRWpmbWhhK1VVMEdaNVdBWVVrNWNsbjZr?=
 =?utf-8?B?dXYvK2U5bWMvcG5tRnJNVFNZUVlXT0ExdVkxb1B2UVlvODRKdmo4QllsVmcx?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3723d9c2-2ed7-4b0b-5a87-08dc02b0928a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2023 05:40:57.9475 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fN9g0ZHObKY4FdE1ZL847fwzHZdn2QP+7VkYF5RxzWdbyrJ2ijP3iwB0z9bubzivgMMjERxfcc20YAHoPLM+qMueOIHikiv2IS9PNSV88gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6984
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

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 12/15/2023 10:39 AM, Suraj Kandpal wrote:
> Fail repeater authentication step in case RX_INFO indicates
> HDCP1.x or HDCP2.0/2.1 device is present downstream in repeater
> topology and content type set by userspace is Type1.
>
> --v2
> -Fix build error.
>
> --v3
> -remove mst encoder check as branch device also act as repeater
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 39b3f7c0c77c..c264e443ffac 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1633,6 +1633,12 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
>   		!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
>   		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
>   
> +	if (!dig_port->hdcp_mst_type1_capable && hdcp->content_type) {
> +		drm_dbg_kms(&i915->drm,
> +			    "HDCP1.x or 2.0 Legacy Device Downstream\n");
> +		return -EINVAL;
> +	}
> +
>   	/* Converting and Storing the seq_num_v to local variable as DWORD */
>   	seq_num_v =
>   		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
