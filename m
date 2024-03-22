Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD65887336
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 19:32:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57DA910EA8F;
	Fri, 22 Mar 2024 18:32:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HOj+5MwT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9673E10E873;
 Fri, 22 Mar 2024 18:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711132361; x=1742668361;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=u3SqwcnmaaS26rD3inWeoGiJpDYiHJFEivMj48fGWrU=;
 b=HOj+5MwTzHAkAeQmOqP7sv2djvkUVgvX1HZdwPL2A2DEBVocYRxFLGkQ
 t25Zfz77JvlX+e9vPsh39sHYUGBsV7njxIoKRxc1c6dEUitJImuG8unBd
 9ewH4+EYhRPWh3pmYHpleojKTX55PFnK0kae3skpcGY46cCn7+GivaJoR
 Rls04S2wf7HEVaUMf/rpmNqlL3JQZFWh71TLmxwVTpNpdSS6wqddhUWYW
 n32jSRxb/TrahQOHwhTLka5z+j+nbwz4lJ1ZPjPvOI1qk3gkuHqRYvOU8
 xrhSsmR1epAIANiRy6a3MZUEZIMBznecJ18feb0BXPmVaQChHQaOZ8JJu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6401503"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6401503"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 11:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="14977240"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Mar 2024 11:32:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Mar 2024 11:32:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Mar 2024 11:32:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Mar 2024 11:32:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Mar 2024 11:32:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oOnpGtan7qULTTtdY2bHhzztIKhUZtjn3gXFnBe3HrnIXEUg17DV8mYoDwVEBE1qM874wxlfrDLe9TW5QP9GdVJ4UASuUKvMkGKtCp+VVZXCJbHbeB58B/Ie/dVy7nFeIN3QtTyxvi/kBpJq0yzxxgIamvxt9OHL8VGXPhFAEu4ve76x0cogIvGhEfvPkG7IfJtwfaFsmSq9XyZbvV5xt+KkH8FJ2HqepfHrI3o52famzImytyc5G4/cG7tDPwnv5sr3OIpdIXkiY8LpeQySItwfR+EYsXQkXJyuOO7YqeQylRsZ9QCdE9PGA3wUHyUsH/d91C/dVXcn7rPMiqBVRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z9BkCbded1lpwzsow+fJfi3qZAQDD3Mu1TT7sNNxv7Q=;
 b=LqEpae9eFB6mOI7I9kUoqVfJS7kw4tSD9PpkdjgYdvhOeZYVHLXAZNTyr3lf+4ywCKH2HnVEIbqg3lPSH+PzThwMTnUo3Vrul5dUCxOvXqZ15U83eLhUn15j153Mg7DMlNXbtkF7QspJ3GPeoje8CXrpD3hLHWjcTQvx4F2kUIx3+Tn7oh99dLIAyyKYw+Wm5qqJ9mr2+dyz9D6xn2lEXax1lX3d9ZuIycFAy/1KSAhfjVXCSnAJ0QTyxLqQ5IhGbXngu+3Jh36ebHFJu78PC1gdC/igpSEJ9ByPKRrnPgzavX05Chsomag/YvWTjxMSxh2HJgmsartodVLT29bVlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB8549.namprd11.prod.outlook.com (2603:10b6:510:308::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Fri, 22 Mar
 2024 18:32:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.023; Fri, 22 Mar 2024
 18:32:37 +0000
Date: Fri, 22 Mar 2024 13:32:34 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH] drm/i915/display: move dmc_firmware_path to display params
Message-ID: <3bvm45xgjhlwuwc2hhenysknzm2reaj5yn6anvyzmerpi44vgb@jjnbrf2ejnk5>
References: <20240321161856.3517856-1-jani.nikula@intel.com>
 <87y1ablfo6.fsf@intel.com>
 <64loxwpkjgu2nf4up554hfuqd6oi2quguozom2p2gowem26rbj@rszc3ubdda6u>
 <87v85elkic.fsf@intel.com>
 <b7o4x73ht2wv6t52h44dofzu36oic3bfazfilt2o4oxuj3zxzg@rzwm4a7cro7p>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <b7o4x73ht2wv6t52h44dofzu36oic3bfazfilt2o4oxuj3zxzg@rzwm4a7cro7p>
X-ClientProxiedBy: BYAPR06CA0012.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::25) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB8549:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ae59f3e-680b-4315-0351-08dc4a9e72e8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H+BBna2v50hi6wQa5rqaKLVLWBe++WVXFnbuQWoowEdzOxyszEeompTzyu6mFyXjdIA366Pu68yOagbkLsNiu0+Y+AgTaKKs+6iQ9Mujl2dnwlhG9brVpSwlKaSK8VyXn/h/6jgCMK+GnUMiPuiT5FCcp+D5YpY84di+aRdjExJQafYfloZ+QHukEf0JPzMLuugNqap/awcEMebgt0Bxah4DcGpoBj9yuXz/7XoGSuh4TDBhPW4v6UG2S1jtEWikWdnSKtXqetLhc+FpYJqWyNEq/8kAs5Lan0cNKTE6CgM67NzSrNsc3J0T/rm+zp+lveErl/7CfBUNdhDFz9AJn9wnqgPhyJq5D9bkyVcvb47+xqWRI62c+ERfVrCw2LkVhaBKe7o1IFqACtO8nA53zkaImbZFBv5lMfIwQfgCn5HxAOLeDgIEyHbRDxvwgchHJNhrSswpz9luXOAbp4qkmLL793kEPzPLuJKQkq84iCozqvlYEckR7D2GQCI1OycM3N/KIaMppaGMsSWuBZi6U3hoifLfmvJbTBj3T2ldkCts1y7V5jFtilMiLMMLGl8E5BMMyNsD+U2wpU+/BeQNQQCrZ5BES3S0nVgJeESLg7dJbJBmoIjpHAaNbwH1CDA8xqY9CjfGIaMMVHObHLzpLd11vq9J5nVeTysGjeT8V5A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NQ+GyxJeghUoS4QfgpaubsPdpL+SDucKGr/EvU3aw41pse7aF6pwJ/bdu20y?=
 =?us-ascii?Q?K/AUVDFyxL3M4OK6dMwmCAIbvS/GN4VSpKkXJSk6Cgk7kM2dWQvVavvN/3Ha?=
 =?us-ascii?Q?jhBAT2DKP5PYeg37y20f7Is9Z/zD8Li2cyHyNlQl/mMoB+EXOGXzQHvPDoPJ?=
 =?us-ascii?Q?8UgUXfLn2vsUBo5LxFWPVWCgrLk/Oh+7OHuHUlaKGRLov9Y+eY/vhXsYtDy3?=
 =?us-ascii?Q?G1XIWUwvZLQnBtNMPkcau1/sz0Xy4VgHqvXUB7pD0hCIQNpEOXWqec1FVZSN?=
 =?us-ascii?Q?mSiyzbVJBPyeLr/vwRYdMO4fL8HbF/HVEDNZsRgPHk/Id5wSjM29cx/Cba3s?=
 =?us-ascii?Q?UmiT95mC5Z5Q4uXqQ09EUt1S8gR4rLv/yuqFKxn4gv8ZG5lH4ztzbq3MflAl?=
 =?us-ascii?Q?Azib10ab9Afb1hPFyfV0s4kPhma0WNFM/1UU5PVgob/3iMGUqrU+l/7zxr3C?=
 =?us-ascii?Q?uPee+g48tYTYbmxbhdrYMagRmQ1Cb/pzkARkZL9hRvzlNnpZj1H+IaCyEJSp?=
 =?us-ascii?Q?VJNgxFnlI+tLV1+CMTYLBEWEs2C9VsJoSZLTBkjergHKaYsPyqJ/MtsemIFO?=
 =?us-ascii?Q?etinedPWboMux/zHlz4luG5JT9l9hPdwZWlss8qt3dhz4a5zenNqRzDtAso0?=
 =?us-ascii?Q?brwn4OeWKTAf0A/LRUBz1PZWFGWbwBD/t0urHmsWDApL83LYtenXJUwn2ziI?=
 =?us-ascii?Q?incqV5KRuDDTBflE7XkphIzF8fwGvDbzgfVjjXYQMxRF8hZPpn5kQ0AlhOzq?=
 =?us-ascii?Q?2A+vJQisTPmfSIXOz7iNaEhvf8/33XReHq+ovza7y+vxfz/MSoFzaQ1GqNbR?=
 =?us-ascii?Q?8EbTPrYZ20sepKQYjWXmfmHFAUJYfQCA25YDYOwlDqX3dc1vZ/UlbVoX61Rl?=
 =?us-ascii?Q?JArR69FLgpxW3Cx2t0gKbwLN48MYLmWw0o+HSVEO+IhgMtRYzLRb5mGi111M?=
 =?us-ascii?Q?7I0GJrg11USNkekYMg/ALEdFB9s8+qMixNvgDVuVqAnDvsSQHbLAeauutfr/?=
 =?us-ascii?Q?/PQVeaAXfI9UA4TAu+LlWYd2QAWgI6yAiNEZNfcEwSvo/VyrbFcobl2Z7Sh3?=
 =?us-ascii?Q?vigi9anRcvw0djS3bfmSuLsUZK26K7OsaeehrJHw8mF6ovzolFU0I6o8oJMj?=
 =?us-ascii?Q?tcPUBN1vPW/zTZORW1w28l3VcbOOL8KVTBQZv3Cl7KETFYul5uze6IVKh/Bl?=
 =?us-ascii?Q?WQzVj9zD4aaKLFvHy4TNFJBrsSYOOqFhglCk/SBVNM9SVy0S26/uf19HMhs6?=
 =?us-ascii?Q?lpKNopfeVoUEjGbiEOEBdsqoWCf7bBSUE8ZT7sj8IsNpNhBhzdFELleT8/49?=
 =?us-ascii?Q?GyBmhBfN7VhCFgFLUZRYoeC+Xpnm/L36gGwRfCK9I6OHZwOSAGVlZiWKMiko?=
 =?us-ascii?Q?85PL/1gaf6dDXMI5oABoNoR6+EVfCN64mFf/YMIAgjdkB8AGkh/3YEM+1cvp?=
 =?us-ascii?Q?Yack7YPoqHzqhF1BlW4DrJNMMY3JJh53G8/ZGhOOaPjInQVEaOdI7ACiC403?=
 =?us-ascii?Q?yq5+JjjaFQe6LYlf6/q38IKNHz2cOBt5JIvO5HFAQ+Icx4w61zI5TlBQo+El?=
 =?us-ascii?Q?GwAR+dkazK9kWqaYrZa8/93DAkWX/8a/Ty3PNRaTbUiziANC+lHZ+04d5O+V?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ae59f3e-680b-4315-0351-08dc4a9e72e8
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2024 18:32:37.4227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G1DYrVFTSuTsA4J1gOKMIqDKj9rdN3Rq+VJmz5FvBbHoxIZQMd5k8XLM9pDq7/sETvp4O8KBnEEu0DkQEV5BkqGrilkX3EbgaWtOL93U9TY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8549
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

On Fri, Mar 22, 2024 at 11:06:20AM -0500, Lucas De Marchi wrote:
>On Fri, Mar 22, 2024 at 10:48:43AM +0200, Jani Nikula wrote:
>>On Thu, 21 Mar 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>On Thu, Mar 21, 2024 at 06:20:57PM +0200, Jani Nikula wrote:
>>>>On Thu, 21 Mar 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>>>>>The dmc_firmware_path parameter is clearly a display parameter. Move it
>>>>>there. This also cleans up the ugly member in struct xe_device.
>>>>
>>>>Hmm, does this actually fix the parameter on xe?!
>>>
>>>not sure what you meant here. Patches makes sense to me.
>>
>>Unless I'm mistaken, the parameter currently does not work on xe at
>>all. I only realized after posting the patch that this probably fixes
>>that issue too.
>
>+Gustavo
>
>I never really tried the dmc_firmware_path param, but current code
>contains:
>
>drivers/gpu/drm/i915/display/intel_dmc.c:       if (err == -ENOENT && !i915->params.dmc_firmware_path) {
>drivers/gpu/drm/i915/display/intel_dmc.c:       if (i915->params.dmc_firmware_path) {
>drivers/gpu/drm/i915/display/intel_dmc.c:               if (strlen(i915->params.dmc_firmware_path) == 0) {
>drivers/gpu/drm/i915/display/intel_dmc.c:               dmc->fw_path = i915->params.dmc_firmware_path;
>drivers/gpu/drm/i915/i915_params.c:i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
>drivers/gpu/drm/i915/i915_params.h:     param(char *, dmc_firmware_path, NULL, 0400) \
>drivers/gpu/drm/xe/xe_device_types.h:           const char *dmc_firmware_path;
>
>So dmc_firmware_path is only dealt with inside display... it would be
>odd if it was not working. I'll double check.


oh, now I understand. You mean that xe module doesn't have the param
because it's only declared in drivers/gpu/drm/i915/i915_params.c.

Could you extend the commit message with something like this?

	The dmc_firmware_path parameter is clearly a display parameter. Move it
	there so it's available to both i915 and xe modules ....

thanks
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>Lucas De Marchi
