Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0350D7838A0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 05:52:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E5110E2D4;
	Tue, 22 Aug 2023 03:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B0AE10E2D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 03:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692676321; x=1724212321;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VqVzBfnwrTy1QYUMUipw2BZa/HxXLKvM5NhjsAFqd3o=;
 b=BD8S6Eq1Imn9m6bDV8Kzv0dqzupbBVXRAqjL1QSlCWT0KeF+uIAzrXgq
 UOnZbhsEfZrE4GzdRYwOu09R8DgNu4X+POCKOqkPjf7wm4F9AWKrF0apE
 HHNt+0tvbuSRbawWDrl3J7TWJQSzHljWw4bgmDiszr668R0uAo4HSGcsf
 Psqu6q5CkG00o+LM1D3YzcHsXOToYfz7ndYLy60pOK1wwzCx4qYKXjKUC
 NgSsXq0BEENn5cZrJeXoLT3/mg40rOQZCWDeukFXWt1ED5zcNp7lligqo
 L+cyL/jFBNzN8HYyHUM3+u/IOEFfEQHJ4xoEWfPELBqsYQAtS7z9rTa9V Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="376505459"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="376505459"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 20:51:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="739151055"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="739151055"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 21 Aug 2023 20:51:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:51:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:51:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 20:51:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 20:51:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mY8IrBcWURIpicuhJ+oDtIa1Kb+i48IFM9kS7dBh0wWq5soowVYD1BdPXQiPuvHuVfBPMk89D5wfz+dXn4n6ktVZWy+/gp58Vok8CRNr3jJFsO14+SoyTYvRGBg/+xoR09lqQ/1FToQ2FKjsU14hnZvT1Lv3YKqvcoBcyOyiJOQL+XBFyJxXdw7OAUY/YkKfrks3/i3QKjfcG5dnSC0N8HfIJHhPog4n9eLQm7b+cz06L85FqRG9NqT9NuTEdLLyITfk4zgrw07j0xYY+lulceibzV9pKGPJvtLyjsVfiE98kHq915c7AIw+x/aKYcbMRxrU3X6psZfak/x9xnDEIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XMmMGfVl9hEeKssXoF09rp6o3Sj2cpB5ustVe/s7LOY=;
 b=N9oHf2F6AFA+Dppsbb2PJSGrXvG6RisiQ4MNUyJf91cAj1gqhclCHC0Xi5InERhtrH68bRcHOyDjC8Oi9kryew+H5TmCgje1N6UE1nEoJ9yqKZ6bZq+L6Sr36mt8k/zyJLxZQI+VCiVPhHPhuSAgoR9uwjKk2hhCTttf4qhHx28fb12T2YNvaF8cKXqzHx35I/3CwJf6PWjHQxfzR2c4IUtk7mO6VegL+uax+kRcgKN3TgRhdOYGn14Rr4H8gV0iwj3Nx6PMwyff6ah5FugAI/uTkE/NAVbMliDn/8xmHmRFL8Ouhu5PyYtmknOPQNTP0u12MBlq1pExuor/8xERtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7878.namprd11.prod.outlook.com (2603:10b6:8:f6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 03:51:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 03:51:50 +0000
Message-ID: <e0853745-8038-335e-cdc9-3ce2de0e262f@intel.com>
Date: Tue, 22 Aug 2023 09:21:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230817083524.296571-1-suraj.kandpal@intel.com>
 <20230817083524.296571-7-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230817083524.296571-7-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0094.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7878:EE_
X-MS-Office365-Filtering-Correlation-Id: 42380727-5e84-46ee-941e-08dba2c31dac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VMFEkSnYtQZagJtCMimmeRytDotQcP8Ghjk05fW/LiDKpn0ubbodZbx+c6+I77+Wb0wr3Zo+oLViNQsoH5znUFBjvnm78TAWqGA5wB1gRPLbI9prGIRY2Dr1D3SvWZ65WnMW+066dv+wtadQPLAlUqtpysY0+xVGZP4puUVZEwsfo/MJVD2zovtpLSLt5G1ZsHCA8/DecKGTVJQC6+Kk3iwa6uuObiZXy+n/YK/aEEsD30VvpNZ5JW/U/KygWgM+QV7QiTdUnawwysRNO9kQkRIYNiNntBzHpki7jkZ9OL6AgCKamUhv0ZBIX1atIxhMNQsIdIy/NOn51hbpi5Yod+1CpZaaNhTNMOqA/jgFk7X3KdzSoDFwIhh1UiyKFZlxl26Kl1UTD1kgrhiYCwqdWAlaIIxq+QBa0p7b+N9+VvXvv0XcTv2UkzhlNJtQ8LGtSMGIg+y9PwP4zx1rQbl9eplldReVYvJNHPF6uINLzUbiDLX3aojqihF/vaM/q8q/vZk9v9ljBEevf/o4MMttUDK0qQqCy9ghX6L0GFtj5Nxzs18DSKmX6Aks9sme49BdMANAyN8+MYPkl3UVCzzudnIydjm7VITntYhX3I5kjmhxuvni4bmXHHFZQ3xyRUCrUD0ZGZRF3C/ZIxIXZWeKtQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(66476007)(66556008)(316002)(66946007)(6512007)(82960400001)(8676002)(8936002)(2616005)(4326008)(41300700001)(36756003)(478600001)(6666004)(38100700002)(53546011)(6506007)(6486002)(83380400001)(30864003)(2906002)(86362001)(31686004)(31696002)(5660300002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWM5UzhreWF6aDFBeUVzMWpRNFBQbTB1cXordTU0NFdUNzBzQk9MS3NyaG5w?=
 =?utf-8?B?TlZZZk9yZUx2NXc5ZmduNFlaZ1U2eXI5QVpwMFc5UTF5TC9GcmRZdlBGVE9y?=
 =?utf-8?B?QTlKRlpkcnZucm5tbzZYeDVoVkJlTVMxbjRmbUlyVkRWV3NHMlNRdXpxd3Y2?=
 =?utf-8?B?RTRxNjMxdjVrZHR0elE2Y3BscXY3SUlrbzJLWUFKY3NiYyszLytQQ3B4S1lj?=
 =?utf-8?B?TzY3V0JNMVFjTUdWVmJPNXhWRzZFaGhWK1lMNjY0elZqMVZxbHlTeEhsdGhO?=
 =?utf-8?B?cmZLQVE0TitMQlV6QUZESDdLNjFLakVxbHRGTTJRd2xyVGI1UmpwTlhCS25i?=
 =?utf-8?B?ODI5S01EbHRTaDRhdWl4TnMxc1NZeUhQL1pwSTBTZVAvVjRaV1luKzBhYWJ1?=
 =?utf-8?B?RzJEd1FGcEh5YlhYNnRXM2h6NDZIOTNLRElZUzFCczVJaXZHY1JDNm02MUM4?=
 =?utf-8?B?a2k4T1o1emRUeTdZclIwa0pQV3pFRGNQYUVET2o0bjBmc0tCT1lNQUVNQllK?=
 =?utf-8?B?WVNBTmNkbWRIekxWbXNmMS9WaVpqR2VrZVRZOHhjZ0IvUFE2YStkTTU0TVZW?=
 =?utf-8?B?eEd6c2YzRzlyamNsMTFHMlNSeUhJUlEwT20xQU5aV0pWSDhwb1pKbmlzRnJE?=
 =?utf-8?B?b0tndVh4Y3YvYWpwcklDUzMyZ2h2bC9EWWpMMzBDSndRT1VDSHRqWUlndjI0?=
 =?utf-8?B?R0R4ay8rb25YOU05cFhWSWsyUUpYaCs5Qlo0UXFWRDE4cWxwbzdaRUw5V0N6?=
 =?utf-8?B?QUxZTVg2T3ppbWdLV3BrcTNGRExkT0I3TmJ0TnJzdE1tVkZMekl1N1lEQW9H?=
 =?utf-8?B?MVc2ckxvMExxaWtVK3FLWG9YT1QvaU5ld0x5S0dIZUR2TVlCVndvbnByYzAx?=
 =?utf-8?B?aExiTDE0RllBSUdKblV6NHovT00zRk50NGRCa1ZkQ1MvdzRpMGdvVzhSN0tU?=
 =?utf-8?B?WHBaMWcvRnFnTXgzSlByTGNNcjNiTmN2TlE2bEtrL3dOaHE0VS9HZ0tSSnM1?=
 =?utf-8?B?S2lpZG5nM1d2NlBlZlRyUnM2Rlo5bDZZQ1FxTUlnMVNZdWttSGNsc1VrQndt?=
 =?utf-8?B?WHlHSjFOT2Q0SjRZMHBmR29FaDFVRjZ1eDFCT2tHeisxdXBJeEhkWWFsYjZN?=
 =?utf-8?B?OU5GRk1IWklUT01hbVFGemd0enpURXc2ak1lekdIK3dpM0MwYVRKQUptbWN3?=
 =?utf-8?B?aEUxamkxSVZYaEt6ODlQd1NZL3RUb2ZoTEFjUzEzQjlFTWw1T0tvcGwzZzRC?=
 =?utf-8?B?Rlo0SllXc1dTOWZ1RjBxL2p1anl2bkh4SlFHWVRHQU5hYS9vb1IwTzVCblBU?=
 =?utf-8?B?MjhqTTl0QkZQaHBhaG5ZTmViVTRSVGZETGdxZW1FZ2tDOTYvcWpoU2Y4dWJB?=
 =?utf-8?B?QzVYeVVpbmRURzdqcnpWYWZvZVF5UWtQeWtKOTVLdjM4VDNIOEpvTlc4Mm5Q?=
 =?utf-8?B?SjEwV2U0S0hnY3N0eVVwb1pCQ2kwYWM5cUduQUkyQzBVS2hEQWNJTW1IWmxD?=
 =?utf-8?B?d3FZeUQ0czVNa2l5U2p0c1pHZ2MrTGpJTkFhOWpWd0J6bXFPMzZ6b1NTRU9G?=
 =?utf-8?B?YUFlaFBRd0Z0b0hIQ01OcFNHbzM5c2hnRllvb3lwOXVCYWRxb0F1UUFKbEZN?=
 =?utf-8?B?MnRkbVNKUzNTVzZJbEFSUThmYkZVRTZrYUd4cmxZUTJDbTZoOUVLMFQyd2NI?=
 =?utf-8?B?d0Y5dytsMFdNdmRieUJaZTd4T21xVE8xOHB6V1NjcHp1b3I0b1c5YktyVTk1?=
 =?utf-8?B?QU1UREIwSVlLekRYYURHMlJEd1VHL0tXOHhoY0piWmtXUi9Ed0g1M0ZYamxr?=
 =?utf-8?B?OG05RkpqQXc1WEhmY2NiOEthd2RTZ0FoL0FsVXIwT3RkQVB1REgydFFxUTMz?=
 =?utf-8?B?WEp5WG9LTkNOV1NpT01EYjV5U3JJRjQ5WTVNZFNyYmpQRU5WT3R5azlydjVa?=
 =?utf-8?B?dERrTjRIZjRwVWdkSjhYQU5ONVM2NTlObUt2aENHakowUnZKU21zaFFCL3F2?=
 =?utf-8?B?UEhrRE1nWFhta1MrMVQrdmNRbXdnckZCRDVXQm43dnVKYmJBNUROZDIwZXBh?=
 =?utf-8?B?NFFuK1BFZEpzMi94bVlyTjllL3h3Y3QxNm1uaCtDOFdjL3k5V3F5czNia3p4?=
 =?utf-8?B?elIrUXE4a1ZqSFFSOWtNeW0zcS9VZldWbHE1TU91MkxybS9qUjVZS3NMaTNT?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42380727-5e84-46ee-941e-08dba2c31dac
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 03:51:50.4975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DCypGRRzqqs/P98+0ZDVqmLrAHAEQruA04xdkXVjMbGWHS9aCDxdP00iJTDxXlGP/jMMVu37oLkz3UAdxvfXvDoXoO2+1lR+ISHt04Xew78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7878
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 6/8] drm/i915/vdsc: Remove unused dsc
 registers
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


On 8/17/2023 2:05 PM, Suraj Kandpal wrote:
> Now that we have macros that can fetch dsc register values based
> on pipe and pps parameters we can go ahead and remove all the
> unused register.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_vdsc_regs.h    | 259 ++----------------
>   1 file changed, 24 insertions(+), 235 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 862dc708c5fc..7afc487223fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -46,38 +46,7 @@
>   							   _ICL_PIPE_DSS_CTL2_PB, \
>   							   _ICL_PIPE_DSS_CTL2_PC)
>   
> -/* MTL Display Stream Compression registers */
> -#define _MTL_DSC0_PICTURE_PARAMETER_SET_17_PB	0x782B4
> -#define _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB	0x783B4
> -#define _MTL_DSC0_PICTURE_PARAMETER_SET_17_PC	0x784B4
> -#define _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC	0x785B4
> -#define MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _MTL_DSC0_PICTURE_PARAMETER_SET_17_PB, \
> -							   _MTL_DSC0_PICTURE_PARAMETER_SET_17_PC)
> -#define MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB, \
> -							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC)
> -#define DSC_SL_BPG_OFFSET_MASK			REG_GENMASK(31, 27)
> -#define DSC_SL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_SL_BPG_OFFSET_MASK, offset)
> -
> -#define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB	0x782B8
> -#define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB	0x783B8
> -#define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PC	0x784B8
> -#define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC	0x785B8
> -#define MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB, \
> -							   _MTL_DSC0_PICTURE_PARAMETER_SET_18_PC)
> -#define MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB, \
> -							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC)
> -#define DSC_NSL_BPG_OFFSET_MASK			REG_GENMASK(31, 16)
> -#define DSC_SL_OFFSET_ADJ_MASK			REG_GENMASK(15, 0)
> -#define DSC_NSL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_NSL_BPG_OFFSET_MASK, offset)
> -#define DSC_SL_OFFSET_ADJ(offset)		REG_FIELD_PREP(DSC_SL_OFFSET_ADJ_MASK, offset)
> -
>   /* Icelake Display Stream Compression Registers */
> -#define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
> -#define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
>   #define DSCA_PPS_0				0x6B200
>   #define DSCC_PPS_0				0x6BA00
>   #define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0 + (pps) * 4)
> @@ -86,12 +55,6 @@
>   #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
>   #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC	0x78570
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
>   #define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
>   							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
>   							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> @@ -100,6 +63,8 @@
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
>   #define  ICL_DSC0_PPS_REG(pipe, pps)		_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
>   #define  ICL_DSC1_PPS_REG(pipe, pps)		_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
> +
> +/* PPS0 */
>   #define  DSC_NATIVE_422_ENABLE		BIT(23)
>   #define  DSC_NATIVE_420_ENABLE		BIT(22)
>   #define  DSC_ALT_ICH_SEL		(1 << 20)
> @@ -112,66 +77,22 @@
>   #define  DSC_VER_MIN_SHIFT		4
>   #define  DSC_VER_MAJ			(0x1 << 0)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_1		_MMIO(0x6B204)
> -#define DSCC_PICTURE_PARAMETER_SET_1		_MMIO(0x6BA04)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_1_PB	0x78274
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_1_PB	0x78374
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_1_PC	0x78474
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_1_PC	0x78574
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_1_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_1_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_1_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_1_PC)
> +/* PPS1 */
>   #define  DSC_BPP(bpp)				((bpp) << 0)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_2		_MMIO(0x6B208)
> -#define DSCC_PICTURE_PARAMETER_SET_2		_MMIO(0x6BA08)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_2_PB	0x78278
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB	0x78378
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_2_PC	0x78478
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC	0x78578
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_2_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_2_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB, \
> -					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC)
> +/* PPS2 */
>   #define  DSC_PIC_WIDTH_MASK		REG_GENMASK(31, 16)
>   #define  DSC_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
>   #define  DSC_PIC_WIDTH(pic_width)	REG_FIELD_PREP(DSC_PIC_WIDTH_MASK, pic_width)
>   #define  DSC_PIC_HEIGHT(pic_height)	REG_FIELD_PREP(DSC_PIC_HEIGHT_MASK, pic_height)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_3		_MMIO(0x6B20C)
> -#define DSCC_PICTURE_PARAMETER_SET_3		_MMIO(0x6BA0C)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_3_PB	0x7827C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB	0x7837C
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_3_PC	0x7847C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC	0x7857C
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_3_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_3_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC)
> +/* PPS3 */
>   #define  DSC_SLICE_WIDTH_MASK			REG_GENMASK(31, 16)
>   #define  DSC_SLICE_HEIGHT_MASK			REG_GENMASK(15, 0)
>   #define  DSC_SLICE_WIDTH(slice_width)		REG_FIELD_PREP(DSC_SLICE_WIDTH_MASK, slice_width)
>   #define  DSC_SLICE_HEIGHT(slice_height)		REG_FIELD_PREP(DSC_SLICE_HEIGHT_MASK, slice_height)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_4		_MMIO(0x6B210)
> -#define DSCC_PICTURE_PARAMETER_SET_4		_MMIO(0x6BA10)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_4_PB	0x78280
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB	0x78380
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_4_PC	0x78480
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC	0x78580
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_4_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_4_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC)
> +/* PPS4 */
>   #define  DSC_INITIAL_DEC_DELAY_MASK		REG_GENMASK(31, 16)
>   #define  DSC_INITIAL_XMIT_DELAY_MASK		REG_GENMASK(9, 0)
>   #define  DSC_INITIAL_DEC_DELAY(dec_delay)       REG_FIELD_PREP(DSC_INITIAL_DEC_DELAY_MASK, \
> @@ -179,35 +100,13 @@
>   #define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     REG_FIELD_PREP(DSC_INITIAL_XMIT_DELAY_MASK, \
>   							       xmit_delay)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_5		_MMIO(0x6B214)
> -#define DSCC_PICTURE_PARAMETER_SET_5		_MMIO(0x6BA14)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_5_PB	0x78284
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB	0x78384
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_5_PC	0x78484
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC	0x78584
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_5_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_5_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC)
> +/* PPS5 */
>   #define  DSC_SCALE_DEC_INT_MASK			REG_GENMASK(27, 16)
>   #define  DSC_SCALE_INC_INT_MASK			REG_GENMASK(15, 0)
>   #define  DSC_SCALE_DEC_INT(scale_dec)		REG_FIELD_PREP(DSC_SCALE_DEC_INT_MASK, scale_dec)
>   #define  DSC_SCALE_INC_INT(scale_inc)		REG_FIELD_PREP(DSC_SCALE_INC_INT_MASK, scale_inc)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_6		_MMIO(0x6B218)
> -#define DSCC_PICTURE_PARAMETER_SET_6		_MMIO(0x6BA18)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_6_PB	0x78288
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB	0x78388
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_6_PC	0x78488
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC	0x78588
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_6_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_6_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC)
> +/* PPS6 */
>   #define  DSC_FLATNESS_MAX_QP_MASK		REG_GENMASK(28, 24)
>   #define  DSC_FLATNESS_MIN_QP_MASK		REG_GENMASK(20, 16)
>   #define  DSC_FIRST_LINE_BPG_OFFSET_MASK		REG_GENMASK(12, 8)
> @@ -219,36 +118,13 @@
>   #define  DSC_INITIAL_SCALE_VALUE(value)		REG_FIELD_PREP(DSC_INITIAL_SCALE_VALUE_MASK, \
>   							       value)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_7		_MMIO(0x6B21C)
> -#define DSCC_PICTURE_PARAMETER_SET_7		_MMIO(0x6BA1C)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_7_PB	0x7828C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB	0x7838C
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_7_PC	0x7848C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC	0x7858C
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							    _ICL_DSC0_PICTURE_PARAMETER_SET_7_PB, \
> -							    _ICL_DSC0_PICTURE_PARAMETER_SET_7_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB, \
> -							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC)
> +/* PPS7 */
>   #define  DSC_NFL_BPG_OFFSET_MASK		REG_GENMASK(31, 16)
>   #define  DSC_SLICE_BPG_OFFSET_MASK		REG_GENMASK(15, 0)
>   #define  DSC_NFL_BPG_OFFSET(bpg_offset)		REG_FIELD_PREP(DSC_NFL_BPG_OFFSET_MASK, bpg_offset)
>   #define  DSC_SLICE_BPG_OFFSET(bpg_offset)	REG_FIELD_PREP(DSC_SLICE_BPG_OFFSET_MASK, \
>   							       bpg_offset)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_8		_MMIO(0x6B220)
> -#define DSCC_PICTURE_PARAMETER_SET_8		_MMIO(0x6BA20)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_8_PB	0x78290
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB	0x78390
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_8_PC	0x78490
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC	0x78590
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_8_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_8_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC)
> +/* PPS8 */
>   #define  DSC_INITIAL_OFFSET_MASK		REG_GENMASK(31, 16)
>   #define  DSC_FINAL_OFFSET_MASK			REG_GENMASK(15, 0)
>   #define  DSC_INITIAL_OFFSET(initial_offset)	REG_FIELD_PREP(DSC_INITIAL_OFFSET_MASK, \
> @@ -256,18 +132,7 @@
>   #define  DSC_FINAL_OFFSET(final_offset)		REG_FIELD_PREP(DSC_FINAL_OFFSET_MASK, \
>   							       final_offset)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_9		_MMIO(0x6B224)
> -#define DSCC_PICTURE_PARAMETER_SET_9		_MMIO(0x6BA24)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_9_PB	0x78294
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB	0x78394
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_9_PC	0x78494
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC	0x78594
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_9_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_9_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC)
> +/* PPS9 */
>   #define  DSC_RC_EDGE_FACTOR_MASK		REG_GENMASK(19, 16)
>   #define  DSC_RC_MODEL_SIZE_MASK			REG_GENMASK(15, 0)
>   #define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	REG_FIELD_PREP(DSC_RC_EDGE_FACTOR_MASK, \
> @@ -275,18 +140,7 @@
>   #define  DSC_RC_MODEL_SIZE(rc_model_size)	REG_FIELD_PREP(DSC_RC_MODEL_SIZE_MASK, \
>   							       rc_model_size)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_10		_MMIO(0x6B228)
> -#define DSCC_PICTURE_PARAMETER_SET_10		_MMIO(0x6BA28)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_10_PB	0x78298
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB	0x78398
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_10_PC	0x78498
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC	0x78598
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_10_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_10_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC)
> +/* PPS10 */
>   #define  DSC_RC_TGT_OFF_LOW_MASK			REG_GENMASK(23, 20)
>   #define  DSC_RC_TGT_OFF_HIGH_MASK			REG_GENMASK(19, 16)
>   #define  DSC_RC_QUANT_INC_LIMIT1_MASK			REG_GENMASK(12, 8)
> @@ -298,83 +152,7 @@
>   #define  DSC_RC_QUANT_INC_LIMIT1(lim)		REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT1_MASK, lim)
>   #define  DSC_RC_QUANT_INC_LIMIT0(lim)		REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT0_MASK, lim)
>   
> -#define DSCA_PICTURE_PARAMETER_SET_11		_MMIO(0x6B22C)
> -#define DSCC_PICTURE_PARAMETER_SET_11		_MMIO(0x6BA2C)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB	0x7829C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB	0x7839C
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC	0x7849C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC	0x7859C
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_12		_MMIO(0x6B260)
> -#define DSCC_PICTURE_PARAMETER_SET_12		_MMIO(0x6BA60)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB	0x782A0
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB	0x783A0
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC	0x784A0
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC	0x785A0
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_13		_MMIO(0x6B264)
> -#define DSCC_PICTURE_PARAMETER_SET_13		_MMIO(0x6BA64)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB	0x782A4
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB	0x783A4
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC	0x784A4
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC	0x785A4
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_14		_MMIO(0x6B268)
> -#define DSCC_PICTURE_PARAMETER_SET_14		_MMIO(0x6BA68)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB	0x782A8
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB	0x783A8
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC	0x784A8
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC	0x785A8
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_15		_MMIO(0x6B26C)
> -#define DSCC_PICTURE_PARAMETER_SET_15		_MMIO(0x6BA6C)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB	0x782AC
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB	0x783AC
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC	0x784AC
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC	0x785AC
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_16		_MMIO(0x6B270)
> -#define DSCC_PICTURE_PARAMETER_SET_16		_MMIO(0x6BA70)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_16_PB	0x782B0
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB	0x783B0
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_16_PC	0x784B0
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC	0x785B0
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_16_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_16_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC)
> +/* PPS16 */
>   #define  DSC_SLICE_ROW_PR_FRME_MASK			REG_GENMASK(31, 20)
>   #define  DSC_SLICE_PER_LINE_MASK			REG_GENMASK(18, 16)
>   #define  DSC_SLICE_CHUNK_SIZE_MASK			REG_GENMASK(15, 0)
> @@ -385,6 +163,17 @@
>   #define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		REG_FIELD_PREP(DSC_SLICE_CHUNK_SIZE_MASK, \
>   								       slice_chunk_size)
>   
> +/* MTL Display Stream Compression registers */
> +/* PPS17 */
> +#define DSC_SL_BPG_OFFSET_MASK			REG_GENMASK(31, 27)
> +#define DSC_SL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_SL_BPG_OFFSET_MASK, offset)
> +
> +/* PPS18 */
> +#define DSC_NSL_BPG_OFFSET_MASK			REG_GENMASK(31, 16)
> +#define DSC_SL_OFFSET_ADJ_MASK			REG_GENMASK(15, 0)
> +#define DSC_NSL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_NSL_BPG_OFFSET_MASK, offset)
> +#define DSC_SL_OFFSET_ADJ(offset)		REG_FIELD_PREP(DSC_SL_OFFSET_ADJ_MASK, offset)
> +
>   /* Icelake Rate Control Buffer Threshold Registers */
>   #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
>   #define DSCA_RC_BUF_THRESH_0_UDW		_MMIO(0x6B230 + 4)
