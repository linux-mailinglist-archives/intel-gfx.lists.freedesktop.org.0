Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE3GKkAIhmkRJQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 16:26:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 045EDFFB92
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 16:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3343010E7FA;
	Fri,  6 Feb 2026 15:26:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DHIvC03P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3DE310E7FA;
 Fri,  6 Feb 2026 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770391614; x=1801927614;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LhezQmAGeIeHYracX4Vrt9Oa7xcxUOO+a/NmGOlSJwc=;
 b=DHIvC03PgHlwABk5pdiOPPRUWmlmjXxGzYCSKyUXwsxu6gYftxqX0+PP
 Y/24Y5SMpnkbeyW+Nz7TE9F9TYFCEuLg2euaoP6wJrFlcz0/miwM0TgUx
 sdrhgx10ss5ETp4o2IN461gHtyYet73Neo0A5ZzEs2Pmi1tizEahqWI6R
 XDp1+oHcVg/06mABbtlNOBo06O5zJlwg1Y+nHYUjO+nfNPtCJcylb5txz
 dI4pRnAzR2Q8wrVT9MH43Ev36bxt3ZCsbE1crEysSyESr5VHNpCN9YDZu
 v7RY7H7lY+sJrMw/EMfZPc/F8NCxhKonHGJZ+7EvpfN9mMJwKRmrVnb1D g==;
X-CSE-ConnectionGUID: O9tvIp6sTVqex13pEYJD+Q==
X-CSE-MsgGUID: 7DUBoQsSQAihOC+mBdBDyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="94250253"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="94250253"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 07:26:53 -0800
X-CSE-ConnectionGUID: z+y8WPa3QK6eBIPngppPpQ==
X-CSE-MsgGUID: aMUFnVVQSZ+6Z6Mw/MzMrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210230881"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 07:26:52 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 07:26:51 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 07:26:51 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.61) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 07:26:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZcSgA7Tkv/y0WAGo2xR81MFDnhrQ9PuBElTyDYx4ao7Q3A9LTfk9WPx89ks5UVk47m9xiGgh1mvxFNlg9gxTYVEct91HCHXsTX55+ft0sMlOa+Lu6JzvmwCjaeZM8DKudDvbepHaUjtY00u3t1t1xg5N9pCEegHQJnPM/KFMaMUw/0OYCgcqSiYHui87CRFJ2Mu1Gdv6mKS5TpTxifzTutnrNdiSDkJQ5SfW7kdyc0iZuhEIkv1uPtvQnVpKTL0whO/DsFrmlEl3kDNaXAzSbfIcFEljq4tfsqTfeQSLr8iUFN1X2dmXYFt3HUHJ7wHNC2yV7rgjcgF6kJadNklHtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=82MA7W2dxrViz4O/a+b3lRxmKgMXx10XfnHWlS0XTS0=;
 b=pM+4KZ7rGEVtTykOe8wLxnwKUx+O2br8XjmUvt7H1z+6mqEwDiI63ZeEAuRCp21CAOh6qZA4TV7sXSI32dpl1sZsy3Xf6d4cYO8BPZqsRhpvFdGa4CYgDKnWPpDY1oLkMxEJniEQMAKhkJDNUJ93kbaYqnlCNMX9rKYvDhK2e3inkcXy+VpOGi2nn2VnOKCNIYB5YcRbPlKVX5Rkk7Bq/NW2by66L/0Qb1t476nuog9Vhg70ymzj2QM4lzGxuTdMbgyoLm2bivHNXaohN2otc8eqD3fOo4ccrNBlNM0ljsO+216BpvL7B4xWLwLPnUKtLy+kOUlTmdIrXBKqiZPkkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Fri, 6 Feb
 2026 15:26:41 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Fri, 6 Feb 2026
 15:26:40 +0000
Date: Fri, 6 Feb 2026 07:26:38 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: Re: [PATCH v2 01/15] drm/xe/xe3p_lpg: Add support for graphics IP
 35.10
Message-ID: <20260206152638.GM2174980@mdroper-desk1.amr.corp.intel.com>
References: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
 <20260205-nvl-p-upstreaming-v2-1-9ec14f00cc6c@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260205-nvl-p-upstreaming-v2-1-9ec14f00cc6c@intel.com>
X-ClientProxiedBy: SJ0PR03CA0231.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7043:EE_
X-MS-Office365-Filtering-Correlation-Id: 7faef13e-8484-4993-cd27-08de65942067
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0L46qR0EF/2Z9UYV4dHNQtUApKgitKXwhpIrowc7cey/4GZAGvFN1bwLLJeQ?=
 =?us-ascii?Q?5lDSTI3z0hjoWMro7duD4TB8jlFAj+O79XJIY80zzZ+hlTZyMVAxOtYCpsW4?=
 =?us-ascii?Q?uvSWMNGgyjbx/TNEUoivTOprl3WQuYNPj00WOqItJyuima/mLxJ+ihoG+sOm?=
 =?us-ascii?Q?aCn+/pqtquxkXiStErAiYhJktzVZ9xTPVjTbZwrNgA4vtIRS2r0Q4HK6fMni?=
 =?us-ascii?Q?n0pGBdEdGjykMB7MnYwXln3W0Beh2Wrefk3bBrXuerdQNj9rKZClOXy7xQHV?=
 =?us-ascii?Q?+EpY40UXKLhe4Hw638ozGpZJiOYL/45RQ9t+Rse1FUlq+aguKK6u/kZRXtNM?=
 =?us-ascii?Q?9G8sF+EK9aln2zXDE6zRIInWbnnEWyWQnpVhqxa1VS9WnwkB2+hH2FEUnST0?=
 =?us-ascii?Q?65Xsr1oj9s9eSiLRbD3lS5xQ4Qez7IcUezhzWIOK45LZ5W5uPqt+0ogA2tWA?=
 =?us-ascii?Q?IUnCI6JzaGo1JzHWJ9jsA4HhRtXqz1Fgku26LHUqw8x2JhXeNrzFGVuVdESb?=
 =?us-ascii?Q?RHqO3CNNN1DyMf9hxSn+eDy6z51HAN4/n9OsLYbya2NifaOQtM1lXM269+pj?=
 =?us-ascii?Q?OdzuOcx2HkEbdqWoi71rSh2ME7OyxabA78KnGdkeGiY/qBG5EdLFbxgRb6Jb?=
 =?us-ascii?Q?x3vd45KtFEB1nPjbg2fSCxuvE+kNmSlBJhJKkRkl5F/rxpBt6hH03knYyXmI?=
 =?us-ascii?Q?g1W+prq2+PBdsgZ7jemvOCr2IA0FD4t7FcaoULONTJ87INHPrC2FrJnjYSkq?=
 =?us-ascii?Q?0bDPt3NYTgK4Z0t/DxNemGGMHbiDgj+ZMUSlLg2j/pF5GOd9leZSSWW9AcjX?=
 =?us-ascii?Q?1IWzjnA8hLwVJ09wdflGYmDU+usMlO8hBdl+MlM+Pqtkows99DzNTrUYXr+5?=
 =?us-ascii?Q?kj5p0VJQUQ8f0rGesQfMlLGX57J03iHbpZT2sm+tR3PqIScXJuFPAhRJ9DG/?=
 =?us-ascii?Q?yWCuk83+sW4PVurZZZK2vATEclBazFnVz4A0dzn/L6uXN8xXwoOF0vE2Wpbx?=
 =?us-ascii?Q?9zv1ZrbBQAC2ADh6zdTa1d/iMaaGdBem6qQC9PIWpU8F/YXS83tO/aiVnSV4?=
 =?us-ascii?Q?REkwNpWSRLFUPnvi+0Fo0y0A2v4EWIC3dxmKtbmUIEItSbU8LsDq8CK/auOd?=
 =?us-ascii?Q?vAs4ICm0tVvrxYB6om3fe9/0ocQJjLxox2cKJLHVvO0c+IkJBwz9Jy4N5kie?=
 =?us-ascii?Q?Tgbwr5M+JKhkvokdSw5D92KEJpzFTpmFYPcum0bKwv1Az1FZl/2OS0G9SWvG?=
 =?us-ascii?Q?tf1quoep9EI14BjLBJUv9eiYmjx4HobqDc8bALbTfrRTUfAdr53EnaZPu8WD?=
 =?us-ascii?Q?lspJTwCk0qwJ5l5Qzk2bzD3+NTfbcGfq4wz9qLTdJR0FlotnYVyqmljy0VDF?=
 =?us-ascii?Q?us9Yl7H8tT8v38tti64+hLR+R36LbASJ+cniPHR9emBg3NSkS/HoCwJdnxkm?=
 =?us-ascii?Q?d40QpzqQJRPMKIMqaPzaog0S5JQyy2m67D0PB4CAWX9miQMeja3zR7lNPSD2?=
 =?us-ascii?Q?k8GHni4uaKThJeTJ/qsw7ImZYrtehIuMtAENuKwECMX0DNxr0S+uFj1lykUY?=
 =?us-ascii?Q?hyPCJQPHNXwDLUcDkK4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WN3cGB9kNJ6YVOEV1SG0ajyrk/u9B26peGkGQNHekubLgA/YstPp5BjFqoG+?=
 =?us-ascii?Q?ondeCjyfIzjO4mgXoeBVtjx2FYzhVUkO7g+U1u9ud1xc8jgeRPcTD9wf21Lg?=
 =?us-ascii?Q?m75CGdn0ibXpu6he/IRjvBK0olSwJo9T9bvz2+B/qbgWaViGoKunJnm2Dool?=
 =?us-ascii?Q?KBqIrzj5um9em9XRcjBvlLjqqDYlndXCpp3/bQj20TPdg9NwfLfCrRYbbqd3?=
 =?us-ascii?Q?lS0WI8HEJ1fkFCpBa+MNIWRekxWG4kqGOCLPTZrOZkPHix8ZcW7GOyBxSr1U?=
 =?us-ascii?Q?o8nkgbHYO4q7q0ixO0eIPetbDbLhH+Ef3KvCMEryzPHf321xnVSZvJEnI/e5?=
 =?us-ascii?Q?2F/qc9u9hTdJTJzn3IZVh5eslvzkoKRCJvMtcTMrcOI5xoh82cEpkI+VR3Na?=
 =?us-ascii?Q?2tpNiKRliGWImDsN9EFVwEg4fEVJ8fyApbCS0KEiDvlqXVG2tzmVtPYyNPDB?=
 =?us-ascii?Q?n+0wfJKatXkSQYPY0DsyiJi1c6vi+F+rBmDOTE4W1N2ATk1rYwaP+cMYpb8F?=
 =?us-ascii?Q?1vWutb/mAKw83w+O83Q+kc6q9KJJOFCHtl6Kw31sT0Lj/MGl6AX7JyoCUsPK?=
 =?us-ascii?Q?fkkFkX7YBqwNKz1H4nJQb52XpuCEimYqxbYdjeRyOQOelTtxdR1ZMKM+wDeV?=
 =?us-ascii?Q?Z2le4CPm523iEdnMMRtsF4d8bsxRQHn6Us9PFzcNS6VHUpO1zPaLEVVSktmG?=
 =?us-ascii?Q?OzgdkOmEpCbds2soIDSvhaDzpckaAwrzu6qUjEPXdOlJykI+a2Fr0QdLTwji?=
 =?us-ascii?Q?LpJqD91ptKyDpL3JyfGKaLe7fPoxpm42hKiFPuODoO31maZjNNkRRPB08mt0?=
 =?us-ascii?Q?Oa/S4YD9SwC/hJ8C9MnPPILtucExI6u8CVG9qPkasdKhVTuvTmc8sUy+LI2d?=
 =?us-ascii?Q?GDMt5DPPQ89w7kGdoYIlO5AEtYdCCwHetdIZgXiYn6frRsAQ5XQdINeAoSll?=
 =?us-ascii?Q?fMag6kiWgdYpCIK6BcXLDs2ISl62r1LT4JVnmchCcpePCGSHRcX/HSFJEcKJ?=
 =?us-ascii?Q?DFAq1RUtvSiSurCxtu52X0HUqkAbniyHkUd5U04NQq1Pmv1UHSd6upD/9xQp?=
 =?us-ascii?Q?NUu7Kqg0lBD3J0nvxBCidfFrZp7XV5Iw6n9Te3H2MOgi+RNroGAM7T1vvegQ?=
 =?us-ascii?Q?z6YK5DN32xJl10QhuGNWwPF9jwAmcsObCsYCyQT5qQlf3mLLNUyY7TCsc1bd?=
 =?us-ascii?Q?vqsEPdogfVvsykqdaEBriTOJgysfdTNdi8KkkDs7ApuIJ+BF10zWK+mQWL4u?=
 =?us-ascii?Q?M7qkgSqz7x4tNY/E5IZ2maSkypIrWPZE/GH4aEiHUt542JkHKKVC/G9HHY2H?=
 =?us-ascii?Q?MlN6pVUwNpPsRkWJV0fJIQXmSDb1LajB08WIJh8eCvwOMAwfX1gXEjdM8XGE?=
 =?us-ascii?Q?vtZZ2ujXypXIt3D5acn/BC0kbHi0Rjh/3UmP/oBmP9OHDVC1DIE6MeY/WWun?=
 =?us-ascii?Q?RlOi2QlgUx6olxsrvdCyUF96zEPInp/PUlA2X6D9TW9YnH2yyFhSlllGLdyc?=
 =?us-ascii?Q?ZhqKWXFDQKY78FMDDJJgb/c2CZKT9tvTzM905W+v9CHtBT9ayqPGgB1ksRQz?=
 =?us-ascii?Q?pS39ha6zY+NbGRbjcdcB0oIocgoNU1DoTJ2QW5HOQ6PF3RtaoLcCif8cMNcc?=
 =?us-ascii?Q?1QR52CZtJGD2Rg1E95+Fr2s3ibXh9KwKfs9QYteGVAjULC1CkqkXakBah2tm?=
 =?us-ascii?Q?2hMs78E3F7n0nsy+aBmyhiDhZom3kL/6ReLP9d1mH0qGCococCWZmGFbegwY?=
 =?us-ascii?Q?il3hGCAdyOZU6rikTKu2vBCI8Ul7iN4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7faef13e-8484-4993-cd27-08de65942067
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 15:26:40.8148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BFk9X5NYvc8vUIwJIb0mqIlfdTPVahw5UbtNSBjyANZh/uU0lgvSVPd0FjwNzMGGaPICuKqxGBDLW//JQtnbU8u/NeB/C0SEVjyVu2kLfh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mdroper-desk1.amr.corp.intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 045EDFFB92
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 08:39:29PM -0300, Gustavo Sousa wrote:
> From: Shekhar Chauhan <shekhar.chauhan@intel.com>
> 
> Add Xe3p_LPG graphics IP version 35.10. Xe3p_LPG supports all features
> described by XE2_GFX_FEATURES and also multi-queue feature on BCS and
> CCS engines.  As such, create a new struct xe_graphics_desc named
> graphics_xe3p_lpg that inherits from XE2_GFX_FEATURES and also includes
> the necessary .multi_queue_engine_class_mask.
> 
> Here is a list of fields and associated Bspec references for the members
> of the IP descriptor:
> 
>  .hw_engine_mask (Bspec 60149)
>  .multi_queue_engine_class_mask (Bspec 74110)
>  .has_asid (Bspec 71132)
>  .has_atomic_enable_pte_bit (Bspec 59510, 74675)
>  .has_indirect_ring_state (Bspec 67296)
>  .has_range_tlb_inval (Bspec 71126)
>  .has_usm (Bspec 59651)
>  .has_64bit_timestamp (Bspec 60318)
> 
> v2:
>   - Drop non-existing fields from the list in the commit message. (Matt)
>   - Squash patch adding .multi_queue_engine_class_mask here. (Matt)
>   - Rename graphics_xe3p to graphics_xe3p_lpg. (Matt)
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_pci.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index b5e8935fff1d..08e0ff9f75e8 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -106,6 +106,11 @@ static const struct xe_graphics_desc graphics_xe2 = {
>  	XE2_GFX_FEATURES,
>  };
>  
> +static const struct xe_graphics_desc graphics_xe3p_lpg = {
> +	XE2_GFX_FEATURES,
> +	.multi_queue_engine_class_mask = BIT(XE_ENGINE_CLASS_COPY) | BIT(XE_ENGINE_CLASS_COMPUTE),
> +};
> +
>  static const struct xe_graphics_desc graphics_xe3p_xpc = {
>  	XE2_GFX_FEATURES,
>  	.has_indirect_ring_state = 1,
> @@ -148,6 +153,7 @@ static const struct xe_ip graphics_ips[] = {
>  	{ 3003, "Xe3_LPG", &graphics_xe2 },
>  	{ 3004, "Xe3_LPG", &graphics_xe2 },
>  	{ 3005, "Xe3_LPG", &graphics_xe2 },
> +	{ 3510, "Xe3p_LPG", &graphics_xe3p_lpg },
>  	{ 3511, "Xe3p_XPC", &graphics_xe3p_xpc },
>  };
>  
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
