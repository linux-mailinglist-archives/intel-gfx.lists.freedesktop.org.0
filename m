Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 395293FFDD8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 12:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B1176E86D;
	Fri,  3 Sep 2021 10:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E6736E86C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 10:05:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="280397846"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="280397846"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 03:05:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="462285192"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 03 Sep 2021 03:05:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 03:05:43 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 03:05:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 03:05:42 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 03:05:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SPigW8H4xjyvQWBjmIfPut3q7qr1u5IypbIDeiDtnEi1n8QJFUeQ3ImGb9kDAVvhMYpzlgQhY9lKXVjEdiK6ZTuC1/wX30tdcyOeC5iTAZ5fqJAl2p5Y9M+Yi1c3z1gTI50bFkSLc312sQJt98n+zyKkTCud0nYzdZ++q0O+cGwHWocFeJMznRflHHK7mMf5XaU2d6k0IicZ0yu+PB08a7AvEvPbpkgyq0ZWC6d/siecEzZcvKgrGS69PqlLHpXicsH1ouDaspVAJvJRL4r8q0GF63oFJqmrRW1GwxisW82SFswN4p699Ws4FJAff2Fm0faH5LGtVlcqxylY2MZo8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=zHZlmfYMATMfT9EeSzr+RRI5q9LpBykqR29au/QAVQk=;
 b=S9/jOJUBrSL/TOaAmTAScKtAjhwp1WqjUFyLseizp8L5I3ifbzA5+EXx6xj+VgZNkRvTSJmMQeh0uBo2TPmnVgiRsCcmtwTNT7BWOul6E6pgfkF+3Wzsa90AY1eIIBmOvm6GVLX/yCPaEqIJNUeXkBoxNbc2byQlEQkM0r/cegNFMde/jA4NCNe2LW+fruwq2s7u+Iilpv+X8VDUsLnXkwG9dnY7R5MrA7S2XlV6riHam13HZlx8UYJSjaUZ4G5REfiyYl83/cHdQ05sarLIJpmzOnFJdYbBbIn5z8pwIxT6+nZAMLicO8QKFbZPJ/CpZZUq+Yxe3s9UeDSxmA1ZoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zHZlmfYMATMfT9EeSzr+RRI5q9LpBykqR29au/QAVQk=;
 b=zwAnUK/8Kzdph2VfueTVMXQniMiVwtXO38Meh0/4KJ/oYrWT6aVmW05XGpurPMkjl1TtzUSggXg4430rd6ArvEmH1YemHQOiVmC4xmhOkDSv2CUnhgd8ZR5sgvKz+BNmpQj3r/OAr3SrIfKILSaAtP53TU6vqT2XiFQe/JQQ5Tc=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM5PR11MB1514.namprd11.prod.outlook.com (2603:10b6:4:7::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.21; Fri, 3 Sep 2021 10:05:38 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%3]) with mapi id 15.20.4457.024; Fri, 3 Sep 2021
 10:05:38 +0000
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jose.souza@intel.com>
References: <cover.1630512523.git.jani.nikula@intel.com>
 <f56e864d10bb3cbe616288450d92b56325d1df12.1630512523.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <1d54551a-2a63-7cb8-4e8b-752d63b3bed4@intel.com>
Date: Fri, 3 Sep 2021 15:35:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <f56e864d10bb3cbe616288450d92b56325d1df12.1630512523.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR01CA0136.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:40::30) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 BM1PR01CA0136.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:40::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.19 via Frontend Transport; Fri, 3 Sep 2021 10:05:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a30fc4de-909d-443d-d80d-08d96ec2610a
X-MS-TrafficTypeDiagnostic: DM5PR11MB1514:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB15148B6730EA5814FDA4C161CECF9@DM5PR11MB1514.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OsfNsEjyqUAJLHMl09pvDrIScyq83CwASMGKk6GfKp7oJE+5lTwMine6umV3BwrfjybMmb730SlSu0NRTr2arbThqqCVJvltGu36Aqnz4YLPu/IQ3wnFhehcnO9fj40UcvZoDaV+qnGefYxCLWEJpXBSbMumGQMVTSQRyE7IGZHKyiEFxSNllkID5ZyI6v/ANnMqsoCnUJEuVHqTkFBEWiGV0xIJJ1mcT8JZyaSjQZcn98I4Ny4hNnwY+LeirQdI7uszzMJAP4yChgd8WCbde8asA4hXHBd0Oe0O1pKkpjQaRMAJ4lYuxmJVBC9ZGoa8P5U7C4lLsdrABoDx0hHu5OYxuP74BBrCGbwZjh5SQ+dUUDMHPCMT7P+xcv5YqFVKw2ANZcyTLTZ80ZKbnSD4hjhCJjdDBMBewBoQxvXJB8vIpFwbMvSdxyiSyZhZid5rhUkr0cfDac5Zk4KwKSw0CMi4qnzHD5ea+8irQKpzj6LWHh+eGLnezwoVuV7u6PGShvkKkwbD57/noUPVvgbHhyC+dgk9AMI/26huTy1MXm3o6ZPEwGHl9u9Cd1z1Ptdt5jI2FGPvv2eYiM/ZMHGFqomq5Q0qt5z1zHwQQ91d202Bi8y196fxTLiir/IIgw7NXPLdEGySWCFXO8aWzYyfCvI2WgscOF6QHg/kUqLngTYW/z07QIECAazEZAv2P3/7h89c09RCdwuXwcOTb4L7MmM0qfqfnK8qHFnBaog7v0OcJjrgope2Wpas5xKAKNbbw2LCqx+UxXmAD6eiqych4A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(39860400002)(346002)(396003)(366004)(83380400001)(66946007)(107886003)(6666004)(36756003)(1006002)(2906002)(66476007)(186003)(66556008)(8676002)(55236004)(8936002)(86362001)(31696002)(53546011)(38100700002)(316002)(478600001)(2616005)(956004)(16576012)(6486002)(26005)(31686004)(4326008)(30864003)(5660300002)(26583001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZCtUTVltckMzSEljVE9Mdlo0UFNTekw1V21ERy9UNG42R0hINUFyeDEwa0dm?=
 =?utf-8?B?YkRxYTZYRlZZc24zTXRDYW4vUDFRVkVrNzZCbzJqOVlnUHByenBxYWQzTXND?=
 =?utf-8?B?SHA4YVBnVEE2Z0pUVTFEZW9xSUdsVnV4ZzRlQlFIS2JCVjZiMXRIck1BUGdi?=
 =?utf-8?B?ZUZrQSszTnh1TkdRcXNnYXVaOWdvemV3WGdZNURGbmJWQWJTa2d3amNBcTlw?=
 =?utf-8?B?eEFOcmQ3ZFc3ZG5EUXN3Zzl0dmJmOFpSN2lRR3VTTkhKdUhFSUgvVTZXemhG?=
 =?utf-8?B?b3dKNDZINTlyRVlDSXNOTnMxVnBDcnQ3WEJTT1ROTFZjcno2VWx6RDVmVGJk?=
 =?utf-8?B?MCs1WmVMa1cwdEM0N3FMTmhWd0I3cXFlTXVSdDJyamYwbDJBRHFyOWUvM2ls?=
 =?utf-8?B?UU5jeWpUWllCUHcrb3p1UXdWM21kM3I0MXBtRHp6cUtHSGpoYmVqMUVNSDZj?=
 =?utf-8?B?NXNpdHphazgwUlQ1cHpzMXc3OEhmL2JTb1BHeHgydVFvendVOHJPYnRRbzBI?=
 =?utf-8?B?MFB5QmdlMEZjU2lXMVEvZWJOaWJiMnAyNk9TUDVVNUwrWXREZUJzZk5laERP?=
 =?utf-8?B?eDBneW1HKzZITi9CNGFKTk9UcXU4QVB6YkQ1bE15bmJyaDViOXo5bVRWNnRq?=
 =?utf-8?B?VGFmbkVZSllDenUwVkhzUEM2eVVrU0o2eGgzMHNBRnZTcWFhcCtVcDJXeXhj?=
 =?utf-8?B?VXNzWWtMVERoYWRWekErazRzVE9sTlFmL3Ayd0NiSnlPUEllc01sWVZXOHFy?=
 =?utf-8?B?MlErTE1peGlwR3p1MWc1dXlJL2FRdks3aTNXbXRnZ2JveHpPSFVta21GdWN3?=
 =?utf-8?B?M1VoK1FxbTRIUm9DNVl5cGJEZ1Rsc3RkZUJHOXFzckZMTjI4STlEWnRYSHdX?=
 =?utf-8?B?dENCTjlWKzNpZVRTTUVxQWRjUU1lYWhabHIwYmZZMSt1djVnMlByS1VPZkI3?=
 =?utf-8?B?TkMxVncrUjg2cDIwQm93eDNZWFZtYmFCWDdnRThlTVYySmNJbmNnYzdLNTJP?=
 =?utf-8?B?TW1RazVlRXpIcmEwZEFhSC9EQUtkTVBhWWhhOG45Ymg1RTVnRklkamNRS3RK?=
 =?utf-8?B?SkJDdzdtL1hsa0xLS3hORWlGeHpteE5EMjdzU0lyV1lVbk1JRmE1MGhMYmYz?=
 =?utf-8?B?WHFXRGpLR3F5V2NUa3pkUTlTa0VOaDRKdnlEbUNHWWIzaGZQTjNJZzRVUjF6?=
 =?utf-8?B?T1BxdTdLYUFnclFLRjBIdEdRNm95MER6elFESDdTcWhpOVNxci9FMW1XZDND?=
 =?utf-8?B?SXZtMEcyTmhaY29BZ3hoeUU1YTRKdHpJbWpVUjRhRWxiK1NTcUZReEt2VHov?=
 =?utf-8?B?Q24yVDhyUnNsQWIxSE1Eei9adFFta1ltcFZNLzFJUDR3YnF0MnVScDhNY2E3?=
 =?utf-8?B?SG5sOUNiaWcrL1FSeHRCNEJ3dXpPVHBHcTNhMkJ1MTZGR2pTRmptdld2ODdY?=
 =?utf-8?B?UFVpU0pxM3hBV0NVS3VwRk1Yd1I3WWd6Q0o1VFVaT0N0blVoaFo2R0cwMm5F?=
 =?utf-8?B?b1MwcmhhL3Q5SnJTWkpGZFRCbzM5OE9mOXdJNnh1RkJhZGoyNmNZQmlveU8r?=
 =?utf-8?B?ZGhxcUI3RlRoZ25jQkJiR1VNeUhYbXpZRmYvZXk3TnNGUXhTbVZHOG53Q1hH?=
 =?utf-8?B?blcxWFNXYjJDbzFDMWplY0tFVnhDRDI3cnRsTDVFZTNDRjQvVmt6bXJFcHJt?=
 =?utf-8?B?ZE9BSENSOFBJdnZtZGh1ditQNGJJWFp4OGNoN1ZxdktaZjREd0k1anpHYldX?=
 =?utf-8?Q?8dsigaty+EH3CYvw1b8XicxGplmaFV26YqLKGx0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a30fc4de-909d-443d-d80d-08d96ec2610a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2021 10:05:38.1283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zv59XM2Spajz4Rs1Jwjl6y+rW2yEfGpukS3pr51+VMNb49KQkAyNESvPR1pUiw4yXuBKERaqIcjOIl87c5zrggBgb0zzb3dV1OVb7GVM7vg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1514
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915/bios: get rid of vbt
 ddi_port_info
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

On 9/1/2021 9:40 PM, Jani Nikula wrote:
> We can finally remove the extra caching in ddi_port_info. Good riddance.
>
> v2: Rebased
>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 63 +++++++++--------------
>   drivers/gpu/drm/i915/i915_drv.h           |  7 +--
>   2 files changed, 25 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 0c16a848a6e4..052f27c0fb0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1580,16 +1580,16 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>   
>   static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
>   {
> -	const struct ddi_vbt_port_info *info;
> +	const struct intel_bios_encoder_data *devdata;
>   	enum port port;
>   
>   	if (!ddc_pin)
>   		return PORT_NONE;
>   
>   	for_each_port(port) {
> -		info = &i915->vbt.ddi_port_info[port];
> +		devdata = i915->vbt.ports[port];
>   
> -		if (info->devdata && ddc_pin == info->devdata->child.ddc_pin)
> +		if (devdata && ddc_pin == devdata->child.ddc_pin)
>   			return port;
>   	}
>   
> @@ -1600,7 +1600,6 @@ static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
>   			     enum port port)
>   {
>   	struct drm_i915_private *i915 = devdata->i915;
> -	struct ddi_vbt_port_info *info;
>   	struct child_device_config *child;
>   	u8 mapped_ddc_pin;
>   	enum port p;
> @@ -1637,8 +1636,7 @@ static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
>   	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
>   	 * port A and port E with the same AUX ch and we must pick port E :(
>   	 */
> -	info = &i915->vbt.ddi_port_info[p];
> -	child = &info->devdata->child;
> +	child = &i915->vbt.ports[p]->child;
>   
>   	child->device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
>   	child->device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
> @@ -1648,16 +1646,16 @@ static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
>   
>   static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
>   {
> -	const struct ddi_vbt_port_info *info;
> +	const struct intel_bios_encoder_data *devdata;
>   	enum port port;
>   
>   	if (!aux_ch)
>   		return PORT_NONE;
>   
>   	for_each_port(port) {
> -		info = &i915->vbt.ddi_port_info[port];
> +		devdata = i915->vbt.ports[port];
>   
> -		if (info->devdata && aux_ch == info->devdata->child.aux_channel)
> +		if (devdata && aux_ch == devdata->child.aux_channel)
>   			return port;
>   	}
>   
> @@ -1668,7 +1666,6 @@ static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
>   			    enum port port)
>   {
>   	struct drm_i915_private *i915 = devdata->i915;
> -	struct ddi_vbt_port_info *info;
>   	struct child_device_config *child;
>   	enum port p;
>   
> @@ -1691,8 +1688,7 @@ static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
>   	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
>   	 * port A and port E with the same AUX ch and we must pick port E :(
>   	 */
> -	info = &i915->vbt.ddi_port_info[p];
> -	child = &info->devdata->child;
> +	child = &i915->vbt.ports[p]->child;
>   
>   	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>   	child->aux_channel = 0;
> @@ -1938,7 +1934,6 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   			   struct intel_bios_encoder_data *devdata)
>   {
>   	const struct child_device_config *child = &devdata->child;
> -	struct ddi_vbt_port_info *info;
>   	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
>   	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
>   	enum port port;
> @@ -1954,9 +1949,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   		return;
>   	}
>   
> -	info = &i915->vbt.ddi_port_info[port];
> -
> -	if (info->devdata) {
> +	if (i915->vbt.ports[port]) {
>   		drm_dbg_kms(&i915->drm,
>   			    "More than one child device for port %c in VBT, using the first.\n",
>   			    port_name(port));
> @@ -2019,7 +2012,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>   			    "Port %c VBT DP max link rate: %d\n",
>   			    port_name(port), dp_max_link_rate);
>   
> -	info->devdata = devdata;
> +	i915->vbt.ports[port] = devdata;
>   }
>   
>   static void parse_ddi_ports(struct drm_i915_private *i915)
> @@ -2557,12 +2550,8 @@ bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
>   		[PORT_F] = { DVO_PORT_DPF, DVO_PORT_HDMIF, },
>   	};
>   
> -	if (HAS_DDI(i915)) {
> -		const struct ddi_vbt_port_info *port_info =
> -			&i915->vbt.ddi_port_info[port];
> -
> -		return port_info->devdata;
> -	}
> +	if (HAS_DDI(i915))
> +		return i915->vbt.ports[port];
>   
>   	/* FIXME maybe deal with port A as well? */
>   	if (drm_WARN_ON(&i915->drm,
> @@ -2813,8 +2802,7 @@ bool
>   intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
>   				enum port port)
>   {
> -	const struct intel_bios_encoder_data *devdata =
> -		i915->vbt.ddi_port_info[port].devdata;
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
>   
>   	if (drm_WARN_ON_ONCE(&i915->drm,
>   			     !IS_GEMINILAKE(i915) && !IS_BROXTON(i915)))
> @@ -2834,8 +2822,7 @@ bool
>   intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
>   			     enum port port)
>   {
> -	const struct intel_bios_encoder_data *devdata =
> -		i915->vbt.ddi_port_info[port].devdata;
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
>   
>   	return HAS_LSPCON(i915) && devdata && devdata->child.lspcon;
>   }
> @@ -2851,8 +2838,7 @@ bool
>   intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
>   				   enum port port)
>   {
> -	const struct intel_bios_encoder_data *devdata =
> -		i915->vbt.ddi_port_info[port].devdata;
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
>   
>   	return devdata && devdata->child.lane_reversal;
>   }
> @@ -2860,11 +2846,10 @@ intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
>   enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   				   enum port port)
>   {
> -	const struct ddi_vbt_port_info *info =
> -		&i915->vbt.ddi_port_info[port];
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
>   	enum aux_ch aux_ch;
>   
> -	if (!info->devdata || !info->devdata->child.aux_channel) {
> +	if (!devdata || !devdata->child.aux_channel) {
>   		aux_ch = (enum aux_ch)port;
>   
>   		drm_dbg_kms(&i915->drm,
> @@ -2880,7 +2865,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
>   	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
>   	 */
> -	switch (info->devdata->child.aux_channel) {
> +	switch (devdata->child.aux_channel) {
>   	case DP_AUX_A:
>   		aux_ch = AUX_CH_A;
>   		break;
> @@ -2941,7 +2926,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   			aux_ch = AUX_CH_I;
>   		break;
>   	default:
> -		MISSING_CASE(info->devdata->child.aux_channel);
> +		MISSING_CASE(devdata->child.aux_channel);
>   		aux_ch = AUX_CH_A;
>   		break;
>   	}
> @@ -2955,7 +2940,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
>   
>   	return _intel_bios_max_tmds_clock(devdata);
>   }
> @@ -2964,7 +2949,7 @@ int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
>   int intel_bios_hdmi_level_shift(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
>   
>   	return _intel_bios_hdmi_level_shift(devdata);
>   }
> @@ -2988,7 +2973,7 @@ int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *de
>   int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
>   
>   	return _intel_bios_dp_max_link_rate(devdata);
>   }
> @@ -2996,7 +2981,7 @@ int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
>   int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
> +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
>   
>   	if (!devdata || !devdata->child.ddc_pin)
>   		return 0;
> @@ -3017,5 +3002,5 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
>   const struct intel_bios_encoder_data *
>   intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
>   {
> -	return i915->vbt.ddi_port_info[port].devdata;
> +	return i915->vbt.ports[port];
>   }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 744181cbe21c..309a483d1722 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -635,11 +635,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
>   /* Amount of PSF GV points, BSpec precisely defines this */
>   #define I915_NUM_PSF_GV_POINTS 3
>   
> -struct ddi_vbt_port_info {
> -	/* Non-NULL if port present. */
> -	struct intel_bios_encoder_data *devdata;
> -};
> -
>   enum psr_lines_to_wait {
>   	PSR_0_LINES_TO_WAIT = 0,
>   	PSR_1_LINE_TO_WAIT,
> @@ -720,7 +715,7 @@ struct intel_vbt_data {
>   
>   	struct list_head display_devices;
>   
> -	struct ddi_vbt_port_info ddi_port_info[I915_MAX_PORTS];
> +	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if port present. */
>   	struct sdvo_device_mapping sdvo_mappings[2];
>   };
>   
