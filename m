Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A602C552AFE
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 08:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C5E10E74D;
	Tue, 21 Jun 2022 06:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEBDC10E74D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 06:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655793204; x=1687329204;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/QI+f2ZFP+RjPzivY9e0n66fDZVDsIYIY7NZ70q5RbI=;
 b=aVqj9T/ftxQVVkOMpCSNIi85fMLcX1jj1313o4vg4XnOyGwmHnbvWgxc
 bzlV7RJlx8v4h8Qib+Otn+qtLsW1mOze27gwYZFgZrZuLO4+vvqAhbDkj
 NZCnW67ePbz5yv2SGbcE6Vyprki4OiRBR+u6QvILTDdmXMCTBphL/oXZo
 GAYcZqb+aJtxFByQ4cquQh4jZbstQGYaKnz5660nJzH0usmo8LdlLpfb4
 R1ITEPa1fTy/dELIh3oyZd8KEwEeLsmevCZtHhn1GzMZKQNl7cugLpqvM
 MJIeX0hbBpbnXMPkqbm5vR+3KmvZja6nCyfqCFmtuO1KUbNf0eBy4zTVn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="366363619"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="366363619"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 23:33:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="620366522"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 20 Jun 2022 23:33:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 20 Jun 2022 23:33:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 20 Jun 2022 23:33:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 20 Jun 2022 23:33:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ADCLay+AYysTPpfenjpZVZcsOPYrgfZlfBNF8x6BJ7B1oZod5SfRSJ89cwPPpPl5deg8GnXcT/CWUZfU1QpJWKGLQb+yTNwCKrv6ClOZv/G0QFaRNcO2C4a+mgFGUAEmhNp1dTITU1gkkK84qza6nU589hjlqLjfhU5fqezr1nxmGt0NGcmd83qQtGGZi3/a2TauRxdfC/qiqqtQHY2atIJPgp9jtER0x4dIfQYxZsQQKrQ6/75Zlr7nLvE7qvofpkMZIW8svlYjCyVn2y+mUFnVb2Ba+PaXfuMCIzKzvgwLNFXOs2LJSfLmGipOiFLuJkuEYn7tlHwQC4UYt5ypLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jnBj6qRG5sGd5AAk7zgI9v1qUR8wkFITrOac+AYpV+k=;
 b=m9KJlShs8h+uS/8Q9WHBxqLVKlvKO6HFB1fPKvBuFvscF1OTh9sDRjsuZTv77eMOGALeiqOAOR767qWRGkal12E35K8i+yNcBMWS2xNP05xROAKjDXMSQK4erIW7jk7+2dW2zu30okjv2J8/ycaDaE/4qLhv72TLDn6QOkLlYUUOO8kbFfBAfWAecgJ8CBF5we+dCItE0DVAtSlxWMHUflHDg/7+j3fmtKpPRO5Wt25zGdLA/iWTNJH0VoRvyAn5K2q19sbX/xaUwI4s1r5aWUOmtP+df3edbA6JX9nsAZmcWl/k6KPpL0XqEi1ozvDMJk2IWDFIJYW0TtFFj/Chow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM6PR11MB3050.namprd11.prod.outlook.com (2603:10b6:5:71::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.18; Tue, 21 Jun 2022 06:33:16 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7%5]) with mapi id 15.20.5353.015; Tue, 21 Jun 2022
 06:33:16 +0000
Message-ID: <f3d140aa-bfd6-4ff3-192a-7e6046cd328b@intel.com>
Date: Mon, 20 Jun 2022 23:33:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-10-daniele.ceraolospurio@intel.com>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220609231955.3632596-10-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0122.namprd03.prod.outlook.com
 (2603:10b6:303:8c::7) To DM8PR11MB5751.namprd11.prod.outlook.com
 (2603:10b6:8:12::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f2464f86-aa5f-4376-4a52-08da534fec62
X-MS-TrafficTypeDiagnostic: DM6PR11MB3050:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB30503663E8DDE094E5B09B708AB39@DM6PR11MB3050.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OigrYIbDTRUITfIhN+3uvFlL3rWTpW0XwsBxVtrnqeWZk9OmBcuqGGZqMWVGVQ0/Uem1VM/9Km2MMUYg6JfQjjhTzqEA9ksTu6Z/KTBGyWNUEJGc+TBqfz3FqMwIC6qPdtnOmci+VtmQNig4KP/wVAhdXlCYxxPPN02/f6CWz3rSp1KT5CB8VLSyos2o85Frd2rSBlqm7xxnG/kyTFhan9UQNJjSESgNWhlwssry3OY1S2jV+hAEAU3W6yUDGe1yuAMz7wvf8gkTneRFv5cOMhRRcM1rZOmxRMx8OhYHqqwoHnc39JgqgMQpQqH0sQ3nrB7Yjc/MmU6NPjbF2MvZjd+NS4Uy8xAe71vWElCfRFP7CZRUbmFbQyNKwJFTPQK+JAuMvqiuHcULwl1oZmCiPDhlmzm8y6pMK1nFcQMZ27oGRU9NdQ4hDrXXzwWn4bKiCAX7q8+IDmgGKk2JjLyLriEmtGRA6ey3+lT8rwQHiKSORXH34NqVB94RekBCWJSifK86Xpo/dyBv0xqQbZY790hD4We+q9Pj9KD/pKS9X1+hkTILp5GILj9HHZNFG/bh/mkQVEnyMTpnK+BZ/G/5WJ9F4iY2GACNRinRmLSCjuoq59oVZeVE8iaGDItodKRugXtPeRkZIVbydXt+FiTXrdgDNulnz1bTF1Z1jmwlbFTltwQINAHe2Mt0DEvGIPktIxj8QBOZjLaNIhIDlSB1rZYNsA2OlosaEG0Vo9bBbVI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(136003)(346002)(366004)(376002)(6486002)(110136005)(316002)(54906003)(478600001)(86362001)(83380400001)(31696002)(107886003)(186003)(41300700001)(2616005)(6666004)(82960400001)(26005)(6512007)(6506007)(53546011)(8936002)(31686004)(5660300002)(38100700002)(2906002)(36756003)(66556008)(4326008)(8676002)(66476007)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0JTU0E3Q05UZHZMczREVTBxUzZKR3lILzZQWlRBMzZIa3JMVUlPK1VLTnpV?=
 =?utf-8?B?YUpRbzU4dEd0Y0ZRdnlUY2NvTHVQRnBtYzFBWjN5VDc1YkY3N2xpRytiU05K?=
 =?utf-8?B?VHRkekhlb0NkNEYveGhweFhJVXk0amwvWllDSEx6VWVMKzdOOU5oNzJORERK?=
 =?utf-8?B?OGNJVUlNSHhudVVyNUUrSlQ5MjhzSStYdEZYVCtuOUk3eGYrMGVvcUQyd3ZQ?=
 =?utf-8?B?VUtVRi90VVZWeXU1QTZucm8vZ3ZoZ3dWcHAreVBVOGVMWkxqdjVVNks0dmJz?=
 =?utf-8?B?NmFBU2ZKV0JYMjBSZVROTHRlQzN4RkozOTI4cVJRdWlYRm1zZEhDSDM0VlpJ?=
 =?utf-8?B?T0R0dE5hRzdyZlN6ekw1UFJ3QXpvS3RKV0MxeS9SRzJvYVgxS0RkRm5yVmRG?=
 =?utf-8?B?MzJnM25jNkxuSTFmTm9HSW1Yb2VGb2EyWFBRaWFJbmM2YnEwYzZvYkRKb2s2?=
 =?utf-8?B?TDhIK0JEeXdOU3NBVC9FZ1BiUGhpTXhLdVlmRDhETjY0UTVsQTgyRGdIMFp2?=
 =?utf-8?B?WndUTXdYeEtJUnNNekxDSHYwenpaK3lyOFB2NnZVRFRMTGFaV3ZkVlpEQlRF?=
 =?utf-8?B?ZThMdExDaGg3VU9QNTBRMSs5OG5TVkx4bnl3REZhUHkycDRZL05IdlhnenpM?=
 =?utf-8?B?UzlxYWI5eGxXVUhTVmlWMUh0Q3lXK21CdW9DVEtSOEY1NHJEWUxoMll1WjVK?=
 =?utf-8?B?YU9EYUFLUW1IMW9WN21GcjYxTCtKaVhVMVI3YkJUYWJYbGxrSkxDbnlzUjNm?=
 =?utf-8?B?ekkzaUVlcDVib2VRTGtaY3NMcllSVS9XelhsMEJXbXovSjkza1E0QmVCejBv?=
 =?utf-8?B?QXJNb1ErZktCRk1tRDdMNm9IY3U1K0hCeFBvcnoyZWlGTXNSVVdqdndvOGpD?=
 =?utf-8?B?U0k4VHpSTkVWQ0ovNlBhOCtXbmd4bU5nNkowemJjWW9VN1NyK0lsSktpbnpL?=
 =?utf-8?B?R2lNaTdHaCtUL0pNU3ZLclh1L2RDb2pxUDh1WSsvOUlBZU4rOHJpUVB2dTVn?=
 =?utf-8?B?RXhFV1daaHR2dG1aSlE1azcreTluamkxdlFQT2xDcy9ZcDk1NDk3N081MjlP?=
 =?utf-8?B?RmQ4S0NwWlhDa0psZXBONGtsRDBhenArV25MU0lMbjhIL2JaNWFrR2pkNDhv?=
 =?utf-8?B?K1hQWURFaHVUQWpxUGtHTnlEVS9CZTdUcXRjdUc1R2h2bEg3WmVYQ2djUlA1?=
 =?utf-8?B?ZU9HY1NpbVJpWEFFR0JvSEFoREMvMXAxV1ZWb0c2c2FpTXYzN3pKN3NONTBZ?=
 =?utf-8?B?ZzJEcEo5NmFIcWJaSk5rcXB3OEVxd01MVU1nNHdPb2t5RmsyQ2N0c29hSC9P?=
 =?utf-8?B?aThBNm45bTZ2QjNVbHg5TTVkNDNuQVJtaGRrVUxQdC9vRGxGdlp6U2NvS202?=
 =?utf-8?B?VW16SFlNMSsxRkhMK2x5bUFpcy93RE9HeVJMcnd0UytPbWx5RHdNWWRSTkxy?=
 =?utf-8?B?MHptOHBudTl3aTZqYytSbG5DY21meE9PalRIRzBJMjhyVGEvWUhxUjU2RG9N?=
 =?utf-8?B?clNvd3psU0JURFFqMjV5OFJ5engxSHI1L3FrSWdYbVB6b1J3YTV1Q2hXZG05?=
 =?utf-8?B?a2hHY1hCTVZkMDV5MjVNQ3RWVmRaRGJCVzd4ZndIOWZXai9uT0VHaHd5bmdX?=
 =?utf-8?B?aG5ubFgyZVpzVW9YRjRJY0FYUE9mdXczdGNvdXl0NUFXQVBtRDNZTE9WbHJE?=
 =?utf-8?B?bVgzamJqVkFGb3ovMDd1aUFzdHNOY1JGaHhHNWxtZEFNektQamZJU1lFSHlX?=
 =?utf-8?B?bzFLM1NJR3pPRjVOMVBmaUZobjFzRUxpdS9hR29UUkYvT0d2WVlQenFuK0pZ?=
 =?utf-8?B?eklLNEtYOFNOVDlsMStLaFBWTVZRdWdtSUs0UHc4eWlqbkl6U0Y4bFduUEtt?=
 =?utf-8?B?eFlrWnAzU3VCQ0FRTmNudDZQQmh3aUJ4aEVNUHc5aGZPQkVIWnQ1WHJ2N1Ft?=
 =?utf-8?B?dS8zZnBPY01OajhmZDJzYzJXV0NNMmNyQnBobjQrcEgxcHR6S2RHRmphNStV?=
 =?utf-8?B?WFZSZGV6aDFNeG5qVkp4U29Pd3BhVGNIREtmL1cvVGthMmVGOEdSeTZzNDBD?=
 =?utf-8?B?bU9jNkY5WWVqWW1IdUJ1amVVTHgrSDRueHdYTVJ5eWMycmIwUDRHTVAzWExB?=
 =?utf-8?B?bnlUdDZGQ0l2TnBLS2wvd3JRUzBJempxcmFHbFVEeEZEUlkrQ2FqOUVFRVpC?=
 =?utf-8?B?eE5oNTh3a3BuRURQQUswOFlyMTBWbjlXSjFUdFNCYUtGUUU2UU81MXZ1NTl6?=
 =?utf-8?B?VjMrcXdFSmRvdURsb2tYdG9jSEVXOFlPNlNtWWxWY3J1djNjMWNMTS9ONGQ0?=
 =?utf-8?B?NmRlNzlYUnNxc205L1Q1bFAzNlhTNk11R0NYNlJBd256MVMxNjZJLzNnbjVk?=
 =?utf-8?Q?QeML0nErXpZwTyWfMvezIVUxyfsutS9uwT20H?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2464f86-aa5f-4376-4a52-08da534fec62
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2022 06:33:16.2088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2+ltMRCjLTds3iGtv8xl+fwnfxj7OPLkoLGgifwwBcg7i9CcMhNxR+2tn5huoGa6Dc2dF1tBiNFKHzcT0mtNqkU4PNzFZ3em6kG5+RGpej145GMlfLajE018roP943Ic
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3050
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/15] drm/i915/pxp: add huc authentication
 and loading command
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>

On 6/9/2022 4:19 PM, Ceraolo Spurio, Daniele wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
>
> Add support for loading HuC via a pxp stream command.
>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                 |  3 +-
>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      | 69 +++++++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.h      | 15 ++++
>   .../drm/i915/pxp/intel_pxp_tee_interface.h    | 21 ++++++
>   4 files changed, 107 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 5d3aa4807def..8d90e653958c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -306,7 +306,8 @@ i915-y += i915_perf.o
>   # Protected execution platform (PXP) support. Base support is required for HuC
>   i915-y += \
>   	pxp/intel_pxp.o \
> -	pxp/intel_pxp_tee.o
> +	pxp/intel_pxp_tee.o \
> +	pxp/intel_pxp_huc.o
>   
>   i915-$(CONFIG_DRM_I915_PXP) += \
>   	pxp/intel_pxp_cmd.o \
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> new file mode 100644
> index 000000000000..6d25f436f329
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> @@ -0,0 +1,69 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2021, Intel Corporation. All rights reserved.
> + */
> +
> +#include "drm/i915_drm.h"
> +#include "i915_drv.h"
> +
> +#include "gem/i915_gem_region.h"
> +#include "gt/intel_gt.h"
> +
> +#include "intel_pxp.h"
> +#include "intel_pxp_huc.h"
> +#include "intel_pxp_tee.h"
> +#include "intel_pxp_types.h"
> +#include "intel_pxp_tee_interface.h"
> +
> +int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
> +{
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	struct intel_huc *huc = &gt->uc.huc;
> +	struct pxp_tee_start_huc_auth_in huc_in = {0};
> +	struct pxp_tee_start_huc_auth_out huc_out = {0};
> +	dma_addr_t huc_phys_addr;
> +	u8 client_id = 0;
> +	u8 fence_id = 0;
> +	int err;
> +
> +	if (!pxp->pxp_component)
> +		return -ENODEV;
> +
> +	huc_phys_addr = i915_gem_object_get_dma_address(huc->fw.obj, 0);
> +
> +	/* write the PXP message into the lmem (the sg list) */
> +	huc_in.header.api_version = PXP_TEE_43_APIVER;
> +	huc_in.header.command_id  = PXP_TEE_43_START_HUC_AUTH;
> +	huc_in.header.status      = 0;
> +	huc_in.header.buffer_len  = sizeof(huc_in.huc_base_address);
> +	huc_in.huc_base_address   = huc_phys_addr;
> +
> +	err = intel_pxp_tee_stream_message(pxp, client_id, fence_id,
> +					   &huc_in, sizeof(huc_in),
> +					   &huc_out, sizeof(huc_out));
> +	if (err < 0) {
> +		drm_err(&gt->i915->drm,
> +			"Failed to send HuC load and auth command to GSC [%d]!\n",
> +			err);
> +		return err;
> +	}
> +
> +	/*
> +	 * HuC does sometimes survive suspend/resume (it depends on how "deep"
> +	 * a sleep state the device reaches) so we can end up here on resume
> +	 * with HuC already loaded, in which case the GSC will return
> +	 * PXP_STATUS_OP_NOT_PERMITTED. We can therefore consider the GuC
> +	 * correctly transferred in this scenario; if the same error is ever
> +	 * returned with HuC not loaded we'll still catch it when we check the
> +	 * authentication bit later.
> +	 */
> +	if (huc_out.header.status != PXP_STATUS_SUCCESS &&
> +	    huc_out.header.status != PXP_STATUS_OP_NOT_PERMITTED) {
> +		drm_err(&gt->i915->drm,
> +			"HuC load failed with GSC error = 0x%x\n",
> +			huc_out.header.status);
> +		return -EPROTO;
> +	}
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.h b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.h
> new file mode 100644
> index 000000000000..6cf2d00548c0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2021, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_HUC_H__
> +#define __INTEL_PXP_HUC_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_pxp;
> +
> +int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp);
> +
> +#endif /* __INTEL_PXP_HUC_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
> index 36e9b0868f5c..1de98959a89d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
> @@ -9,8 +9,20 @@
>   #include <linux/types.h>
>   
>   #define PXP_TEE_APIVER 0x40002
> +#define PXP_TEE_43_APIVER 0x00040003
>   #define PXP_TEE_ARB_CMDID 0x1e
>   #define PXP_TEE_ARB_PROTECTION_MODE 0x2
> +#define PXP_TEE_43_START_HUC_AUTH   0x0000003A
> +
> +/*
> + * there are a lot of status codes for PXP, but we only define the ones we
> + * actually can handle in the driver. other failure codes will be printed to
> + * error msg for debug.
> + */
> +enum pxp_status {
> +	PXP_STATUS_SUCCESS = 0x0,
> +	PXP_STATUS_OP_NOT_PERMITTED = 0x4013
> +};
>   
>   /* PXP TEE message header */
>   struct pxp_tee_cmd_header {
> @@ -33,4 +45,13 @@ struct pxp_tee_create_arb_out {
>   	struct pxp_tee_cmd_header header;
>   } __packed;
>   
> +struct pxp_tee_start_huc_auth_in {
> +	struct pxp_tee_cmd_header header;
> +	__le64                    huc_base_address;
> +};
> +
> +struct pxp_tee_start_huc_auth_out {
> +	struct pxp_tee_cmd_header header;
> +};
> +
>   #endif /* __INTEL_PXP_TEE_INTERFACE_H__ */
