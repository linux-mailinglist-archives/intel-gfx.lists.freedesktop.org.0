Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228E0A38DF2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 22:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E6C10E125;
	Mon, 17 Feb 2025 21:25:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V5eAOBOy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A403910E125;
 Mon, 17 Feb 2025 21:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739827538; x=1771363538;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/BsmMEaQOb+wAy3XJ53HBglZNvcuWbgrt3xehqVYdic=;
 b=V5eAOBOylPrcLLWM7A4/HDYAHc2lptPgX53zlurdpZ6xnxIZd8XcPWFk
 fFzCnfAR+8eymjFrsz1EvBaYatDVzDz3C9R9OY3ZcR3SuD0YElvDhytmc
 bJDSxL0VKa0H5aGIFx105ied5Cm1Genh2kHtj4hWnZ+6XS9GEND2yTtWA
 lYRcc9ddVzDp+IdkEo3hG0lmWi/SKjfgsNbZTw0aZc4reOjGp9r0KK54d
 7rJsp9xKeEhlJd4GwThG/zWCmKRjU5r5vnkJqAUOIogE9Zac4XmgS9MiX
 Y4kNt5wVsV7KXSSRehaP1khJokdUx3j24maa+grTjZTYELflxc6Mi3LrD Q==;
X-CSE-ConnectionGUID: aHlASBS6RyeUM25uG2M7AA==
X-CSE-MsgGUID: BcTIbJQZTpm5DXVuA8EcXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51945618"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51945618"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 13:25:38 -0800
X-CSE-ConnectionGUID: WgqwA64LTt2ctoFCBkeXqA==
X-CSE-MsgGUID: BoXupNt1Qea5VBjGnRDgWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118351631"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Feb 2025 13:25:38 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 17 Feb 2025 13:25:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Feb 2025 13:25:37 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Feb 2025 13:25:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=flWL+9VjDsga6L5fauOVfVsc1o1jERNXR62u0vAAZD3/qCI56y3oWO2eZvBweT7TbdVYgnOt/vbb6bNSPbF8OQzwTlnCjZw9TQQF1w4IvchOLNwfcOSoH8oJ46s0reLG+IoBRP7kI24ZQdE0gJgA9EGSQ/bCZTKigt2xrE+pn9kZZxEIRzYYFyK/CldvbnR68oJNz6yO1GAXf7v7/4rIQE0wWAD0pNoc/Q9Soouckjpb7hdhqHzB5UUhs6Go0MYqPnJD03x7/ZsswGPTHnv8KskluZRzYLkoOFTXZO7iaPgve7g34Mue71IKHgkDZKJ1rSnOSGfttNoTSBEyKqygwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bUMF0FmBySQ26fT1V3zzyZvWvwKIGCthAsNfFBqskpY=;
 b=Zz+WIBqiMAujRmEmRiBgZMC0uhpSzf7ei9iNAIQ6CLN1SlbUfiR5Aa0ZkI8Y1OvUgLWxh7ke8yA/Ef905yvKRV8olJJyjZgl/ujr0fjLohJZdKcxMaKYNnEEOJL2qtauACNPHvdXarfnt7ui63IBHzrc8a3NpPKHo15VIHBfOxRsDGyq58K3WNQUPnMpILnayN0RH5lAy8/+qffVFFHwCxlJqm9fKSHuSQZrb5eOQaw2duN70mMRFFrAyjRgKB+NI8TKaWqEO0HgBYxG3/mbZXd4ShpJ18eJnCz4lCCu2yqEgM9G7Eil7NyBz+Nv6WSq+LXd55D6ZI7qP9LQPll1Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB7255.namprd11.prod.outlook.com (2603:10b6:8:10d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.18; Mon, 17 Feb
 2025 21:25:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8445.008; Mon, 17 Feb 2025
 21:25:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z7OgI_Kqz6TRdcjS@intel.com>
References: <20250217203722.87152-1-gustavo.sousa@intel.com>
 <20250217203722.87152-4-gustavo.sousa@intel.com> <Z7OgI_Kqz6TRdcjS@intel.com>
Subject: Re: [PATCH v3 3/3] drm/i915/display: Convert POWER_DOMAIN_*() to
 functions
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 17 Feb 2025 18:25:29 -0300
Message-ID: <173982752905.1836.17396764579692713286@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0245.namprd03.prod.outlook.com
 (2603:10b6:303:b4::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB7255:EE_
X-MS-Office365-Filtering-Correlation-Id: aecbac1f-dbc6-4052-3b9f-08dd4f999d4d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VW9pdGVNWHc4QllmRmpFZEMrTU0ycDh4dlVwQmRXK0xEZHhvWlgvVnVhMTZL?=
 =?utf-8?B?SVVrRFVOS1FpQ21CYTBxcmhWTEZzcDY3L1Z4SVkzRk9RQUVVSytXUzJpVGZM?=
 =?utf-8?B?UXA1SjBGL1FHQnZVdmY5cG1FR3ZYYWVrdTNuV2VBNjBqT0FJMzJ2VlFJVUhm?=
 =?utf-8?B?TjVwRHNqU1dWQWNRbVVGMTBZVjFnUk1FQmpBdm5mL203QkdmTlQ0dzhESjk5?=
 =?utf-8?B?QVNyempBL1pzbUFPWjJpTllSTlR1cGtESlA2TGZ1MXlLeGdOdUtRcnhLTTNx?=
 =?utf-8?B?K3RNbHNVRk9YMXkzblY4TUZUbllaVGxTT01ZdDVaT0ZVdEZpK0xoYUx1QUgw?=
 =?utf-8?B?NVgwYTI1dkNaYVY4RmdoQlBQNWFUUWRpaVZJNktxYlNHNWY1a2V6YU9mamlx?=
 =?utf-8?B?RVhLMDhjc1daSTVKSTljYVNlZCtMRHJyaVIyQzVzRm9NY0E3dVEweXZ4VUZo?=
 =?utf-8?B?Q2RUaVpSWEdhaGJMcFZYcndGbzJ5ZWxZa0RsVDAyUFdkRk9xdXRGKzExL29J?=
 =?utf-8?B?bUpkeTlYUDBxc05LcDNCbEo5eTFhMS9TNmFCV0RYNENQVm56UnNBc0E0ajNr?=
 =?utf-8?B?akZ5SDFpaFBCanMrYm9NV2swbkdrQTIyckIyMUc0U0g0UjkzK3FBSEQ1NkJo?=
 =?utf-8?B?MzJqa3oyOWxZdWRnazZVckF4WjFIYW5VTW92TzUyMjRIemJKaE9udFlGbWF4?=
 =?utf-8?B?SFpPZS9NekswTWREUnl0Z0c5TlRjcXBMakxrUnRIdXE4VnlBM3pMWDRydkxU?=
 =?utf-8?B?TWtwbVpjck1XVVZMS2NHOWxwNWVVdVZucTZ2bGFpZGt4QnR5Rk1LRGFFVXRy?=
 =?utf-8?B?cGlheUs2a21MT3lSd3Zod1RlUy9TV0srRDk4ZEJjQTByUmFtSDZ2S3NKV1pr?=
 =?utf-8?B?R3FZWEoraTk5RjI2K3R3YW1sNVdTU0ZmTlU3R3p3YjNxT2dEazNzMk5mRUxt?=
 =?utf-8?B?V28rcW9iSjViRFJwdlYwN08zazRDQlN1eXBMSlF3NlBGUVRSSjJESG1DRTJq?=
 =?utf-8?B?YTN1WVJQdDdRZDZ5S0FBN1NZZ3FBQVY2bTBwdjI5K2wzZS9vWVl4azRVNzU1?=
 =?utf-8?B?SE93TG5FNGF0ZUdlNVI1Y2Zja1lUbXl4dGFjazRWN2hNblBKRS9BcTRXK1J5?=
 =?utf-8?B?aFhhcTVnb3FzOGtOV3A4KzJJVC9OVkN2NjIzeXVBalVLTmRSaHY4N1hmVVNC?=
 =?utf-8?B?empGU09RbWxqRkJvZTBtM0tDYXFmZjlFQXgwWWVPRTJQYUNheUNtdk0rWUhC?=
 =?utf-8?B?Nk90SXlmRnB5MlE2Ri9sRlZ4U3lQY0cxNnhBTlJSczIweFRXS085am4wT0Yw?=
 =?utf-8?B?cXlOYi9Kd3NiZWI5Z1NLa2cwRjZ5bHJFcFFjMytQSDBYcnNibWZuYVY3RmN3?=
 =?utf-8?B?aTNIb0huakFTYm9wcnRsQ2lYZ1NTb0JYeWFOUXZ2dElhTXViMDJHNFNnTkFK?=
 =?utf-8?B?Ulc0R1QxSmFzd1AvY3pLMVpCUlk0VkZNN1RxOXZNeXIvU0hCSmtWQk1ONGRM?=
 =?utf-8?B?Uy9EUVc1ckRoU2lDNmdRODlvRGJIUmQvQnZuT2MyMDZvQmQxdURSWSsxY0U3?=
 =?utf-8?B?U3VmaE8waVo0VnVPYXRRTTV1YVBBY3FKQ2tBeGNtTmtySG5MeUhXeG8zcEZs?=
 =?utf-8?B?QjZoVVNKVThXNm5aMmRJOXRrYUp2KzRuUEJNQlBGQnpDOGwzd2JlSmtQNVZN?=
 =?utf-8?B?QmdqYmpZWENGYXZxQ1pIZndjUjNHa1FNVCtzbzlmNC9adVI4SlpxakVsRHh1?=
 =?utf-8?B?ME9sUFNPYmMva3BvdndmN3M3SXdhMXVLNFlWdjlGRE1Yb0dCRWtpOVN6UDFu?=
 =?utf-8?B?c282Rmp5MHZCWklROFg2dERET1dhTTNyTkk5cTVWVWwveXcrOFZMNms0a0g1?=
 =?utf-8?Q?8yaTCACKRSk00?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUduL0pGdzM3REtTWDFOS2Vac21IMkVHVFJvaUFORStrb3c2RGpjekxIWFJh?=
 =?utf-8?B?bjBHZzUzdDNUUW5wZkd4Mnh1L1dWK1hLcnJkT1doZnU5b0w0SkJuL1J6VmdH?=
 =?utf-8?B?SHdXY0lkNDBHMk1meVJJdE5ManJOLzhFSkdiRTRqZlA0YU11MzlBKzVmUWpD?=
 =?utf-8?B?MVFVbUpSSWVUcEc5WSs0eVd3aHBiaTBhUWwwcUJpY0ZVcG9tN2dKbnJ4VnJJ?=
 =?utf-8?B?V1N0N1lqd2FBL0V6QlZsZG9JUThxUVhxWXRMSDhycnJ2ZUNja3hEL1B6OHV2?=
 =?utf-8?B?WlVKdTlvTVJMRGU3YmtwdEE1NnFNQWp5TThXTG9seG4zVFBIbFBoYlJLRG4r?=
 =?utf-8?B?YWRpdHRBT3dMbXJRd1FmNFYxOHM5WllaNjRkRUpkamZuaGVsQlM2UkdIbytv?=
 =?utf-8?B?VU9abjJ1Y2tHRXlVeU9UWnJ0ajcrcGF4U2p4NFhRbUF6Rmd2cUU5bG1LbDhj?=
 =?utf-8?B?aGpmY1laYk1GeVZXUEJ6TFBKN2RsSXJwWHdXVE1DaW55TVdLMnZURGRNQ3Zu?=
 =?utf-8?B?YXdoT2dvRVVEVDNleXBrcytFdmF5VFJDRGZTb1p3OUtEUnUwVlg3WG96dmMx?=
 =?utf-8?B?aEdWT1doc2l2QlltY3VGZ3QreVZDNWhwTmtsdFJrQ2NvRkRyWnI2cllVanA3?=
 =?utf-8?B?aTlkQ2l4N1JUY1dTK0pqc25yZlM0dWNiZGJMc0JTRVpPOWp3b2Y1ejYwTW5M?=
 =?utf-8?B?MVZjWEg5aHQ2YTNZcVZoM1JBT1RmVjNVVDcvMWVWODgvQ1hRRDE3S0lFbnVE?=
 =?utf-8?B?bmFpVGtNdC9rdm5kU1hkL0RUUHNIclp4YnJWNDBFUFRvWFdyUllqNktGUHdV?=
 =?utf-8?B?citkM1Jaa2tWT2xVc01ZNVpMc2R5ZDFXZU1Nb3Q4a3Z1d0hLVE83R1RrMUdD?=
 =?utf-8?B?dFhvZDdyeDJtNlVGQXY5RFUzNVRaWTYwRFZJNTVKQ0JmM2c5UHdIaHA2SDhk?=
 =?utf-8?B?b2FENFZ0ZU9DRHhoY2I0SFVCck1QQ2pySy9uMS9HazJ5dXNHOHJKVytVRTNv?=
 =?utf-8?B?SGZUZFkzVm95N1pxMEkyRERLQnRDL2JXb2NaS25CbnVPZGFzQU83YW9hTDhR?=
 =?utf-8?B?QTZ2cUY2YlZUa3g4SXRORzBldWx6ZGE3YlN1YnFNQVRZem5oUTZSVlVmQ0w3?=
 =?utf-8?B?a0RLMzJjZXNhMEZHWFNORFJYNWsvZERaMTNWL2FBbmdia1VzY1ZmVmZPZENC?=
 =?utf-8?B?MnVadUNiM1VLV2tlZGxPL3NiTlQrWWEzNWMwRjhNWlRYTnZhR1pOdnYzSDQ4?=
 =?utf-8?B?Z3lOWS9MbDlPSkt0d3VDUDRuQVMvb2RxOFQ4USs0djFnWkM3WnMvYzVCeFNF?=
 =?utf-8?B?d2dNaUFZZkllYjhQNmJER0R4SkdrK2drZGdKVGM0WGF3MzZxRi80V1RHbWVD?=
 =?utf-8?B?dFVqdzY1NHUrK1RUOGppbE90NDNPa2N5RFgrdGZhY0kvMmdrUWlBU2dwdFNP?=
 =?utf-8?B?OWNoSGlhb1o2VE1Sdm9xY0xzZExqZ3BKdkpIRzR1NUwyNWNRTWlYWkkwQXUv?=
 =?utf-8?B?NS80Z1YwWERtcll1WGRVSWw5MEY4T2UvWEwveml1WEFOZ2xORitkTTdMOXgz?=
 =?utf-8?B?dzhPdHkzM0FadFd5SkJDVkxOZEdRRUlZbzRqanVoSEpFbkIza0ZvWStKRnZC?=
 =?utf-8?B?N0dqcEpVRmhRcTZGNWtIU2hkOWJXdmR5U3pXb1FWaG9HamwrWGp6b2wzaUFl?=
 =?utf-8?B?cS9vOEZOUEZlNnI3U0NJcjFLZXhsZW9JTTFHZ2NJRkdYVXNiU2R5YnNxVFRF?=
 =?utf-8?B?cHF1UzM3YlFsUmlIUDRyYjVVYVFmOTQ4eGcwb2h4RnBBUDFrMnpuNkNsMkF6?=
 =?utf-8?B?bUhsbER0Y1FVanpBY2NUc01zRFdldG5Dc044SGtuN2hYRlYwTElVQnFDZFlx?=
 =?utf-8?B?V3pEZWNiaVlZK3F0Z2V6UXU0MitpR2FHUlVMcmNCa2l3SXhrRUVxNXU0aHZh?=
 =?utf-8?B?TlI0MHFrajFLU3lSQjd5Z0dDNE5nb25LaEM4M3FEdGNoanJ5T3lVSzdNeWE5?=
 =?utf-8?B?aGxWbzdobGdDS213U1ByNE5UT0taeSt1TGhCYk1RVS9VMGNVU0hXc3V5cnpa?=
 =?utf-8?B?dWJnUVg1VmJQbnMvcEVoUzQwQ0E2Z3M0KzY2RzRtMm5pY3BqdVZOZ25oc1JM?=
 =?utf-8?B?dmkvVDQwNTRERFphNlY1d3VTajZ0VnVRQjUvYmdhMnpUZjdNNmlVdFhoQlVq?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aecbac1f-dbc6-4052-3b9f-08dd4f999d4d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2025 21:25:34.7688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gd+lwF1NqVdtS3sGv68eX7qoAmLslRZ2FHx1LF4yNxfWzDzBUmtmfBXtXYinc4BJrb3Buo5qQgjDIGdbI7tx9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7255
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-02-17 17:46:27-03:00)
>On Mon, Feb 17, 2025 at 05:34:28PM -0300, Gustavo Sousa wrote:
>> We already have other functions to get power domain for other things
>> (i.e. intel_display_power_*_domain()). Convert POWER_DOMAIN_*() macros
>> to the same standard.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>=20
>> Note: Maybe this patch could be squashed with the previous one.
>>=20
>>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
>>  drivers/gpu/drm/i915/display/intel_cmtg.c     |  2 +-
>>  drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +-
>>  drivers/gpu/drm/i915/display/intel_ddi.c      | 10 ++---
>>  drivers/gpu/drm/i915/display/intel_display.c  | 39 ++++++++++++-------
>>  .../gpu/drm/i915/display/intel_display_irq.c  | 18 +++++----
>>  .../drm/i915/display/intel_display_power.c    | 21 ++++++++++
>>  .../drm/i915/display/intel_display_power.h    | 16 ++++----
>>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +-
>>  drivers/gpu/drm/i915/display/intel_sprite.c   |  6 +--
>>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  3 +-
>>  .../drm/i915/display/skl_universal_plane.c    |  2 +-
>>  drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
>>  13 files changed, 82 insertions(+), 45 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm=
/i915/display/i9xx_plane.c
>> index aef8d8b7ea85..504599a20b8f 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
>> @@ -697,7 +697,7 @@ static bool i9xx_plane_get_hw_state(struct intel_pla=
ne *plane,
>>           * but that's only the case for gen2-4 which don't have any
>>           * display power wells.
>>           */
>> -        power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, plane=
->pipe);
>
>The naming feels a bit awkward. If we want to stick to the full
>intel_display_power_ namespace then maybe these should be
>intel_display_power_domain_foo() instead?

Yeah. I agree that having intel_display_power_domain_foo() is better
than intel_display_power_foo_domain().

>
>An alternative would be just something like intel_pipe_power_domain(),
>but obviously that doesn't have the full namespace.

I guess that's okay-ish? Do we risk clashing (not only lexically, but
semantically as well) with some non-display thing from the rest of the
driver? If not, I would say we shorten them.

I would prefer intel_power_domain_foo() over intel_foo_power_domain()
though, just as suggested for the longer version of the names.

--
Gustavo Sousa

>
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return false;
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm=
/i915/display/intel_cmtg.c
>> index 07d7f4e8f60f..6b8b20e101a4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>> @@ -92,7 +92,7 @@ static bool intel_cmtg_transcoder_is_secondary(struct =
intel_display *display,
>>          if (!HAS_TRANSCODER(display, trans))
>>                  return false;
>> =20
>> -        power_domain =3D POWER_DOMAIN_TRANSCODER(trans);
>> +        power_domain =3D intel_display_power_transcoder_domain(display,=
 trans);
>> =20
>>          with_intel_display_power_if_enabled(display, power_domain, wake=
ref)
>>                  val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(disp=
lay, trans));
>> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/d=
rm/i915/display/intel_cursor.c
>> index f31efac89e95..85d406335b6f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
>> @@ -336,7 +336,7 @@ static bool i845_cursor_get_hw_state(struct intel_pl=
ane *plane,
>>          intel_wakeref_t wakeref;
>>          bool ret;
>> =20
>> -        power_domain =3D POWER_DOMAIN_PIPE(PIPE_A);
>> +        power_domain =3D intel_display_power_pipe_domain(display, PIPE_=
A);
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return false;
>> @@ -746,7 +746,7 @@ static bool i9xx_cursor_get_hw_state(struct intel_pl=
ane *plane,
>>           * but that's only the case for gen2-3 which don't have any
>>           * display power wells.
>>           */
>> -        power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, plane=
->pipe);
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return false;
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
>> index 5082f38b0a02..6fbf1583ca99 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -852,11 +852,12 @@ static void intel_ddi_get_encoder_pipes(struct int=
el_encoder *encoder,
>> =20
>>          for_each_pipe(dev_priv, p) {
>>                  enum transcoder cpu_transcoder =3D (enum transcoder)p;
>> +                enum intel_display_power_domain power_domain;
>>                  u32 port_mask, ddi_select, ddi_mode;
>>                  intel_wakeref_t trans_wakeref;
>> =20
>> -                trans_wakeref =3D intel_display_power_get_if_enabled(di=
splay,
>> -                                                                   POWE=
R_DOMAIN_TRANSCODER(cpu_transcoder));
>> +                power_domain =3D intel_display_power_transcoder_domain(=
display, cpu_transcoder);
>> +                trans_wakeref =3D intel_display_power_get_if_enabled(di=
splay, power_domain);
>>                  if (!trans_wakeref)
>>                          continue;
>> =20
>> @@ -870,8 +871,7 @@ static void intel_ddi_get_encoder_pipes(struct intel=
_encoder *encoder,
>> =20
>>                  tmp =3D intel_de_read(dev_priv,
>>                                      TRANS_DDI_FUNC_CTL(dev_priv, cpu_tr=
anscoder));
>> -                intel_display_power_put(display, POWER_DOMAIN_TRANSCODE=
R(cpu_transcoder),
>> -                                        trans_wakeref);
>> +                intel_display_power_put(display, power_domain, trans_wa=
keref);
>> =20
>>                  if ((tmp & port_mask) !=3D ddi_select)
>>                          continue;
>> @@ -3950,7 +3950,7 @@ static void bdw_get_trans_port_sync_config(struct =
intel_crtc_state *crtc_state)
>>                  enum intel_display_power_domain power_domain;
>>                  intel_wakeref_t trans_wakeref;
>> =20
>> -                power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder=
);
>> +                power_domain =3D intel_display_power_transcoder_domain(=
display, cpu_transcoder);
>>                  trans_wakeref =3D intel_display_power_get_if_enabled(di=
splay,
>>                                                                     powe=
r_domain);
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 065fdf6dbb88..1b45342bc986 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -429,7 +429,7 @@ void assert_transcoder(struct intel_display *display=
,
>>          if (display->platform.i830)
>>                  state =3D true;
>> =20
>> -        power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder);
>> +        power_domain =3D intel_display_power_transcoder_domain(display,=
 cpu_transcoder);
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (wakeref) {
>>                  u32 val =3D intel_de_read(display,
>> @@ -2013,6 +2013,7 @@ intel_aux_power_domain(struct intel_digital_port *=
dig_port)
>>  static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
>>                                     struct intel_power_domain_mask *mask=
)
>>  {
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>>          struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
>>          struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>>          enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>> @@ -2024,11 +2025,11 @@ static void get_crtc_power_domains(struct intel_=
crtc_state *crtc_state,
>>          if (!crtc_state->hw.active)
>>                  return;
>> =20
>> -        set_bit(POWER_DOMAIN_PIPE(pipe), mask->bits);
>> -        set_bit(POWER_DOMAIN_TRANSCODER(cpu_transcoder), mask->bits);
>> +        set_bit(intel_display_power_pipe_domain(display, pipe), mask->b=
its);
>> +        set_bit(intel_display_power_transcoder_domain(display, cpu_tran=
scoder), mask->bits);
>>          if (crtc_state->pch_pfit.enabled ||
>>              crtc_state->pch_pfit.force_thru)
>> -                set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bit=
s);
>> +                set_bit(intel_display_power_pipe_panel_fitter_domain(di=
splay, pipe), mask->bits);
>> =20
>>          drm_for_each_encoder_mask(encoder, &dev_priv->drm,
>>                                    crtc_state->uapi.encoder_mask) {
>> @@ -3113,7 +3114,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc=
 *crtc,
>>          u32 tmp;
>>          bool ret;
>> =20
>> -        power_domain =3D POWER_DOMAIN_PIPE(crtc->pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, crtc-=
>pipe);
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return false;
>> @@ -3497,7 +3498,7 @@ static bool ilk_get_pipe_config(struct intel_crtc =
*crtc,
>>          u32 tmp;
>>          bool ret;
>> =20
>> -        power_domain =3D POWER_DOMAIN_PIPE(crtc->pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, crtc-=
>pipe);
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return false;
>> @@ -3590,7 +3591,7 @@ static bool transcoder_ddi_func_is_enabled(struct =
drm_i915_private *dev_priv,
>>          intel_wakeref_t wakeref;
>>          u32 tmp =3D 0;
>> =20
>> -        power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder);
>> +        power_domain =3D intel_display_power_transcoder_domain(display,=
 cpu_transcoder);
>> =20
>>          with_intel_display_power_if_enabled(display, power_domain, wake=
ref)
>>                  tmp =3D intel_de_read(dev_priv,
>> @@ -3617,7 +3618,7 @@ static void enabled_uncompressed_joiner_pipes(stru=
ct intel_display *display,
>>                  enum pipe pipe =3D crtc->pipe;
>>                  intel_wakeref_t wakeref;
>> =20
>> -                power_domain =3D POWER_DOMAIN_PIPE(pipe);
>> +                power_domain =3D intel_display_power_pipe_domain(displa=
y, pipe);
>>                  with_intel_display_power_if_enabled(display, power_doma=
in, wakeref) {
>>                          u32 tmp =3D intel_de_read(display, ICL_PIPE_DSS=
_CTL1(pipe));
>> =20
>> @@ -3884,7 +3885,7 @@ static u8 hsw_enabled_transcoders(struct intel_crt=
c *crtc)
>>                  enum pipe trans_pipe;
>>                  u32 tmp =3D 0;
>> =20
>> -                power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder=
);
>> +                power_domain =3D intel_display_power_transcoder_domain(=
display, cpu_transcoder);
>>                  with_intel_display_power_if_enabled(display, power_doma=
in, wakeref)
>>                          tmp =3D intel_de_read(dev_priv,
>>                                              TRANS_DDI_FUNC_CTL(dev_priv=
, cpu_transcoder));
>> @@ -3973,6 +3974,7 @@ static bool hsw_get_transcoder_state(struct intel_=
crtc *crtc,
>>          struct intel_display *display =3D to_intel_display(crtc);
>>          struct drm_device *dev =3D crtc->base.dev;
>>          struct drm_i915_private *dev_priv =3D to_i915(dev);
>> +        enum intel_display_power_domain power_domain;
>>          unsigned long enabled_transcoders;
>>          u32 tmp;
>> =20
>> @@ -3989,8 +3991,9 @@ static bool hsw_get_transcoder_state(struct intel_=
crtc *crtc,
>>           */
>>          pipe_config->cpu_transcoder =3D ffs(enabled_transcoders) - 1;
>> =20
>> -        if (!intel_display_power_get_in_set_if_enabled(display, power_d=
omain_set,
>> -                                                       POWER_DOMAIN_TRA=
NSCODER(pipe_config->cpu_transcoder)))
>> +        power_domain =3D intel_display_power_transcoder_domain(display,=
 pipe_config->cpu_transcoder);
>> +
>> +        if (!intel_display_power_get_in_set_if_enabled(display, power_d=
omain_set, power_domain))
>>                  return false;
>> =20
>>          if (hsw_panel_transcoders(dev_priv) & BIT(pipe_config->cpu_tran=
scoder)) {
>> @@ -4013,6 +4016,7 @@ static bool bxt_get_dsi_transcoder_state(struct in=
tel_crtc *crtc,
>>  {
>>          struct intel_display *display =3D to_intel_display(crtc);
>>          struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> +        enum intel_display_power_domain power_domain;
>>          enum transcoder cpu_transcoder;
>>          enum port port;
>>          u32 tmp;
>> @@ -4023,8 +4027,10 @@ static bool bxt_get_dsi_transcoder_state(struct i=
ntel_crtc *crtc,
>>                  else
>>                          cpu_transcoder =3D TRANSCODER_DSI_C;
>> =20
>> +                power_domain =3D intel_display_power_transcoder_domain(=
display, cpu_transcoder);
>> +
>>                  if (!intel_display_power_get_in_set_if_enabled(display,=
 power_domain_set,
>> -                                                               POWER_DO=
MAIN_TRANSCODER(cpu_transcoder)))
>> +                                                               power_do=
main))
>>                          continue;
>> =20
>>                  /*
>> @@ -4073,11 +4079,14 @@ static bool hsw_get_pipe_config(struct intel_crt=
c *crtc,
>>  {
>>          struct intel_display *display =3D to_intel_display(crtc);
>>          struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> +        enum intel_display_power_domain power_domain;
>>          bool active;
>>          u32 tmp;
>> =20
>> +        power_domain =3D intel_display_power_pipe_domain(display, crtc-=
>pipe);
>> +
>>          if (!intel_display_power_get_in_set_if_enabled(display, &crtc->=
hw_readout_power_domains,
>> -                                                       POWER_DOMAIN_PIP=
E(crtc->pipe)))
>> +                                                       power_domain))
>>                  return false;
>> =20
>>          pipe_config->shared_dpll =3D NULL;
>> @@ -4128,8 +4137,10 @@ static bool hsw_get_pipe_config(struct intel_crtc=
 *crtc,
>>                  pipe_config->ips_linetime =3D
>>                          REG_FIELD_GET(HSW_IPS_LINETIME_MASK, tmp);
>> =20
>> +        power_domain =3D intel_display_power_pipe_panel_fitter_domain(d=
isplay, crtc->pipe);
>> +
>>          if (intel_display_power_get_in_set_if_enabled(display, &crtc->h=
w_readout_power_domains,
>> -                                                      POWER_DOMAIN_PIPE=
_PANEL_FITTER(crtc->pipe))) {
>> +                                                      power_domain)) {
>>                  if (DISPLAY_VER(dev_priv) >=3D 9)
>>                          skl_scaler_get_config(pipe_config);
>>                  else
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/=
gpu/drm/i915/display/intel_display_irq.c
>> index 880eaed83cd5..1fd17aad3a65 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -1617,10 +1617,14 @@ void gen8_display_irq_reset(struct drm_i915_priv=
ate *dev_priv)
>>          intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
>>          intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
>> =20
>> -        for_each_pipe(dev_priv, pipe)
>> -                if (intel_display_power_is_enabled(display,
>> -                                                   POWER_DOMAIN_PIPE(pi=
pe)))
>> +        for_each_pipe(dev_priv, pipe) {
>> +                enum intel_display_power_domain power_domain;
>> +
>> +                power_domain =3D intel_display_power_pipe_domain(displa=
y, pipe);
>> +
>> +                if (intel_display_power_is_enabled(display, power_domai=
n))
>>                          intel_display_irq_regs_reset(display, GEN8_DE_P=
IPE_IRQ_REGS(pipe));
>> +        }
>> =20
>>          intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
>>          intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
>> @@ -1644,7 +1648,7 @@ void gen11_display_irq_reset(struct drm_i915_priva=
te *dev_priv)
>>                  for_each_cpu_transcoder_masked(dev_priv, trans, trans_m=
ask) {
>>                          enum intel_display_power_domain domain;
>> =20
>> -                        domain =3D POWER_DOMAIN_TRANSCODER(trans);
>> +                        domain =3D intel_display_power_transcoder_domai=
n(display, trans);
>>                          if (!intel_display_power_is_enabled(display, do=
main))
>>                                  continue;
>> =20
>> @@ -1662,7 +1666,7 @@ void gen11_display_irq_reset(struct drm_i915_priva=
te *dev_priv)
>> =20
>>          for_each_pipe(dev_priv, pipe)
>>                  if (intel_display_power_is_enabled(display,
>> -                                                   POWER_DOMAIN_PIPE(pi=
pe)))
>> +                                                   intel_display_power_=
pipe_domain(display, pipe)))
>>                          intel_display_irq_regs_reset(display, GEN8_DE_P=
IPE_IRQ_REGS(pipe));
>> =20
>>          intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
>> @@ -1887,7 +1891,7 @@ void gen8_de_irq_postinstall(struct drm_i915_priva=
te *dev_priv)
>>                  for_each_cpu_transcoder_masked(dev_priv, trans, trans_m=
ask) {
>>                          enum intel_display_power_domain domain;
>> =20
>> -                        domain =3D POWER_DOMAIN_TRANSCODER(trans);
>> +                        domain =3D intel_display_power_transcoder_domai=
n(display, trans);
>>                          if (!intel_display_power_is_enabled(display, do=
main))
>>                                  continue;
>> =20
>> @@ -1902,7 +1906,7 @@ void gen8_de_irq_postinstall(struct drm_i915_priva=
te *dev_priv)
>>                  dev_priv->display.irq.de_irq_mask[pipe] =3D ~de_pipe_ma=
sked;
>> =20
>>                  if (intel_display_power_is_enabled(display,
>> -                                                   POWER_DOMAIN_PIPE(pi=
pe)))
>> +                                                   intel_display_power_=
pipe_domain(display, pipe)))
>>                          intel_display_irq_regs_init(display, GEN8_DE_PI=
PE_IRQ_REGS(pipe),
>>                                                      dev_priv->display.i=
rq.de_irq_mask[pipe],
>>                                                      de_pipe_enables);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index 396930937d98..b206bef3d44c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -2476,6 +2476,27 @@ intel_port_domains_for_platform(struct intel_disp=
lay *display,
>>          }
>>  }
>> =20
>> +enum intel_display_power_domain
>> +intel_display_power_pipe_domain(struct intel_display *display, enum pip=
e pipe)
>> +{
>> +        return pipe - PIPE_A + POWER_DOMAIN_PIPE_A;
>> +}
>> +
>> +enum intel_display_power_domain
>> +intel_display_power_pipe_panel_fitter_domain(struct intel_display *disp=
lay, enum pipe pipe)
>> +{
>> +        return pipe - PIPE_A + POWER_DOMAIN_PIPE_PANEL_FITTER_A;
>> +}
>> +
>> +enum intel_display_power_domain
>> +intel_display_power_transcoder_domain(struct intel_display *display, en=
um transcoder trans)
>> +{
>> +        if (trans =3D=3D TRANSCODER_EDP)
>> +                return POWER_DOMAIN_TRANSCODER_EDP;
>> +
>> +        return trans - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A;
>> +}
>> +
>>  static const struct intel_ddi_port_domains *
>>  intel_port_domains_for_port(struct intel_display *display, enum port po=
rt)
>>  {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/driver=
s/gpu/drm/i915/display/intel_display_power.h
>> index 1b53d67f9b60..ee02bc7111c0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -12,7 +12,9 @@
>>  #include "intel_wakeref.h"
>> =20
>>  enum aux_ch;
>> +enum pipe;
>>  enum port;
>> +enum transcoder;
>>  struct i915_power_well;
>>  struct intel_display;
>>  struct intel_encoder;
>> @@ -117,14 +119,6 @@ enum intel_display_power_domain {
>>          POWER_DOMAIN_INVALID =3D POWER_DOMAIN_NUM,
>>  };
>> =20
>> -#define POWER_DOMAIN_PIPE(pipe) \
>> -        ((enum intel_display_power_domain)((pipe) - PIPE_A + POWER_DOMA=
IN_PIPE_A))
>> -#define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
>> -        ((enum intel_display_power_domain)((pipe) - PIPE_A + POWER_DOMA=
IN_PIPE_PANEL_FITTER_A))
>> -#define POWER_DOMAIN_TRANSCODER(tran) \
>> -        ((tran) =3D=3D TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
>> -         (enum intel_display_power_domain)((tran) - TRANSCODER_A + POWE=
R_DOMAIN_TRANSCODER_A))
>> -
>>  struct intel_power_domain_mask {
>>          DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>>  };
>> @@ -270,6 +264,12 @@ intel_display_power_put_all_in_set(struct intel_dis=
play *display,
>> =20
>>  void intel_display_power_debug(struct intel_display *display, struct se=
q_file *m);
>> =20
>> +enum intel_display_power_domain
>> +intel_display_power_pipe_domain(struct intel_display *display, enum pip=
e pipe);
>> +enum intel_display_power_domain
>> +intel_display_power_pipe_panel_fitter_domain(struct intel_display *disp=
lay, enum pipe pipe);
>> +enum intel_display_power_domain
>> +intel_display_power_transcoder_domain(struct intel_display *display, en=
um transcoder trans);
>>  enum intel_display_power_domain
>>  intel_display_power_ddi_lanes_domain(struct intel_display *display, enu=
m port port);
>>  enum intel_display_power_domain
>> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu=
/drm/i915/display/intel_pipe_crc.c
>> index 10e26c3db946..322d4ca7cf7d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
>> @@ -598,7 +598,7 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc=
, const char *source_name)
>>                  return -EINVAL;
>>          }
>> =20
>> -        power_domain =3D POWER_DOMAIN_PIPE(pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, pipe)=
;
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref) {
>>                  drm_dbg_kms(&dev_priv->drm,
>> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/d=
rm/i915/display/intel_sprite.c
>> index ab5bc8a08f0f..09f1b2f959f2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>> @@ -457,7 +457,7 @@ vlv_sprite_get_hw_state(struct intel_plane *plane,
>>          intel_wakeref_t wakeref;
>>          bool ret;
>> =20
>> -        power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, plane=
->pipe);
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return false;
>> @@ -881,7 +881,7 @@ ivb_sprite_get_hw_state(struct intel_plane *plane,
>>          intel_wakeref_t wakeref;
>>          bool ret;
>> =20
>> -        power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, plane=
->pipe);
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return false;
>> @@ -1216,7 +1216,7 @@ g4x_sprite_get_hw_state(struct intel_plane *plane,
>>          intel_wakeref_t wakeref;
>>          bool ret;
>> =20
>> -        power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, plane=
->pipe);
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return false;
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm=
/i915/display/intel_vdsc.c
>> index 6e7151346382..928fa69f65e9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -357,6 +357,7 @@ enum intel_display_power_domain
>>  intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_tra=
nscoder)
>>  {
>>          struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>> +        struct intel_display *display =3D &i915->display;
>>          enum pipe pipe =3D crtc->pipe;
>> =20
>>          /*
>> @@ -373,7 +374,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum=
 transcoder cpu_transcoder)
>>          if (DISPLAY_VER(i915) =3D=3D 12 && !IS_ROCKETLAKE(i915) && pipe=
 =3D=3D PIPE_A)
>>                  return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>>          else if (is_pipe_dsc(crtc, cpu_transcoder))
>> -                return POWER_DOMAIN_PIPE(pipe);
>> +                return intel_display_power_pipe_domain(display, pipe);
>>          else
>>                  return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/driver=
s/gpu/drm/i915/display/skl_universal_plane.c
>> index 110f66dd5cf0..4fe6fb64292c 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -925,7 +925,7 @@ skl_plane_get_hw_state(struct intel_plane *plane,
>>          intel_wakeref_t wakeref;
>>          bool ret;
>> =20
>> -        power_domain =3D POWER_DOMAIN_PIPE(plane->pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, plane=
->pipe);
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return false;
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index 10a1daad28eb..58b934907005 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -843,7 +843,7 @@ static void skl_pipe_ddb_get_hw_state(struct intel_c=
rtc *crtc,
>>          intel_wakeref_t wakeref;
>>          enum plane_id plane_id;
>> =20
>> -        power_domain =3D POWER_DOMAIN_PIPE(pipe);
>> +        power_domain =3D intel_display_power_pipe_domain(display, pipe)=
;
>>          wakeref =3D intel_display_power_get_if_enabled(display, power_d=
omain);
>>          if (!wakeref)
>>                  return;
>> --=20
>> 2.48.1
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
