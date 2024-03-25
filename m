Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3A388A18C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 14:20:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8727710E8B1;
	Mon, 25 Mar 2024 13:20:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nKXUqTMQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A584910E8AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 13:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711372811; x=1742908811;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4GmRBlBc2+VJpKPFZOEXlGQpd/UCqD04EQ1KQGnV2R4=;
 b=nKXUqTMQT4n4Yyi6uJr0ils5fnNbbCBjArnRtim+AN4gqEUV0x1hnZha
 52HoOJ9NFdptc6EQ5RDz+FmjtLDN5F1RhQUgFSrIOvwGQWb1l8IN3ovT0
 U68lAlKOoKLLCTScQOvTlof1uu+ZQHY9SpkYFBcFxVcXx1JQJBm6mN1Mv
 y/I7ZWw89nTDCkOuNPvlKLlxfndIIlTk5rQAn0NQniIUjscTT4aNn6CV7
 LsfMUz7BqjwQrYthgx1XvnI9jNh8vvRZhnhwDfRgks/KXuR5MjX56An/w
 aq5wScPRx5gDZkLZQoWxYiXlBq7TaCWhUGPUWMBqabfYk3dQ2q3kUmr04 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6477774"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6477774"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 06:20:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="20341920"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 06:20:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 06:20:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 06:20:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 06:20:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nvPqFDcfeDJ1keXIXJehpj9Ag2oHDnGAZiixUINAKpWaBgGbM57FNQzJk39jauksypIAKF32bh2qX3EQCP/TdFnCpjafOUOykPE2+mZy4sbqGpJOSEquRgXNXWxE9J1RvL9zSoCOQodjJ1CaCl5yYd4ryd2Yv4md+Tu7Jlxr8EW60rnRdSXBdaWGf8dgcfRDAiGeKnUv+/jErz/F8FZYcOdQifwKf+nfLvvs3Q8gmMv9yA3Cstwi2pIr0VTFHgC3Eu6c5nvf4HEOMvTZLfdPA/IbUHBGzNk2HzRsiDWOSCzEAnUBnQequs81ouW1RQn02vFc8ax0/SQWXcsXFWuD6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4rSEHG2czXDTjMc+zocoN1rMOTO0LL7ehryvxPh7UCw=;
 b=Ni8eBO0xGX/rRx8V2Y0+D1Zx+OVYhE6UNP1oCkhXCOrmiVYVPGQIysyANEZAU6jU0tUnGV4LnMY551uxMABP/2UfyNvVGJc8MStCAu3SBoAkRfeeHf0CmTZ8x/DnNOQuMx5eJfTCshEAPA9vluc+/7viezTm1sYtxmPfJDQm92TX5dSw7OoehQzEyMDYXWPwQQ6irneew3xYJn92QzhO9Alf92pL2J5YZSHF5XIUlHutzIeyhwSnIiS1eLxyyf5NQpt+8xhq0j3sFaMn+wQBUeZQPZRlsvNX0bUOPVOj78xuxlRErjhQ8jGYvpD8phXiDxaihDcb8aLkRaVbCHTdDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB7938.namprd11.prod.outlook.com (2603:10b6:610:12f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 25 Mar
 2024 13:20:07 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.028; Mon, 25 Mar 2024
 13:20:07 +0000
Date: Mon, 25 Mar 2024 08:19:50 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [CI 0/6] drm/i915: cleanup dead code
Message-ID: <ehevynn5lwgtr6dqthfni4udtwi6hhmryyzxwpnuvaii6xkfkz@ujva5eopumvb>
References: <20240320060543.4034215-1-lucas.demarchi@intel.com>
 <877chqk524.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <877chqk524.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0003.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::8) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB7938:EE_
X-MS-Office365-Filtering-Correlation-Id: ca3f344c-6a49-4e87-73ca-08dc4cce4a02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q9WWGwC5tZoVaLnZQFaN8tF0TcBpiDIs06leqgj+H7PrHNmbcF4vEFxN0angOIsadaGUzkJdJEMTsV+LzNmz7dkBfgriRdCefBKM5r8V8sQP9oLOZF3hAYU9JJiaIW8YqP4vzj6gCHsE1iDumnHIXCTr5pMX3G29AC9Hl+N3lEduuz6rx2iZkbAZwDwWynIYrhs58fzgf5wbpRGia7tCM3fjX27k255rZiEsw829tXLSxKGQ7NMBxN1d3Rea85HzfcjZvebcKurSLDLGKVUNP/4+Iq5xHlo0aenxAfmQ1NWtwAMR4M8z7+rfE/O8QA68toYASGJKbN/wvNQTnmR6/ZZsmonIqwmi8x/ZdW7AVtwmIJAqDAW3723S2vBeBh2yrzooVU3y3L9VlGZp3bOsrmIJSzTxvfZLlJYA44t72PJF2Qf6ARubs1yQlHwb4u1tKfXJE89X617Q4rwVfWzVwjsXqiHKj1Dtc1TIftqr1d4w0V/79xVKzNkfVEGtOoi5KEQNsXQ76X24D8haUndkCjf4T1LH1bXyIV9eC1Kys35BsWym1ScvR5ZNWFsXsE1Ev2UaAq3jycVy/iuuoU+LQgAHWysGHHcCrahxUvrVmm4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4AQcBMObUtx5hssWTB2l9jgeiHZtocdAvtXj5zhG8VB4Nmy2latWG9NfcQv/?=
 =?us-ascii?Q?jc8r+0SJy3uvFeUERxBprz9sjDpvy5hK4n43GsfxM9Ggx5q3N2Vu20HbMP7U?=
 =?us-ascii?Q?m0baJbaXN4UDUnfUaB7M7MYzaO9RjsYPJyPqZ4O3DykAnfrJFp0gwSAmHBjl?=
 =?us-ascii?Q?ADsD+ZyXVeTLa8VcN3DirqqSRSl18OX9pxIgLFY0UTsXvZ/+eI1xiWfYpYs8?=
 =?us-ascii?Q?fgHB1CehpEN9D4XehKVk7JuF4ozaHcxPQpVoQA+8pR3sz5xxbHDtWSbaT66C?=
 =?us-ascii?Q?XCuVgiWnc0Fcn0jtlU7EeEc6BzOc8vghjQ2jWqc570FP3aNswepO3EFR8Bww?=
 =?us-ascii?Q?C8mZ2tVz8HeNoJ5fi6Bs8jH1bahnZuuJ3E75lfVKv5OX7wT2RPpkGGQuT1G/?=
 =?us-ascii?Q?SLFxuhORltofUsjk3WUV4fH8opF5korrZdNA+KrGsYXquRaVGU+/IPNi53XI?=
 =?us-ascii?Q?geBd5cHYOP7adKfrwyZMnclRDdA7CoGoneNnOA1am1v1kPKMLcSUsI7id04c?=
 =?us-ascii?Q?Jgbja/Wtrplrzz3tH9lSTOzMlEOo4S9iPwdN2hpKcX6fE9Xcgpe7HD86gGZZ?=
 =?us-ascii?Q?wby7JWAu40tdTOkUwaV/gGdqkXllgHItwd3ptL6V7jq33zC/6nGH5GJhbZml?=
 =?us-ascii?Q?qH8ApQjqH+oXTxMja7ZdzX76O+9wontfO3q/+LSFSSVNfGWFHRdnT51s6bB1?=
 =?us-ascii?Q?mNaB+sDEjtc5TXj8lVkcBAErGoB+KiJW1rBmAXTD2we590uZ0C0up/qE3WKr?=
 =?us-ascii?Q?5OTBUxtKgXucavuCDJI1XFdkmcB0qAY4kfz8Nss5jKfpD121JHbiMQZIGQPl?=
 =?us-ascii?Q?XWG4Swb+2lTVrtEPToAey/r9zMaer7VwGLrLrMprZDB5bUpBRyBaTjQnjreQ?=
 =?us-ascii?Q?bjNpCLhPxNpuWPIKoxuU8r7GDlUYcAfb3yhv/lXiXfjpr6U3DA5wbSED/yif?=
 =?us-ascii?Q?/E2/aAd/qllJLAcgE29r93rPxomFiRbhD1dkGkugcoHSp+gatadI20cZyTCI?=
 =?us-ascii?Q?EM9g7RMoenzxT4GO7DXv/MGOZ/NB2S6NSB3BUTBR9cztbIog4sXgd0M1B1cA?=
 =?us-ascii?Q?XkzZhWLX6lIeIEf+v6exKG1m3nLtWGwTLgAB6zFDYKLw0UKikGOnvqUhyfIW?=
 =?us-ascii?Q?2ppwKOPV0VkRSyTl79B/V6OjC/2v4sBLJAKxGLLhV6gmPkHgTZ4JhxMTPu8W?=
 =?us-ascii?Q?JMg4K0V/Fhn109iq5M1OXD6LB/z7bmXGV7wuR9qxtt6Y2olis9beXJLOkcWV?=
 =?us-ascii?Q?GcXQfGUuc9sluhx9BvvZ54hVNQiAPpsM2zui7KpblCjmKEfoDbTe6rJfzKS+?=
 =?us-ascii?Q?/rg/JcXQch5zlOK8W6OCE3TQyw82X3YHMaP84VOjVU+Z6vObqDmSDv8GDEwG?=
 =?us-ascii?Q?U2PNuyHgMN58J+aN7CD5mvujiHn035bs17uoziZsIggqMJaWt1fUUb5jSDT0?=
 =?us-ascii?Q?xxP2ixvlTwDsO4Ykc6R1ZfLgPBR7jwU824GniL44o73/fS0zqrr17EPBM98z?=
 =?us-ascii?Q?5JN2Ke/C6HQXtjDcgmI4QLCE8KIqJKEgsxqfblz1+kN1zuWbaNmtXAB5LmDq?=
 =?us-ascii?Q?Rz7mNvWjQUCfx6SQNrMvQ3+mvIIB4t3Sh3oJIjr2wXK2us9Uk/uer5+ZA5I8?=
 =?us-ascii?Q?dA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca3f344c-6a49-4e87-73ca-08dc4cce4a02
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 13:20:06.9711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: snmq9pNmXYPCRITvq6SQT9rWMnyQywHXFYUFmJ60y6j2DwXRaHpgxAu+rsQKOO0nqt4d8yPqgMMPVbhCH2XA8IKfyqBMuECP7z/DpaiDywA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7938
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

On Mon, Mar 25, 2024 at 11:56:51AM +0200, Jani Nikula wrote:
>On Tue, 19 Mar 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>  .../gpu/drm/i915/gt/intel_workarounds.c.rej   |  18 +
>>  create mode 100644 drivers/gpu/drm/i915/gt/intel_workarounds.c.rej
>
>Whoops. [1]


argh... sorry about that. Should I just amend the commit removing it? Or
a real fix on top?

Lucas De Marchi


>
>BR,
>Jani.
>
>
>
>[1] https://lore.kernel.org/r/20240325083435.4f970eec@canb.auug.org.au
>
>
>-- 
>Jani Nikula, Intel
