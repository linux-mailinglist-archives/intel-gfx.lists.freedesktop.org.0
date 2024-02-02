Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4115846777
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 06:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9EDA10E3D7;
	Fri,  2 Feb 2024 05:17:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XsCTH9hN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4955310E3D7
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 05:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706851067; x=1738387067;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JpVTFZscOnnYDJOrBlZlEL0CYnU4y9NeOCCVNOzjp2E=;
 b=XsCTH9hNotLCvenRhIxrUFIF9ECcdjgeqK7ffWXAmsP+78WaDM2xhaif
 8EYP++2gxwa8dvePU+ZoKmWziHLAgdIDZA8Z5KBauam1/psRpTUz820Oq
 HFdkJpai6L0zVCFnZgptd4YJKY6IfPhAxSPIeQUrDqdQgUP0E8rUH6Bu2
 xVC4RBFIzxWF9NrPDIUaJtgWy9lJp47sRQMXsFCOTsQCkG79m1PZerNDL
 li7y1KlNipCznlwBHajcNG7V4MRyLAYtjk731+p92yLcvj52gU4shPoNt
 1fnErh2ukow166KyA9QymFclM2ALkaqeHHUYgnRWvotKpLcfC5mveIf01 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="17464520"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="17464520"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 21:17:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="932378855"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="932378855"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 21:17:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 21:17:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 21:17:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 21:17:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 21:17:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mwZlS2Bp4YCUXadsWysg84hQTrq+x8ESyLS6Xe+LbzFZnqpYhQGuA4syZPLXuLXw7xPTFQjKkGYEi00K7/AZFSATcTjBF9nq5X2Wvtlr56vKHWeSxbxlKW++Tt/ZRO2plrhCzAXMRm+tUvsUR3IJJ4xjn6bIQnZNKtfvXCkdIk8cU96R1iU8oFXlBs98E5tut7a+6IO1ImXJjH4M41a4zUudBotjzZKL3MfNEimTsnQBwiICKrczfq9VyjwT7SrINrmpzdZTXnr6JwJPEtA2BY9lwvqvSF+8lgYJhrStaUvjS+Jv6v8M7s1ibhdetwJ2F9T2V7MBTLbxVULoOLrw6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=12OoZljEFW9P0Ui1JgksZSTEyskF54HlufJMwCWLkjc=;
 b=ewoIGUNd5zJnKNikByL2OwsC51tZVY93gGEuDrRdX+tvwiIeNWR3o1INn53vasqkRvmvY9DtE3xtz3MpsvgGDEbqaI9bL3+M+RvuldqbLzgOBI0ROjEF6uUBplGJhgyleomD9oUTnGz7QC94cZa7XPMxtj87GAI+WTOyHsSICswvWckiXW8Ej2Pi7mGvuSYHIDg+xtvSLliiGDL9mr1mUq0rdOP+uTxhZDtFqSJX+NB/aMZCHLSpxK5pd7y5fbD6PW8Beei64NJfcptjb3Vo/ZELcUa9Xkuy9oOTh3WO71GwuZhpam1+ZzATm7s07OSFJeMBLzgOOCkVjfTth4oDKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5338.namprd11.prod.outlook.com (2603:10b6:408:137::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 05:17:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 05:17:39 +0000
Message-ID: <c2406451-46b4-4c79-b7b3-84483d357d56@intel.com>
Date: Fri, 2 Feb 2024 10:47:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] drm/i915/hdcp: Extract hdcp structure from correct
 connector
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
 <20240131193929.938748-9-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240131193929.938748-9-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5338:EE_
X-MS-Office365-Filtering-Correlation-Id: 7181df83-fde0-4e43-b994-08dc23ae4621
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QJN86FXwpVNxnGmTPn4Ef3C+k/7LC3qshTb/iKdpa65Ls2MFc5OYKwyhqkC+xzcq/MdpiJM2q3eNE0wt6PbLigzAnxV6akQM3tbmkPMCg6zgEIJpmw7081fqVMnwyU4qVUvFHplyhR0XnFhtvrZuu4PtT8Vkodrd4EuRgooVlloZfPjihgUxPOXQho2+50qFJTqNdmu8iRvjew0/cTaEsWUxhwNUrqmZzVzvLJiReyFAdnJehQb837xNgBkpAL5TuKGQkK29RbxN/UfuDltErTDIrihZX55unpUmTa8EQD2sPVJK1yMlcp9jJSsjaikKT1S5mMybJtD9P1YARrd2SDUSiV52ef6TlB0/hAQc+UxjxUSSIUfMu1aub2ZZseye4m4WkyqKGB9ce8DXsKg7WxxOaDyOc6xDOSYg5bEWQXkKXxAk3emjiWgx42lvlIqjXeNWuNZoNG2/IEF20VE7FZVv6gqB2o4wi8ZIDYKbs49+UoifodLTU6/n8lRBVmM3N9Vc/jcAiTTmhtQOGMxFHLHds6MSCfT+c9FgLNVWygxQnbIZGX6Zv4lXVX3GVLtzlVA8pxFrJQWEp0JLYvJicRm0F2Wlj4ORuH18Ch2tH4/YSv+CrDu+wdGM/KL8ZXugfnC7+9WkXY2K+D3K9E/7oQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(396003)(39860400002)(136003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(41300700001)(8936002)(8676002)(4326008)(2906002)(5660300002)(31696002)(86362001)(66946007)(66476007)(316002)(36756003)(82960400001)(38100700002)(53546011)(6506007)(6512007)(478600001)(6486002)(6666004)(66556008)(83380400001)(107886003)(26005)(2616005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am1RVXc5aDdzMzdQVVVPd09RZnpwS1FDZjZHUlVWcVhMNDUrS3N2SVo5YkNH?=
 =?utf-8?B?ZG02bTJlaDZTYVVQVE1WejhwV0V4SWUvbHE0bEVlc08xb2JwdUVldEx3cjNm?=
 =?utf-8?B?S2IxTm4xNDkrY1hhSFplOEc5cktLZjdPeCsvb2crWmVtTlRTeDJuenRCejE0?=
 =?utf-8?B?UVhkUDVLTXZVYjNNVXV4bytHUXh4L05SOVluWENuZ1d2aHJVSldkT3YzNzBx?=
 =?utf-8?B?a0JxMDQvODk4SS9IVVdMSDV1cmpTWEhDMjdIT1JLUUlQQzZHbHkwaXMxRXI1?=
 =?utf-8?B?dVlvT3NqblA4cmFRUjExb0Q3YnQ5RXAwNW83TEZlTDcya3pRUFd4UTN4dUJm?=
 =?utf-8?B?UEIrRE4xQ3ByUjc3dlJkQkVXbE1vZjdlWEM5T3RXcElIZjJzY0dZR2hxdjlj?=
 =?utf-8?B?aVUxOFFEVDFUL0EwWmFNR3JmVkFBeWZPNEwva0NLY3lWU2lpTXAzZGpxdjlM?=
 =?utf-8?B?MGFIb21SSHNYbnpyZEhKa1A3d0haSnhYb1d3N24vL2VYZ2xHaUtLMStSRnR6?=
 =?utf-8?B?eHoxV1NSYmdIbStJREdlRWxkam9LUW5QSnMyZ1VGTUtxeGNuN24rQXNRSmJp?=
 =?utf-8?B?QThqcWovTDZsNTNMMFlZMHkzUzVEYVZCQzQvaDVOREJaUTlyMTdGSTFxZkp3?=
 =?utf-8?B?U0llTHFDVjZnaExPY3B0YTRYbzVZYVk4YVhBN1JpVlF0cnIwMGFVQTB4aFo4?=
 =?utf-8?B?aEdWM1JNMk1ycE5yc2F2NkNXQWpMbTNDRy9KZ2QzQjNBNlhlSnhISUJGYzlN?=
 =?utf-8?B?OU1SSmd3OU9CMExzTGcvRk5aRDJ0dzYzcGI5MEovdFc0N3pHVk40SlBDMFJv?=
 =?utf-8?B?alpCWStySk1Zb28zYjFMdExNUU5FWWhBVy9XempOTnpqakF6ZVc2OExabjlv?=
 =?utf-8?B?OGZSNTlCbkhqUEx1bExnMEdnaGRKQUJMMXJNbkFQd1lvdlVudFN4SnJCY0c5?=
 =?utf-8?B?dkdLcVM2bjJGeFhSNmdvY0hvczh5L3dTYW9ZZlF5ZE5OcUk1NlVxQUlXQTJy?=
 =?utf-8?B?eTQ1TGo3UXNCSVViL2o0dnVXemNZSTBnZnZlRzV2YnZsbS8wWCtEalliNVow?=
 =?utf-8?B?M0UwaUJmQyttZnhROEN5WHZOZjhrbHN5MFdSK2liK0g1VHhTUG1YOVpNWkd1?=
 =?utf-8?B?azNEbk1Ld003ZXR4cWJJZnZWSkdCZS9RUUpaa2Nwc0tjejJmQlIrNjZ1UnZh?=
 =?utf-8?B?R0FVeFEvanF0UEd4dlYreHBzdy90c3Jva0l2RGtxU2tocjN6TmhTMmFHRDlY?=
 =?utf-8?B?Ri83aFM0ZUtMUEJzMUdlU2NmRjNQU3poRkhVanozeWNBREQ4MENpSzhmL0Fi?=
 =?utf-8?B?UU9LZ2o2SDlRanVzVjFta2pYUE9WL1pHNnQwcnlCN2dsN3RPR0o5M2hXdWhp?=
 =?utf-8?B?WmZuM05zdE9QSUlNWFRncmE2UXdSS2tEWmtRZlpBMUtuckIvbTFmaVNWUXBM?=
 =?utf-8?B?VlFLR21Pd0FuMFZadkhKZlBiM1N0ay92LzZvRkhhQmZlbzg5MEdEbTliWEJB?=
 =?utf-8?B?Y1poNTRwanJIV2lXbUIrMTM1V1NtREcwVnBscjVKZG1NajlxWUlCZ1o3QXA2?=
 =?utf-8?B?eVpDNTA4RHZaYWFOOWhmd0tmT2xvL0MwblVJaVJJWWVpWSttcWlpZEkrTHZF?=
 =?utf-8?B?SHFmR2E3RVdKd2V1T2txNEdCNFdWTE9pQTA1Y1dOOGJlSnh3bWNtVjJtdGJG?=
 =?utf-8?B?bmhWSWh1aXRtQVNJZ1RLazgxUWNwemRzZkZZQXk1NUFxYlFpYldxYnZMMjBw?=
 =?utf-8?B?WE0wc0lyUEtmUkRldDViblgzdURBVXozZUdlbjhyd1lmbUVVMU9qajBUY0c5?=
 =?utf-8?B?UE5PY3pNcU1laTFOdUl3MnRnVTFNR2EzdWZ1c2cvNS8yTkZTRWJWZloxSCsx?=
 =?utf-8?B?enZGWHJDTWNpQzFZa3RkMXV0SDNBaVBWVmRJRlkybnh4QTI4ZmxxandmUm5t?=
 =?utf-8?B?VGdHRnluMzZtMTByNGdPOFNBcEtkWURpdUZtRHl5WTVtZ3V3VlViTkRBVmk2?=
 =?utf-8?B?ajI1aFc2clBIQTluOTR3b1JFQUlyWlluY2p5bFRVOFBkUE11QlE4Umlra3ZE?=
 =?utf-8?B?VTRxRHNmR0dKRDFPUy96WDN4ZG84S3MvMm44Skl4YzV1QkR3VFRWRnFTVFlN?=
 =?utf-8?B?Yy9KTlFsN0t4QWVrZWpudHd5L0tkaFZMelROeTExWW1Od09YS2xueVV1cFBy?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7181df83-fde0-4e43-b994-08dc23ae4621
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 05:17:39.1111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LfnDkB5hH4NvyPziZBzgdNYhEXAukTJj4n1e6JgT/3PDTRF2SJ+Pbz93XSGX+MB5KL91dmCKuXQMZk4hs1t9DVAtiaw0n7+I2MAaqylu0tE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5338
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 2/1/2024 1:09 AM, Suraj Kandpal wrote:
> Currently intel_hdcp is not being extracted from primary connector
> this patch fixes that.
>
> Fixes: 524240b231ea ("drm/i915/hdcp: Propagate aux info in DP HDCP functions")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 6d28119f33fd..2cd987645776 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -389,7 +389,9 @@ intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
>   			    const struct hdcp2_dp_msg_data *hdcp2_msg_data)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	struct intel_hdcp *hdcp = &connector->hdcp;
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct intel_dp *dp = &dig_port->dp;
> +	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>   	u8 msg_id = hdcp2_msg_data->msg_id;
>   	int ret, timeout;
>   	bool msg_ready = false;
> @@ -505,8 +507,9 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	struct intel_hdcp *hdcp = &connector->hdcp;
>   	struct drm_dp_aux *aux = &dig_port->dp.aux;
> +	struct intel_dp *dp = &dig_port->dp;
> +	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>   	unsigned int offset;
>   	u8 *byte = buf;
>   	ssize_t ret, bytes_to_recv, len;
