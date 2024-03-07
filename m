Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D708755DE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 19:13:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C270D10F513;
	Thu,  7 Mar 2024 18:13:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dsWLeErl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9641C10F513
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 18:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709835180; x=1741371180;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=pYubvS5sapsLaMnd1y74xhloG54Opwian5uBjxR++Fc=;
 b=dsWLeErl3BmUpa0HQ7cnm2H65quyPxZV2dIB8fSLd24Slblnzc0IGCmh
 a46zRR4HeYvIfnYzIgkvMRj4PAKw44Aclt6L6TYy3HKbkXa72hPLggw0I
 LIirManDLdBBsJcZltOmdbsClFAm73sVYe8owOka6hzSOgg3YUGCaGXds
 7PmDXexD0h6nLcY/FFDWNMcVN21hxetXMtrZskD0SGdZ/KWHdRM1JVZTD
 Zw477MQKwlI2BvuiQgpT1gGbzO8WyHnzmDPo/xz1N5hGTXxBjAkm3MhE9
 1oR4CR91VNQW1l99xW1/ajo3UsfzfW3y7rR44kF4TR498qoAviZwR+FyY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4695745"
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; 
   d="scan'208";a="4695745"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 10:12:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; d="scan'208";a="10754457"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 10:12:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 10:12:35 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 10:12:35 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 10:12:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YSq2EsxLcsiqDdpFjPm88YBtoMHPnh9U1kMg6BVeEVSlTRCB7b7IOSPJyncRqrWMveDofaafKtjzIxRAQyKBKvRDRulNgJwx/YXx8Z8otoZmVOeNQ2GJmEXsjsTLRYjFboVOyOexBq7dSXK4KuKg42v1Itc+JXWWSzBG9Cgz18kYMDdRYbJmjdc5TTbI1+v49bgR7XrtUwrfFy5FHihn9pCkAm08a17hZK+BO+FxZmc6aFwnUn8bC/A79tAitp/6daoDno5eTC52fdYKgJ/cX63Qs9H+MIf37NuJMFiPJgpvbsMk57n/v1yVNSWia52In6ugpKzhFMBh0wsvBpD93w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HQm6r61o4zeN4ydUjYqKcFJsOBmbt8hV+4YtJCMuCJk=;
 b=nQ4/YjPOX3ByoC5TZsPIYCqYXHDgFG/jyvUAWGb7enGneMWDR6A/By1bV4tVGI8hBS3Eqijce1Z5HCNS+GDhzFcjMm6EB710NrzvrIGldaPA8qxe8xGDvhsqZhWwrCc4xDGWJ1QAHGupJ2/ThBnIzxODWzcWzWlE2FqJymWW/uSMOhpLYDhZttR4/IxSHsm9kvU6hH6Lwf8DG3JaYQzSXZY5QDyrGnhhRD8Wm324mbKsIxWXuyeVQv07ns4fihJiLoS1cgdU4dV40PrJJ1cv9a3Dxk9wfmA6HojJCjv2nlKboOqHseun13+h2ha7E8ivARdQ6MHxo3Tr6bMXfPcUKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB5008.namprd11.prod.outlook.com (2603:10b6:a03:2d5::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Thu, 7 Mar
 2024 18:12:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b%7]) with mapi id 15.20.7362.019; Thu, 7 Mar 2024
 18:12:32 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240305035800.779916-1-shekhar.chauhan@intel.com>
References: <20240305035800.779916-1-shekhar.chauhan@intel.com>
Subject: Re: [PATCH v4] drm/i915/dp: Increase idle pattern wait timeout to 2ms
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@linux.intel.com>, <matthew.d.roper@intel.com>,
 <clinton.a.taylor@intel.com>, <shekhar.chauhan@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 7 Mar 2024 15:12:27 -0300
Message-ID: <170983514767.31200.10042497234928041866@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR05CA0015.namprd05.prod.outlook.com
 (2603:10b6:a03:254::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB5008:EE_
X-MS-Office365-Filtering-Correlation-Id: 01331204-bc46-4875-632d-08dc3ed228b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: po9cT8pq33wtfVRepyVP/Q582yAoR4/ktHfzzv9qcskh1NahYuBTZoC3Ry2As/9Hpl9eM9eWtJjglVvBO71Bee83kl+9jMnN/XiEo0TgZAtnzti3HaedBCb/icjnnLUNOsb5NvaugWkVznmNT72dqsN6IxNMI9srBrxCGgY6Txb4lD4m0B99rSgvM+2ac0d9vZx9+J7Cz2FhJGhA4awIm8xErXjyqgYyDBZ5drdpFZbOou9kFu3c9SS9eJJrS5eEZcZ2NuUCKBgipZSCkD5yo2urtIeDjs2cfHB4BcRylmBS3yFx3jbrkqk6E5etgiztEA64b+BEaAq0vgiqyVkvLlzmiPZKruL+nUiNUwbRu8GvXMmR0E2rlCHjqjfo7a+RbugxErxEekYEO5SUi49cra0AEA/b/bDQuJj8R//t44mMKiCS3JEjFuz0Yg5ufpIpamhL3WpN5spvofzWziqUSsa4SWjwsqog3F7nn+wdG/PPtGljl5RzmhSrHqArYvDlNYCbnUW9tcBXH6Xkl+DqHxrJPfxAaCwYVFiSAPwn7zKOJV75lH5EedGUR86US9XWMcsMhCaoJcHl3Vscy7Xy/wum4Bsj9v1nwdoOMeM6RnjzEDBys+AsMGAfh7KcGoUrLyw4HM1WQeW3lFuqEaFW2lvC/IkAJ9FvVOidlmZhQKw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sm9PcUhXeFFRcXM1cHBPYTI5OUJuYXh5eTVXQ05Kd3pNaFNKY1dkSm4yMmkr?=
 =?utf-8?B?YThjaUtHbGlVTWhsRWNUVXRTcEpsUks2VGIyOXh3VlJteURCbG5NcmRCSFJT?=
 =?utf-8?B?cjkwZk9nckF4L0w5Tko5MTg2bTY4RGh6L3ZTNXZ1SjhPTDY4WTdsNnZvanRF?=
 =?utf-8?B?M3BJN3dISVY3Y3hRTW9lNXdZNEdEamE1Z0Y2ZlNjemY2M0FleVJrdXY1QTht?=
 =?utf-8?B?UDB0Y09Ba2pNd2d0cS8rOTZVMUdPNGtGOGFLNkZJMFRRYUwvNmJvM1Ixclhj?=
 =?utf-8?B?cERCOFU4TnZMVllSTG5qRHYrZy9lM1VZRHIyWkUzZ1NBLzFaVlBaTWRlR2I0?=
 =?utf-8?B?V0x5Q2ZRVkNZN0JNbGpmeW14d0xUWDF0SmdvWTlZb0lsbU1iWHYwS1hmbHVG?=
 =?utf-8?B?K2lINkJ2OVQ0OE10MzExQ2FJNjVzSkxZOXZ0bkV2dlh0SFFXdWlweFAzQ3o3?=
 =?utf-8?B?Wnl3QVZDSC9kcGNsbEdmRzBTcHcxd012WEZRUGFyUWVRYlB0cXovUGk2MEs3?=
 =?utf-8?B?S0NycFlLRXdSQWhPWDYyMzBuWUV0ekMrS0RuWFl0ZFFzL3dUZ1ZLcVlQTDNM?=
 =?utf-8?B?K1E4U2JTQkxITytrV3hzYWNuSElSeENWRWIwZWh3N3kxOWpmRzV3Qk93cnla?=
 =?utf-8?B?TVU2QWQ1cFhQQkdWOEU5TnorallyTWNNZHFjUHNBTWVOdGVzSDVlckZQUmFO?=
 =?utf-8?B?YzR0QTJzMWVDL3BkQmJtSGNPL2JQN0NGWXpFRWRSYllTZlIzeTlwMDNhWUpI?=
 =?utf-8?B?Z0hUaTBzUW1vMTN6Y043MURzK0RjNTFtS0R1bnVzVDZ1STJENXI3eE5rUHVQ?=
 =?utf-8?B?R3NMVUh5Z2VrYkZJWDZ0TzNFdkVoVlhtaGd4QkExelI4VmI0NzRFOGUzYnNH?=
 =?utf-8?B?V2xFZWJSWEhvSzhHZUtvbjh2UktuOEJGQTRXamp4c1JNckY2OGhudkYzY0Fw?=
 =?utf-8?B?eDJjeXZjb0E0TVczY1R6cC92NHlPTzlWVlluVmRwSkw3M3RWa3JmNjY4elEz?=
 =?utf-8?B?WDVORFFrN0VnNExLS1QxUjFGYi9BY0pkMWdUcWQxZFREaXIvOTg3RlltSlJY?=
 =?utf-8?B?dk1pRlliMjNwbDIyUnpiYkJvRFd1MUlodjh4VUNqZjJxcnZ6N1VvYVFaSUNl?=
 =?utf-8?B?U3Y2anJEVndVbWZQdTh3MmsyblZxR3g5OTRQTTdrTDVtSnlrNVJnWU5TcjhM?=
 =?utf-8?B?RDBkb085WW9zSW52aXlaM1lpWHBIWld2RDZYai9MVDREdzdKN0diTDltQmV0?=
 =?utf-8?B?K0FRNEFqbnNZSWJkclRpK2NHN0RDM081dnh5ZlpZbTU3aDFFcy8waXRpaFM1?=
 =?utf-8?B?Q3B2Y3ptQnd3T1J2NHdaZHpBTnlLdGxjeWNqMnZvWUNuc2FNMHIzejd5bHBO?=
 =?utf-8?B?b3RSbitPTjRGWDh6V2NPZ25zTDJQZ0NYcWhiVmhWanFuK0ZsRVRGY2NRMTRM?=
 =?utf-8?B?dUpiWmdleWYzUkZIQVo1NUplMGd1YytsRVV1TXExVURKbSsxTTFmWnBVLzhQ?=
 =?utf-8?B?bFJsRlhFWlNjVlVSN3Y4Q0x5QjJiQlFJUEczanJ6aEw2Y09Hdkx2KzNMZ0la?=
 =?utf-8?B?dGFjeVZIYldRVnRTVWZ6S0hrMGF4SDF5OFdPVVZhTHYwZHNoRThXdGxRZU40?=
 =?utf-8?B?QzYzSUZNWjEvL1d5ZjhJbTB2ZlB3VHVRMURGVVhEK1N2NHVlNTNSTDk1c0hS?=
 =?utf-8?B?Nzd3bVV2K1JKa2F3WHpCaDJqWHpnVm84M2JUV2IveHYxMGJONTZtSHRJKytl?=
 =?utf-8?B?L1QzNFE0cjBhL3VnNjRzdlRFYkYwbW5sR1Fna01zS20zZkl6ZXZLSUFwQlpW?=
 =?utf-8?B?WFVLamlpRjZGU3pINm03ZkJnQzNBTnlyd0thTlJrZUhXMGFHU3pzaTd3N2sz?=
 =?utf-8?B?WnhmVmY1VmdEcTJDK21oek5aV1NWS3hTMTVQMzhkbktpcHM2Ymx3b281c21n?=
 =?utf-8?B?YjYzMTI2L2lWcERvTXJyUysyL21rbW1KMlhhN2pWcEwrRzBFTHdaN2dyRUln?=
 =?utf-8?B?YXVyZ003dU5MTS9BOVNIL3dQcjN5c0hMTTlubzd4VTRuUmV6YUljbGNtVHZZ?=
 =?utf-8?B?ZXl0dDEvQjk0NFN3RzBuQ000aGVoaG1tQ0ZpTkg5SHFCSjh2b0xBb1pQNm9K?=
 =?utf-8?B?SkJqR3oxamRtRFY4eVNwSVJLNU14amtRRUsyS0NyNS9tSXlCZHpOcWhhYU5s?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01331204-bc46-4875-632d-08dc3ed228b9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 18:12:32.8663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bPipsHapMUDkJzbLsRHcMDQOQXaFzcWOGYF8k26Xq/cW/RYPpmpac7PfoDGboaMs3YD6dHJw/OG3/pkTVHQdFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5008
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

Quoting Shekhar Chauhan (2024-03-05 00:58:00-03:00)
>The driver currently waits 1ms for idle patterns,
>but for LNL and later platforms, it requires a

I would say "for Xe2LPD and possibly future display IPs, it requires". I
feel the requirement is not necessarily tied to the platform itself.

>1640us (rounded up to 2ms) timeout whilst waiting
>for idle patterns for MST streams.
>
>To simplify the code, the timeout is uniformly
>increased by 1ms across all platforms.

To be more precise, "platforms/display IPs"?

>
>v1: Introduced the 2ms wait timeout.
>v2: Segregated the wait timeout for platforms before & after LNL.
>v3: Fixed 2 cosmetic changes.
>v4: Revert to v2 design with commit message enhancements.
>
>BSpec: 68849
>Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

With the tweaks to the commit message above,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index bea441590204..05ba3642d486 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3680,7 +3680,7 @@ static void intel_ddi_set_idle_link_train(struct int=
el_dp *intel_dp,
>=20
>         if (intel_de_wait_for_set(dev_priv,
>                                   dp_tp_status_reg(encoder, crtc_state),
>-                                  DP_TP_STATUS_IDLE_DONE, 1))
>+                                  DP_TP_STATUS_IDLE_DONE, 2))
>                 drm_err(&dev_priv->drm,
>                         "Timed out waiting for DP idle patterns\n");
> }
>--=20
>2.34.1
>
