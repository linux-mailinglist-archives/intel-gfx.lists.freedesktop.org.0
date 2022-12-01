Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7241C63E96F
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 06:49:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5886A10E0F7;
	Thu,  1 Dec 2022 05:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FE2710E0C3
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 05:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669873750; x=1701409750;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CGY21HZNjfqHzt9YpcBEHeYenO1s2SvTCXxrW6oSbt0=;
 b=RfdljET4xHS4oDpbCSZ+bKE5iL1kxmmR0SaEvTHUZm/z0Q+6RkSigFv6
 F09w097PkKvTATyl7fySd3eUP869U3jfd9WOp15WeGbhGy+JUDOsU++Xf
 v9iBPBTQjmQfU6lmEmLm77au7mv/rvEjBZjZlYGdQ0P0PiD0tZhViLgue
 JnluFFxPoiyPWjQiiTQPSVtbTygoqY+uNxLwOoB4Re8W3/ureM84QLJ0e
 8ABDOtmwCxuloxvZjxH5fci/1pLZopaL/Zs28uNSl8y9EoXFMX/0s13lm
 IK5azFD1OFNyTmKfduh3WCQ3S8XBkPkE1FlPBSeLIePnG7uD1FREgvii/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="342519085"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="342519085"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 21:49:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="646621739"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="646621739"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2022 21:49:09 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 21:49:09 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 21:49:09 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 21:49:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AlEYKxeUBFdHOcZcy4fkH4SEqaT5mgF7ojMTo6c7ivkVqY48AC8S1X2/oWQaqKdCq4uqFOZY2FMuLbPEl4nTD+HdUaIeP7YcMNYfcBBYH8c5jPIpow/Z4xoon4kLbkZB91Ez3Xaj/AtIlGjQCk1ZzjOeN4tex6/9p9attH650HFBQftLCgPquea0kJPcmAflC1HXtg2etXe40RalCc2fhiUfJi3XhZChrW7cchfR71cEBNJEQHlk4YjMnKdTUvilVXRYvjEocSJFcU4U8pEFsvIoUAS3+6SowkH9cUGr03aG2SunBUBwzNBD+yjnChPOPZTKGklRzPkLHXHYMYZUGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G2GzsyyosAZ+WTGh5y0Rk3lH+x0u8Hn+gaXBwZO/v4g=;
 b=FgZ5t3w2lYdO4ODZgnY9eIWO5HEDxDc5qzPTSDTE4w2OP3ta8xccSYElY9KXzVdgIeigP35oed7eSj3k4K25G3W25atcNohITAcgdoWov51a8UeLHdm0290+X3UHhqpZV4VxaI29YLn8nceglBGSluRkiMUXjZ5ke3KOU0jYEZx8a1TKI4ixrgTM42xkPslU5RRYBSAWePORXMlmRMSZSCp5gjSmUXwEqR88e/4Di00WDob4lSMZzShLZoJVhxqRu1use29hne0s24zNeytVuwxqEg8VuHpAdFAm1bbSifXWaK+YgvsDkTWC0qIRAuw2MV0NACrrb9I0uU7iA9mNfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4935.namprd11.prod.outlook.com (2603:10b6:510:35::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 05:49:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 05:49:01 +0000
Message-ID: <9db93db5-723e-09ad-3191-83eb36bcce9c@intel.com>
Date: Thu, 1 Dec 2022 11:18:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-6-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221123152638.20622-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0204.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4935:EE_
X-MS-Office365-Filtering-Correlation-Id: 07ab9059-7d15-46d8-fbcc-08dad35fbf99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZVS7PekZ4jelzCn/eTWirtlUmiQanAZhz7yK9ADd6bS13a+USWEPTgPQ6g+aNKH6ARIDAx+dPKHxp4rkaTcUPKkm8if8Nu3Pqg2G+FInx8x6xejQLQ/IJ7D4cZlqTuumrZJ65JosIUP+HM3kEwyHw5Ttm0zrT6l2cbUxjMK5DF1Zw0WjTPeX1JzbiPr9yEv6v30bdnYeNUN2DM9JclDojOaiCADM/L8qpovL5VBXuMwnzXoEL5bEA+E077EEazjw7DJxD38hgX4nwX9LyZhPetqpnryoOwhrQAuCDWN/HHymKTu4y2yz/F9iMsuKzsnh2/cbgbCIgtyJO35QZ5CSKiu3JS120/47iJi6fm0CnkUafF19Blhtc5YdBqEDhkHWcAzQgCc49zpTWeOmOtcf5XrBuXLXSaI6qVTNSXfmeMkzWQQ+mGnPykPzLSzGRh7/V4k+mTuLSC7fwoRcV3ZomCZ0/y3boC0CJVRtGgRG+oN9Q5SJdBIQc2x3LN+PGb+dbreboD6HZXhtYpN4ERhPSPGUjv/dZU9m+rNyDApcLzt4ZZPzooWM+HdphLdpb6htHDIxusIri9wzW5ww6UXiICtXwaUItPm9HXACdE4Z1nED72TNosWxSve+I1NWdNxYxMFUar6Jq3WpL2wPcYMcfMw93EVeVaTEWkCqaeL50j4YUD91CXDv8yz+vKCmufU/YtJ0aJgh/OWXjLH3FNeOC4K036E0WLS+Qr2Gt53Kb8w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(136003)(346002)(396003)(451199015)(8676002)(2906002)(41300700001)(66476007)(8936002)(66946007)(66556008)(6666004)(5660300002)(478600001)(36756003)(38100700002)(6512007)(26005)(53546011)(31686004)(2616005)(316002)(186003)(6486002)(55236004)(6506007)(83380400001)(86362001)(66574015)(31696002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXRhTkt6Qjc3b2swQ3IvSlI2QkNxVUgvZnRFOVZsQkEzbUlWRDlEZmtpN2xT?=
 =?utf-8?B?Y0E0SHhwcVVINnBtUDl5b0VLMnVLcTJQZThISXlTNWxIT3VHOHUxMGJiYXRp?=
 =?utf-8?B?NzYrZ2l4UDhCL1ZPVmc3SitGT01wczZXdTZrUXpyUVBsUTBRV3g4NEJWdXdj?=
 =?utf-8?B?WXBYcDVoOVFCQjBhZldaQjFNWlVGS3lwOWdZWjQ4WVhCNExkU29IWWczV29G?=
 =?utf-8?B?UnFpV3MxNDFxVzVVYU5wbzl5N1l0TWVDb2VyRGRqSnh6R3pFYml3bTVMZHlT?=
 =?utf-8?B?WWxiajljRUgzYllya2Vxd2M4ZGM1SUliTGlJeFJMOXc4QzkyeDVCRVZZVHlN?=
 =?utf-8?B?dWZyV3FJUEc4ZUQyaTNhZm1UNGFCWWFuLzJGOG95blliQnNsdisyR2s0SE5y?=
 =?utf-8?B?cjRrQUVwZ3FxSHdQS2lxV1BqZGlGeTVkOW5IOE11NnlxcGZaamdYTFlXaUNI?=
 =?utf-8?B?Njc2d0tzMElWQnlJU0tZS2dtR2s2N2RKRDlsZ1Boc1dEb1BmaHNRT1VZQ3Fr?=
 =?utf-8?B?Sllqb1hPMjRyMEU3NGJTRituc1NYaXJkaHhQWGFTQW5RNVBBeGNpU2Q1aUJt?=
 =?utf-8?B?NFhoTk9jOGZaNlovYUNIeUtCZWtUUW5KNk93cFczeC9LRzZYY0JoN2pPa3Nu?=
 =?utf-8?B?Nnp6QVBOV1g4LzVBUjhqNmI3S1N4ZmxvWjRqRUloZUYxVEs1RmhOTzZyY2x3?=
 =?utf-8?B?NUxvNXpqeVo2UHZPVXo5a21YV0NxSnltOEU1TXJqSXQ1Y0RoOEVhdXlSN0gr?=
 =?utf-8?B?bDZxZ1RsNlpTOUJGSW95ZHk1WFFXb210VEh2QStjR2k3WUo5WWdibVZWNlJm?=
 =?utf-8?B?VXkreW9WVTAydFNCN2lVUnNSQW0waUh1WW9QbGlxRjYxVUdBd0I4Zzdiekxs?=
 =?utf-8?B?K0s4MmpIVlBzTC9ZSFpJc25WVE0wNkRVc2xtWUxtTGRTdEVlQ3dEbFY5VURj?=
 =?utf-8?B?M3NFME82WFQvQXVYaTJUMXVRZUhQRzkvTmxUWFNzTGhsL0tZQ242OFY1bEti?=
 =?utf-8?B?MnlpcjJpdWJIMkYzVGQ2SjdpU3d2SERQTWlLaExrcWVXR0RsbWw1L3R4cE1q?=
 =?utf-8?B?K2RSNFBKQUROQ3c4ckY5WE1YMUlZa0lIN2dvZERGd0ZER1FzcVlPTTVTTlV6?=
 =?utf-8?B?Q3RMQ3FPMm94T3orNzBJZVhkMG1jbVJKckNiazFTaWpPTWtTaHZnUnhxUmRQ?=
 =?utf-8?B?WmNVMGhCR0RHR2dWWnJpOUY3V2o1bmRoRHJFaFRJV2Y2NDNmSUxpTmdoeDRS?=
 =?utf-8?B?WWFnZi9pTExzbm01ZnNXeEs3cFJvYmEwTFhqZTY3OGdUcHkvV01PeHRyMXRj?=
 =?utf-8?B?Q01aM0ZrRURwSW5MaU1VUkxWUHlLbUhBa1lMVlQwV3A0MXFSQjg1NkYxTkIw?=
 =?utf-8?B?c0VQODVRSWkyRGJGK0tHOTl0RXZ1SmNjYWgwNkpPNmpZcGQ3WlR4ZWhtUXl6?=
 =?utf-8?B?T2tLYlQ0djJIbE9GcnBsNlVCaXBpdEs2b1BtYTErSnRYeWtHNUlYRWJHVlQv?=
 =?utf-8?B?KzRvcXBRcGlsS01vclkvd2dmb0hEVHdmejlhVFlIN3RoQWZYMytIRUN3bXhm?=
 =?utf-8?B?c1FBc2tpT1ZQYWJidFAvQVgyby9qbmdOZVdIajFWOVgxNk5sSWhLcGRqaEhP?=
 =?utf-8?B?TVRuR1Q1Q0IycEpGTXNQTmkzUmRPY3pUZ2hjQ1J1ZHBkeEJuVjZrckNaSzJ6?=
 =?utf-8?B?TWY1QWc1TmdoOHM4RU1Tei9uL3lqRXBMZ3NST2ZKZzV1YjB2ZzlJQXhTS1Z4?=
 =?utf-8?B?ckNEOHVkeHNxSkRIN2sxODh3UTB4L3ErVDBCVUd2MnFzZFRLSkNyTGxhQ1pJ?=
 =?utf-8?B?cDJ5Rk9jVDlER0hsMm5QZ3NCRmFIUmlFdE1qZzZzalBqdUJaeSt4Mmx1NWFY?=
 =?utf-8?B?Uk9BWmNnSVpULzZxRUo1OVBDY3R4aVlGZEpRSWJmUEVXUzF4U29LUGs0cUFU?=
 =?utf-8?B?aFZEWm44SU9CdzBZbWJDZjkrV0k5S0t4eXN3cldpMW9zMWVDVzVvKzhSa3Bk?=
 =?utf-8?B?Vi9HazE1YzNQNnpnTHFCcEsrL0JyaVA5RGFPWWZuTkJKOEUxUy92WkpRVm9m?=
 =?utf-8?B?bHNVWFZXck50bVNTOTFscW9kVnpDYnM2Q2FWamhHSUFzT1FBVGtQTzRLbjBH?=
 =?utf-8?B?ZWhmQUFQK2U0N3lzNEg0NTFGa3R5UENSSE9KL0RSQ2JHUGFvcWhreEVnMlhu?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07ab9059-7d15-46d8-fbcc-08dad35fbf99
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 05:49:01.7333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fHDnLwPgIN4g/3wwbI8gnuWp4cnU7rKwXqFL2Nr/zmjeDjallxOD2GPsYfGtqkSsOa0dJ1Fnul1S7TDHLkvZOhf4U0C+tAyl2p7jQpb8f9w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4935
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915: Standardize auto-increment
 LUT load procedure
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

On 11/23/2022 8:56 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Various gamma units on various platforms have some problems loading
> the LUT index and auto-increment bit at the same time. We have to
> do this in two steps. The first known case was the glk degamma LUT,
> but at least ADL has another known case.
>
> We're not going to suffer too badly from a couple of extra register
> writes here, so let's just standardize on this practice for all
> auto-increment LUT loads/reads. This way we never have to worry about
> this specific issue again. And for good measure always reset the
> index back to zero at the end (we already did this in a few places).
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 19 ++++++++++++++++++-
>   1 file changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index c960c2aaf328..bd7e781d9d07 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -934,6 +934,8 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>   	int i, lut_size = drm_color_lut_size(blob);
>   	enum pipe pipe = crtc->pipe;
>   
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
> +			  prec_index);
>   	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
>   			  PAL_PREC_AUTO_INCREMENT |
>   			  prec_index);
> @@ -1138,7 +1140,10 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
>   	 * 2/(8 * 128 * 256) ... 8/(8 * 128 * 256).
>   	 */
>   	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
> -			    PAL_PREC_AUTO_INCREMENT);
> +			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
> +	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
> +			    PAL_PREC_AUTO_INCREMENT |
> +			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
>   
>   	for (i = 0; i < 9; i++) {
>   		const struct drm_color_lut *entry = &lut[i];
> @@ -1148,6 +1153,9 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
>   		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
>   					    ilk_lut_12p4_udw(entry));
>   	}
> +
> +	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
> +			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
>   }
>   
>   static void
> @@ -1170,6 +1178,8 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>   	 * PAL_PREC_INDEX[0] and PAL_PREC_INDEX[1] map to seg2[1],
>   	 * seg2[0] being unused by the hardware.
>   	 */
> +	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
> +			    PAL_PREC_INDEX_VALUE(0));
>   	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
>   			    PAL_PREC_AUTO_INCREMENT |
>   			    PAL_PREC_INDEX_VALUE(0));
> @@ -1202,6 +1212,9 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>   					    ilk_lut_12p4_udw(entry));
>   	}
>   
> +	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
> +			    PAL_PREC_INDEX_VALUE(0));
> +
>   	/* The last entry in the LUT is to be programmed in GCMAX */
>   	entry = &lut[256 * 8 * 128];
>   	ivb_load_lut_max(crtc_state, entry);
> @@ -2819,6 +2832,8 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
>   
>   	lut = blob->data;
>   
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
> +			  prec_index);
>   	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
>   			  PAL_PREC_AUTO_INCREMENT |
>   			  prec_index);
> @@ -2947,6 +2962,8 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
>   
>   	lut = blob->data;
>   
> +	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
> +			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
>   	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
>   			  PAL_PREC_MULTI_SEG_AUTO_INCREMENT |
>   			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
