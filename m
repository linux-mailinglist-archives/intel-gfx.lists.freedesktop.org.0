Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIX+NlDBe2k9IQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:21:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6148DB435F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:21:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF0C10E26B;
	Thu, 29 Jan 2026 20:21:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YQ1wkTSL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C8A10E213;
 Thu, 29 Jan 2026 20:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769718093; x=1801254093;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=J80IXlzOP333o5ih8ab+vfFnIzJVIrlmV08dxhy64TM=;
 b=YQ1wkTSLc5NEgPXk1dsidYqtInOxUfE52cmWeKn1eU68SwU+fUgWvppb
 LTskYaGr2SCmAPGq49hfbhRtv1lTdBAoNOaQ7viPxy5n1QHRMHyBaTXMy
 tu54rna8qaJwkdh6RXJFLXNoHRPh/2EyK31aIP4Np6YrYKgrd8tm/x7/G
 gaSe0vrcCuPE99MRCV7hVpZ1I2jf2ZVSy0n8XgNrkHW9NDFeKlz0HIGj1
 DxoobZKmZRyyrX8iRr9CLlwLCe7jXVXEnXHWZJpktX40FGM6k+6oGZmYv
 x3GFZteZQoRpaHxkU4uEtvpoD7Os3IkC/BGl4QIpP4xIBUXrNaN7MMaL9 Q==;
X-CSE-ConnectionGUID: yLjOsTKORSKGQUNUcJX6Bw==
X-CSE-MsgGUID: g3q1hxEpSka5pY5Vwnvw6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="88542590"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="88542590"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:21:33 -0800
X-CSE-ConnectionGUID: AVORx/n7Q9aojG1PUSi6PQ==
X-CSE-MsgGUID: 5ZC1sE1ySm2L/Va4SzjDIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="246300542"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:21:33 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 12:21:32 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 12:21:32 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 12:21:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E6uw/srBqXum3Obg4wIRzVneE0vGgOR4wuGOiIchoGp+AJiu6mftfjmFYcyMEshRns9TpqRjlceaxr9CKWkkeVEA6AcDSU5XRSO3SNqyC8MP+d1Ix2hEBtwvbXO8Fn+WRh8iKiNMfl36rW8PUjOD1aA2Igr3PuRgN2sTnSQXL7AEsa1mTNf6Kf4pTHh/PMv8mUxyCn7q3GhqE7fLD/P1+bNZeuFoKs949WT2AIL8dZcZ7CG1iS3GSi946jbZwmqfbUTK3OGyrjRnc7Hpdvn9ln8bQ9GjdJ/XYY7VUQ+ffefc5fGqSRKNIJo3gxw0tzva3+p41t2e6Rx/rn1CcHSf7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/zxWXsnzqcQ3W1JBS3QYjzP5SWpfSXuY8FtgF3KdSA8=;
 b=l0tBpHYkiMR8ofywHM/Obckk79nt9cijUS8dRUsBeWVZLBdgr6YDXtPPFVS8XZB7bzDJuR2l40Lvu/B+BVnkM9rk8c7dq61f/TnN+4XuGesatLvZyqVpEW/GvZKVIGeY4JnqIYdkt08aalxyKGOETWzYAaAYxXMdi+7b3s1FUwTQkvZXj3QM2dOaopnf1jmjbzltKL3mZbPyODA2WgvCNchnUeRMJBYoPK0jYHN2QgabyTiwV9HDmWJADepBZOjo8cPDz6UVJ+dPjwyAl/+XTJQ96/GV+GWQXZVEFsDbGYhfHy4CUwqn31vKj4nKE+BlwHDs227HSkgqBRE+zOod/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH3PPF67C992ECC.namprd11.prod.outlook.com (2603:10b6:518:1::d28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Thu, 29 Jan
 2026 20:21:26 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 29 Jan 2026
 20:21:26 +0000
Date: Thu, 29 Jan 2026 22:21:21 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH 16/16] drm/i915/display: Extend the max dotclock limit to
 WCL
Message-ID: <aXvBQTzA2Vk_qESj@ideak-desk.lan>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
 <20260129171154.3898077-17-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260129171154.3898077-17-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF00014AE8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::309) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH3PPF67C992ECC:EE_
X-MS-Office365-Filtering-Correlation-Id: 42de23cd-95bd-45a8-79a4-08de5f73fa76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Pw5z7thuPfIaalZVyg7Q8JhyAHT7XWoZnmWu88jIcbeM1PVPRqQA5NNhG3cW?=
 =?us-ascii?Q?1BPnkYG8e4y2Mhe5L6p2nOlJSAX8ZFzH1AUvbug3we6H4wAtSehqwpND2vnH?=
 =?us-ascii?Q?X36owbb+ILV5JE/Gg14p1FuKNxM0RpfM3qk9uzKrfd0hdopTwVrDIMGejjKH?=
 =?us-ascii?Q?4z33jjdYHapa7nLQzG04DoBrvO02gIoPbJxspN/yGEQu8bkq4B82liQBs1Yl?=
 =?us-ascii?Q?o5S1aKV/Jd4jGEvhGJHdrrrm5gVHMqoTMidTzhjasSB5h4Ey3Ik6UGxAcM5A?=
 =?us-ascii?Q?w7dOjdPZjJvLFLBmXHY2h3hSjj34xrtplOl6YHW3NvY+lqPmU2MUy7N9tdQg?=
 =?us-ascii?Q?eo8xi8kUzV7ue5WkgsSuiOXJrQq84CLByCEy2b0zAYb0/QNnOe2X3bFSWdfz?=
 =?us-ascii?Q?VMC34koXCv/fuNFTdYaQ6ADq8bMj7jrHGGWY9XFe5ELd9Fm2awZlFOY7ooSC?=
 =?us-ascii?Q?BzuNn2Fx5p40hNPv40r1jHlTDnVV6n6l1FrLba8gD0Zvy3N5IMTJ/bHx85LI?=
 =?us-ascii?Q?J3kjrCdlVeLascHvDDxSGYho7oLJNb6CBLYifjKZdTKTCXXSZNytmcyzKzZs?=
 =?us-ascii?Q?Xme2fOxcKUH4Qxad42pQbJ7Qcxn+wMsM0JVcFQKaeDtsSJeMW3h6bKu8tX2I?=
 =?us-ascii?Q?N/wG9/l5dE4mPZ/6Kk3IlE9nseAKiXGJ52yeT8h0xIJLOAK/cMzTIG2XvHhM?=
 =?us-ascii?Q?meag80y3OrdLy5T1CxAWMMLYpzWrm6ibBWJpUlpOHJf4u+1czKYu1sAAdjEH?=
 =?us-ascii?Q?YD25zsZXst+br6i2uR6/FTfMKQVTaa4BU+JRgzwD2xuk9oA45GvQVjjuvJnK?=
 =?us-ascii?Q?uoxhKusQyYsrEsk6JDG91G5Ob/dMenSfk5Q3SR1HYfeexGczTGyKwYBQ+LCt?=
 =?us-ascii?Q?zpFx3vIY53LCN0VvGDHr+pZJUqrnONJbr4UKUUvAmb0zYOOdUPlI9764NhGx?=
 =?us-ascii?Q?rAaqZIMKnLVeqzp5vskg8XlNcKsesLj4BkKKJAzqx16jOabYlvEMuPLsDELX?=
 =?us-ascii?Q?HqV6/ryhbGYBa4lAEk6t/AI5qP1S5fHmZPK+cpsfW23m0/GAsxxg+x9fPML5?=
 =?us-ascii?Q?JyYv9uCo9APMt9f4spL2+refLvpFZNrxmJrVN8h2CL6mNYyrygTT8QGuWBka?=
 =?us-ascii?Q?c8qedIk7Odnwtzsfy1rw5RC4glLkqi90SLBN05A8dsLShH6OXI/4GsGdHMv5?=
 =?us-ascii?Q?CRWP7sLVWtqrn6YeV/8SvJ3EosAfBtpIY7C/BcJr1HgI3mkSI0RfAltXR64l?=
 =?us-ascii?Q?uJh28NjIzZM8OiwF51Wg3rjasiueiUFTHpNgM+39fCvUBqnOa8H25RqyrDFZ?=
 =?us-ascii?Q?5HdLqi1GxH0faEoHPepjqszYN40/AIrACnlJ7SjDSKL1gp14wweLr0O3JvgT?=
 =?us-ascii?Q?gaPBU+0VcIRNI7w30RF+FcehNJ91e9uF6Q18cKB1aDgUHc8+NbfsaPV244q3?=
 =?us-ascii?Q?U5f8KemgeQXUaJLRI6WGaiEJ5d8Zss9a/wX2O4WMs1RImUKvYR8OZfX+JVmi?=
 =?us-ascii?Q?vA84fy5iheCzQNoRoWhczggQ6FWjBK6etingUUnsHKEYPfZeu93ULzj/AZ6W?=
 =?us-ascii?Q?Br0M1snU+T/2PlVHg0Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bdkhsdt1bXxNY1pJ7BovWxteKbt7CIiqUHeS6DSKLvW17iRjUOOoyX1DHglA?=
 =?us-ascii?Q?6qhN3fbBUqew5Iw/Tp1S+jGG7jb7tITsWUImgH1/3TROUg024uyWqmqX0Kxe?=
 =?us-ascii?Q?LZRFBULaGqVgrC96PtajgvYsnQO1F5D8GlX9NPbGF04XGbCrGnj6/FujNMnE?=
 =?us-ascii?Q?4kTPCyhzWOhagZ3LKDMyXsFnr5gyWMitA1TdiE8pJLZC/47vYMHhrhm1gYVE?=
 =?us-ascii?Q?f05BTO49bjCsnQYDVS54EmEhCxYf20rgNxGqmHjB34g2C4Jxxg63c4OstjWL?=
 =?us-ascii?Q?nUOhFn1hYlmrHtAzSi50ZyznfGrReyBRoV9n5eA5QKWM/ZwPq9fFd5Ia6LXA?=
 =?us-ascii?Q?gKLxY34xhNzt98j0trdpf6jThXhRTsouFDdswhPD6utDwW67iPAqrji+zt/3?=
 =?us-ascii?Q?o1vVl4CyHbc1eJwDrPQLQC/ujFzXIGZje16GWxfOZ5SzTdUClFVjdPgZa4B5?=
 =?us-ascii?Q?ZYuRFP3R2S/awv/EkwLJIv9XCOhShy10S9uRuCoOwwy/s17GEBJiJyNo2ivU?=
 =?us-ascii?Q?wTUCZ9ZJH3i1PDLvBKGmY061NYCl/969eLPk1w+nzrAr5ZzpiPT/r8xaCVjI?=
 =?us-ascii?Q?lXdROIrAV6ojR0Hp73rdTxxvFEYAHl3FQMWkiFw9j7LUeBiZyAxt4Po25Gqd?=
 =?us-ascii?Q?sT/K32i+alHv8NtvaBh3yglCmC1G/51/HntJQz9yNq31JEHdbHOKV956S8PU?=
 =?us-ascii?Q?hOaRZtVnEhXvxgvfWcreUpp6W7UUczkBYbmLyfbf5dLxx7eoX0sY7c4lo011?=
 =?us-ascii?Q?DIaNnuAIy0s0R+2XxhIpdWXxbZDaYz4x6/cWvqQlYhkc4D9/bUVi5pDAVYb/?=
 =?us-ascii?Q?gAhbFy9MwRUyomBgFjO2V7RwrSgXL7UWFRlCf8SVR+8aGeDNB6EySscm9peU?=
 =?us-ascii?Q?lo3ilWBTUhXQ2gxOcW0sQnmiQp7lWy1ylEDhVD7cQLaY9TJoLPol0V0UuBsl?=
 =?us-ascii?Q?5bMYyLQqKNuCnhAP/vRAnOFIsKOAA6gN7yByF2yODsJEEw16fwtrk6UCQY00?=
 =?us-ascii?Q?QwxQ5AFj9GfVYMjkb/w+6s5yg2nmc/fO241lhlhzdrKeISa3ghjmfA/KgrII?=
 =?us-ascii?Q?j4QWgtTVsfDs/Kb+muvrfVp8i9L9lGfM9l0k6+aRQkyaodhua7VaBvdXzuua?=
 =?us-ascii?Q?QBX101Il7oX3tSByN6PF5eKKT1MXtCIbwzqDnZ80+v6g89keKvsgyeUsyYxR?=
 =?us-ascii?Q?0DAa1Pqgy1W1OuLI8o6FGpAuVrb3+GAuaSroi/l6Y2d0Ng+xnddYU5yYWUEl?=
 =?us-ascii?Q?gsJHSJwf0OXj3zEMv/eja7S19Ey5eVubYQJVIo7WGhAz/4ZCW2T651qheV/3?=
 =?us-ascii?Q?a7U18t7j/d1yC2KtfFC9XFMhRGxC2UsuU1nNHcK36BEXv30f+oo3dFiSRHpz?=
 =?us-ascii?Q?59jyF+3kz1bB7T6bXji8+0UOwy8vp+/splRcPVkSCtkdFAXLFpSkhaTKtYR4?=
 =?us-ascii?Q?oxNEdQus5hW+sxcW8FyszmQ3hSfeUwDV+CLZ4SsE9DyNPSZfUWncE0lVORo/?=
 =?us-ascii?Q?4utRQuXxxvG6eX7SdydwbLlJjG4f9dKW8m/O3lNV4+xjhLANHFFHN5clV0vH?=
 =?us-ascii?Q?TL9aL28jxxqZ+0KId8pT8XWehfmfJfmQzUKfpuxPVjE5p2IPXOiY2wrcCRO9?=
 =?us-ascii?Q?kcMnBw/oBjaqHll1p5iVcZzeQhxFHoxsk9UJHMIIs7peAjiFnXwhHiguuAJK?=
 =?us-ascii?Q?nTPFJJejConYRwZG1kcwaKIaUOB0Vq7keiQ/zU0ozxyzcKgmpIaBpnNJv2vg?=
 =?us-ascii?Q?ChSYjvdluQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42de23cd-95bd-45a8-79a4-08de5f73fa76
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 20:21:26.2158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1yyqtfMOgftjKb5SE2bhs+tU+NNrXAhQZJYOJuxNH35QL3whwKUImPlxcJ5RS72L7AIAbGcLXJ1X+g7tFqEsTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF67C992ECC
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6148DB435F
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 10:41:54PM +0530, Ankit Nautiyal wrote:
> From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 
> Add upper limit check for pixel clock for WCL.
> 
> For prior platforms though the bspec mentions the dotclock limits, however
> these are intentionally not enforced to avoid regressions, unless real
> issues are observed.
> 
> BSpec: 49199, 68912
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9cfeb5530fd8..bd4219467e0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8006,8 +8006,16 @@ int intel_max_uncompressed_dotclock(struct intel_display *display)
>  	int max_dotclock = display->cdclk.max_dotclk_freq;
>  	int limit = max_dotclock;
>  
> -	if (DISPLAY_VER(display) >= 30)
> +	if (DISPLAY_VERx100(display) == 3002)
> +		limit = 937500;
> +	else if (DISPLAY_VER(display) >= 30)
>  		limit = 1350000;
> +	/*
> +	 * Note: For other platforms though there are limits given
> +	 * in the Bspec, however the limit is intentionally not
> +	 * enforced to avoid regressions, unless real issues are
> +	 * observed.
> +	 */
>  
>  	return min(max_dotclock, limit);
>  }
> -- 
> 2.45.2
> 
