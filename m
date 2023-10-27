Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C432B7D8ECF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 08:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262CE10E928;
	Fri, 27 Oct 2023 06:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB24C10E928
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 06:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698388548; x=1729924548;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1/ZSDWJU0qMStq6pAdmhsP1gFF6KkgNVTgsb+Y2lpxY=;
 b=WyQ2QAp3ZD/BTA50G4zUBLyXAhmAzfxZnS4kBQ1mq0kLflpbFQY6ihkU
 NrudqzLOjhGFAmnURdDeETDFmvaMVyPy+QgIxIj9eYQ+K46sAybwBKTLR
 27pKAFfg9UitRZZgg6cQjbTxZEd4MWSJzBmK63u/WN23/lkkmcq/4mzn/
 zXvkBcp6ATXJg+tZIk/8FEBli1ShlMAAaDltT83UcbyxywghhIUvBwsi6
 138Rn020EfT6+rWEeAwtPNt1q16RDa+cqjD61VTfAQ7uyixc8Nsc8sCVq
 14rXtnrRT/G6pV4mxg6VlNEKIg/hbWtAxos40w0GghJ7G+QvZiDBASwik g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="387536190"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="387536190"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 23:35:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
   d="scan'208";a="736058"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 23:35:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 23:35:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 23:35:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 26 Oct 2023 23:35:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6YGheveWPRYfyPlvlIZZbmPLYAAAHxz4Yj9eDrvM33iyXzlMys6Z+4yPWauGtB99ZBrLHKPdqxhClR5gXBUI9WaPvRAIS+EQxdvcq8j6NuapuIiqEFescjdVKva7db0Vfc9xWN+f8DOLGnrx6mMcJv8Sa1V3ui9FFzgR6hhH3Fe6fXMcTGULddoTON/vGT2VwyWIzUr5MwyEI+38y8PO2YP5UECGXsX1CrIgOEEjfuHMQkTr03DeNIDn3Kml3YlaChg373sCKIsKoFkB2d2ePiA2JlTXZZTnL/zrFw7qC1l+SZ1reBVVDTGcPXzrdBJ1Fk+ppOt3Pz62ure97lxTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/MnwbFqcmnV5s9eFdB4UIdMtwnj3CSn6msARb2rKN4M=;
 b=nUE7SruSD4qaWAojW/zC48zfl7OHL/zeOJnWexZ8ANDTbjt7JR1FW6//Auv7fQaxRJ/t3AdcN6m66wgdEJvMy5VB74Tkv0ZtTBESEf2ifcEp3UpoAHrp6/xmQMR1+BMS3Ng/fWr1+6ogm8hf7ZdOtY+GmOJP0ItYQaWKSIKMzXyhsuhP2x3nKIYASUnLDRHACCx+CNxpfulNAwEGeg3UOeYHaC03ebHWVkeOMYe/cSPweOjquvm4kaANLGzCJiPP9BkZU+y3skKqxNF8uHJ7QeyyhC0TVSTyLtRO/HIUDhKZaaDXj/hH9KXoGTTWFzbRT4N/pAk4GHQkP/UZ3d5bCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB7905.namprd11.prod.outlook.com (2603:10b6:8:ed::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.24; Fri, 27 Oct
 2023 06:35:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e%5]) with mapi id 15.20.6933.024; Fri, 27 Oct 2023
 06:35:45 +0000
Message-ID: <882189af-3a74-8da5-f637-b2e020898cda@intel.com>
Date: Fri, 27 Oct 2023 12:05:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20231013140214.1713-1-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231013140214.1713-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0126.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB7905:EE_
X-MS-Office365-Filtering-Correlation-Id: c3e6853f-99c9-4f64-b490-08dbd6b6f2f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ws1JYNOe+prsn3amErAYzt80nxNCQinLY1I5qF/eWSOnDu0flNQzDIWeXR6k6+7FmRlw2/nF3Tx44JfrePhsZ169z8CvGWm8NIoXn6bOmNeYFRhZoLzHD5Qv+zJBZnqNKg+3UqmGFH9Vwvvld+pI7yK5W/38DoRvjSiX/1DIMh22ATIn3okXcMr9Q4jEXz1DQE5Af9TQ5V2O0sI8GbxHKWan27fS1NzNMUL9JCMoQslcUjFWwvwTgkRoe3I61s/ddiSkykb98KKIyFUkX4F5sOcOmlyH14R0Dc7BLwMd4Wlvx3daVDNGX47BITL/lEv937R06Gp7/93WyK5P1LP00exTi89WVqp2RwoQ1WcGTzccDJjaruzGEjRdc+A8Acz2yfxLrBkV3AY10Y1G0EinKpVCffM1axp/PZMD9kiKn3Z9LMHk2F2S9oi0+FqswZUuPFacSnluysn+wEx6WeEpn8DsHg6fnw69NOKdJetLX0QjzexIUWXq2r80E6yV4v66kV8ikTo0diiqrG7jq96HmZZS5ncptb7rxFnSnCHETNcp4ROKR3D9SpW4xyq+Z6r7+19A6Apt9BVGWJjdJ+xvcsWdiGrciSA4YoXgd0P3vMg2MsFzYylgvavtTSEBuGPF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(136003)(346002)(376002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(31686004)(55236004)(6512007)(26005)(38100700002)(36756003)(31696002)(86362001)(82960400001)(66574015)(2906002)(83380400001)(6486002)(478600001)(6506007)(53546011)(2616005)(6666004)(8676002)(8936002)(966005)(6916009)(316002)(5660300002)(41300700001)(66946007)(66556008)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGxLcGVTSFk3YmFuZXJKd0kvWjRjcjNOSGdLeEVheWJwQjNzb3dUN2hwTCtL?=
 =?utf-8?B?L3I2elJSNmw3YjF2Q21Hd0NwRjhhRmdKejdnMDdtSkJBdm51dmpzQThCQXJo?=
 =?utf-8?B?dVp6VjJrV3kvdG0zSWZmbThaS3F4NS9Idjd5VWVjdGFSTTRQTXlBbkhMMnZF?=
 =?utf-8?B?L3JGZG4vRW5HamNpVUpDQStZRnVlWGo2M0h2bjMyZWViL1JPZ0IwdmJCeThh?=
 =?utf-8?B?cEFFeHNtWG93d1UxOEJJdXplSS9TTVRlbmFodmtnYnVzcGc1ZExySVBydFcx?=
 =?utf-8?B?SEx3M0l0OFp6SmN1dFVMOWdDRXpzam51Y0JmVTJQVDM5MXBJVTNaYjU4ajZG?=
 =?utf-8?B?bkJQZ2YvcEFZVmxPMUhOcGdBREJ2SUtQVlcvWG1tRWJwNFAvSjRnWkFqY2ZC?=
 =?utf-8?B?NkNlQ2czYVIySUIzVTBVS2lhVE9VeWp0M0xjWGUrQmVpYW1rQ0F3Tml2Q0l5?=
 =?utf-8?B?bnQwRWVjVjRZQ2FNUzBvYSt0aHFaVjdrK0lzWmRPZXRTZEIyUjQrK1g3RTIz?=
 =?utf-8?B?RDhFT1pveGVPZXZudzVOZWd2UE1TdG1CRlBWQ2RvR0Vnd3IvT1lDdUpMb2hB?=
 =?utf-8?B?NU5BbzgxNnFCK0s2TE5BU0RTdHBxNE1uR2Q3NFFBeHlMb2xUMHUxMFRvTlgy?=
 =?utf-8?B?UVVRUUF6MExlZ2RrakFwZVMya1c5UG9OdlhYK0VLeExhR2pxUWh1Znl4Wnp4?=
 =?utf-8?B?azlLNjlBMlhrUG15TFdGcDljdDVMMndEZVBmMWNRbmRQdW1iVGNkNW5kSWRH?=
 =?utf-8?B?dkhlSTJPRC9YaThVdEc0Z3g5eXBCdnBlR3ZKTVNIbXJCZkFSdENVVHRLV3gw?=
 =?utf-8?B?OWNHRDRueWQ3dktaT1c0R2hCUFN3Kzd3NWhqTm5zeVNENWgyUUttUW1tUDcw?=
 =?utf-8?B?TkFSN1cwT1pqWjBmWWxyNHR2Kzh0T3UyYzZtejVGMVNVWUs3K1E1Z25pM2Jy?=
 =?utf-8?B?Z3Y5WE9yRXVhMUI4bmtFbjJsekMvL3p1dzI4RGZFbnlBNjR4eHd5Vm1Ua1g3?=
 =?utf-8?B?ZWUxUkdxdXlBdi82aHRpa0VvUXJoQ1RlUlpwQmVhdGdFTzIvNEY3RGVicWE4?=
 =?utf-8?B?QkthN0QwSktWUFBYVXppUjdNd3VGcGNzK0w0V2lXUkFGZnBnZ3BYenlIKzZ1?=
 =?utf-8?B?RUFuT3l5djV0YkhqMXVVclNoaTl5aW5NVkZ5dHZIQWNaOCtFVFNTNFphZXZ3?=
 =?utf-8?B?TzZDWHQ4MG5oNmtxYW5BLy91MEZ6VXVUVk9QMHh1ZGd2UFg4TGNsamZ0OEVv?=
 =?utf-8?B?ekVSRFFZa01tMkFTdnNHaWlUcENvS2pBVVFwak5lMlgrS1ZKcHN5UXh0aCty?=
 =?utf-8?B?RFU3UDBnN0doVjZWbzhReGRDZm51MFAybGlxczRkaVdxYm9NZHhKSkJKdjB3?=
 =?utf-8?B?dXppTStHWUZLRnFoRDQ1YmpjM3QxbWdkNGxLWHRraEJqRGVvRFMwci9BcXJZ?=
 =?utf-8?B?UnAyNUltZDhjUTF3ZStnWVR6a0xYeW0wL2d6cU9IOG5FUC93Wk8zTGpZSHJ1?=
 =?utf-8?B?dHFqN1M5ZnJiS1FxODVHL3dKcWdBeW4rbVBKa1NhVEhQOVhuTmNIQ0Nxd2NE?=
 =?utf-8?B?dE9qcjJPdloyNFdTNHk4OSsxMVNHbElVNnVBRjVzTnhHenYzL2R3eHp2a0JX?=
 =?utf-8?B?SG5jK1Eyek9QK0RDREw4V1JKVEV5azJPUnc4dVdyV0VjdEM3Ykg1cDlta1c0?=
 =?utf-8?B?K2VCajNjUmVjVGk2bTRmQStoR0l6anBVQWR6R0ZQVy9rNmwzSVZpeUhqM1Yv?=
 =?utf-8?B?Rk5CWVFnSlRvL0VQcUZpTTJsUFd4eVkxazdkRE1OT09IRXJkRXRVdWtYTnF3?=
 =?utf-8?B?WFFkZkMwd0ZuN0VVeDEzdnRkRjhUQy90cjkxMnNpMWVCdHVmclEvbUtiRjJn?=
 =?utf-8?B?WE50dDdROStFVlg0S1kvNjEzZzA0MGN6OFoxRitxTXBjbnZIVnQ1RVJhdWxT?=
 =?utf-8?B?NU9MeTlIN0Yya0VKbTZjNzJLbzcwVFlpbGlCYy9PWFp0bUZuRnBYbkV0aEU4?=
 =?utf-8?B?SEhXako5ZkJiZmxuSUVoL0h5dzVTMi9uSkx0R1VXY0pVS1dIbjR4VHhlZWdT?=
 =?utf-8?B?cjJDZ3l6ZktWV2Zobk5oTmM3Q2htcUo3Q2xCL0FqZSs1WUpIM1pmdGlqeXVu?=
 =?utf-8?B?Y2xzanpUQ0M2aDJyK291cElyVzRhOUVDejRNL09yOTI4WUE0R0pFRVBscGFW?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e6853f-99c9-4f64-b490-08dbd6b6f2f2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2023 06:35:45.4761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xb9dPg0xnabObvJmxjx5kBHdh7O6uVWR7JXyahXZhaj0B+y90iBxH7jP+rnSgyiCDhc7prDzLZ9hQEDA0UhhKEw10hBBuNVY2ugvsnh1jPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7905
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: Clamp VBT HDMI level shift
 on BDW
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


On 10/13/2023 7:32 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Apparently some BDW machines (eg. HP Pavilion 15-ab) shipped with
> a VBT inherited from some earlier HSW model. On HSW the HDMI level
> shift value could go up to 11, whereas on BDW the maximum value is
> 9.
>
> The DDI code does clamp the bogus value, but it does so with
> a WARN which we don't really want. To avoid that let's just sanitize
> the bogus VBT HDMI level shift value ahead of time for all BDW machines.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9461
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 4e8f1e91bb08..8f83f0ead27f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2473,6 +2473,27 @@ static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>   	devdata->child.device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
>   }
>   
> +static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
> +				      enum port port)
> +{
> +	struct drm_i915_private *i915 = devdata->i915;
> +
> +	if (!intel_bios_encoder_supports_dvi(devdata))
> +		return;
> +
> +	/*
> +	 * Some BDW machines (eg. HP Pavilion 15-ab) shipped
> +	 * with a HSW VBT where the level shifter value goes
> +	 * up to 11, whereas the BDW max is 9.

I hope this is just one off case, where incorrect VBT is used.

Verified from Bspec:4299 and _bdw_trans_hdmi entries.

Change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +	 */
> +	if (IS_BROADWELL(i915) && devdata->child.hdmi_level_shifter_value > 9) {
> +		drm_dbg_kms(&i915->drm, "Bogus port %c VBT HDMI level shift %d, adjusting to %d\n",
> +			    port_name(port), devdata->child.hdmi_level_shifter_value, 9);
> +
> +		devdata->child.hdmi_level_shifter_value = 9;
> +	}
> +}
> +
>   static bool
>   intel_bios_encoder_supports_crt(const struct intel_bios_encoder_data *devdata)
>   {
> @@ -2652,6 +2673,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>   	}
>   
>   	sanitize_device_type(devdata, port);
> +	sanitize_hdmi_level_shift(devdata, port);
>   }
>   
>   static bool has_ddi_port_info(struct drm_i915_private *i915)
