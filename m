Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C0A881C2E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 06:43:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D96810EF18;
	Thu, 21 Mar 2024 05:43:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ErNgHsv2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EA010EF18;
 Thu, 21 Mar 2024 05:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710999832; x=1742535832;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=U6JUH0pvz4jPyyWBJYlWXST1opcVoQ/WMfh4fRzAOlg=;
 b=ErNgHsv2JQPLBtJRCeyRpb5PR0Hrr7DtIKr5X2iy7kbulVvrg+mfaQdP
 jxG+KJjvtxZ3nQWpo44O/ciRmq/hoYnfvcpV7tO6y0wc5dp5wJKuCIk5l
 AaQkvTp7//N/DpMfbIGXUw2AWjyCc15ol+QuUoWNqMJrGvXQfEW4Jo5Ff
 9i/Oyi4UV6bTeU80ypN3/gxKnjfjBg6eZYNJWgB8dSNWKfXez9wDSBkaC
 PzxXDo5ddwS1T9jmasZDKowQTqORJlZfxXC8CO5RPLvP/UdKocrz12gVr
 ey11QcDp2PxbpAX2vTXN5WV/0Z7nasrJav1L5rLOtYd3/arK2b5gVhxR4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="9750266"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; 
   d="scan'208";a="9750266"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 22:43:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="15036017"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2024 22:43:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 22:43:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Mar 2024 22:43:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Mar 2024 22:43:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rl1itafAVuop8LoA6B6SnPlwNySUwz542GPU7Sccf2MS3/8BDz2h9USx0+mrpUNZSM5uZwVk9PIZPrQsXXWsEEhc4gKtogX45YrnJw93R48kDXGCJ3KM0qQ5XPzMoMvOBLFkyJMvMufJnLWSJpxvvW2dKGSjg+vJO/78lBkltQnBEFlMOrphOQCORDCoUiSZccvP419Z68KktHVwzaWCBJ6sYuPXEgUrqk2b3QSGkc868qlWt+43zDJE/EbtSyCNLrjjwtOwfiFb/w0mpkHjBEj5K04B902KAL6HOr+/zDenlHwyK9TCzf02IOlmDaMnnemgzOyHVc2mjwBtD+wTFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZNozVi8SABiagzQ3I/FhcFcBcJXq1127R0lgs9IYvN0=;
 b=WagHFvsEJueBwA8ncYqjlq6UOexqNnxUNi5HtMT6lZlH63NifmOXTPa/6wXtKpCX0duV45nSFsxCPCskYS1rHmEsWkngf8oITUHyMdC8iHJd++FX9DTjlv2dFiqtCHmTJBi6gUucFKRj6Prj+UVKWSkolgIwgG17OicV4HektHQX4Wfu9E0eIH8mHjLdRNJmQwrqwnqGB0DyuQGZeWCZHTjVqsSXyVjcNYA0+HdbZPr2ROLBOyTFBy2hbSvYOccUCgpcsgsl+p60TmnpLaorAOKu60knMn/7JBJHCMukS+tl7ZDCBwSSp7Un7UsFPs9BxrH1IU7qH5vWGOWw5GDA7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB8426.namprd11.prod.outlook.com (2603:10b6:806:38d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12; Thu, 21 Mar
 2024 05:43:49 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.010; Thu, 21 Mar 2024
 05:43:49 +0000
Date: Thu, 21 Mar 2024 00:43:47 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe/display: check for error on drmm_mutex_init
Message-ID: <4qvc2szaa7zi3yi7syec7is3lk5hsla7hgo2gfbfbuksdo2wdv@to57k3fkevbn>
References: <20240319030341.3907617-1-arun.r.murthy@intel.com>
 <ki4ynsl4nmhavf63vzdlt2xkedjo7p7iouzvcksvki3okgz6ak@twlznnlo3g22>
 <IA0PR11MB73070F0A670BF9127F6F684FBA322@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <IA0PR11MB73070F0A670BF9127F6F684FBA322@IA0PR11MB7307.namprd11.prod.outlook.com>
X-ClientProxiedBy: BY5PR13CA0004.namprd13.prod.outlook.com
 (2603:10b6:a03:180::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB8426:EE_
X-MS-Office365-Filtering-Correlation-Id: e7a1c25c-1936-4e86-2673-08dc4969e1eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7BwThz2bLF2Ed0ZiHWJqk8SDcul9KrVKzC0SWDAE0ZKOJ5ZBK7SxQN7iWjnsRgRBaEZTbMwp35I2ulMwPXBcwl3ZFAn1+RoEE+qpTvKluqi/YrDHtrrLJ5lsycCKPk07bNLO0Wqmw7Xb1Bs+VVkGtry87Ka8UzkdRLlQCkz4ZaXeza+E4fi1iA3zML7JD8QtQk3aiiq16BI7ogHi/gVzkDatRbB0F8U1TnyeaFaP/oEH8BmsYktkqDCePGxOuzpKTIXiIvd1/2QyuIsIBHP22xJxLoHr9fixIDKTkLOkIDE+EXS5+hTKRhIpoN5cuwOxuOXPNQZJqaizdFUzgF0N/xD4LA991aXS22iauN/zAcsowU5GYs9DV+97WIch2JWyimP6ndtIsMoAtrBCmE5XgrYmfiJTfek+Ivah+kgByt1I94DbsRQaH5LIoP89yfCS5yxNIvXm0+7BvgEImuP1r3vlq/qHET0+i3PXsLupI/Az5hg1DFRhX4afzbywmR9a8v6+jwL0bEYJdrbU80zxzgm9jyV1RncZWvC/972y7L5ZjeiX7MUOLcLapfragQa3f8KsSHkFnkY/ET/5GWgaOaMxR2xT78mXseVbs075YYeveMXEH7AI1ARp7GWKywvwU+8GatOXi45Ei06fbrpKHwf0NrnIDAmuiQKfcG0Vs/s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MfkTfIoIXGcRud56+uVgQ+VKxeczWhbvBn+bA9IMY5P3Ropv1NLtL8Frs0nr?=
 =?us-ascii?Q?TAyZw+xGLrQG0heReI9h3n8MM2cQVQ2BfGza/ocBMiQpeueHkM1302ixLHNE?=
 =?us-ascii?Q?KTFMUcp09C6VvrfXMrv0QBbcQ1BCaxB2IaSZmPR6uhQd9conNpapNKPP1HDQ?=
 =?us-ascii?Q?OR57+sNEfJZ/0qJWz1rHtrtmj6YrAn9BLagSfBsNDuYVE6boMUvEGS027jGE?=
 =?us-ascii?Q?ADwE9RUHBtkWDACoYYmp3pIe8Ob8UyoQAT0MaJIvVqwAV/TPJItJ35cNcVlG?=
 =?us-ascii?Q?fxGVzTOzrNzsg9Gbi1sxWTHwp6C9PqiTvBH9fLsu3fmNcqPOuQQft8mTndYO?=
 =?us-ascii?Q?IvHwfjNGg0bgaFugCAd/miRBpFHD+e/pKKXZ11HxUR3HtTxR6HJTUllg8N6a?=
 =?us-ascii?Q?JupRpQDWyBhr6NRGod2u1HpUKIZ7DsI5B/SeZur3O28qwVC0zlWn4zDjUR+L?=
 =?us-ascii?Q?2LU/7EpNo8cIFk9CfVCGDEf7lwwFC+3sZBtjNQVt4vqoINXV6Anyl+03Z1VG?=
 =?us-ascii?Q?ZjSkXJznccqdGjN6BX3/fP3mAqG3qq7kFFfrGECVmIZgLuCZuZX7sJzDtrsD?=
 =?us-ascii?Q?sYIRLmKn70GhNSq1c+NT8/7lMD1FxoeoEVFUQ9BrV66Gv8eBPplv8S4qPnh8?=
 =?us-ascii?Q?2KgJSMflV3QYmErA33QKP/msbvx8876uW1JAeiYbktilCMYd98IXIVeB4ZSg?=
 =?us-ascii?Q?UxrRZx6l4G/oiIrMT+e0O1cLUgoGyNuIEuQ3oJeNOtFrjNPvqsQ0fUUc3OjY?=
 =?us-ascii?Q?3SblvoeoNiegKmN3PpY8r31j3+ZqU/QlO6HvpyBrKU6aU4lOrEqgBaGzgdi0?=
 =?us-ascii?Q?pKSn42Dkw04MoQCZ04lXzmhHj9bzhi0VGXlgbHAXfq+ifIM0c6WI5URds/I6?=
 =?us-ascii?Q?xp74vgv61W22rnuoW6SErU7DwDaKmE7QCdSzZP9SHxBICW5OHQav86dNcStE?=
 =?us-ascii?Q?NpJSUhnE5nzVq1YMrqf91UQWnmoMpT21pKzIc/UJVFcbXG7pyXMQWXNcTGbH?=
 =?us-ascii?Q?mQ+nRAUBQyRIwE1j7NYFxrajnb5ydf2MqAgaqQLySPWGzcRjl9tCVB4RYv4r?=
 =?us-ascii?Q?Sv5gd2Z0rZqYzlgjNIpzclTOM24qbVWhz1WR646+WkKdTDfD/GfIg4RBJF5a?=
 =?us-ascii?Q?9o08nXudF84GjYxPt0OkmSqGKeqbUT1TNxAm9IWoZ9Y766cX4+pzX1Jr2n3/?=
 =?us-ascii?Q?aH4yKRpqb2tHXnljiDr4S6NXryS0lv3f0Q4mLMHIx+jMqSuN4XhFLY1rwL6a?=
 =?us-ascii?Q?2sDv0cL9dH9UcxMsmb9PIibPd+2wcDVaLFVHZCA1aoO+U+9j/fG2iCGi1/gg?=
 =?us-ascii?Q?ZxZDJI9hhgZ2gbCK3LMiy/d0weRa6jZ/QBX4U1w34Gd4VBbus+aihc2njA9l?=
 =?us-ascii?Q?6ngDh4coctlgPJJxKw0SjE/AzeM/alzhRDSdjr6vaZY4U+XfY9eVOl4newe6?=
 =?us-ascii?Q?Az5wC3v0/3jT5bRabf8uF+ilceOaORsNkPxLCZanM3KfztkygbmC8R7rp4Qi?=
 =?us-ascii?Q?kFxMJa1LtpGbeKxASlt7SAg6Ak1X8i6YmP4oUk9uCgye63qCzUILpmWN+YFJ?=
 =?us-ascii?Q?X6PvIGR0HvcmQb8nU3foYKiO21n1PUfXBC+6EQEWMEsZQA1AkRMrHNuIiI+f?=
 =?us-ascii?Q?nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7a1c25c-1936-4e86-2673-08dc4969e1eb
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2024 05:43:49.1788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9N2bzvXjwetx5FTUPIS+tl4qTjQZL634Wo2GG/tbENThsotqJGCtKglPhiyUK1IyhArYUqdM1oNRq0fuFtuEBW+Xd8J09qN+iZ5cuolO8oM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8426
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

On Thu, Mar 21, 2024 at 05:04:51AM +0000, Murthy, Arun R wrote:
>
>
>> -----Original Message-----
>> From: De Marchi, Lucas <lucas.demarchi@intel.com>
>> Sent: Wednesday, March 20, 2024 6:06 AM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Subject: Re: [PATCH] drm/xe/display: check for error on drmm_mutex_init
>>
>> On Tue, Mar 19, 2024 at 08:33:41AM +0530, Arun R Murthy wrote:
>> >Check return value for drmm_mutex_init as it can fail and return on
>> >failure.
>> >
>> >Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> >---
>> > drivers/gpu/drm/xe/display/xe_display.c | 24 ++++++++++++++++++------
>> > 1 file changed, 18 insertions(+), 6 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/xe/display/xe_display.c
>> >b/drivers/gpu/drm/xe/display/xe_display.c
>> >index e4db069f0db3..c59fa832758d 100644
>> >--- a/drivers/gpu/drm/xe/display/xe_display.c
>> >+++ b/drivers/gpu/drm/xe/display/xe_display.c
>> >@@ -107,12 +107,24 @@ int xe_display_create(struct xe_device *xe)
>> >
>> > 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
>> >
>> >-	drmm_mutex_init(&xe->drm, &xe->sb_lock);
>> >-	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
>> >-	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
>> >-	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
>> >-	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
>> >-	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
>> >+	err = drmm_mutex_init(&xe->drm, &xe->sb_lock);
>> >+	if (err)
>> >+		return err;
>> >+	err = drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
>> >+	if (err)
>> >+		return err;
>> >+	err = drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
>> >+	if (err)
>> >+		return err;
>> >+	err = drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
>> >+	if (err)
>> >+		return err;
>> >+	err = drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
>> >+	if (err)
>> >+		return err;
>> >+	err = drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
>> >+	if (err)
>> >+		return err;
>>
>>
>> humn... but not very pretty. What about?
>>
>> 	if ((err = drmm_mutex_init(&xe->drm, &xe->sb_lock)) ||
>> 	    (err = drmm_mutex_init(&xe->drm, &xe->display.backlight.lock)) ||
>> 	    (err = ...))
>> 		return err;
>>
>> I think there are few places in life for assignment + check in single statement,
>> but IMO this is one of them where the alternative is uglier and more error
>> prone.
>>
>> thoughts?
>>
>
>We should not proceed with the remaining mutex_init in case of failures. As an alternative we can have

with the code above, we are not proceeding with the other drmm_mutex_init() initializations.

foo() || bar() doesn't execute bar() if foo() returned != 0.

Lucas De Marchi

>drmm_mutex_init(var1) ? (drmm_mutex_init(var2) ? drmm_mutex_init(var3) : return ret) : return ret;
>
>With the existing one traversing the code is more easier, these optimization might make the code look complex.
>
>Thanks and Regards,
>Arun R Murthy
>--------------------
>> Lucas De Marchi
>>
>> > 	xe->enabled_irq_mask = ~0;
>> >
>> > 	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>> >--
>> >2.25.1
>> >
