Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57558A7044C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 15:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A083E10E58E;
	Tue, 25 Mar 2025 14:52:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZgHsOhG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA2810E591;
 Tue, 25 Mar 2025 14:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742914333; x=1774450333;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Og7xUOkPoPr5odia7+K6bHkKFfnirDIF4RMBXpjeiuo=;
 b=EZgHsOhGS6V727Zqbm7D5Kf8d6LKJTodG9c+JuXh8VrJFiLTLV+j8wqe
 zMqfWlyltLzPv+p3hFoEb6KjWpLYECoYD59uxCbH7JdqFWuFRCHQx8H6y
 oRrVBd6bn7JVTmhECIfsgwFrqCfVLbjNOmcQACiwXaOKWbNtIhZ9OuFX3
 XIh8IcT+3eJzq2CCIKLl7o+Bs7mflWTkMnaIfCalr+CTTqAdxgcwfPXrz
 Q1ZFFQq6Nt79vR00vD4ENvClmbnQabrw9tUq4tBegElsYDWSkGc2MEUs5
 BdSFDG89mVIMheqEK3sJojHz5SKV8QvuNU2ntbI0jI7kiccVILyNkjXNu g==;
X-CSE-ConnectionGUID: hAvYVdk0SWCQCNDd2pecyg==
X-CSE-MsgGUID: PYdy6THNRZmN7uzY4Lsa5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="54829368"
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="54829368"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 07:52:13 -0700
X-CSE-ConnectionGUID: I3klUg7RSGO7Vi6gKxCekg==
X-CSE-MsgGUID: aocUFeL+TcevnXZu3hRisg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,275,1736841600"; d="scan'208";a="129242284"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 07:52:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Mar 2025 07:52:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Mar 2025 07:52:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Mar 2025 07:52:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cNg7PdY/DuKNTSbU33W07J9Ni0JsGOEAbXNMnJubJQ8wp86q0bZroCrFMKB4TV692aZQmYGl8VB+kjwp/8UDVHN3DxgvU03R6vaqGgDTaC2HVY6sikfrYUDmI7FkIyFmESQ4h/yor1DwcQcAlYryyK1KF9HX9pcC6ddWtfwQpNRXz77iZ4fg3bx4gkuZiSsu3HAw+wSqCxpwBENknYLcabcB7PjUYHijbsVpCwT69zcZfYIz7Q3JqtWwXyBSFyjuYJxyBhdjmSi2eItAo1viW9o2d5apnD2o5XJEf8BndT81NVHSgciu2F2WfqOWScCBRb24gW5/L5rUl/WXMDqSFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DZrZOzSzr3u1/K3HAGvt8TXjCMc+tXP89Axsefavzp0=;
 b=HdkXqbThEf0m84MnljV4Xc2xBGHTrl5NghFNwE4lnAz9aykMhjudlp/um/J+zjj+lrKPjRz1nq4lTCv/WCPt/PFmadYsrm4D/8hshXDHELGxQI6ZC/hqWwEdySPUHRndFwpKtJaQOGFQa4IIBwszQWaqi/EUEEJyzoFzjY+pHFk3blupZZhpNUhOlQzOZPsuNjRlk21lowbtdnoFz/DU6aNqLctEowAHcTt2oCFr4aHJS+WwlSh2y6I+Bw6Z7lI2QjU30/LiN5UYR/1gEa591DDLzw+AijVpV1gCgHOdV2TKxwv92zIrgORrzKBs0hst1jwzsx6vz6e2H6/gyEd3cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB5146.namprd11.prod.outlook.com (2603:10b6:806:116::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.43; Tue, 25 Mar
 2025 14:52:08 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 14:52:07 +0000
Date: Tue, 25 Mar 2025 09:52:04 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Vivek Kasireddy
 <vivek.kasireddy@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH v2] drm/i915/xe2hpd: Identify the memory type for SKUs
 with GDDR + ECC
Message-ID: <3lydvtc7tikmhr4cmtzkt23bgjehmzucfyjvdbcitejwax5vkp@epdi3bkvq7fr>
References: <20250324-tip-v2-1-38397de319f8@intel.com>
 <20250324200207.GN3175483@mdroper-desk1.amr.corp.intel.com>
 <32lakxysapix2hgoh5e7n2b6zlv544nh6vcvmg6zllzjnlikmd@7k37w7pqy4p2>
 <87bjtpa3e6.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87bjtpa3e6.fsf@intel.com>
X-ClientProxiedBy: MW4P223CA0012.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB5146:EE_
X-MS-Office365-Filtering-Correlation-Id: 25208851-a056-4c46-b89e-08dd6bac9d40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5fpKANSfomkvhI9y1xa0aaiSz5dkF6LSjcwY2P0X6b8c8oDMRr1nY3+nbNU0?=
 =?us-ascii?Q?yhVuhN2oVqt4JsBMSZqjwesMDuh8UIy+TL8wbMbbnoWRB8C361m8ccHppX9y?=
 =?us-ascii?Q?jDM+Q7XNN3RW+mP093asHj9GsXi6RIopvxwxm8GpdokbLC8sEfsLsOCH9FHi?=
 =?us-ascii?Q?Jkn1dcPe14uo8mwxSjhPgXlCJ38SjSGBavcrLTeuAeZ+NPs/9s92lJ8PehFB?=
 =?us-ascii?Q?GtZKnVtdD1neFSArNrLcnVdAsBL7KKK0JzKaN+J2UMV9HLDRi7NfNV3zRLBR?=
 =?us-ascii?Q?grQNb9rfVV3f26wW2dhnh4Pv+ZUMRAxdQTYhkj4whL/58fSEHg7ImzFPpimp?=
 =?us-ascii?Q?/xLXG5CTVlwGcgPlKhoAaKCQ924OhYtySY5fxqCZz+xfudnbACjO1PP1ZZAB?=
 =?us-ascii?Q?rf2sS6y2xcgdO4PjRy0U2Ayxcn8BFW8u0A44zanwPA7BFRC6M+vIzFrLAdiJ?=
 =?us-ascii?Q?/irU4hlBJGHyN6Ou7zS1m0X8lWMJ/MzZ+SXN9vPea4oSHnLZSgyNzmSVc0eW?=
 =?us-ascii?Q?Dd57q6V+60I06rPeiSvKSqrSK2tqNLsDe8iVlFtMhMIPYwjwBhmXuEPpMbaI?=
 =?us-ascii?Q?XsLWPXTD0hM9zYVoyGsy5UXJ2rezIMqKQMG4YvOrsqfvkim5HcNm29O2NMbg?=
 =?us-ascii?Q?Kc9kJfU3griuSSNTEVtfuoHYJ75b6O9Ewk0+yn8NZvugYYa6mD7S+8WZSki9?=
 =?us-ascii?Q?VIITF32BmGQ5pNEdJNB4FKxDe88Ggrwi+tWR5nj7Q6FuDYHTEZSFsW5xGOI+?=
 =?us-ascii?Q?JSVsqp1s75cpmBlG7mKVjVPnEJe3voVvShAI1gXQMHefD/9rsoVf1tthNO/i?=
 =?us-ascii?Q?+yI3dzFjcjxrETwPweHIW5A8tsVA168L8w1IQiBJPmKpuHrhs8IzhTj7f1b5?=
 =?us-ascii?Q?CfGAx1+D+jenQOLViwUQ2hjzL5uB90sRnYkQAP24xgt3zqteC6pLZ0Q0qGuS?=
 =?us-ascii?Q?JFg9Wi9CV6jO6mha0HnR2Xp6S836Gb+WH/G8zfVhetlNOPnwHYTDpC0jmsUG?=
 =?us-ascii?Q?Msp8Dg2HsaN237ZTPKTEXhFssRn6zUc7wNMFEDQrJeX2otSiWTrPVg2I3iTJ?=
 =?us-ascii?Q?4j+iP6gwoK7V/ooyPkdvuXKMvVKJUiuNzQim2oRS1JMmH9yLgSSRVgw0JkVL?=
 =?us-ascii?Q?B37bt1Xe7SUPYCGHv7RqrNmkvXl8SV7E4oiL37BtlOm5RO5RDUEpVUXfEj33?=
 =?us-ascii?Q?/IisKZnhdV+Q2+5qM/z83ZirWNdMm0wFWqqZFF+FrZQuGqj9ekqUdn0dxH00?=
 =?us-ascii?Q?zLGD2SkR0UGOTSv+0kUku62YA0BHyn4fqvkoTSK5ou23bhcRqmX16vPhTKRx?=
 =?us-ascii?Q?I3oNn5fFQ3heQbQpb7KpspLXGyI641C9hB1gjHI4OQDFWQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YBSvehXN5Vjsjf33HT6m44Dphh+Zg0vTatJQZ8BX6WRX3sqdAUWIJXcO7Sj1?=
 =?us-ascii?Q?tdewazL3O/V8bJjZaKv6759qI3wdjFtrNQdC09pUB/8oHCMcvylH2dCWcRVh?=
 =?us-ascii?Q?JSrvqd6Fpfd1E4PRF11fUoRnT10Mg+V2aL3WtBIYy9f2F4zKVgAeGSAEVh5N?=
 =?us-ascii?Q?1iAvF9gvzr3dJvlolQhcG0AY/fOg/46Mc7OO2iNj3DgBYLu0cd8wpGaBtJyD?=
 =?us-ascii?Q?OtDMADcC/f6rwSQzt1p2B7bHLQCyalNsJkptgVdMW/jKwBLaKjBTjgoggE4N?=
 =?us-ascii?Q?FMgiAeT7zI2+eUUUKU1rcvsU/QjLd4V+segqU4f4CrMgClcWhuQD8RV3xnil?=
 =?us-ascii?Q?BDhU6HUtTBAQiIGndz0xtHCgRKcapg7WJKPma3pJhGbWc8vc9ZybVSUTQN/L?=
 =?us-ascii?Q?5xHz8+Pg+q1wXk0Yx6wUHui00Atl2F8OaaFeDbSUJS05QTYbloUMDHEMimbA?=
 =?us-ascii?Q?BPM6lv31pis//QIFOnRL3mh1ZXDYx5X7OlvI0eQy5OwL8wJ1wKXTRgJ/Vi+h?=
 =?us-ascii?Q?jFbjbrdSJHsYtb955KZ1HvI86diZkdkA3VUVeyNl9FBpXF5pTim0ctQlEldv?=
 =?us-ascii?Q?cmdEkD3Ow7nRouHNmzM5ZRkX0l8rsYZjUJvLE6lGbpDo2N82DYdjyFgdb+BE?=
 =?us-ascii?Q?IWGKoY+TkNXgLAcGvhI9EXA1Cm734qRYeNUuYdbUsdJ6t5h2O7gPKKVmtkwE?=
 =?us-ascii?Q?+xyxgwKcqubark4MYNSyE2uB4xXfrxS9D9I8g/JCin+bPsjkPuZA9My1lprx?=
 =?us-ascii?Q?9A4TcOfIOzsKJ+Jjb6+fyUNnh1fB+xKo2J4gkCMPwLZBDAbijB/qTqDG/6Y2?=
 =?us-ascii?Q?akIcQI9IOUVr7/P0qs8+o0lpzEhZOs+A97sAukj9ILE+xYjePS6oUCji3GV0?=
 =?us-ascii?Q?6PEvBiKapXNZsE1AkvwtNvlTjJmWzqJgg6iOAyo1XTzQngilhtcOyCZis0tp?=
 =?us-ascii?Q?poxqcu5KpSMqixb4P6A0eHszyjt9Q0AMPbp5SfbIqRxV4VnEUWn1YLBxUYz0?=
 =?us-ascii?Q?rk+C/8CnOpAn3HXTlnU4H6hoxa0YYi3PjBSuxCcWiA36TFug17n99lhCrIcE?=
 =?us-ascii?Q?nP/3aGoMz2oDokJR1MEFOOz9YIh63g+4HCX8wn5UK289bhqu/eP1AnYdEWaL?=
 =?us-ascii?Q?528TzIp5DwYF4Q2VW9zvPiton52TlUcgFFzC9cg6/BGvY9jBx0z5XeYD4vT0?=
 =?us-ascii?Q?lLDDGMpzF/gw6kLaDuk+6mQ2/H+axYiujOGQy0Yckt0FXqU46kK3bnskueMa?=
 =?us-ascii?Q?T9IVFgavS6hfjTh+NiL2/UZwTp8/7KIRD0HTrR7RrlnBr/DoXC5LK0MEnOWo?=
 =?us-ascii?Q?gIYFU12a+0Jzyt6ytaG8U9wPnZVRIVMMr3+8LhkXTexaPlCrMFnH9zX4Yzds?=
 =?us-ascii?Q?7mXkXgXk9dmn9gdXmppwXvKnMsQbcncOYBml8vx2nuZd1n19ifML+VG6b7dg?=
 =?us-ascii?Q?HATdQpIRi2FJV7CtOWvb5BZmkPnxmKvOq4FShoxJ8akugzVIRBWsDT//F9zl?=
 =?us-ascii?Q?0fZ5a/FAdBS/Dye71eJEE/bAKVTtwVaxGppTWS2qnTTKGsPJdowlmEiULUfv?=
 =?us-ascii?Q?QfpYpZt+v+ZLYHPRMBngXO+iyi40k0bYIkVjiOlNhfp4bcjW5JK5LE+qOUwO?=
 =?us-ascii?Q?Rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25208851-a056-4c46-b89e-08dd6bac9d40
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 14:52:07.7835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KRrnPfKn9n8Sa+D2bFSI/xgu7vHUR0Fu3tnQGDrTW9JY2scrgoAnGT6mQQbk2i/w9vs/8ZTxKjq7GFUJRL0bKvaCegdwFu2O4A3FpBjGSjw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5146
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

On Tue, Mar 25, 2025 at 11:03:13AM +0200, Jani Nikula wrote:
>On Mon, 24 Mar 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Mon, Mar 24, 2025 at 01:02:07PM -0700, Matt Roper wrote:
>>>On Mon, Mar 24, 2025 at 10:22:33AM -0700, Lucas De Marchi wrote:
>>>> From: Vivek Kasireddy <vivek.kasireddy@intel.com>
>>>>
>>>> Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
>>>> with ECC enabled. We need to identify this scenario and add a new
>>>> case in xelpdp_get_dram_info() to handle it. In addition, the
>>>> derating value needs to be adjusted accordingly to compensate for
>>>> the limited bandwidth.
>>>>
>>>> Bspec: 64602
>>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>>> Fixes: 3adcf970dc7e ("drm/xe/bmg: Drop force_probe requirement")
>>>> Cc: stable@vger.kernel.org
>
>FYI, this does not cherry-pick cleanly to drm-intel-next-fixes, and
>needs a backport.
>
>There are dependencies on at least
>
>4051c59e2a6a ("drm/i915/xe3lpd: Update bandwidth parameters")
>9377c00cfdb5 ("drm/i915/display: Convert intel_bw.c internally to intel_display")
>d706998b6da6 ("drm/i915/display: Convert intel_bw.c externally to intel_display")
>
>but I don't think we want to backport those.

yeah, I expected issues like that and was going to provide the specific
patch for stable. However I thought it would at least apply to
drm-intel-next-fixes :(. Below is the patch to drm-intel-next-fixes. It
also applies cleanly to 6.13. For 6.12 there's an additional small
conflict due to the DISPLAY_VER_FULL conversion.

Also available at https://gitlab.freedesktop.org/demarchi/xe/-/commit/14cb226dc4526971fb7cfd1e79bb3196734f2ab4

Thanks
Lucas De Marchi
-------

 From f61fd762498be6291626cb9cfcb8da28be6485e3 Mon Sep 17 00:00:00 2001
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
Date: Mon, 24 Mar 2025 10:22:33 -0700
Subject: [PATCH] drm/i915/xe2hpd: Identify the memory type for SKUs with GDDR
  + ECC

Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
with ECC enabled. We need to identify this scenario and add a new
case in xelpdp_get_dram_info() to handle it. In addition, the
derating value needs to be adjusted accordingly to compensate for
the limited bandwidth.

Bspec: 64602
Cc: Matt Roper <matthew.d.roper@intel.com>
Fixes: 3adcf970dc7e ("drm/xe/bmg: Drop force_probe requirement")
Cc: stable@vger.kernel.org
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20250324-tip-v2-1-38397de319f8@intel.com
(cherry picked from commit 327e30123cafcb45c0fc5843da0367b90332999d)
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
  drivers/gpu/drm/i915/display/intel_bw.c | 14 +++++++++++++-
  drivers/gpu/drm/i915/i915_drv.h         |  1 +
  drivers/gpu/drm/i915/soc/intel_dram.c   |  4 ++++
  drivers/gpu/drm/xe/xe_device_types.h    |  1 +
  4 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 048be28722477..5e49f8f7c9804 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -244,6 +244,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
  			qi->deinterleave = 4;
  			break;
  		case INTEL_DRAM_GDDR:
+		case INTEL_DRAM_GDDR_ECC:
  			qi->channel_width = 32;
  			break;
  		default:
@@ -398,6 +399,12 @@ static const struct intel_sa_info xe2_hpd_sa_info = {
  	/* Other values not used by simplified algorithm */
  };
  
+static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
+	.derating = 45,
+	.deprogbwlimit = 53,
+	/* Other values not used by simplified algorithm */
+};
+
  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
  {
  	struct intel_qgv_info qi = {};
@@ -740,10 +747,15 @@ static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
  
  void intel_bw_init_hw(struct drm_i915_private *dev_priv)
  {
+	const struct dram_info *dram_info = &dev_priv->dram_info;
+
  	if (!HAS_DISPLAY(dev_priv))
  		return;
  
-	if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv))
+	if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv) &&
+	    dram_info->type == INTEL_DRAM_GDDR_ECC)
+		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_ecc_sa_info);
+	else if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv))
  		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
  	else if (DISPLAY_VER(dev_priv) >= 14)
  		tgl_get_bw_info(dev_priv, &mtl_sa_info);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ffc346379cc2c..54538b6f85df5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -305,6 +305,7 @@ struct drm_i915_private {
  			INTEL_DRAM_DDR5,
  			INTEL_DRAM_LPDDR5,
  			INTEL_DRAM_GDDR,
+			INTEL_DRAM_GDDR_ECC,
  		} type;
  		u8 num_qgv_points;
  		u8 num_psf_gv_points;
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 9e310f4099f42..f60eedb0e92cf 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -687,6 +687,10 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
  		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
  		dram_info->type = INTEL_DRAM_GDDR;
  		break;
+	case 9:
+		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
+		dram_info->type = INTEL_DRAM_GDDR_ECC;
+		break;
  	default:
  		MISSING_CASE(val);
  		return -EINVAL;
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 72ef0b6fc4250..9f8667ebba853 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -585,6 +585,7 @@ struct xe_device {
  			INTEL_DRAM_DDR5,
  			INTEL_DRAM_LPDDR5,
  			INTEL_DRAM_GDDR,
+			INTEL_DRAM_GDDR_ECC,
  		} type;
  		u8 num_qgv_points;
  		u8 num_psf_gv_points;
-- 
2.49.0

