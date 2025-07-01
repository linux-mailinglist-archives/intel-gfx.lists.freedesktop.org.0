Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B9FAEFC2A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 16:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B6D10E2A6;
	Tue,  1 Jul 2025 14:26:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nmKa2Ioa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C439C10E2A6;
 Tue,  1 Jul 2025 14:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751379995; x=1782915995;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/dxa2Lt1cF0SiVUKs0PdgYMajOnrQZUTBOj521yATDM=;
 b=nmKa2Ioam2fz43uNJlbCRkzJKqmsB8wtsvZNv6JlL+it8kxKvBWHOApC
 GowQr6PmXDZaP5eCS1IG8FMQBRmsnJ5kzpklWVJNrCaT6rPLhz/zLVo9n
 ABDuLHf2XlHpB3CVAcW5xQM/E5j4JmLxg6U/+iV2mqViExY+n9rZ2uGlu
 Sd53f7DTz46A9Yu7MIj7WZu8Wg+x+jaPX2o/L2kMSvaBal6rpANHcn3h9
 SrcGEWiT8faTEKRhO8dK4F9I7h4trwxTyVfh0NPLL9YCDdhG4z91ivJTL
 MUKRXMjkOpDlK5eQ4zufdSrP4oPatx7rfkYkBD88qpf6N6nxbV1IouA+Q A==;
X-CSE-ConnectionGUID: IdltcCPFQfq3njjd78XqVA==
X-CSE-MsgGUID: eZvxyCSuRC6vsLJBkzMUxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="64250439"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="64250439"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 07:26:35 -0700
X-CSE-ConnectionGUID: 9i6SnkNYRpGKFarwhqMXTA==
X-CSE-MsgGUID: Aqe+iNT/SrSC/+ORFQOz1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="154284019"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 07:26:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 07:26:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 07:26:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.86) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 07:26:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UYBhw1Pt0W/4H/roA/U4orzsscr4xwgm/hBmIVHnkFaD6AE6KASNyurO4QTq+34Xp2IJblJJkaVQl+XKqmEPByROQ8BBCrBTyAb9MScwFGujLipJ5Wr6t2uUkPHGmfKBPdPHsJUz5A55EbiQXuZF340XXEkPp1Nxh6HM7OrQ2jTWZUd/bDsFA49NT3KxO4Ya9QQuW1mdRnwDNBTn4fBEW5YT0y8POI42xu2os3vIiacn/L7oV7wLNpHLYL4OtFj6Fc/P8IGm2UKX7c18qEUlHdlSFfJSKlvH9yhEbtL6Y9fvStQZk7Jij5SLU4C9oMHE9NuMrZ9xRrazYZcJrRtpsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pRpvr35UYwjxPeQlxk82u4X8QBAtLROWMEatr+nDs/U=;
 b=S6Gu7Es/2LGdRtSMrlXYSf6x4ShNBH5WwdpFUmnmu4EX2UqKm0tXnLi7TomvJcI46DBzKi1Bnnu5ZatHTwMi3vF5WA7QNZGcE+c0q1mSGkiS9CBVda8EbDuD256g9VcLYLSgQJRXKOB5J0R77MK74J2ts8nCyKibrrOYy1Ri0tOcqtXNFcWV4IKeGJ2DcHSLgH2dAwYNCMG/ipMehGUGvsKJrTYrhTdNDwqrVCqbXw/50UPR82TWUL0MWAuwPSyip5zJk2KMdvxtTdTi0kCScks0na5+t4Se9IJYbN8Iv8bb9vfIxIkDDzVWYL3uNNeQia0Q1m7bC8D4h3xM7pOuIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB4694.namprd11.prod.outlook.com (2603:10b6:208:266::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.30; Tue, 1 Jul
 2025 14:25:51 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8857.022; Tue, 1 Jul 2025
 14:25:51 +0000
Date: Tue, 1 Jul 2025 09:25:47 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <arun.r.murthy@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH]  drm/i915/display: Optimize panel power-on  wait time
Message-ID: <w22u6gjs6uuzfkksxrp6cjlkli2jzanqodb7ukyptlsv4a2kvk@kni4djwoeefx>
References: <20250630122339.3007880-1-dibin.moolakadan.subrahmanian@intel.com>
 <b5a84286f9729e9d92e08596bfbeb4e9c77f6dc1@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <b5a84286f9729e9d92e08596bfbeb4e9c77f6dc1@intel.com>
X-ClientProxiedBy: SJ0PR05CA0032.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::7) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN2PR11MB4694:EE_
X-MS-Office365-Filtering-Correlation-Id: 728fa0e8-6cb5-4e27-5b4e-08ddb8ab2dff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TAlGt8tuHpqvss4ttyqnC9g9QQx2Y6ijEGXDn0cj+6CIfRmKd+7ryUZ5C/22?=
 =?us-ascii?Q?AcdY4iSTb+uu4EbMtCWB5lCDvpNtMqD2M09AggH2/vztTm3MOnrkUSqniA0e?=
 =?us-ascii?Q?yZ+N3+L92QGd0a7SnFuj29hXtEzw+gkwZQ9hV7al/mzdAXS3dgzI9R5gMTLb?=
 =?us-ascii?Q?az4UCXn0RZZaCzEFjMCM5nuZu5qIbgmmfINpVIISmeGyh/uHzp/d5i6F0Tyh?=
 =?us-ascii?Q?2Yca0Xboe06n7y0Eu6P4Ib2gYfBSRGCCzSSncQJM+XcP4cTm/xBZMrpz60yj?=
 =?us-ascii?Q?xy0o53Y+8IpMEYhy2ImVjXB3nPSWCh7susxVCABl7/Du6i7MTOazy19XOxi0?=
 =?us-ascii?Q?PXTvPZF8aHcKPUysF2AzMqxPKWvjs7iSjlGVrlBCL20NCIIxDH1HCAH0aQF8?=
 =?us-ascii?Q?b/6tFdmgc0pcmqAHqXKzeHyY2vNYfr+3Xutv3uZNINFs6kTTheaFgLikpZII?=
 =?us-ascii?Q?cTx9DdC3J9ij6LVERQst4un+WZyaUzObW/OuMxCM2Y3ZLeb4cQ5ihj1LgnQn?=
 =?us-ascii?Q?9sF0TTbpolCkuHgj7h9JezDr6QjQOVCGJzLG+FAkpBByWojBy61jwvqsqy1T?=
 =?us-ascii?Q?+V2k1UA1lXcGVETWiZkgx2FEj2bfDd/n7OVcWN6RV10BDvO1iexEnv+lvS6X?=
 =?us-ascii?Q?ug0lyJgMjO4URTxa1IGUW+Yb1qzuaS8sEuQOXOzpkytmPyUg7GIu0rYN4Rto?=
 =?us-ascii?Q?ZygKcColz2pQG9DeRimsgWUOCyTVY01hP9F7wlymryQq7178959qJlUEc7UX?=
 =?us-ascii?Q?CaG2n4tZ0nYzGalj5QuZP0+n54sp5HwUZoa6R2CGMSQucDOHHmJn/Eu2Qdj1?=
 =?us-ascii?Q?I8M5tX6VolZGlKyFoDvSzQS98RJaNJs2UA8Sq4TgLbiw7+8pxmzWD+iBhRBn?=
 =?us-ascii?Q?sc6w1aHZ0lncJWls51XYut/v6FdHDTO8YI9QCzvCU+WIZSsj0/3Ln6l7OzRw?=
 =?us-ascii?Q?/tO2xcpzehjyRpvwRKCcem4DFVQ66qS9VLpsSas2/FIxoy//ycSAeCJoEXHu?=
 =?us-ascii?Q?GHwp4dQsjHJTZLguq7rccuvgazOvMnswhOOAF4C7n3og17wnFrNw2Msb/3Ro?=
 =?us-ascii?Q?sBCZXY8T5hKgVZ0dZt1eDq58EcozTyLFIgAEY0hBIroC8b7JCRzPjJjZNbUO?=
 =?us-ascii?Q?tMkvHU/ryK+HwB3ZHF63Vb03QaPkpGbIRIJFsCPdzjJPErZHb2rcu8pntdLw?=
 =?us-ascii?Q?xNpeplRqZQCYYec85eJoY0ew1GYsfQyWr9eO8JZ8i8/87qPhQJ9P0DSmIK5n?=
 =?us-ascii?Q?SD4cXVgQStNhoLFR9gWqog8h+zEYFu+3KP8rd0g5CXW8P4Q6V2mUjQwjRUXK?=
 =?us-ascii?Q?h7VnHJEY7D1E8m35cstfE1vNXHlPwC1+qxq1Idov1/t6TnqUp26FFG+N1GOZ?=
 =?us-ascii?Q?Xg6ezUAlBT57hVU/j1eYDLInBndpdREHF+twihBvRQVFOd0sqtOn7IxAhcW3?=
 =?us-ascii?Q?Zj/WbbpK5j0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sXO9MZRxqwmxH7E2yP1xHVk7zwO9RhrhwG5bYoqu0+sDYa7qCCv7NK+AUP6c?=
 =?us-ascii?Q?wEABoAJSkLm4oVM1yzxJIhBfnWPiTB2X/GNMKQi+1bj7HS+a1uxodX3NjRZ8?=
 =?us-ascii?Q?4i+L9JcMz74lHBFkDKbX2iz8m3K8jyqJ7FLwujy6GBqaIKRtfZXu+nXlTC2Z?=
 =?us-ascii?Q?+4KHNnkL+wi5vCZTSfHpNhRsJlZcBlilSxkncNu0L3zMW/4FGjxG8D3Ol9K7?=
 =?us-ascii?Q?Or9Zfh/LlpRB/PwaN3Nw2aBpp3iKixDQbxewAZsCFIYJyXKoRhQxTbXH1KSL?=
 =?us-ascii?Q?s1emjwLPHOk+Hw04VpwxkV/tSyY2CrRgXCzIWHJKgqmgXC411p8h4asWwEix?=
 =?us-ascii?Q?5ryA8dYtUKe+EzCJ5A4ReS4W6etMo3/uGAD1VOmrGfhq7MmO0lhB7HH6OYcm?=
 =?us-ascii?Q?fU/r+jZgjEWKS2SLpSUndsga4ahQUrja0TUimOuy5nOMTfiCVT2ExKxh4d8K?=
 =?us-ascii?Q?z6ttaUlRBafn7Z4X0lALbLMjbOpsXAItBi+lbrPDvKFccfT+DhYjnqGobgZR?=
 =?us-ascii?Q?QVIbFrtxzYdHZ65UlG6ealQrG//70o6uYBtYEHaD2GuR9IaSXC5M6sJdRGbR?=
 =?us-ascii?Q?lOmwU/9al3nNQpLr7uycm1PoKCeYoLFLUMVjKoVo0Pbo5etIPyC10Mg77gxs?=
 =?us-ascii?Q?w1tmtEufrfgPAcHgCr7PqF2CapWw6jvfYkVk9Ob1jI4CtodbvzSz0cmgpCZP?=
 =?us-ascii?Q?BjJ6oy9Zg514AlLb6nypefl7j7P8ycO258aaetn1FSyZ+xphppumI3wQtkqR?=
 =?us-ascii?Q?BmKZeP6n1i2pWgsWjbQu9qDSf9wutjYNO8+irflDBCTg7HzxyguZ5W6qQl0E?=
 =?us-ascii?Q?6f9vsmLUENZSOwzbst71+l/O2Zawwhw13sGmcM7hV787vaRHhgnDEkNhIU6d?=
 =?us-ascii?Q?eeUQLnNTXJ0V7bMhpOR55ccCYF+F/3P6Ms/broD20CnQtJiPG7RRMU6q+blE?=
 =?us-ascii?Q?mqfNvDscFA0xDI1jWTBD08dv6xjue6TImo1uO7fr+XDIbSAQi0W89PF4tdch?=
 =?us-ascii?Q?O23SG0XH+fUf/VkJNdw6Z1kSEqADQy57888JGdG5j9uPLgx/B8Ifqwxkvjwl?=
 =?us-ascii?Q?JRxPlPVYFlI9aAKgTBtBOY8+mPhZFPj4ddTyQCa20kBc8NUhw0/duVN69kTj?=
 =?us-ascii?Q?070HwneF2NZslmKig6QLqZnzcNyQ9NYI4WVSlnh2n9Pu06bvBilwnQlTQjTT?=
 =?us-ascii?Q?aahe+xuSP+1Y2g960Setd9owfIoH3s+3EjKNDZmYUQemoeXjrBDrb3XLks8U?=
 =?us-ascii?Q?iXpH6MqqsTziv+LAmgLgj8OZd8/9i5GxF4T+zz8gMrVyBgvP2FVyEmtlh1QC?=
 =?us-ascii?Q?hsEWxkH5YaOly3QQYU9Onityv3RS8e0mcEiWWcjqpTBhRcN1f2bm9QIducfR?=
 =?us-ascii?Q?FSu3s3ns4T6c7k5xslCRle8fNInnufBH8XkKWG0xqH1UgXsZfmyrVLrkt88B?=
 =?us-ascii?Q?RlL1IdAfCxfqsISlZXe9Slv0WXzoxADYvgVPg3jNuWx41J1rZK60tECHC6HZ?=
 =?us-ascii?Q?VDV17uza4rjUP0Tr+d6hWrigw/F6T5XNRSnj/MSGTfRpnvwg0OzfNm4JQJpG?=
 =?us-ascii?Q?91rKNz0XJ/ik97rqwGe+i77TSbn5WQO7T0HIXY/4QKeJerOGgvEPHc1Ll/BQ?=
 =?us-ascii?Q?mA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 728fa0e8-6cb5-4e27-5b4e-08ddb8ab2dff
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2025 14:25:50.9334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uhbXocQzRb2/DpTcI+I9rjYQ/gcAPKeoTngFXSY9Z+2FicVg6y4/ADe8ZtuBOE1lcggeALE83z2f3M59cBBGN2IHDHOVCyPVYvrdFhFlRsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694
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

On Tue, Jul 01, 2025 at 12:28:41PM +0300, Jani Nikula wrote:
>On Mon, 30 Jun 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>>  The current wait_panel_on() uses intel_de_wait() with a long timeout
>>  (5000ms), which is suboptimal on Xe platforms where the underlying
>>  xe_mmio_wait32() employs an exponential backoff strategy. This leads
>>  to unnecessary delays during resume or power-on  when the panel becomes
>>  ready earlier than the full timeout.
>>
>>  This patch splits the total wait time into two pases
>>     - First wait for the typical panel-on time(180ms)
>>     - If panel is not ready , continue polling in short 20ms intervals
>>       until the maximum timeout (5000ms) is reached
>
>I'm *very* reluctant to merge any new custom wait hacks. I'm in the
>process of *removing* a plethora of them [1][2][3].

good riddance

>
>I think the question is, should xe_mmio_wait32() (and the i915
>counterpart) and the intel_de_wait*() functions be migrated to an
>interface similar to read_poll_timeout(), i.e. provide sleep and timeout
>separately, no exponential backoff. And implement the waits using
>read_poll_timeout(), or whatever Ville ends up with [4].

I saw your patch series and I'm eagerly waiting it to either propagate
it in xe or have someone merge such a patch.  I'm not sure about
removing the exponential backoff is a good thing overall, but if it's
needed then it needs to be justified to add a new function to pair with
read_poll_timeout(), not a custom driver function.

Lucas De Marchi
