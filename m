Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D5461763C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 06:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43AD710E596;
	Thu,  3 Nov 2022 05:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852E78825E
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 05:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667453912; x=1698989912;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pOokxfGO4Vj/e6DSRiuWKM4XGcsdo1ZQ+xXRzB6RKMU=;
 b=Hr8CCk5z/X5jzrKgVL8CCEU0fw9sG51Ex++o4xGs5pjGyMTv0Hv7mRkK
 nh29Mlb0mxgHyEkegwtLtumipC5QoUtZoCEdkDdCUjRKJiI+JtvMI7USE
 LyjMc3t0YgponB64hqIknwJxKqsgvzldTUzC/joJMI9w0VhuMuEUkjG79
 4RUX4Vo7uFXZc27raONR7rx/Z7VRibq/+APqKm7TUQWuP7M/PIvObUn2u
 Xeqj2Wk+e4SgOollwO/33gAEDUoyYNY+YJ2wQ9NwwEvuCvNvELC0pzKa3
 dyiFG+wLtmVwmEnDWAYuHSAMObR9gtCNGmfjeHj4Kt+xVxw13GG79IK6d g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="289304353"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="289304353"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 22:38:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="629219996"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="629219996"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 02 Nov 2022 22:38:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 22:38:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 22:38:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 22:38:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezmj7EF7R8W/4qyt77J76hkgd+vjgSKEZJJZaUoNqA/OsGY41R/5lSQFoUhlx978K6JcRC8754NYdNn2ST8hgJ0ByOMw/aea3fdcQVWcbum06xi+092mstEDh4hTtHxEneolKLWZps0YOJ3oEV/ZoyGe+fLPLXEDXwFY4O7ySbw41FxZNdN7Yh3dst2HAsv3ojcgoejXaljo1Qtx03RZy6N7xt9qx4oA1/QdLeieSh1/ocm/EymycO15jSgKNF+M50C4s4hjsSuXqH7KuSrB7DmLbqbj2FeKdrfSbc/K7cy5/uPKYRqk1wAj3Zs8RJw0nioDw7p2zMjJp8DyN456mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VSIsrfbbYLxq9Wzablvz/uBNCYhT0/418bhH/L+odfk=;
 b=YKFM63OPqbxkBLUD+XJoRDoXCjdvspn9SxhKfmW7XEAcodjOA810UbKK1MrmLJsKwiKpHCu//NbvjA7b7CK5frK/QppWZljW3EyaUFfbJCDUiCQHxA/6/nAxrPS98EALZS+n7dkokkNzamrlwNIip9Ejet9Y6aR7LStvc4guxjROGYoiv8K6rFJONNGL9NXmAg8b1BePNc/JPQupxBa3o0GXFYnYso7FVe6rjN+FAlqq7S7JTCQoDsXXT/3rKBl9wlYZ6QAydM1UIs7j6kCFWpT3fW9KiEPkqV8dsx0krJ1AZlOAzqb3QRANIE1WbrmYfRTG6zrILy3hOOlSqcTSOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7644.namprd11.prod.outlook.com (2603:10b6:510:26a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 05:38:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 05:38:28 +0000
Message-ID: <56232718-9188-4f4e-e024-3dc1db8887b9@intel.com>
Date: Thu, 3 Nov 2022 11:08:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-3-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0213.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7644:EE_
X-MS-Office365-Filtering-Correlation-Id: 663887d3-1ed6-4b9d-2374-08dabd5da234
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OqCWcZnS7r+OHk5b+bAo1Me3kZs56n2s07zDbinuZk5xbPB8C8j303QpsghWvY+LQVfzHIeY/p/Hgbf14mLv3h/UflbE2pcrW+qfv8bETa5RnzPjt/djP7Mp0FTchUKWlwPpyk3Y3Zqc6IZLacOudl68lKBhAdWugMyi0ZNS72VWgJFqKLXKe8DCEftZQ2N0jb2gituUSBETjKsFOxgK2wCuCJxW0hwmmceEuSc6J0M59HqNgcjQwbWNyHYBxmqf56BkVXWeGJ3TlDGvhKtXvtspRS8swjqpxQKQLap2xMPKZD4VKZtVyEmccwAumXSqM8T/5uTcDOZarCnqp6i2UnqRfG+SGBHksYAgVtWZAYsrobYH3cgQhH3AyKifKhljfC1swUkjMiG55Vrk0sgp5JtNU5HKygCbl7skp+CwCc4UJAMgB2vfiTBnD9Vc8h9/DthLvC6kkdxs7iyG63Ham5gfbDg3RHzhg5F+jB8KQ5DU+kv4xonpV8IFnyYf8ZOH2+xwf59ccTdt/9gkrBCJEzlpO5AAOurqPj7FZRYYTVsUhINAanCv7wOEe+W+/WzRcMi/fCBwTUmdMVmlZWz+PogRv3iRLwSBrdonfeaGnJeNGT3J5ESm1yYitBRRDOz1UZAV9vKirr7rLy4o3F1jPZmjYF+5Vhx+X7r+0X5djqLMqonIWpDXQVX9BZ9r5S380qZlpAEiaD+k+8MH/cz1Uq6K2YaV21P2rH9NjxqpZNi/Ov91M791pcKpjWNKtOxQLQFmlv+bGJkwjQlB+a+x5uYAQo+c08kplSPIzA928xA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(376002)(39860400002)(346002)(451199015)(66946007)(66556008)(82960400001)(26005)(41300700001)(36756003)(6512007)(31696002)(6506007)(55236004)(53546011)(478600001)(38100700002)(6486002)(316002)(66476007)(8936002)(83380400001)(5660300002)(66574015)(8676002)(2906002)(31686004)(86362001)(6666004)(2616005)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0NuQ2wrdEdLZjU1ZDExa2toYXhqVUE3MjAzcHRuYVVzaHQ2SkFMaG1YQnBr?=
 =?utf-8?B?aE9pZG5qL01TUlFhRnVnL2d2d2dtOTlVbGZ4Um9iRnFLODdhMWZJYXVYb3V5?=
 =?utf-8?B?L3MzeG1MTmtRU1hyemlhN25ZTGhoY0hDcCs4ajA1ZzkyOU5GQUo1eU1icDd4?=
 =?utf-8?B?OGhyeGtQN1JvMWxYdFpuaTNaMXlOV0VsdmJPWjR3dkpVQXpUVXZabUF1WEZF?=
 =?utf-8?B?a1NJMDRNU1RsOUhMNnppMGhMRVJDMWhTT1RLQkV0QnFjSEUrcUx5SWlTU2FW?=
 =?utf-8?B?V1BCNTVBZVZPbXA0Y3UvZjlvUWpWUFhHQ0ZIK04zWkpMTldZd0tOYVgxUjM0?=
 =?utf-8?B?N3hrT0JsNXBKWXVFaldKZlE0RXpPV0ZQQVlxbzhxcmdWZ2x2c1R2S1ZtSkZn?=
 =?utf-8?B?S2t6dG1VbGNsSlJibzNERVJydkdIalFTYmM4LzZBalZ5UldIR2w5NG4zd0FZ?=
 =?utf-8?B?MUdhZW1iQnp5RG5idVI0MkkwZlZhYnd0UkRTSlp1Sll1dXU5T3lHelhNYXB2?=
 =?utf-8?B?dmVudjRCL1d3NXZ3aGpFcE1wL0FnL2tQUnlWclVzN290VGxlSHQxRDJXNGZt?=
 =?utf-8?B?azNpVmJjUW44U1JFSGNnZjlNK1ZDZjVGVzNsZ3VtNTRPVEo4bGV0dk5nL293?=
 =?utf-8?B?VlRmN0ZjTU1nVzBRYWVVQ0ZXcitZN1A4QjlKT0N6NkNLam9QNGthNlBHajM1?=
 =?utf-8?B?RGJ0cktzUGo4SE1NV2RIazZFODhHUmliWVZjRXplY1BjSVk1L0xiUVpLUU9W?=
 =?utf-8?B?cEhBYXVwMjlWS1picXVvc2V6WUxPa0VxZlhDb1ZqRDc0RnVYR1BkcTZJUUps?=
 =?utf-8?B?VVJmdUN1UmFGbTVMZnlacXVrdjhKR3owUWN2MmRyckNkM3gwaGt5MTRPd0pj?=
 =?utf-8?B?Wng5ekVPNXVGcFhnVFpValJmNjI1bnNXYldlNnVqMkdCRHIwQytJeEdKbUxH?=
 =?utf-8?B?N2xSTjRjazE0OHJpWTdwRFZwdEpTTlIzUXhNRlE3c0xxcGIrbS9jK2pmTXBE?=
 =?utf-8?B?QVpGSm14UDBJb3RJWW1QcWpiUCtQcnhCQjJuSlQ0U3FKTDd5Z1hKVjRLSDV2?=
 =?utf-8?B?dlZmMGwvNU5waFVBcUtsb2NHWWpiZlFkS0E1T0g1cUxDejl6OGEzZzltUDJa?=
 =?utf-8?B?Sk9POUlRS0d4clZkdk9nd08xbno2NTVVQklsNU5kZFRrNXVYaURYSzNkQnlN?=
 =?utf-8?B?cXBlZXc4MlM1RDRxaU5Bajh2QUtpYXJ2RXZSNmRTbU9LNVdLYVJWc1VuZkVV?=
 =?utf-8?B?UHdJMkZ0ZWFmZ0w1eks0TTdZU2l2Z0hUd3EwdFRMTCt3Wnl5QnIvNW9xdmpu?=
 =?utf-8?B?cTg1MEJTdHhtWDRjellVUzlNakVGOUtzNmd6UDNBUi8zbE9jREpxd3pxQS9v?=
 =?utf-8?B?SFRaM2M0SlpRN2JqMzY2SENrczZBdGhjbFAyRVV1Z3ZtZHE5NzhlcmtUc01n?=
 =?utf-8?B?UFNVaVIwNCtodnRJSFIyNVJOVjN2NytsWWFQdExZZ2FNa2hqVUJCZmRXaWVV?=
 =?utf-8?B?UHJxUURCU21USlNRZWFJOWxnb0tQaXBDdjJwZTVWTjFjRU11ck9nNlNPOVlK?=
 =?utf-8?B?RDl6YmRScUZUT1ozWVNJVzIyYlZHRGEza1R5dmVwcWhTVy9yQWE3UC9QRFdR?=
 =?utf-8?B?b3N4UEs3V0NsWU1JMExGSEVSNTFzNkVsclBNcHg0dGJHK3cxdDhySU5HNlF2?=
 =?utf-8?B?WnI3dkc1b2pFUzZlNHNhdTNucUpGRVRnb2R1MFlhUGhKbkdXQS8vbjBSTmk2?=
 =?utf-8?B?b0Jzamc2WmRZUktyV2QyZWtRQnh6MmhrRFZId2RBVlRSc2hNalN2RDhsWTB1?=
 =?utf-8?B?S1loV1J1ajh2bjRzVXVSVDVBcE9hZktxV1c5dk1tT1hRZnVDb0Mvbms1VHV2?=
 =?utf-8?B?aVlRRlZ0V0kyKzR0REJ3Z2wwZnM0RDRLMndjRnhKa1RoYzM5L3J1NzMwL1E2?=
 =?utf-8?B?NWkvaURYMDNLK1hFZ2hES1NsMDZQL1hLaDN6UWt1M3ZlU1ZjYmFLcWRaRGZt?=
 =?utf-8?B?dEdFRGxPYkYwWGRPOUhoeXNaVUlwUkZBNnBpbS9qa2UyOWFrNXZGV3BwWDZn?=
 =?utf-8?B?cy9YRW1IcGF3MGJubnFRVjYzSHJIcE9LajFvOFpVeXlZU3FHMXVQYVE4OXBO?=
 =?utf-8?B?eWptMDk0L0w0UlY3MjRvRDRqYmxORTkrUytLVHZLSldsSTlKTmpJUHdzR3dV?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 663887d3-1ed6-4b9d-2374-08dabd5da234
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 05:38:28.4766 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SRJC9R965RHfrKcGnpkMI/0P2+uguRUyNeLErSzKs4PnOp+5i5bTBjKrPYL1iOBebhpgi9F7L3EJAS3UxiFQT8KI1UkUx0ueLUY+wAwNxIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7644
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915: Use _MMIO_PIPE() for
 SKL_BOTTOM_COLOR
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

Makes sense.

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/26/2022 5:08 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> No need to use _MMIO_PIPE2() for SKL_BOTTOM_COLOR
> since all pipe registers are evenly spread on skl+.
> Switch to _MMIO_PIPE() and thus avoid the hidden dev_priv.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/i915_reg.h | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 99a853519395..89ad893bbf07 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3758,9 +3758,10 @@
>   
>   /* Skylake+ pipe bottom (background) color */
>   #define _SKL_BOTTOM_COLOR_A		0x70034
> +#define _SKL_BOTTOM_COLOR_B		0x71034
>   #define   SKL_BOTTOM_COLOR_GAMMA_ENABLE		REG_BIT(31)
>   #define   SKL_BOTTOM_COLOR_CSC_ENABLE		REG_BIT(30)
> -#define SKL_BOTTOM_COLOR(pipe)		_MMIO_PIPE2(pipe, _SKL_BOTTOM_COLOR_A)
> +#define SKL_BOTTOM_COLOR(pipe)		_MMIO_PIPE(pipe, _SKL_BOTTOM_COLOR_A, _SKL_BOTTOM_COLOR_B)
>   
>   #define _ICL_PIPE_A_STATUS			0x70058
>   #define ICL_PIPESTATUS(pipe)			_MMIO_PIPE2(pipe, _ICL_PIPE_A_STATUS)
