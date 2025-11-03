Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C16C2E500
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 23:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6236510E4E2;
	Mon,  3 Nov 2025 22:48:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MB3UWwW/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 409C410E4DF;
 Mon,  3 Nov 2025 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762210113; x=1793746113;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=5sf4GpP98BamjyTZmpQER0qDXKyWHE/ggDp3YPIolP4=;
 b=MB3UWwW/HOnAVCVjIpdatNtcp+ahcyTUDThw9MyDKp3y3s54qNbtuULc
 Zrxvz71mE19T8BH3i0yTa/zqxi6LXnB3f3SmpDDfudQ50qyDENDGROEew
 2UZmutbQ/+exLlEaNIvkiQCnhQB4qlsWBy2m1IAntGpYzG9I3p8IubDQj
 7ziTNmev7sO2BlRIGTBIXPz+46YhOceDQp0v5hf97aKGgFuPJUGxBpnfJ
 T50gL+6kduz6Upy0gmFBwsarpTr5lat6bQtZT5FybbbshjI0Tcy272228
 fiwIyOw3WKB14iwzykBDacX/nvAAlcqc8aadugnd0e/sYjM3Alo4txg7O Q==;
X-CSE-ConnectionGUID: fgrnPJOJTI6jcqDWhcjBQA==
X-CSE-MsgGUID: 7Sgo3fPLTUu+NRtGMuKgpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="74974936"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="74974936"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 14:48:33 -0800
X-CSE-ConnectionGUID: /erXhEQCTWmrUh3OXOikxw==
X-CSE-MsgGUID: cQ9DOQqoRTma79UmepAbwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="187709091"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 14:48:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 14:48:32 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 14:48:32 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.36) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 14:48:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nfdxD3wbNaHAZEFnUhH7XvdMZRtQdwwVz3vzDrEy7DawVwKFJIjKZu32IffVtyJqcRRmsaLfeGXz/lVsi8R2X2F2S/ZVUlCg/oOoO8TfM2XF/DqqDwJUFMYNWG4cXfPyJZsHgNYRX3MD73ZOgf8Z+nuHumiYkW6UChvVPzW6Dh3X4elStog3owaIlXBsANJqivaN4GjZNtk07e9jJRfK3MYeXt/ne3DK4IqP1J73O72YeIu4W9Fm5/9/GXO4/od9CgEDOqOquqZvmELDO9qn0QDUURyOiTha5gWsWmYLldStGGRz7ooC2AbQejpRzLvrecs7Nmg/Kerei7I9OPromg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fdkrVatcdAhhnoZVHTkMDbjRYmgIsDCbah31+iug5OQ=;
 b=cuWseyLwPEALtekGl3v7LEpX8UEQVnnmxYp+A9cdUE2Ukf/MJhnXuSO4gEBcSFrIiow4YcftRJidKsa4i3bQf+J8XawSk6dnWTNSYEzj2MTRBQroT8ahCkqOWdkWoKMmBAGs4eKtoAFgStQVnZf63t6tDSIcPOncp+jn6k1M2zfDCxANO9YtSAWpRE9L24ZjyOO/PMwuIdPFfHE/w6xNC+PJb3aFNMjMgSuAIZ8u2dD2xqrefv4PJQJQNDbpTaqmus2c6bdEvgridc/P+I/Q7SUqvrakOmToCeSJqf1fD2s9+7NjTb5ofEfjAYYqrcoSPXncl3uV2U+f8KSyfbDILg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 22:48:30 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 22:48:30 +0000
Date: Mon, 3 Nov 2025 14:48:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 19/29] drm/i915/wm: Do not make latency values
 monotonic on Xe3 onward
Message-ID: <20251103224827.GB3905809@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-19-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-19-00e87b510ae7@intel.com>
X-ClientProxiedBy: SJ0PR13CA0147.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|BL3PR11MB6435:EE_
X-MS-Office365-Filtering-Correlation-Id: 1621a259-b7fb-44e3-6b91-08de1b2b1c1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?79yTAjMQEi6oNEEh4XTBnkL+fCsCKdzsQciGPkYtqAbVu0fbVeoggtr41y?=
 =?iso-8859-1?Q?CZ9UANdnSFEGwu2ukkKpUqRHFqE3jwrm7cfBk/7tu6EQcLx0c6Dhbk+r6Y?=
 =?iso-8859-1?Q?5SK7MY7OAgL6+g669uUUFM01UfGlZ5KzLEkjJNbRr+SXlnfI7isFZcsowZ?=
 =?iso-8859-1?Q?xZ/ZGCd3mqsLkigcpWP2AjmGPFXUl/AT+lmv6ixzSJti1fs1shJXup/dZa?=
 =?iso-8859-1?Q?uoRddY6KqDaD7FJRmCMslGspm5IaX2AIPMgx0GN7DRMARTrZMcDcQ5dJLh?=
 =?iso-8859-1?Q?mUUAhpAihTvoo0lw8Hg3jlEkwh4y8V2a6PsxbUwdAjrrJY1znPUxA3y6Xb?=
 =?iso-8859-1?Q?B/QSM+40gC1BykbRSBG3QG9Zcd14eK9wDk/HhEp9QaW5yPKA47xc7tye7g?=
 =?iso-8859-1?Q?UzMsZbe9OZ6ZKSDzl+JLJEyrlQ1SE9/p0wt2DaEFp7opdCenywG2UnmRxz?=
 =?iso-8859-1?Q?ZY0t5/5S8Hz9CjcNUStZbkL8HWbhsfHisgX9M/SLjmwiESLd3NzmN127ho?=
 =?iso-8859-1?Q?vZaWJpGN5S/u5z2swcT4MEi05gYXr0SZFKKMMGIpBtnjRtkbLuk+sn1sip?=
 =?iso-8859-1?Q?LStsmbdVPxnUQ+rOg0t5FsvMpRA9VItNBGcCCtKa5j9RV+frTCZcgmTgZA?=
 =?iso-8859-1?Q?zghitRGjWLVt6z07GIUUHSZ9V897FtmfM6TVEZPDr/mjCFJibFAFHG5b2r?=
 =?iso-8859-1?Q?9dkJZlIV+110zZksuNdF3McRbkbf2V6xsejVEArfK4pVT9EmLExFLgpJX5?=
 =?iso-8859-1?Q?lggy70S/JSkWA9kabo6nuATx8VPc7jbclHxRxPJ6xQhjkAIyYfl0stc8eL?=
 =?iso-8859-1?Q?HYF4QXOxuWus59bMx3OYFBvmZy7uplMNeVkE9MBvoPZRZZQSAXkHjBnj8O?=
 =?iso-8859-1?Q?SE71U74jHCbrs2bUl8Qzqi9i47xPYELQzzSOCgIaViV80WnGLH7ZsLCCoo?=
 =?iso-8859-1?Q?ZmBB8JU2dAdzeCncwulfq3CVi5OPVnvgCzPDk8e23oJ3QDp8c97OjHpmAN?=
 =?iso-8859-1?Q?79dvgR3sWk9n1HsyMXLwlqHgchbb7teff+dGBr585ebR8uGlBOCwp/BX4w?=
 =?iso-8859-1?Q?iTxapKGNIRYaR5p4trekI0UNjvJmNWmFAHoL19e1/BC9r+PtVE6Pr+Dtfv?=
 =?iso-8859-1?Q?i/5uJJrwHN+chCuNGAdIf1dbvYe52WwB4SHofESfkUsL8RvL1gNEf25lkG?=
 =?iso-8859-1?Q?ptDw8qPRcUFVCe1tkxnzxEGbnc98zqTZWIljfRhfD8d4iMsRImmahRWEGQ?=
 =?iso-8859-1?Q?c70GiwpdbgWYFrQKaN5mxXMU02wR29cDfDV8kl7vQpGLv518xRXoyyYZoS?=
 =?iso-8859-1?Q?bBuVupAcQ3y8lmAZlVG3U3FMIlWyTFpvuzvB4XsoB1YYE8lXIN72tYfqjA?=
 =?iso-8859-1?Q?mZxuj72AKovauM7bCvDQtYyIh7vLlxmPs2ac8GTQ3ptR9Ab7C8fKEN5qrI?=
 =?iso-8859-1?Q?QsGvRbwG9IEufL9mn+v36b82CUD5ZLWevPopVWkS7aaFb17X81dYS7aIrV?=
 =?iso-8859-1?Q?BmpGvRv8x6MsQjwdQqHoFP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?I90tY15W8grky2gKDGSDlgPJVbK/n6szyqJPLzrZOgp3mgVtEzvUYqXr9C?=
 =?iso-8859-1?Q?fxBCD1enmbt5/LYGRiohlI9YYzmuV5yq2kJ12S35v9Z84sPjKcF8TN4fCU?=
 =?iso-8859-1?Q?tOHk0tmyQToYpH6R7rmamLfPvWl/HuJiZEiY813YlpmaIZQAbuK1D6jvSM?=
 =?iso-8859-1?Q?yMTUvJb8TUt6DmGN3DBF2vMrc/HSpA6aRs5vG9rSff757b6dxtQz5kBOmk?=
 =?iso-8859-1?Q?UP4S0lVxQ7G7BSgMRaumq2gzRbPYIgRUyqfCNKcCTk6SdumDM+sTgHcyrK?=
 =?iso-8859-1?Q?ZMD+KwRC+U4Az+nUVBxZvbXFT4P8KTbmePbBEfEifMOvh6MI+RqGnh7skg?=
 =?iso-8859-1?Q?YwIMObpJfjVcFrzadX4AINMYp1VzmPeYAbeCGQIOUMs0+iH0pgXKcBPf43?=
 =?iso-8859-1?Q?7CtcSu4G3XQZYc5zESWJAuwYN7l0MRjtJgLmkeaztV3vGGKvou6I//Ugnf?=
 =?iso-8859-1?Q?LvxtkYO+BH81Dw4Bnt6bdeEZHDbWOkSpIOpskp/IPNKHg6/WF27czmIbye?=
 =?iso-8859-1?Q?gtO0KvaeKOCTG5HkmQQz/IEn92mX/NnlscQ2IlKIID+rwt2+2+707bkWka?=
 =?iso-8859-1?Q?qfSrthSY8/ZZ2FiuxgjIOQ+BMyUO8v2vS4kFxlbwq21HStEXu57S1/YgkJ?=
 =?iso-8859-1?Q?nduKSrobg4fwe0Wvi4wq59MybyCLplNm3waZ9W1863Ch74AqF3LKZEDJRH?=
 =?iso-8859-1?Q?3T9qPRvKSotEkwuc3L5giGDnstOMEuvhAED0soY0dDXJNSi+GiUY1NjWsw?=
 =?iso-8859-1?Q?SVKFZ9uXjeoeVaObk6Kkwu485Dru3Y5xryX6WPzZAiKiBzGXPiXoqj1Qp2?=
 =?iso-8859-1?Q?cVf0a08m1xcosS4sz79HhdBQTiKBc53uEK57laE9YtO+fREtjfdOnGEF3m?=
 =?iso-8859-1?Q?U/7ucouwruswq9qrztFP8+Pfp6JlOSZuKqVmI+X6nip9nBcv0lTmL53DY2?=
 =?iso-8859-1?Q?ohblDRv8CuqTaOeqKFe1BlQquJOU4SsrTDN97thFwyhxLzAr6DIbWEFs8m?=
 =?iso-8859-1?Q?sfcK8EEMcHoemuSHVBgsKQ7yEH2TGmfdNEWSpeYMJXSYXZ+uftgGAZQT/P?=
 =?iso-8859-1?Q?FZgD9D3/L3mZtFU6JCTP6TB6noilAATBc0feGE10EHip/4bLyDjswhK0/a?=
 =?iso-8859-1?Q?wW14onJzHh6uoSx2H5+oDaQBnK7WeKHaON0SrGaa+xEkrQh6v4gTGgTmsW?=
 =?iso-8859-1?Q?5tEMDn4Xu8zpBHKlp0t13w6/J9AzDVvz5ZJQhSIpHKBoHdaqEcJwhNkNuV?=
 =?iso-8859-1?Q?X3mm30YO0fTT30yG8zDfwBmQrm1bYJA46VOD6hPG41iEBamNHfJ7GiJayx?=
 =?iso-8859-1?Q?v6u/rk1MNfxXX3NTJMaDwenhKb7JoNyPLr8M1mhuS61upqQQqfAr8oQLCO?=
 =?iso-8859-1?Q?k8Q99r+MdM3+iijDoNGM9wexPxsgNHjqumRls5m8DimRQPuYv0RNEf+7rA?=
 =?iso-8859-1?Q?UMecxyWjbrbmbEwdkNCpQaNZ7SfS4f4EYXpmaOG2NY22EexqsFWEHeR1Ww?=
 =?iso-8859-1?Q?o5NQ1ayLi4TUvsuEJ+qWuQHOGp9b8po7DgOQsD9lUMD6ocyP99lYTIYQi8?=
 =?iso-8859-1?Q?2PXFmjy5ehNtW2HeocKZtPX6NOhVLZ4U/7H3Y+etH6/PimxmTX0qveJy7c?=
 =?iso-8859-1?Q?p2Wb/fl4dfm1hct/E0vaRBis7vNdz5weByDQMf8zDztkWHsI8uniFYDw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1621a259-b7fb-44e3-6b91-08de1b2b1c1d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 22:48:30.4060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BzBWNfPkHj546rzrkUIA8f8tyIey8z49E2UZsUwfLXKRsTJcgLqgK2QLhBS68o5ar7zVpIJfm4qnwj8JtAO6/t8ue/tS71ueINTIAwhfhZo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6435
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

On Mon, Nov 03, 2025 at 02:18:10PM -0300, Gustavo Sousa wrote:
> The Windows driver is rejecting non-monotonic ranges latency values for
> Xe3.  Let's make sure that we do not call make_wm_latency_monotonic()
> for Xe3 and beyond.

So is Windows just refusing to drive the display at all if the latencies
look invalid?  If we're trying to match their behavior and avoid
supporting bogus BIOS values, should we be propagating an error up the
call stack and failing the display initialization?

If that's too drastic and we want to try to forge onward anyway after
raising the error message, then is there a reason to also avoid doing
the value adjustment?  I think the goal was to make sure we weren't
letting bad settings go through silently, but once we've taken care of
that it still seems like doing the adjustment might give us a higher
chance of having a working display output?


Matt

> 
> Also, because of that, let's add a check at the end of
> adjust_wm_latency() to ensure we raise a warning if the final list of
> latency values is not monotonic.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d20c88ebe919..e13324af7afb 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3211,6 +3211,18 @@ static void make_wm_latency_monotonic(struct intel_display *display)
>  	}
>  }
>  
> +static bool is_wm_latency_monotonic(struct intel_display *display)
> +{
> +	u16 *wm = display->wm.skl_latency;
> +	int level, num_levels = display->wm.num_levels;
> +
> +	for (level = 1; level < num_levels; level++)
> +		if (wm[level] < wm[level - 1])
> +			return false;
> +
> +	return true;
> +}
> +
>  static void
>  adjust_wm_latency(struct intel_display *display)
>  {
> @@ -3221,7 +3233,8 @@ adjust_wm_latency(struct intel_display *display)
>  
>  	sanitize_wm_latency(display);
>  
> -	make_wm_latency_monotonic(display);
> +	if (DISPLAY_VER(display) < 30)
> +		make_wm_latency_monotonic(display);
>  
>  	/*
>  	 * WaWmMemoryReadLatency
> @@ -3241,6 +3254,8 @@ adjust_wm_latency(struct intel_display *display)
>  	 */
>  	if (need_16gb_dimm_wa(display))
>  		increase_wm_latency(display, 1);
> +
> +	drm_WARN_ON(display->drm, !is_wm_latency_monotonic(display));
>  }
>  
>  static void mtl_read_wm_latency(struct intel_display *display)
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
