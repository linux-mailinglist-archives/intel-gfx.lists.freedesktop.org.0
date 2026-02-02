Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDPyJndlgGlA7wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:51:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07764C9CEA
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852EA10E3C5;
	Mon,  2 Feb 2026 08:51:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c2/YbPsA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 921CB10E3C5;
 Mon,  2 Feb 2026 08:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770022259; x=1801558259;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=x7QEr1wMGRAhWAb5ecIHu/MC1mxw4GxLCBjpWwPXWn0=;
 b=c2/YbPsAdTNIp2AwIifa+IRdAIJ6dkYTuBUgxG+DvRE4kUzYPB8cbxj4
 I5DOg9ZbQWyaBxEy72MJGgsNEbGbXQcGBinCTpZYrBm4UuVSeSCX4Z/JR
 A9RhyiUhxamJJ8/KnSFi0ZKULlV8c+mDbARf0i0DD65Acw3iU84okeAA9
 Rx1h/gU/rMBM/uLzQOnsKh9Nw52TKhyPk0ibeG1oGcG7WdiLyM1z2SqV0
 5X0bH2IetIlVrvDKsvxHRq9u3QrS7qQ1t9F55pLim5ZLEIe1myVd6I/fp
 QlxkU0mYKXm2IaWwaIRN3tzSBPtKItxelCkBSKQKdXJCG6MZunt5vo+bJ w==;
X-CSE-ConnectionGUID: D7Zv4Df/QmCyjVsqDnlu5A==
X-CSE-MsgGUID: LqoExfyORR+XzGBT1jzRFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71340112"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71340112"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:50:56 -0800
X-CSE-ConnectionGUID: utUXKYr1T0C/HRaY5CLvHA==
X-CSE-MsgGUID: YsYgcySrTS6PPD0pUdZhIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="240152536"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:50:56 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:50:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 00:50:55 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.6) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:50:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T5TmhF47LJ3CcJh4cJWgzNabZI6Exw59adVtjXN9eJn9G3nxkr44R4OK4Dz5u8mqxOIf9DmJvYr7Ld/JRse0PkK+1JMg6HFTaHJZt77iBS49psiFUxjMFBi6VGqxcDcqbm2IVjFVX6bCU+avlmvq/f/w4g4Pd6etH+kcQBQkux3NIYcwSJD1wOoBDw85GPptl/J43SBk3DKdSpuY5uc1C3NbTKhZA6QhLOkHRLaIki2/srNpVr/aLYA5d1WtNaPMXzUNl49NlW5oPavCFq31znoEK98jzaf+8zVi9d/6XVchumuW70LLOVd9CVgTqIzjGrlkpA6nBGr6h3CgddJtPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBRcqhsSe/jfwgVVn/mpocHMGiQT4Qh6NMFcoz5pi3A=;
 b=p8vYg4ooxXNsLVH+RACXD640ymXK8z+eXuUY9gQ1FzEG00IlNaXTsqnMM3NmaJJvgHdsrKETHz3ZLmUzKsXBsPNj+E2+lJjpuX8xwcsob2j+NT5lI0Fibj1kHNwdpLxAIESclGlDzd2zV0Npu5XQwqE7FkIpVj6t2lH/Pz60ZtYosz74cnD//2sSjXifaZP+xOahhxG2Nsnar/oL9jUtmwlcayxbnlrkhx71q5Zil0D6gl9iRH9QVyLWg9j5dzgx5UiTdmZ3PZj5KiaqxWXheuxjrXjmz7cclRgYf2XPHbAITFlGBCqdeKO/+p3dpNFPGzdMpFKKFh1ac5xyGFbiog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.15; Mon, 2 Feb
 2026 08:50:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 08:50:53 +0000
Date: Mon, 2 Feb 2026 10:50:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 08/17] drm/i915/dp_mst: Rework pipe joiner logic in
 mode_valid
Message-ID: <aYBlaFOIsCSbefqI@ideak-desk.lan>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
 <20260130081812.32087-9-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260130081812.32087-9-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DBBB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::6fb) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CYYPR11MB8429:EE_
X-MS-Office365-Filtering-Correlation-Id: 92f628d1-04f6-4744-dbd2-08de62382c11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GqEstNmAcKTkkH4mKn5nvLBozukzJ8yPoMvHu+xrbg3caghjpQgI/4gRP29x?=
 =?us-ascii?Q?oTNF8ISri5EpvbIS/Dh8JHpjTlpJ0dxgyBymn/ptsclgs+IEz6kxL3rbduQi?=
 =?us-ascii?Q?F0X2Tw23onaocAowrayVyBmYZ/so1v7SyMjhMWOPLR9mN2f+cImk+dD6oXYE?=
 =?us-ascii?Q?nzu6M25ahAQOXSdJ79gX1b8tJ3LuKe4gh/TnkZ6fxp7N5juNN1AGhyMrqTMN?=
 =?us-ascii?Q?MoiYeyhDxaqcE3F1H2HYj0G26KDsJrAfzUdIDHI1mFKiPjUyKkHjP7p2ntxW?=
 =?us-ascii?Q?1vk3KyATYxoHl6kqhpKSqy6jRQfiHXN212Rmj+UFlmxUH5aBO6IB/9eZn0LL?=
 =?us-ascii?Q?8X4TCxXrHw9CxQdTPZflDb+W4rNY1H9fi0+E00+TI4qtDb1mqSY3a2XFes4H?=
 =?us-ascii?Q?6aevE7hSIPUPCwivSi6gOUEh8wyKGhh3dTWmFUhwPZIDG9hdq6oN52ij2vog?=
 =?us-ascii?Q?yi0GKRtDsl5y8TzrYGhtk57BJmX45Fy6vBUZXZBdvMC7IRE9vbsKTo4Uf6VH?=
 =?us-ascii?Q?bvBfwGFQfqNlZFGMUh23/E1CdfmlV/p9EQCKT92/rHyXOpL4qGasy/byWXk1?=
 =?us-ascii?Q?cWcEbGZE3c3BK54KvF4x81UeregNthJHBegGK5nvHtkKH5J2RrDD704lpUyO?=
 =?us-ascii?Q?qGz26dt8OOYSn5Q0wXRG18oz6kF0zYkQV9jqx9y4RAH0yrEMRvPsfcgH5dpb?=
 =?us-ascii?Q?cj31KswPvt24eZmxDkBtUyxrbqm6rz4paznWc4+8lise3CxVdmcRfN3ZlcLm?=
 =?us-ascii?Q?9NXjW1Wsa2w8XCFjKaF2NcC2TGT0lIZMSl7KnKtjaRdxqN1w5oIgrp026uTa?=
 =?us-ascii?Q?wzYLIrYvm0A8aZr+DX5Lvkm58g5lu2vVnxpGNRWqcDCiqmEL4iIwCH9bjSS/?=
 =?us-ascii?Q?kvVI1BT3f9Nby2PDgCteMuiLuPLnnwMcymXvBebr+RIWRvpB82v91gLuMXLJ?=
 =?us-ascii?Q?Zi3i7gmPbUINpSKU9tT/cGiWr0tAINDDjaIlEJ9TKhITr/hU2N0GEGVCjUHw?=
 =?us-ascii?Q?ZjJciWXN+0M5KuZd2P8yRzZSJom7YyUT/WlAnJpZbkNO0rPQjx7JanfeR37q?=
 =?us-ascii?Q?04SuMO5NATqrHCt/XFT48KgIMqCJtL8heV/u8xSQPGoQl3c9baHpcXDWa9JZ?=
 =?us-ascii?Q?IF8DofAKRMfsEnQks3kBWH6FJ4vOJMH0u7k/6J3vPEkhZgK6TKjlxPlUlYCE?=
 =?us-ascii?Q?fC2KhhOTRcRO5ddYeiMHk9eUmZpULjA/JS4aqBgOIvxf5eG5W6xW70h1uQlW?=
 =?us-ascii?Q?kxVfjQAOhQSVbf+NBmpFg1as3/CLlorOPybDKG0M7nbKU/Nf0smGRpgpvayS?=
 =?us-ascii?Q?hdcs6oVC7PtPyU6X10OSlpi/zWFwLmliOMP7RQoge47WnB6UVUaUS6ecbGsl?=
 =?us-ascii?Q?GaSlX8qJpqdLB+56qcQLKDjE7vgEnUYugYHD8uS4HCQPzj6f1aw6aD4PfUwL?=
 =?us-ascii?Q?+rmTJLCQdM178fkJ2W8TuKhx0fnOksm2Tm/MqLXClGPY/x/GaISzjClMI0zi?=
 =?us-ascii?Q?kxXyNRK6/Hr8GP9vG6bx/kGiQj0nNwYYauOeBCkuQwiRTKBDvNdC2m3bGJyn?=
 =?us-ascii?Q?KTKku/pNAY/+1SytAyA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CmaNkMOn0kQHzqW5Z439pjrmLhl/gfI1GtSTTEfRYJ1p1qjOue5BwJVHGbry?=
 =?us-ascii?Q?TU5ydKbF60/nnJmWRgRm93thxMuB3hQN/qIaq8kE+BPeHwC/z7IcnOlvPSzs?=
 =?us-ascii?Q?WMfD/fl3dkVu06DSXU0EZC4EtbiF6l+LULrKQIBTFQX+zD1v9uCQR4t7xohs?=
 =?us-ascii?Q?WL5jTzUiTzv4l2NazxiZsOAq0rFLBweCY20fk4QKGZSc5ZV9ATV6WDzwETTo?=
 =?us-ascii?Q?xq1ziLYgc2AM5BdcPi9QRdCAcwb+hIn0+CI2qscfM869MTD5AziQKkNTOisz?=
 =?us-ascii?Q?I3vUAG1oAuIpB4zaLSr5UPoz0KTDl7z2AZV7j/D1rAl5UTr6WqYIGhRO653G?=
 =?us-ascii?Q?Br3F4fZMa0Lfl+GKXM7bgWPagVbbRks9rAUpqGwePgrvZOuC3AU7wK5uQTxD?=
 =?us-ascii?Q?lOqEcTpJ1a9m0ZBpgt2OkNTO4pTqlc86Uz1oEdipXn51EYxFEXEqipx9tD6i?=
 =?us-ascii?Q?/chTqFVxVH2KzF9IZPKF65nIn2rbhBtsYBLvWR0fVrexVeRk2hV28dtxgso8?=
 =?us-ascii?Q?u5gReP/two8IY2KIYg6XS/UQlcWnEOvbZKMmjK4o5k62DFT4SIZKd632ETh+?=
 =?us-ascii?Q?Ln7lQXWWtdx+laMJPiyIH5lt6S/m7ajhnCf5c+lTwFDwEEm2Sd3c1vfs3Pz5?=
 =?us-ascii?Q?wR/tL4L4wHD9mrPua7wnJhVZGU+Uab7bOmN/pRtPnhJ904hEUOE6DNj3h/9D?=
 =?us-ascii?Q?+hCGvMOg1O0qfL2woO69gZPr8WvywibTYqSs6YUmR6ZleRom6WBz3gBlixoA?=
 =?us-ascii?Q?Y5Aw9CAySl1eapcEnwXCtnzT2Gquco0L6WRjYSN+BTh4D29NmdhB/OgBwQvZ?=
 =?us-ascii?Q?CO97t6DV+LDCzVU5ZXGP4McNkp3TdYTzzT1jWDmeqEgdKwZ7d+WD8VeHjbcO?=
 =?us-ascii?Q?NaCy7mLdhNrjeVabNqBUeDWEyR+6zuREGH6ygPa0zFGCiyxdt54qse27oQzZ?=
 =?us-ascii?Q?tLbdMofp06WGNU26X0OtfD+VYvknQkwwfdRslf78Qx32DBWaJ1FhhaG2Yllq?=
 =?us-ascii?Q?RBPbT/4GelZzmZa8NyIOGJTKcYh3IqA5VQPlTJVgaI1xxOMxFynqFH7OzLzm?=
 =?us-ascii?Q?Z/bre3WjIZdXtAWbeESM7JZq+GIGoPmBvuSqLI5wJie8ykFelxObPl4x3ZB+?=
 =?us-ascii?Q?I7Ul8qWhYESY3rIeSCv/gUfB16IDXLloJOCuuJ+y3iF+/shcNY5UwLuQfFEg?=
 =?us-ascii?Q?Sld1LP+e0b/1r43dXKCWOBRY8HRzEoBmfVqAE/RB+S+2wHW1YnX/3qz7wZ8A?=
 =?us-ascii?Q?drjU0+0f4kYALpdOcITmiWQIvNjFfCNjmeCMTXo51u1laUBqnOujshlMUqMK?=
 =?us-ascii?Q?3oWAwCkc0fk3af/U7Gb12yFcMA5rULaV/GpjYXCN2yM/MlkjYbpd3PXqak7N?=
 =?us-ascii?Q?TnsEpkEvrUP3STAu8bbJYbzm2F1iXlsnCCl7zIBL4p1IsS6nrNB3cqWt2lrK?=
 =?us-ascii?Q?h6WBPnDFA/0wHip7YEPr9pDE+AdLWqZWpcCvZPhxXKZUFm3r/w9cModcpJX4?=
 =?us-ascii?Q?DN9Ba2CQXfUfAdE/ZwkGjdwMTwGtQw0i9xyWj97DUichQjSzcAGpGOAmlP9a?=
 =?us-ascii?Q?4pbKno/kbHwZ+rBgQsNLIUVMFCU+yr1XLccySsWKGRfrVduVM5/wjtjCBW8i?=
 =?us-ascii?Q?jl38NZGhGUkBgEeU4MFsD1AYcAzt2/ZTC8k7gmIhJPRNLb40isJ5e5ZvkNuV?=
 =?us-ascii?Q?XTlQvV1Ha9EMz9DDtMcO8LwvNFnti3TcR7LDpbGsI6Ioul7tIJGRvoNk0c+p?=
 =?us-ascii?Q?XGI94eQU7A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92f628d1-04f6-4744-dbd2-08de62382c11
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 08:50:53.1261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EjzIW88YgC6co4m6AHyylkJofP4mK4+/mIwGibqfaER1EAFzZCwKoMsXODTh5YvUfFJLCT2n4Ay2vZfpPvcqOw==
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
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 07764C9CEA
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 01:48:03PM +0530, Ankit Nautiyal wrote:
> Refactor the logic to get the number of joined pipes. Start with a single
> pipe and incrementally try additional pipes only if needed. While DSC
> overhead is not yet computed here, this restructuring prepares the code to
> support that in follow-up changes.
> 
> v2:
>  - Remove fallback in case force-joiner configuration fails. (Imre)
>  - Drop redundant MODE_OK assignment (Imre)
> v3:
>  - Align with the changes in intel_dp_mode_valid(). (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

One comment below.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  2 -
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 86 ++++++++++++---------
>  3 files changed, 52 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 85e84f7748d3..2a31543ce4d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1371,7 +1371,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	return MODE_OK;
>  }
>  
> -static
>  int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
>  {
>  	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
> @@ -1434,7 +1433,6 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  	return true;
>  }
>  
> -static
>  bool intel_dp_can_join(struct intel_display *display,
>  		       int num_joined_pipes)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 25bfbfd291b0..6d409c1998c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -225,5 +225,8 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>  				 struct drm_connector_state *conn_state);
>  int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  			       bool assume_all_enabled);
> +int intel_dp_max_hdisplay_per_pipe(struct intel_display *display);
> +bool intel_dp_can_join(struct intel_display *display,
> +		       int num_joined_pipes);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index fc9367cc42ec..6414fc8fb4a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1420,7 +1420,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
>  	struct drm_dp_mst_port *port = connector->mst.port;
>  	const int min_bpp = 18;
> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	unsigned long bw_overhead_flags =
>  		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
> @@ -1480,47 +1479,60 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  		return 0;
>  	}
>  
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     mode->hdisplay, target_clock);
> +	*status = MODE_CLOCK_HIGH;
> +	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
> -	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> -		/*
> -		 * TBD pass the connector BPC,
> -		 * for now U8_MAX so that max BPC on that platform would be picked
> -		 */
> -		int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> +		if (connector->force_joined_pipes &&
> +		    num_joined_pipes != connector->force_joined_pipes)
> +			continue;
>  
> -		if (!drm_dp_is_uhbr_rate(max_link_clock))
> -			bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> +		if (!intel_dp_can_join(display, num_joined_pipes))
> +			continue;
>  
> -		dsc = intel_dp_mode_valid_with_dsc(connector,
> -						   max_link_clock, max_lanes,
> -						   target_clock, mode->hdisplay,
> -						   num_joined_pipes,
> -						   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
> -						   bw_overhead_flags);
> +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> +			continue;
> +
> +		if (intel_dp_has_dsc(connector) &&
> +		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> +			/*
> +			 * TBD pass the connector BPC,
> +			 * for now U8_MAX so that max BPC on that platform would be picked
> +			 */
> +			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> +
> +			if (!drm_dp_is_uhbr_rate(max_link_clock))
> +				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> +
> +			dsc = intel_dp_mode_valid_with_dsc(connector,
> +							   max_link_clock, max_lanes,
> +							   target_clock, mode->hdisplay,
> +							   num_joined_pipes,
> +							   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
> +							   bw_overhead_flags);
> +		}
> +
> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> +			continue;

Nit: This does work, since *status is guaranteed to be other than MODE_OK
(either MODE_CLOCK_HIGH set before the loop, or the error return from
intel_mode_valid_max_plane_size() in the previous iteration). However
for symmetry with the SST code, this could set *status = MODE_CLOCK_HIGH
explicitly before the continue.

> +
> +		if (mode_rate > max_rate && !dsc)

This as well.

> +			continue;
> +
> +		*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +
> +		if (*status != MODE_OK)
> +			continue;
> +
> +		max_dotclk *= num_joined_pipes;
> +
> +		if (mode->clock > max_dotclk) {
> +			*status = MODE_CLOCK_HIGH;
> +			continue;
> +		}
> +
> +		break;
>  	}
>  
> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
> -		*status = MODE_CLOCK_HIGH;
> -		return 0;
> -	}
> -
> -	if (mode_rate > max_rate && !dsc) {
> -		*status = MODE_CLOCK_HIGH;
> -		return 0;
> -	}
> -
> -	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> -
> -	if (*status != MODE_OK)
> -		return 0;
> -
> -	max_dotclk *= num_joined_pipes;
> -
> -	if (mode->clock > max_dotclk)
> -		*status = MODE_CLOCK_HIGH;
> -
>  	return 0;
>  }
>  
> -- 
> 2.45.2
> 
