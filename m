Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BE37388E0
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 17:24:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46D4010E4AD;
	Wed, 21 Jun 2023 15:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3BD710E4AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 15:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687361072; x=1718897072;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/TzFSMmNX/NgZ9x3ftXZAd3jc8/ERfVYPAKDQX583a8=;
 b=CKxnLoeuziWpmatiooiSXEeF4CgCM01ilNx7A5NSPE2qljEU/Lbq2ZnG
 X2VCIkvpq3nttxOQemCLECmCyzTXKIMfEH8Q/xuwJqaFbZE0+cWEWlXva
 FrhawEE/GMMmWlS2Lmgl+0tXubPRrTVWFswbMVz26GZZcDiEFUW6vhSmS
 XnOmHNfso7318G/vlK6YKXwR3oeB7LpwxHQU1Jfy/2POVLhX0M/M0aQT7
 h/N1Tv7zZ6Sgw1u5F4YpJTkyqWE3lSOegf5YtzwRoOJz09KAjbTujS21c
 f5YBSz7jKYAY8yiRCL3Vn5QXiejxG5LHu85FwHcg6RmhFwYMNk9HUloC2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="359074369"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="359074369"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 08:24:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="744202910"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="744202910"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 21 Jun 2023 08:24:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 08:24:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 08:24:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 08:24:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 08:24:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OLzghBFfoyiVWdHN30RH73OAFeivxpCIH3+2hFdwGqgJDr1mgwyTCyeMufD01ye15FJOfnagp81sfHP8hRzxagX1CGOIxFXskANaE4SOQ9QEM/YDFj6N/mb5/LS1yH5IQ8zfIw3U7KZeOLJr0UL3c18DGBm3Zd1pnO+JocwKbUo6ScSti4SiLoygk7b+cLWAo5+EanKs9cHKKfBTup/Q0INcwyfBBa704dBjPsUI7EUAMtrWy2G/NCoYa+ioa2s+XQ/a/J2VIKbPNf0G17Wy4oJQS7X4p66fiUVchy6J+4SUeT7ImiJyEc+49KwSZynRUMsopraaX8G7Z3pevsElVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dtUaKYbLu6sKFVeNYrFAAv2i3SNOTDYuB9C5BMRTHsk=;
 b=hMyVrl/+zLoGFqRy2UJADzXaE78VOsa4CjiW6F83McfIqLJnNySxeUTvtjwgW+2Ibe1uEYLl1qqI13q2tgy3OvfmEERod6ApCaT+6Mu263mx7+Oow63HOAe/1G8BP2eq/UqiVarOZBw0jMWa1Ka6S5rd1d7rCDeV+iffopEQxfSJg0OvLZihuwRTqXS/WcbCDbTpO3OlhVhIlA0R/gdXvZ9HB7ihbu1ArBgRecoxnx6kOc2lWPNq9cKzuqSgsLE/+Nd65YK8Zzt2zE5a3Ex2MWeQSWHnU/0GrZRf8PeyVHQARY/CEsrvzl0Lidqb5LKDrQsbmSW4Zp22eAAQM5emnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 BL1PR11MB5542.namprd11.prod.outlook.com (2603:10b6:208:31d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Wed, 21 Jun
 2023 15:24:25 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::dead:4565:f8d6:50a8]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::dead:4565:f8d6:50a8%4]) with mapi id 15.20.6500.036; Wed, 21 Jun 2023
 15:24:25 +0000
Message-ID: <4d34850b-3c5a-b350-c386-6565b69fc8d7@intel.com>
Date: Wed, 21 Jun 2023 20:54:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230613214658.1099759-1-gustavo.sousa@intel.com>
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20230613214658.1099759-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::7) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|BL1PR11MB5542:EE_
X-MS-Office365-Filtering-Correlation-Id: 7aaa6bc9-9129-482e-d45a-08db726b989e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q+TMJLUhXFX/xZ3HiezQN2dKtzPqOZqq1SRkjG/kDv0iTQpSojdNzHoioSgNlymMLYHYUFhlgBIl7RL5qzUyE6XnrBM1s/08j6y2csbWDmR9q6hgUWUXvR9w4hh+IlUt45c+hz+jWLYwyS2Aqqtowd0OWhhIOwh3zxOdNSOoZJrKl2EW/9hSl0Fa0vg0KuC0LxetiQxJJpMMGeBixioGTegk7/QUQOjL6JRGAmoeSXa1vQTtAX9gv9DdFo2pNRhecORL/A8sBG9ToeuilgJkA/XksBmOz66NpIHmEgan72AIXF3oCGIp08T0tDpAqUNv4iW3Rjq9knOfYOENFrdza6jU6d27tGk41/XKtvRcFAlT9XQLAP2b6Wd0r2BLf+Z8uijfvgI7pQtMK960slCUBsH5JFVP7b03cH4ramjOdfI/uADE91mkxOc25BLKTet3FnxjBOmWyJym1mZmSZG3eBnsJyOcYnIUJkw3KKLei2vDWkn+lI6JsnrQ+fki66Ea6ydi0+GMqAxwww7rQYdis0Z1QhDuuA7hlbF00U7gQsMO3Zs6YNXeK2qfH9v3PRz2h9b/Kbv3uW5b2piiRl5Ye+Ajh/oavwdZ4feX2YF+alnEFdMN4AuF3at4FeBgqwYN0p8cwy99276QRE5DARWgBA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(396003)(136003)(346002)(39860400002)(451199021)(82960400001)(66946007)(66556008)(316002)(41300700001)(66476007)(8676002)(31686004)(8936002)(2906002)(5660300002)(478600001)(6666004)(6486002)(55236004)(186003)(2616005)(53546011)(6512007)(26005)(83380400001)(6506007)(38100700002)(86362001)(31696002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlZYK2ZNWHlXL3dNNm5kMk9BMnhib29JclFHbklYS0JZQTBCS01TUDIvQnZl?=
 =?utf-8?B?Q2RCR0ZNWFNranhCU2JuaENjM3B4TVNFUXR1b1JVV1NRSU8wWUFhc0pzU3Jy?=
 =?utf-8?B?VU5UY1RUMWFHK3VNWncvMlIxaFU3bmp6d1l5ZDgwclRGRzI2QlExVWxZVjBG?=
 =?utf-8?B?MURTbkw4TEpheE9FZnFxUVprRzhOdWhCZzBscnh5dkpWelA0YVA3QjBZcnNF?=
 =?utf-8?B?WVZHUHg5RUxKMUp5TlhyekJPbHl5SFd1cmp0WlBwZHhCYXJwaU04UFhNc08y?=
 =?utf-8?B?UHVDVFNzQ0RHQktlWWt1V003UHVLWGlyMWIvNUhIY0RKR0doWlpsMnZmaFNu?=
 =?utf-8?B?TG1jTDJlNXVlRDdqeHZ5VDh0Y1ZyNC8yaUdqUkZwWlVGOGdkOXRDL1JHbXla?=
 =?utf-8?B?N0ZQaEl4Y0xYeVFvSDBhYnpXQXg1aWQ0VTh0aE1mMjYxUHRLWTExSHZCazcz?=
 =?utf-8?B?dHBFZE0xS1hnZWw1U1pKaXF6Z1Nwb1VLRUtYTnE3ZFI2WllRTHlXOWxXTzFQ?=
 =?utf-8?B?U2lZNmtTNWcrSHVjaXZoY1hTUVUxcXFkd0J6a2V4VnI0WEJ2blhSK0pwWTds?=
 =?utf-8?B?TjMxL3RucUtOaENqd3I2Z1k0VDE2NlNZM0d4czJla2NiZ0RqUU1UU0E1djIw?=
 =?utf-8?B?REsvVGx3bGxnZHJXMGtwU2tIZWhLQ3VQSjM4a2VSQWJjczl0bGJ4TjMwZ3Fu?=
 =?utf-8?B?NzFNQWlwcUNXQTE3bFRsWEZMMjlEMzZTM2hQUmpmK1NJaC9OYmpsQ3Mydzhs?=
 =?utf-8?B?NjQrWWZSaXhhTWdNM3VXUzRHR1pTN3gzaDlXNWhUb2xRTW9HSkVrbnNPemkr?=
 =?utf-8?B?SVNZVmhMWTlzMEY0aHFEVWdTdjlVQ1prd2hEU0QyWTlBMWRyZW5Yak4yRDUr?=
 =?utf-8?B?NTRlT1RZRUN2b0ovQXpIOEdBRXY3bWZFYUVMSXFQNlUrMzBvLzBlOUxKSG5W?=
 =?utf-8?B?ZHFURWxxTDMyNEZXNEdxZ3RLVHpndnpQako2cTBObG4weVlxSWUzNFZYY01M?=
 =?utf-8?B?QkVwanNEejFiWjVmL3VPb2h4eUF3QTdKSGJoREdsdjlIODNpY2QwQ0U4SWRU?=
 =?utf-8?B?RTBZMkp6UFlXckdYSk41NkRPNjBOV0NFMndYMmxzMjlvTkU1a3RqZlZNZWZG?=
 =?utf-8?B?R3F3U1BNeUt6ZytZOURwK2xORSt4MWFoTklxVDZpYzdwZlprUWd0UElRZXdo?=
 =?utf-8?B?NStSbzB4Z2VUaW83YTFYNmZ3eDdXNXpOVDVFQ1Y3MFhmTGtsSzFkK1pwbmFC?=
 =?utf-8?B?bTA5dHlETzlFNE1DeDRhSCs4S0lQRmpjbE4ycUFmOGM1b01yOEdZbU9ENUNW?=
 =?utf-8?B?a1gvMnp4akFyaTBVZGxGOXU4N1FtMFNpVUZoR0pybklvZHhlQ3F2d005MGFv?=
 =?utf-8?B?Rzd3eENBb1hGQ0RtM2ZVWSs4SE5KZENRM1dQMDhHREhKa2k3eDVid0Y0d3NN?=
 =?utf-8?B?NUJpeHdhdHNpNWNOVWwxY0RteHorWm5DUjh2SUFDazloQ3pkRndrc2R3bVUz?=
 =?utf-8?B?QTJzMWp6N2I0dE1McnRUR2llTWdaazMwQVNCSHh1VVVta00yUG5rWlVOZGQ3?=
 =?utf-8?B?ZXJTdzhQTW5JYi9FM252SXRwL3hrMzJOSjdzMXE5bzFNWGd3YlIyNVZ0TUU0?=
 =?utf-8?B?bzVqWUhDdURCM1ArRUVidEFXcitvZ2tBTkR3L3FJVUE5UG1GYkw0Z1Q5K0w4?=
 =?utf-8?B?MDdWNGp4blhYU1dUMHhFU1BSaWNmdVVuZzZlMzJ0TUdWWDlHdVMwMWMrZ3Bh?=
 =?utf-8?B?dlNJeFgzcWdEMzZvK1p4Y1JpbWpheVdoeXV2RHpFa2ZXc3lET1FGVnk5RDJn?=
 =?utf-8?B?bDVUeGZzUG5YdlV2OXRzYnBaeFRKamd6UFM2cVhXZnRkbVZQd09Qc1ZiYXZP?=
 =?utf-8?B?a2JZNDlJRDRyYmpHSm5POGJkMFVxMEdtalhPNUhnL0gyTE1kUzBlejl5RkEw?=
 =?utf-8?B?Yzd3U3Q0clJ5YmIyNzdCTFVycDZScCtIQ1JvV2hmUXR0SnZlYnUwR1BiZVlI?=
 =?utf-8?B?c3FuWEFWRkdZN01ISkNXcURSYkEzbDIrTlpWZkdvZjlvOXJXTUZlN2lHOU96?=
 =?utf-8?B?N2JTL0ozS0hmRUZTMkVMMWh2Z1gvT2lHN0dGdnR0M3dKNStZZUI1NTdNbSsr?=
 =?utf-8?B?M3VUYW9vWVp0end4c3VFS3pLQXBva29MUEhiRnJtekJmRy8yNzI0cWhOU1Qy?=
 =?utf-8?Q?zNe+TD9R87534jHL+YTxz/4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aaa6bc9-9129-482e-d45a-08db726b989e
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2023 15:24:25.4426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P4oo3pSX6L8oT1pRNXyJ8EKD9h2s6skWdRaC7O2B6tP+/8IURnKWjJf9SJcQSIq5SCvF5N1sC3CsiE9fQ4WMoS2uNP/qQNc+7ohBxkpDVHk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove prototype for
 intel_cx0_phy_ddi_vswing_sequence()
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

Hi Gustavo,

Looks good,

On 6/14/2023 3:16 AM, Gustavo Sousa wrote:
> That function is not defined anywhere.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h | 3 ---
>   1 file changed, 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index f99809af257d..4c4db5cdcbd0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -43,8 +43,5 @@ int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
>   void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>   				     const struct intel_crtc_state *crtc_state);
>   int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
> -void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
> -				       const struct intel_crtc_state *crtc_state,
> -				       u32 level);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   #endif /* __INTEL_CX0_PHY_H__ */
Reviewed-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
