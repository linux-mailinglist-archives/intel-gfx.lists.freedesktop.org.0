Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Li7NZplgGlA7wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:51:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F46C9CF1
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E541310E3C1;
	Mon,  2 Feb 2026 08:51:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F7P9S/9s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA7D10E3B7;
 Mon,  2 Feb 2026 08:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770022296; x=1801558296;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Cr8x89YkB61UH74clDI9wdiQ+ghDtJ0c+qJ3+74SCp4=;
 b=F7P9S/9s9P0c0JIlTJ49YbIhtiFzdt2lQT2CBp/qMvVElama5onTn/Vq
 L+np+pD16QqkbtqLPTHB9LmD1RA5pFZ1uthm1zwXcAxSwWh/kd0J/RlUZ
 fmE05Aa7G3zZ+zgEUzAopExC6gfb1w63RBPNBMrlIVjrjFl0FgxcHAmPW
 l7RycQwoUMcCklMdKNPadWH4HCiQKkOkjp8YRt3QnHOej1XI67bLCFfTp
 g1osD9a05IVx+MEi1IEG+GfPDWBR+Aly28fHBJrrY99wRWci/pq48SD4t
 AxO+yFiOdbrQeY+5gOv9kGiGkqmoG7Pys9F7iZgFNUs3JQsxg/j6A+Exf g==;
X-CSE-ConnectionGUID: P+2wMbYITVi+kMVfBqojXQ==
X-CSE-MsgGUID: NA5wBwFzQmKID4MSCsvISg==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="88597450"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="88597450"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:51:35 -0800
X-CSE-ConnectionGUID: xp7UDdKfSSiOtr/awcn6JA==
X-CSE-MsgGUID: yFzUxy6ZQL65U34/im0meg==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:51:35 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:51:34 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 00:51:34 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.39) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:51:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OOf0PDW9faqLkwG+awrRFGsdd9+rnIi8aTDtM5R3yCz5fSHpSxSPmX2iNhDi89mKPk6wYpLnchp7vAxk7uhl8n2W4v/up0OprLQtLTXr5X2FzvW6PF5HDQ4VChPHupkDhPwoQg53BsZ3XrPxKBsPXxvRqOQf4SY1lHIc+bmWD0TrvwMMUu+vjsWPSJcpLzksKRs1lyQtOLnQguszg/o6sEG7ZKxmdWswjHNXUTFSi8Sa3JbvoFh5+/1Hf2mdRYcr7/HygQ6DNNNeTACMtqZETe0nag9pZMUujv9AxMLo20V92cJ360fdaiONzb8AV6A9VazDrTaEvqbGEQUyuip+Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Croxxf1+CvvPS8XVqLhbjU1znpQlb5tDIh3pXfUENE=;
 b=vqqrx2Lq2xsavarecx5f9gYwHYg/6m4A1teh3s/9dsOfq+F9q6uiyx/S4HuxkUxjvuRtZKdrp7x/55dSaAZHjEpWkjNj3VkT1yZkva1qB+SR/2fzhei0jaaUS+7akMsPz8MRX18z6Cexmc+cxm28W3eP5Hhk3rEv3D0imR9KVUTmKgL1H779G/8aKqVz94TcwdOwW8s+6ssUkjS/EBq0jxf++AVG180rulG/wqwR0SfXl1vEWQamoRhKZuaSHuNpJu2qSPdX6bN6Mk47B6AhLqRn3pNA2fRS7H1ecZ2iqTpZCoKaENdg7glLDCsKWQjf/cPSSx3MqjRbZZ94uG0bVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.15; Mon, 2 Feb
 2026 08:51:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 08:51:32 +0000
Date: Mon, 2 Feb 2026 10:51:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 15/17] drm/i915/dp: Add helpers for joiner candidate loops
Message-ID: <aYBlkMPdsK5i5t08@ideak-desk.lan>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
 <20260130081812.32087-16-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260130081812.32087-16-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0002.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:273::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CYYPR11MB8429:EE_
X-MS-Office365-Filtering-Correlation-Id: 3147baaf-0d28-4b2b-b975-08de62384394
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6sK0ipJS9VTCj/Q8LQJkOUlaHSF9FMJPeDz0NuBsaDL8nMeC+UlzVc7tdeEm?=
 =?us-ascii?Q?gQo8AvRTn/YVPjwRMuPeeRdXB2HX4AhVJ7kfXz8FT+Pqkn8K9MrT4E4cwoNC?=
 =?us-ascii?Q?Yqq5ojAlPU3bCC329dSFGVJCSFY+FuIj2D3pmZBMK6n9tEeh1wtQQfUciD7D?=
 =?us-ascii?Q?A99OxgF/fc1zltpGs3NWjkyVILbvoWekB+R2pICi2nbTWCcYu9eoispQ1aD0?=
 =?us-ascii?Q?JELTdQf9SfNh4lAw5eIhxu23Xj/tL6ylzl4MHHmVfdbi4VywTeUQlOWlYTu2?=
 =?us-ascii?Q?rbd/Dm8Cp6ihamHJIx9rkEt4KY6J22DjndT8CzM54EYAawn8rVRadognKXjg?=
 =?us-ascii?Q?ZaJw3++eYZJ2P0L3RLlc1XJAZtjaefnZwMOE+eZU4avBc5TDVCzi9oPljNJb?=
 =?us-ascii?Q?nxP0quNC1G74rlwZRSFKg8GKUgxrjR2F0xIIkkljdcbXt1FQN/mi7yatHNhr?=
 =?us-ascii?Q?PFZnEk6I/b8WiJuHiwzToKaddn9CWVNSydVzyOyzVlWtEWg84zkVmrOtn7TP?=
 =?us-ascii?Q?JqZkGyFBRe0/e40+nw1u1GdIwc462zsRp3Xy+VRh7H9dbVxxgwaPlJn8kZRx?=
 =?us-ascii?Q?sRTC5YvH1FywcQVoHpcc1/FoTxxTFsI/yMYJFSm8F/5U52wGPXwnyvo38MXV?=
 =?us-ascii?Q?rkbv4GsxMdReCdMzFWj7oJ0wFIPjAnfBPsMHim+PnurXtYh9cobduxePbWyW?=
 =?us-ascii?Q?l4DjY1+15zGwcIVXT1oBF/w+fXyZCrU/20ePA2GsFJ1VEr6QXuvnwb2qeHPj?=
 =?us-ascii?Q?/0KEZL1sib/M9OQCJOVWu71O4kcxqmjk8ruR53cZHPMjDnRsTbEhp0/84dKd?=
 =?us-ascii?Q?EJ2FkYpqI9LtFxWOvWxS7qfPYSb0/xmFewzt8KlRv8ZNqdKF/X+CSBNJaOz6?=
 =?us-ascii?Q?UVFPbmZCRgRXQ1gJDiq/o1i5R9ysjAEWchFtGuMPruyprvdHoRm3388Sd2m6?=
 =?us-ascii?Q?e+sj0gobF9RGMZDTKMhf4JNfhYK1/yCGqicIImQw+1AV6fHsBZeSTgzqkA34?=
 =?us-ascii?Q?xTCb6EA+Gnkb1MKfA3YRwp7c8SXQw8RNRpBr0mlMUGF8105i84BStZz2ntwf?=
 =?us-ascii?Q?mM24vHI9TQxVrqVuAMIQs1BT6n2syWTMTUjIvLqqdEbkY3b3OXs7IqldxDvH?=
 =?us-ascii?Q?d1OGCTnxQ64rVMPbHHud621Z5jvlhEsLzUQ/XYpOGHlbfDy9cPsGyBgr54Z6?=
 =?us-ascii?Q?BB4J1N7qcxjGJGvDjhOPikFrUaQUiN/ttJi7QouGcvGlaiK8VZNZwNKGMerF?=
 =?us-ascii?Q?p+ijul1gppWRfaeID9inrSx5PinB9+rGwLx1+xvRwRcczfr43mZ9iLZtyMR5?=
 =?us-ascii?Q?bhKDmOCq6dzP+pqchFxbPfljkns8h4uQL10CUaG4G0oHfZs0sA+zQffjrZw+?=
 =?us-ascii?Q?bZbpwRSsdeLt7Q75spT0hND/bIqlLZOvpmdabrDBqZ+jeON9c+nD72a11isv?=
 =?us-ascii?Q?3p3bsejxF1+gv7VHVg07x8b3wkYjst0HFBB6fGXZVVy0FxLK1ebLCNvqOP7V?=
 =?us-ascii?Q?yednk6wLSzDii2DH/9EI5quVvXIpnzxhy43ULx2NcfFJECmzenvgyCUJFKSl?=
 =?us-ascii?Q?xGcpxF+0f/6+DLRTcQ8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Dndvq1XboIMXY8KPv5KsSQlIig2CztaihgB03lKV0C5MPaROrlIbG5NC8DPU?=
 =?us-ascii?Q?okeHZGxWC7ceLiGsZ23wKgIAfwuP92un45pwAgpP/pVrRKvGPq2PmaKOh1yE?=
 =?us-ascii?Q?GVPHPQ9PYSHrftkpAyzOXur7UD5JbUd2/7c/eC57L8ztWyoCfHzl0VWRk6fW?=
 =?us-ascii?Q?1byHyy8ymEs/PifeeXzAEqBDIf6PHKhyrrXNWWwZSwRpqBNWa+yca5iTnByS?=
 =?us-ascii?Q?3Wslr877nBcnfiWrzIqf8UyqiZopeu4HJSKZUBjQ5+dd3y93pCAtJGJCdpGv?=
 =?us-ascii?Q?zc0njEZNIKZ295t1KSgNGcsmA13uo3W6OgtLAwvOEuXFqAfa48g+DJtx94HL?=
 =?us-ascii?Q?tIZgH2fwd9ZZnFuYJOo6vdB+KyD1xl2HGYOexHJ5txrHXOGIikL1ouL6lj66?=
 =?us-ascii?Q?drH04Yy4MyGby4mvgEvPxVUETfEl7vmgZT41PA+WRBdJz2/pEK/NM5IjyP+5?=
 =?us-ascii?Q?QgpXfFTThcx5rZ2XwzX0+0JkybqVImfqZ5gBbShyK8UD7Okze5arU0Z5CRIC?=
 =?us-ascii?Q?p1zvsUFVcydajC/T9uZRbMfnt/frYE6CY3pS732RjrUMHhezGnqZyOkX2jWP?=
 =?us-ascii?Q?XT8u0Z7B5RKDpiWwSXeMeLRjJWp6m4UTLu+bzYSpPbL+jzrBy/tH4UeR3Qw6?=
 =?us-ascii?Q?dy/Oo6XUVO5KcJ/xaa6RmIbDxlFVfjvooqags580MQGtii5Q4y1nS4iZPvng?=
 =?us-ascii?Q?51aSWPR1d0licjcMXvttX6qG0TUjoLkU2NmtTYXWLYxMYBLSFciOMehW/Jt8?=
 =?us-ascii?Q?soKIdHdg4by2zGItYdL77MoZb6HQ7Eg70IxJEZDC1wzHpD0flkDP2XI3S6C1?=
 =?us-ascii?Q?S4lS/aRpnPlt2IrBXs2xi3ree3uwC6lOPeaaOSfGD8WAmbFMES187kGZX6pu?=
 =?us-ascii?Q?x1d93tnMDXeCATmQR6+aPinPNWiOP7bMPGjrXs0TX1uq4GyQiuZoU40OCTbN?=
 =?us-ascii?Q?Oww2AgK7ODRHWL56GjaJ9wNxnDwWGUVQR49A8+1RznJWGJN+jneoRvcbb6si?=
 =?us-ascii?Q?9RCQMsOH7hNVZ1N86a2K17SMbj4O4QuO0S4T1SkPYyXVQGWlK4yDWdNYJgiT?=
 =?us-ascii?Q?OpPIGkXhWtJ8XaJ/igfd9MA4PVo3D1It8KlM6ZL4bkh/mYDJEw608uwELm9Z?=
 =?us-ascii?Q?vPskL6i8NJ2Fmi30FJiqVzuVNiZHaHHEEUh8/Y20mzKq/ViFxZKnYS1jAbLM?=
 =?us-ascii?Q?XIpovVC2p+B8eJPTbRsbKLgdQ9tCfijxp35G8geMFhks2KelUM2zjs/AIsdF?=
 =?us-ascii?Q?VwJGm6fnBK1r3UOIzqnL6d+Gw9G22k6oIC1pUx/HIGjDU9LpLvUinlOYkGFy?=
 =?us-ascii?Q?gN8GjwzSQqzzyhiKdXwUrtg0DdYIkZWaCMBBEaY8M6We+Q78ew6ObCcanzYL?=
 =?us-ascii?Q?+evDovCKtTGi5gmT655jGXFLXr4QG9b4J8oSGw2UDwXhtPnrUkIpmxVCPs9L?=
 =?us-ascii?Q?ZqNdhl0ji8KR0upqfGFejjHJo2DmpD4ed7koGn83iHLQswhvTMnAs7f+guKm?=
 =?us-ascii?Q?MYf1dQbNpSqekgvMAlIjkUI3ujTA+rAbMJ8ueExXlJiqhwO3jqjDcs2hKduY?=
 =?us-ascii?Q?RuF6osZI9GMX4SW68/fz0FSwiFbmMPelYm4wHQ8YXUwh8RLshnTc/CcUqIPT?=
 =?us-ascii?Q?xUQLfTRwEsYyclZNMtG37LLVLLJ/IG1boy/V7YhihDYG3rQr7LMfLImoy/JB?=
 =?us-ascii?Q?FyNMc2dIUeOjyGhjWNTHLE/SgdgXQ8oMeFRRaXYKTLkUl5oJ7G7x1E2ARtv3?=
 =?us-ascii?Q?u4rHTIbDgg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3147baaf-0d28-4b2b-b975-08de62384394
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 08:51:32.5571 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m9qFrIdSHVDxS69yY1H29Jagc5urcDAt4HhL9M6TxEi8cy+9bbCl8kJ4o2HMawWkImCwxJpbiW9FDAe1BiWj3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8429
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 59F46C9CF1
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 01:48:10PM +0530, Ankit Nautiyal wrote:
> Introduce for_each_joiner_candidate(), intel_dp_joiner_candidate_valid()
> and intel_dp_joiner_candidate_valid() to remove duplicated joiner
> enumeration and validity checks across DP SST and MST paths.
> 
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 44 ++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  7 ++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +-----------
>  3 files changed, 29 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3905723f5ab6..920e4d593b1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1492,19 +1492,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	 * over candidate pipe counts and evaluate each combination.
>  	 */
>  	status = MODE_CLOCK_HIGH;
> -	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
> +	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
>  		int dsc_slice_count = 0;
>  
> -		if (connector->force_joined_pipes &&
> -		    num_joined_pipes != connector->force_joined_pipes)
> -			continue;
> -
> -		if (!intel_dp_can_join(display, num_joined_pipes))
> -			continue;
> -
> -		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> -			continue;
> -
>  		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>  		if (status != MODE_OK)
>  			continue;
> @@ -2884,7 +2874,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			     struct drm_connector_state *conn_state,
>  			     bool respect_downstream_limits)
>  {
> -	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> @@ -2898,18 +2887,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
>  		return -EINVAL;
>  
> -	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
> -		if (connector->force_joined_pipes &&
> -		    num_joined_pipes != connector->force_joined_pipes)
> -			continue;
> -
> -		if (!intel_dp_can_join(display, num_joined_pipes))
> -			continue;
> -
> -		if (adjusted_mode->hdisplay >
> -		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> -			continue;
> -
> +	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
>  		/*
>  		 * NOTE:
>  		 * The crtc_state->joiner_pipes should have been set at the end
> @@ -7219,3 +7197,21 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  
>  	return sdp_guardband;
>  }
> +
> +bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> +				     int hdisplay,
> +				     int num_joined_pipes)
> +{
> +	struct intel_display *display = to_intel_display(connector);
> +
> +	if (!intel_dp_can_join(display, num_joined_pipes))
> +		return false;
> +
> +	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +		return false;
> +
> +	if (connector->force_joined_pipes && connector->force_joined_pipes != num_joined_pipes)
> +		return false;
> +
> +	return true;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 95a38763a367..ff527b351de0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -229,5 +229,12 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>  			   int htotal,
>  			   int dsc_slice_count,
>  			   int num_joined_pipes);
> +bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> +				     int hdisplay,
> +				     int num_joined_pipes);
> +
> +#define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
> +	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
> +		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index ad66c483959b..2c8a7c57e795 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -720,18 +720,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> -	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
> -		if (connector->force_joined_pipes &&
> -		    num_joined_pipes != connector->force_joined_pipes)
> -			continue;
> -
> -		if (!intel_dp_can_join(display, num_joined_pipes))
> -			continue;
> -
> -		if (adjusted_mode->hdisplay >
> -		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> -			continue;
> -
> +	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
>  		if (num_joined_pipes > 1)
>  			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
>  							    crtc->pipe);
> @@ -1535,19 +1524,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	}
>  
>  	*status = MODE_CLOCK_HIGH;
> -	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
> +	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
>  		int dsc_slice_count = 0;
>  
> -		if (connector->force_joined_pipes &&
> -		    num_joined_pipes != connector->force_joined_pipes)
> -			continue;
> -
> -		if (!intel_dp_can_join(display, num_joined_pipes))
> -			continue;
> -
> -		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> -			continue;
> -
>  		if (intel_dp_has_dsc(connector) &&
>  		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>  			/*
> -- 
> 2.45.2
> 
