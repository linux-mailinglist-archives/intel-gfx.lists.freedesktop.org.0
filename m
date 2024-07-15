Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9399315AA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 15:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDA5C10E07C;
	Mon, 15 Jul 2024 13:22:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m/J4HFGJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2116C10E07C;
 Mon, 15 Jul 2024 13:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721049770; x=1752585770;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=p1oxOoT/EVzyEZOo8l3tqiB/9GncdXsDWwvwxPuyU3I=;
 b=m/J4HFGJgCfHgT0iHnFWLc5RnUVoCcAVjXAuny/KTkhIOSU5XgtG4zF0
 HESi0oNR8667lFbOOzQuk7Aj8PrgR4+SqsYdulpHrB7Zw0CQ8et73rnLK
 qQFh+4UsfQRcaDl0uZR9pAw26H4v0GqCvXMwLlj1Jsi7RaOgQX7dYAn9+
 Z1vf05Y3Xh2djymZrYpD2VqZFXurMqSZf6ytEa+hqv4bicx+BjuLhqx01
 zMQX3WZnN8IxULIvt35A49dDRM8HqTxuGftc0v8645SDPDM9ogXDRzKUR
 yZLCjLGZ+4ykew/n0QMgHedawlrhXrFcdnAsx4zenQPNdr75eQ2XeupFF Q==;
X-CSE-ConnectionGUID: 1Qz7wAc0QkODeMDpbAuMcw==
X-CSE-MsgGUID: 7x3X8E63R5C5pmpZimShGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18043312"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18043312"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 06:22:49 -0700
X-CSE-ConnectionGUID: DYPKRXB8SPacGSQy7fr/Kg==
X-CSE-MsgGUID: yRUUZu/UQqGhVTOVAH6MNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54791545"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 06:22:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 06:22:48 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 06:22:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 06:22:47 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 06:22:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V63BWKpcbRdG8ipXMiBjpm1ruRwVSM5W4XUyf0yzi8AcswEb2zLwebnWipn+Pql4EuNMQhKMoDjdeQc/JU+MK/8IZojZorkB8VYQZ+ZlbT4C4apR3yEPYyGE9mjDoExn3cbQB31LFW1LR2wC8F697T6P1kHIk2LINyNgarK8WL56d7uwbqzil6GYjn6w6QnHRU5LF65gbUlfvYNevNnJDyU+shQBlvqIWReeAEoQoC0Y/7X2RSEQIylbithC8sXStvx03wawI/AFEhu+GTG8BWLhcEMvihNhZj7sf/Qjf48wxNt5e9TXQZTGXgp5tQcbZgWy3o4bRP+KUE+WDCsYpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F6S/ZDZfaeAQpc0EXy3TBmBeMx9kOVA26g7TsINqy3E=;
 b=FAniCCEAcpgY6m60XedUiachTWqXCBY5IayY+dp+/TmlGNX99YFLu+357rUp2333UuiLZ2W58T/LWfWgJQfTknabsRUyPuTJVQ+uDxOGJHboCYalwsMkj9eaTvefPiO7+M+1XAYtTfFUQayZT2qjm2wQARUsVSdXBQ6z/l8IgkeWde3N7HjJ5ZPi7FhX4ohJCHUq8xbmu/dxb/bO1p8SchI72Gc+4ZIghE0ciC+GzOxj2uDEvM9FN35jffvpKd0yh2eO+oq6lMw/zmL5wGDXiFGwhT5D7ob68bxD2RMtscgzlpEHpJZBE2x7Z849EamZpUPuA8C+tNfBRVyMV2pmxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB8266.namprd11.prod.outlook.com (2603:10b6:303:1e3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Mon, 15 Jul
 2024 13:22:45 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.7762.027; Mon, 15 Jul 2024
 13:22:45 +0000
Date: Mon, 15 Jul 2024 08:22:41 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Uma Shankar <uma.shankar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <daniele.ceraolospurio@intel.com>,
 <vinay.belgaumkar@intel.com>, <matthew.d.roper@intel.com>
Subject: Re: [v2] drm/xe/fbdev: Limit the usage of stolen for LNL+
Message-ID: <2zztgponfm2wakfvjxaq6vdrhu2eqhgl5e64myn5ilildfvboq@rbwzlluioogi>
References: <20240714205659.3672665-1-uma.shankar@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240714205659.3672665-1-uma.shankar@intel.com>
X-ClientProxiedBy: MW4PR04CA0253.namprd04.prod.outlook.com
 (2603:10b6:303:88::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB8266:EE_
X-MS-Office365-Filtering-Correlation-Id: 7fc6f05b-5d75-4faa-a32a-08dca4d1367b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YHmZRXTuLh/W1EBYj0d8TpmfqV4noWsh/vP2ytcylworF4sAq3Bow0L7MPTz?=
 =?us-ascii?Q?nhg/lePxmM41cbiKct43PTTB+20kaq2L4768Ti7GQaqKSjDzfMrbHXXIgm8f?=
 =?us-ascii?Q?5JSvum068nsJvDIPsdvK0fkFWimFJ+ggzfW9NAke61KMli67UYqqaDxsLRBy?=
 =?us-ascii?Q?CadQdVX/dD7IPwOW2iUGcUY7DbOkjdIcWnC7KEvB+IZgXgAcv4COD6N1xOFb?=
 =?us-ascii?Q?+rz6vnE6aEM7M1tuJVIBMASLLri8syYEw1c/cZZYaAlOm4IKm9jeZeT4tBnS?=
 =?us-ascii?Q?UojEnBnLGb0nCAyjzjYK+TgjHf4KlTypHFUo8Z+8eYrUlLCbwn30oL8GACzy?=
 =?us-ascii?Q?wy1a5r+FvPIe3PBXw5nWJSzZkpet/X77DaVuPIddZgGyJ+7JYyownkN39lXY?=
 =?us-ascii?Q?tz6Xrv76xX/eMj3cg23ax63QeY/MtgtA6WHiY389b+grFs5ZILKIRWie65h7?=
 =?us-ascii?Q?ccDzpVCKkU7manDih0DoSXj7FIdngtvZbhY5uGCJZbQXqJlth37VBAHuc1U+?=
 =?us-ascii?Q?YaW8Nlr5CKDQ72RYRsDBy+BEk5XVCKH4OMivqcbqGMSi3xTNFeA/LC+qXzL1?=
 =?us-ascii?Q?3ACwr04e0GZMTzwWVpnriMld0A5zoSSKF7YP55muMPx8skHFQV/jNmPmPm3N?=
 =?us-ascii?Q?ISJ+X0cQvck2eP5BXy/g19tHIpfXiiBsPU9rTi2feKQuDsiCBuFcC9gBP1HX?=
 =?us-ascii?Q?SDgImhfOAMNH9VWY+PIXmvSZhXak68QXTwzMLTFUW8Gt3X/JHH2KcsrV/ihM?=
 =?us-ascii?Q?VP8C+08p67J6l21hBIwBWjltg0R6I3aafchan5ey0xRIPh9DafypcmB7XAi3?=
 =?us-ascii?Q?bhh0bbRkQAlomUWB8PGYem9bgFqfqn1/VG6Z2wbsv8R9b78q2yhWe9ypofzH?=
 =?us-ascii?Q?iUP3jr/GU3jyj/Zl4tnPazVT6sM8IpXoxjiP+5soMyX1VKNZ/J6C6hZbZgso?=
 =?us-ascii?Q?3NO7ULPCwUu0A/sRLulQiFvoBaI6+mBUvUs4vIyZv5QzSWxDipL5u9LsmJYz?=
 =?us-ascii?Q?3Fz/xGN8+q3Zd9ce7ex9E0kCVOfbjyjFR4afdnBKrj/1PeDsMB6BRCEDD9kk?=
 =?us-ascii?Q?RyXFixtPw27TV2zPWjNSrVgBZeYPnTs3lQpdnkVcLUumfzjMGfu8Cic/COz9?=
 =?us-ascii?Q?W26BkVEiLn92gMWw7ZZTTYqSEtWpOLyuVPE01NThnQausUvcHbEJ8T4NhSfl?=
 =?us-ascii?Q?JYj2Gs8shHZrv+dyrW5vu9hgmoLS7RlW4WnPpa66hD+Vz5J+EjCVXO7NCyha?=
 =?us-ascii?Q?+cbm+FFsJ6RH20v0eW6sc625MW5rmF2XX1T8JBGgVqHrRWrZyYsWAHlAbLr5?=
 =?us-ascii?Q?MdZy6BZYStM/AGHcye2+n76R8u2C8Kekdvh+c0Gn8MmCSg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TevyMA5tcbVZLWB5mdDDGyx31CyEp8u5l3RD07Qli0bv6EL9hDAPJaXo9EW0?=
 =?us-ascii?Q?FNkE6vAj9ZuONUQRlfVM+8QliiynIMvjSbPJwYb64EWKItRPlNoWmnQ2q1TG?=
 =?us-ascii?Q?/qOMQ3ZytX6lfhSym1ym/mX7IV2J3NDb4IoP2bMe1uuFgtCamJjqbDf+CZ8I?=
 =?us-ascii?Q?3ASFHp/Wy2taze0zhk/8Xb+CeJe/Qrsa2LMwdQZmhYY/85nrPqZxIoVPP/PN?=
 =?us-ascii?Q?sxmBeq73wOSzYiDSTYy+uGtZERn1Rxl5OrUjPWvlR+2WGnf3qB85eH4+eNHC?=
 =?us-ascii?Q?/bwcXTaIaHqjiWTquvgUqzqhRhWCRPasTYjgURCgKQhG9DCrxJF2u7wXyqGN?=
 =?us-ascii?Q?9+oJU1OMXBOK3N9mZlQNNxh0nlsQyhv9yRl6EyiyITTou52CS4J5NlEWr64K?=
 =?us-ascii?Q?5FHN2XjQYOtxxBL2K0ij7P7UwHl7idj9IkuUcUbD2//pnc3C+Zo6z/uzG75F?=
 =?us-ascii?Q?LbzVr5YB0BGuUyEZfFzifx8/SrwoRzNM4sJ50nY0K1FoS+QdKiao6VO4j54h?=
 =?us-ascii?Q?Dxak5y/P5RDQCNeiMfoLEW44brIJJTjSGXpQszpeSPKjhp7cJIjVuXP4gqbW?=
 =?us-ascii?Q?gyqOZda94RqiL017YWoQWyVi1mmRQJyoArB2Ppm8kW1Ga/q8cJ7BdP89sriv?=
 =?us-ascii?Q?mn+sYYyqiQUqxkW+TMx2XBSFeB0/6mvC7CoWhMUJXRK/HyAVpeDU9lW1Dc26?=
 =?us-ascii?Q?6sKA9/x6R7hnWsKR0Et+ndv/h3NaVIFpOzJQXDTxWemqQipN1QBH2x+W5tBe?=
 =?us-ascii?Q?PxTceQdIJUGb6Uw6+KI43C6QRrzpZo1D2NXl59e5UVu6NsfGy+2QKcW8t/Sb?=
 =?us-ascii?Q?JhlDJ1zZeUZ/zKWAmLATm3RhRKKVEI39wUxYwEjnIFSFjLTa57a46R1z+hua?=
 =?us-ascii?Q?+17HGzLnUXbBhGViEnRsHG0TZqOxSpXrAiJFUVN3mx8EJ9urquptMfLygjIe?=
 =?us-ascii?Q?nwgsX14hJ2WA6TobV6pwMrSzNblLNR2fsJq4hS0iMz4z1MM+KiMc5/ADmGM+?=
 =?us-ascii?Q?Gp+1DA/r3aA9DOwx9vrgehv2IBuGw3SVltLJHHSMDkkmxbz6OV5W5VslwQC4?=
 =?us-ascii?Q?fKW9S9dcNZCRhORPf1jH3lhtjw39Q8icKvuDYpaGJsXb/9opgSRINYIIh0Je?=
 =?us-ascii?Q?G9EHTP7hBp54w4M1zlaMRmIjS62GoAXJ9YJVDFbCt00Qu2UwJemigriYdtHO?=
 =?us-ascii?Q?YMTmbwAdBju5LHMBR7KWEBoWcAOf7S5P69AOGmzXOsuHzYWVr194yaUrmIWG?=
 =?us-ascii?Q?VMzB6eGR4wKEtdOKEmqrivFZyVKpVXfJamltjXKD2k/85BrsA3rMY1nDKShz?=
 =?us-ascii?Q?5axd8vX5yvpjm9U2axjKrPEKLtaEn25lyIicTwZkcGd60rtsDFImM45H6xS2?=
 =?us-ascii?Q?XMCtqa00EfkHZPNquohmHmrEPflOe4+3kJ5AC6XKXsn9lZqpFNYacedMM6zj?=
 =?us-ascii?Q?qP6AT31XeIcZQ/oCzG7+hyUi5DxkDeCfpUaoaJt6izVgWUiBCsOVtbWKc9zZ?=
 =?us-ascii?Q?lnCdfqzt/lQbLl8uuTzLKtwVjN9EWl+/j5d9CSy7mISEPhAye7kJR0aHsnd4?=
 =?us-ascii?Q?EEey4I47RH5PfYOg8OUga8f1gqyi55Huh/HF3XMjhW62jGDx13OuTQUbx1g4?=
 =?us-ascii?Q?SQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fc6f05b-5d75-4faa-a32a-08dca4d1367b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2024 13:22:45.2513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: huY7xibA0m2SQz2LPI+W+vyxAVQsJLkysmWTkA7EmvPRbanVknG0Kib4tzKY2R7rCp/exKX93ec/6mXfm04juqrg/YVWDnj3Rr6GSg8YJ2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8266
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

On Mon, Jul 15, 2024 at 02:26:59AM GMT, Uma Shankar wrote:
>As per recommendation in the workarounds:
>WA_22019338487
>
>There is an issue with accessing Stolen memory pages due a
>hardware limitation. Limit the usage of stolen memory for
>fbdev for LNL+. Don't use BIOS FB from stolen on LNL+ and
>assign the same from system memory.
>
>v2: Corrected the WA Number, limited WA to LNL and
>    Adopted XE_WA framework as suggested by Lucas and Matt.
>
>Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>---
> drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 20 ++++++++++++++++++-
> drivers/gpu/drm/xe/display/xe_plane_initial.c | 12 +++++++++++
> drivers/gpu/drm/xe/xe_wa_oob.rules            |  1 +
> 3 files changed, 32 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>index 816ad13821a8..9c70c9158108 100644
>--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>@@ -10,6 +10,8 @@
> #include "xe_bo.h"
> #include "xe_gt.h"
> #include "xe_ttm_stolen_mgr.h"
>+#include "xe_wa.h"

missing newline

>+#include <generated/xe_wa_oob.h>
>
> struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 					       struct drm_fb_helper_surface_size *sizes)
>@@ -20,6 +22,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 	struct drm_mode_fb_cmd2 mode_cmd = {};
> 	struct drm_i915_gem_object *obj;
> 	int size;
>+	bool wa_22019338487 = false;
>+	struct xe_gt *gt;
>+	u8 id;
>
> 	/* we don't do packed 24bpp */
> 	if (sizes->surface_bpp == 24)
>@@ -37,7 +42,19 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 	size = PAGE_ALIGN(size);
> 	obj = ERR_PTR(-ENODEV);
>
>-	if (!IS_DGFX(xe)) {
>+	/*
>+	 * WA_22019338487:
>+	 * There is an issue with accessing Stolen memory pages
>+	 * due a hardware limitation. Limit the usage of stolen
>+	 * memory for fbdev for LNL+. Don't use BIOS FB from
>+	 * stolen on LNL+ and assign the same from system memory
>+	 */
>+	for_each_gt(gt, xe, id) {

why do you loop here, but in the other path you use main_gt of tile0?

I think at this point it's pretty safe to just do:

	if (XE_WA(xe_root_mmio_gt(xe), 22019338487))

Also, no need for the comment above, the commit message and WA
documentation is sufficient.

>+		if (XE_WA(gt, 22019338487))
>+			wa_22019338487 = true;
>+	}
>+
>+	if (!IS_DGFX(xe) && !wa_22019338487) {
> 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> 					   NULL, size,
> 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
>@@ -48,6 +65,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 		else
> 			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
> 	}
>+
> 	if (IS_ERR(obj)) {
> 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
> 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
>diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>index 5eccd6abb3ef..7e93ddad6df8 100644
>--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>@@ -18,6 +18,8 @@
> #include "intel_frontbuffer.h"
> #include "intel_plane_initial.h"
> #include "xe_bo.h"
>+#include "xe_wa.h"
>+#include <generated/xe_wa_oob.h>
>
> static bool
> intel_reuse_initial_plane_obj(struct intel_crtc *this,
>@@ -104,6 +106,16 @@ initial_plane_bo(struct xe_device *xe,
> 		phys_base = base;
> 		flags |= XE_BO_FLAG_STOLEN;
>
>+		/*
>+		 * WA_22019338487:
>+		 * There is an issue with accessing Stolen memory pages
>+		 * due a hardware limitation. Limit the usage of stolen
>+		 * memory for fbdev for LNL+. Don't use BIOS FB from
>+		 * stolen on LNL+ and assign the same from system memory
>+		 */
>+		if (XE_WA(tile0->primary_gt, 22019338487))

just use the same xe_root_mmio_gt() as suggested above.

>+			return NULL;
>+
> 		/*
> 		 * If the FB is too big, just don't use it since fbdev is not very
> 		 * important and we should probably use that space with FBC or other
>diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
>index 08f7336881e3..9b08fedbf85c 100644
>--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
>+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
>@@ -29,4 +29,5 @@
> 13011645652	GRAPHICS_VERSION(2004)
> 22019338487	MEDIA_VERSION(2000)
> 		GRAPHICS_VERSION(2001)
>+		GRAPHICS_VERSION(2004)

This will end up matching the graphics GT in LNL for other paths it was
not previously taking. Looking at the code, main change will be:

drivers/gpu/drm/xe/xe_guc_pc.c:pc_max_freq_cap()
drivers/gpu/drm/xe/xe_gt.c:xe_gt_sanitize_freq()

about the freq handling for the GT. And the change will be wrong

I think we could just make this a new entry with:

	22019338487_display GRAPHICS_VERSION(2024)
or
	22019338487_display PLATFORM(LUNARLAKE)

I like the second more as then it doesn't matter what gt you use in the
code. Matt Roper, thoughts?

Lucas De Marchi

> 16023588340	GRAPHICS_VERSION(2001)
>-- 
>2.42.0
>
