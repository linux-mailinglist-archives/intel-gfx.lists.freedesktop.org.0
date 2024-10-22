Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 988489AA0E2
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 13:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A9F010E658;
	Tue, 22 Oct 2024 11:10:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BqEKazvu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9A8510E66C;
 Tue, 22 Oct 2024 11:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729595422; x=1761131422;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=fP8UjOgPILeomUu07b7bFuLgFJaqQlApW0VckaLkZcc=;
 b=BqEKazvut2oQg8ZcZBAbrcDNSspHBULd06PamKTMs3rZMNiGcpjEy/dy
 CLI4Tr34RktU83BKqOQoP89Sy/VtoMPQGWAr6q3gqY7PfEUTU1LtxcrLv
 uRCypQe/v1tNhvTY08hhvLy93CgyTzuet6ioxtQrc9MDTwFmqJjoINpJ0
 Acidk6jaOk3/2TV2Op0Jajmfzz+L7ccXIIcyMeOwPhJIvMScWsbw8hkaT
 +7Dh0G+bQU9lsvh1XgTQYIH5RRqRgJ4PTeJdnq3E59jP3sKD6gJKUTJPN
 ztOZAksSDkP89i0LvJK29zfXdZnD35PXD/cTMN8AZ0wmKycz65c2H2s8W Q==;
X-CSE-ConnectionGUID: kZK5DPHEQK+z4Fn8kzwnRA==
X-CSE-MsgGUID: 2kchBkqpRCyyrBUOs5FcYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28554899"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="28554899"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 04:10:21 -0700
X-CSE-ConnectionGUID: f6rPVNORTzuQ10tCZOjpBg==
X-CSE-MsgGUID: 8HeDLqXgTViuwhR24v5q7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="103132301"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 04:10:21 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 04:10:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 04:10:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 04:10:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QEICyTmfiFZMB1NXPFSFsS2AzwEs+dajEl5CojyzNWdT8Z9cDmNmwDf5W8hNt7NjjOXDKn7Z4Ol6RaV1ug7ZokPI/RzfGgGHN801ArcUMm0KvTFk2E1srvcsjp1HE/P/3u+vGqyE34uIts5BCOfKQZ2fJhrSYLKh8YSzGQZprJp7a+44XAy8MpWpYeM0hXG/SqN6oLSxYzKMvSvfVulNqUJgiu0+EX0U3TJlpImAeE+CW/tjkH3s3WV+Af65DKxZlvirO/T3EnPDGXBChp0gnyUD8Z5CuqwGYehKFuecCu+aG/9BNED9WfRGStXqkAPjEOBWd8CihRy06EDCLrfa/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ddI+KtKbNwrU2skAG9yKddQ11HGolbJKbedqhPy46LY=;
 b=ihy0Q3GvJoSchokzT43l37vGtzyYtqH4ey05AB3tfWa8BpwIDOYjY81I/44unSfUNoy+M7us1DZtR27AjjfgV7YoPgmYe2d/FlVsf3UxEMSR4eJyAughNc9HV/3ycgYD3VimzvNDFiWK/ubRSLWn4AmRT+52KSjXWz9noLRP/1ljo6kCBGma7XRAnbPcf+qCWWCZxRDeyeKjROz2MszDaYymZER9xoGpz93Cx5sISuZcMLOPLpk7G1R7Hc+PFXQJFdhyYtc9ZvKKe6GYb5lY4jegQvl5m3ATgysizMDnXOgygo0LRUHwJBowKIC9AyNHNmhvRLAhCNgNg7oRzqZM7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7386.namprd11.prod.outlook.com (2603:10b6:208:422::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 11:10:18 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 11:10:17 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87v7xkwom1.fsf@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-8-gustavo.sousa@intel.com> <87v7xkwom1.fsf@intel.com>
Subject: Re: [PATCH 07/13] drm/i915/dmc_wl: Check ranges specific to DC states
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Oct 2024 08:10:13 -0300
Message-ID: <172959541345.3700.8129010825458434472@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0162.namprd03.prod.outlook.com
 (2603:10b6:303:8d::17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7386:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b065eee-acc5-4d16-0424-08dcf28a1c6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEFEd21KY1NzY1FNQ0F4VDd1NW8xTEpObzZxQy90R3dnWXRIMmxMTG40dmNI?=
 =?utf-8?B?aDMxU3RqaXZZajJDQ0Y0THg1dnZmODNON1diMWNUcTNBZzJWSlBaaUwzYnVz?=
 =?utf-8?B?bG5vakw2bjFKQWVRS0NmWUNULzBMbHdNL01jRGdhamNlRjI4dDN6eEorTXRy?=
 =?utf-8?B?YTd6Z0NJOVRMaDVjZ3B0a2tMaEdhcEN3UXhnUUs4MXh1MlQ3OVJkZ2tjaWR4?=
 =?utf-8?B?SGNLNjJEU1RYZm1DTkMxRWdoWnNTdkdWMEtUWjM3dHZCTWNsbXd5Y200d1VH?=
 =?utf-8?B?Y1RBYUlCSE1SV2hrRks1N0RWODJJY1RnRFZ1Sjd1TDBrd3lnczZSeUFKV25q?=
 =?utf-8?B?WUlxU1VZemhQaVMyK3ZmMGxBemJpMTRyckZ4MGFEV01BTVhNZUJsRk5kUU93?=
 =?utf-8?B?WU8xRStrdzBzZFI1bHRTQ0xhUzB1NWFiQVV4OUFvejEvcnFQRWM1T3BVYVhi?=
 =?utf-8?B?WjdaYVpsbHprNUNOcVNEVGRSNlhPK1V5R1I1QXJ5VE1NeDAzejY1UkNEK2xk?=
 =?utf-8?B?RmRnbkRLTzUxOWEvNyt2QURIYnRYRFk2WnM4NUdqTVFYa2lWY2J1ZUJTaXk2?=
 =?utf-8?B?SGxaS2pGWVdIdG94dTdVOGRLVEZCRXdLaDFHTjNqZnFDNlcxelpwVDhKNGtZ?=
 =?utf-8?B?TUJtb2VETzU5a0I5NUFXQkRCWFFxcmhVdzlNbk1qbnZxVjUzWmovNERBVmpr?=
 =?utf-8?B?djRlSmlkZFpSTURzTFJML2dEL1pNVFpYM1lVZlZvVmhCSTRRWWtDeDlqalRY?=
 =?utf-8?B?eXpCcksvMnVmMGkwS0FCeUlzdlFPbU81UzNsK1gwREFpaVUyMmxvU0JrUVUv?=
 =?utf-8?B?dVJyUGVvcTdDUzcyZkVlZVBsNWdiWDFhVFJCSUpQbkoxbE5nN3ZTcUZNZ2xI?=
 =?utf-8?B?Zk1tT0VGVU4vaHZQMGJ4RVVIeDJzMnJhY1RJUTFnRGxkMkZEZDUwdk1SYXd4?=
 =?utf-8?B?am8yZmNzNEFwV2hqQ29hOFBrcStENGw3N0NZenhPb2Y3a2czdTRDbjVBT3Jj?=
 =?utf-8?B?MTQ2WlJJMDB1K0Nyd3gxY0RaTit5SmJwS1RFQTdQMU5sR3g5QTlEeGwvcjNU?=
 =?utf-8?B?WGM2TXlBQ2pLeTdad2RxVE1uOXdWVVdnYk1ockszUnNkUFptdlBDaWwyYVds?=
 =?utf-8?B?bTRHVGZ5N0VmL0lIUUIyRFUyT0FVTGpyK1ltazZWRDBOL1JIL2ZOdXR0bitr?=
 =?utf-8?B?SjhFbEpCSFgwb0t4MEFEUFd4RGY1VWw3eTdjSWdNVEp1bUNwREo0R0Y5QWlv?=
 =?utf-8?B?dVl4UWoxVkFvSnNEOXhQN2pndmMyWnY1UlhnaEhmU3hDUzNsNmRqOXBEYzJF?=
 =?utf-8?B?c2tsNytZL3JSL2xUWlArTkRNbFd6MlkyTTJnWEdyYkVUUGd5U29Mdk1WazBD?=
 =?utf-8?B?dVN5NWRxY0g0T24zUnB0WkMyQjlwT3RWSERyZFJhMmVVM1loVFMzQVdldlJP?=
 =?utf-8?B?SHNhS3hiRXBPZU9oTmh6Uk5qRVp5RytCR3JRNFdxL1Q4ZkZqcTB0b3JhZVUr?=
 =?utf-8?B?d29lOXhhK1RMUFZJZTBVcjJYSkI5VTNuc2hwc1RFZ3RxSWhyQzJFV2tSNDc0?=
 =?utf-8?B?NkFCNHdmS0dxVyt5M1o2U2dIRG1qWmMwcThuY21NM3Y0QmhKZXRPblVIT0Jl?=
 =?utf-8?B?bkZoeEYzeHpqTXBNR3FkZ2NtRHJOMWE4aUVnRVpSdWtTZnZmTy9oeFBteTNt?=
 =?utf-8?B?UktLTWdUWUFPRXk1MHp1N1NCUUlEdUd3dWJlZnpCeHp4cVlmcy9BL2hHR2R0?=
 =?utf-8?Q?BBjOki8SFWr1IlbEuqh5kLHaG2wC35pq23iOeW7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1pYVmwrS2o2aXQ1MWpPSHhQMldKT3dzMnRER0FPaGdydk5nWmd4NkkzNWhx?=
 =?utf-8?B?VTJLRFZ5S3VxZ2NXT1FMU1R4SSsvZEtZalVya1RDSEdXZW85eFZsNFNUQ25H?=
 =?utf-8?B?enBna1I3YkRhbHNyWHRNaEtoM1o0OTJsZmpNODVYb2VFTk9vVjk2czRSUzlP?=
 =?utf-8?B?aVdrdFVhSGVWdXFRTFZ0OTZxYWtZdFRyejB0TS9YcTN4ODJqSk1Kd2Q0RzZi?=
 =?utf-8?B?MVBQTzZNVGVtTVBBOGxsVFFqRHZTYUZ4SHdiV0ZBeWpFaDR4YWN5TFl5YlU3?=
 =?utf-8?B?Q0ZWUjd6c09XUDZYV3BENUpEcHQ1WmlRaW9mcmwyb3RIWkpLWE94RnRMbWRw?=
 =?utf-8?B?Y1V2T0p6SlpTTUg2UUtyYlB1ejB2eFhiaXcwc2dQM0p1aE1mbEVNK0ZnTmJl?=
 =?utf-8?B?N3I1YUl3b1gyQjhNK0Nvd2NqY1hGY1Q4cWdVeUthVkdkeit1aGpWMkIwMWZ6?=
 =?utf-8?B?QW43OWlNUTVXV3NJWDJVU1JzWjJsUmZ2SWE1UXp2SEFwME5zeFNBUW1ONXha?=
 =?utf-8?B?cU0zSGx1MFpHd3Z6eDJmSFFEMlZEYWFMazhoT0pmV08yMzNBelpFTG1kSmFJ?=
 =?utf-8?B?VEVmQUJmWm1Xa0cyNzgwOW51SHlCRldpMkpoM245NGo4eklTVnYyQUw5ZVZk?=
 =?utf-8?B?NUNyMWhrcHFBQWtYdlVPRUorOGdIUFFjU2F6UnR4cWkwNkZ5SzhCeUxEYzZw?=
 =?utf-8?B?VmNmTnc0VklBNzNSZEFGOTh0U21vS2c2NDJkQk93YVBURWdSamh3SjQrV1dM?=
 =?utf-8?B?aDNNYlZ0RUd5a3RyMjRkbUhWTEpTNGh0blFyYnpVQXJjZTdwVW52cUFrYUJ6?=
 =?utf-8?B?djM4dnUyL0VEY3k3bEtSWVhsTUNqblIxMS8wcFptbzB3Z2dZem1MQ0RMWlpm?=
 =?utf-8?B?cEc2TFNiSWJPUEhvZ1RRNnlwMUtnWk5wdlV0cy9DN3VYWlUxajMrcXI0SVJC?=
 =?utf-8?B?MjBKMUR1bzZkNjNTaU1KOThoakJ0YlJiZkRnV1ZYeWlFUmpHVkduUzI3aFRS?=
 =?utf-8?B?VEhONmM0SVNHSlFlT3NWN2FtZnpCVnpPOVdZazNIK0NoS0pLOUNqaVNtTlpU?=
 =?utf-8?B?eXdnd204YWVjWlQyWkZoS1Z4UThReENLVURhcE0yVnBRSlVXVU5MYWV6Y2V2?=
 =?utf-8?B?YjBRUUkzaDI2aXJQeWRWUDBGdzRiLzNjZGNiYUFBVXA1TmFXMjI0OXQxd2dl?=
 =?utf-8?B?eUVLRjhtdFNNZGYrYUJ2bWxxYnpXOTBUclpSeG0ydXlrLzR3QkR5eTNZYkdD?=
 =?utf-8?B?SzNUSlAzdzRQS2RsTVdxck5henhrWjRERU0xczJCNXpZNXJ2ZVlKWE9FeUF0?=
 =?utf-8?B?QTJGMkl2MjlmNjFoRGNoOTBZK2c5Y0JFV3ltS1h5ODBFbnp5NnhObWxmYjh0?=
 =?utf-8?B?OExESU9HMHN0dGJBemNYVlNQV09ucFdrMjBVeVpjbUlXZDl0ZDBVS1NkWXRJ?=
 =?utf-8?B?bk1ibGVTNDZ4Q3pRSU0rZVYrRTJBaTNrYXN3TmFwTnh2RHM1b0RhL1V3Z2tw?=
 =?utf-8?B?YU5DQVpuYXV1QUQyTEk3dWNmNVdGdC9qZENmays1eU9zUXMwcVlqVDNwaCtj?=
 =?utf-8?B?MWtwTVJUUXFTTGsxRk12cU5udW5lZnlXVzBvQktsdFRyWE4yNlBZZXhTUzF4?=
 =?utf-8?B?YjJyZ2tjQmFzSjdxSnE2WXY5STJqNHNtTDVpS0N2UTRVbWhZME5HQUxZSjYw?=
 =?utf-8?B?eHpxZGYzZlVjenJyenBUbUpxMnVJaU5FMGNQRzVNaTd3MnlYczlUV3lyUlZS?=
 =?utf-8?B?T2RXWVJ2emhkYVhwTHoveDJQekxFdWFzZHZvc1VBL2ZIYW44VlcrV2wzQjZa?=
 =?utf-8?B?eHdPaG1wRm9JS2dGUHlzbkQ2aXRBRWN6VEdPWmVqOFgxV3pyOW1zR01ueHRs?=
 =?utf-8?B?dy9JMHJaMUNFZjl6cFM4NUtncHJxZ1lISjc4cU5yUjVhT01kU0VDaFZXY0RS?=
 =?utf-8?B?VWw2RkcvNUk4enQ1alJtRHRMUVBQVzdsL1hCL2IrNWVOeXdlc2dSdTBnTEN5?=
 =?utf-8?B?Q0Y4Y1puVnZqSGRFV1FsMk1ZaDQ0Qk02UXR0eHZCVE93OUxoQUM2eDdZaTEz?=
 =?utf-8?B?VHZmdjZKSW9RdXQvTkUwUXREbDRFcVpUdzRqaUtRcWtLdmU4dFJMbStuRFhw?=
 =?utf-8?B?emNWcGpGaUt5RUlML2hsUGV5MjhRNkhISXhCdmFOQk1xZXJYNUNFd3krb2NL?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b065eee-acc5-4d16-0424-08dcf28a1c6b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 11:10:17.7097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BFXEjiq1GfHuitsdYJlT1ome3tsDcz2hP3+OT11scVtmhua7Z+OlXwFNnMbQWdZZ0uheCbgkj44b9vjpvAQ8gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7386
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

Quoting Jani Nikula (2024-10-22 05:03:50-03:00)
>On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> There are extra registers that require the DMC wakelock when specific
>> dynamic DC states are in place. Add the table ranges for them and use
>> the correct table depending on the allowed DC states.
>>
>> Bspec: 71583
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 112 +++++++++++++++++++-
>>  1 file changed, 108 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.c
>> index d597cc825f64..8bf2f32be859 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -5,6 +5,7 @@
>> =20
>>  #include <linux/kernel.h>
>> =20
>> +#include "i915_reg.h"
>
>I think you mean i915_reg_defs.h

Not really. I included i915_reg.h because of the DC_STATE_EN_* defines,
which are currently being defined there.

--
Gustavo Sousa

>
>>  #include "intel_de.h"
>>  #include "intel_dmc.h"
>>  #include "intel_dmc_regs.h"
>> @@ -52,6 +53,87 @@ static struct intel_dmc_wl_range lnl_wl_range[] =3D {
>>          {},
>>  };
>> =20
>> +static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
>> +        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL */
>> +        { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_COUN=
TER */
>> +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> +        { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_* */
>> +        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL */
>> +
>> +        /* DBUF_CTL_* */
>> +        { .start =3D 0x44300, .end =3D 0x44300 },
>> +        { .start =3D 0x44304, .end =3D 0x44304 },
>> +        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> +        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> +        { .start =3D 0x45008, .end =3D 0x45008 },
>> +
>> +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE *=
/
>> +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL *=
/
>> +
>> +        /* TRANS_CMTG_CTL_* */
>> +        { .start =3D 0x6fa88, .end =3D 0x6fa88 },
>> +        { .start =3D 0x6fb88, .end =3D 0x6fb88 },
>> +
>> +        { .start =3D 0x46430, .end =3D 0x46430 }, /* CHICKEN_DCPR_1 */
>> +        { .start =3D 0x46434, .end =3D 0x46434 }, /* CHICKEN_DCPR_2 */
>> +        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>> +        { .start =3D 0x42084, .end =3D 0x42084 }, /* CHICKEN_MISC_2 */
>> +        { .start =3D 0x42088, .end =3D 0x42088 }, /* CHICKEN_MISC_3 */
>> +        { .start =3D 0x46160, .end =3D 0x46160 }, /* CMTG_CLK_SEL */
>> +        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers=
 */
>> +
>> +        {},
>> +};
>> +
>> +static struct intel_dmc_wl_range xe3lpd_dc3co_wl_ranges[] =3D {
>> +        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>> +
>> +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> +
>> +        /* DBUF_CTL_* */
>> +        { .start =3D 0x44300, .end =3D 0x44300 },
>> +        { .start =3D 0x44304, .end =3D 0x44304 },
>> +        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> +        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> +        { .start =3D 0x45008, .end =3D 0x45008 },
>> +
>> +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE *=
/
>> +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL *=
/
>> +        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers=
 */
>> +
>> +        /* Scanline registers */
>> +        { .start =3D 0x70000, .end =3D 0x70000 },
>> +        { .start =3D 0x70004, .end =3D 0x70004 },
>> +        { .start =3D 0x70014, .end =3D 0x70014 },
>> +        { .start =3D 0x70018, .end =3D 0x70018 },
>> +        { .start =3D 0x71000, .end =3D 0x71000 },
>> +        { .start =3D 0x71004, .end =3D 0x71004 },
>> +        { .start =3D 0x71014, .end =3D 0x71014 },
>> +        { .start =3D 0x71018, .end =3D 0x71018 },
>> +        { .start =3D 0x72000, .end =3D 0x72000 },
>> +        { .start =3D 0x72004, .end =3D 0x72004 },
>> +        { .start =3D 0x72014, .end =3D 0x72014 },
>> +        { .start =3D 0x72018, .end =3D 0x72018 },
>> +        { .start =3D 0x73000, .end =3D 0x73000 },
>> +        { .start =3D 0x73004, .end =3D 0x73004 },
>> +        { .start =3D 0x73014, .end =3D 0x73014 },
>> +        { .start =3D 0x73018, .end =3D 0x73018 },
>> +        { .start =3D 0x7b000, .end =3D 0x7b000 },
>> +        { .start =3D 0x7b004, .end =3D 0x7b004 },
>> +        { .start =3D 0x7b014, .end =3D 0x7b014 },
>> +        { .start =3D 0x7b018, .end =3D 0x7b018 },
>> +        { .start =3D 0x7c000, .end =3D 0x7c000 },
>> +        { .start =3D 0x7c004, .end =3D 0x7c004 },
>> +        { .start =3D 0x7c014, .end =3D 0x7c014 },
>> +        { .start =3D 0x7c018, .end =3D 0x7c018 },
>> +
>> +        {},
>> +};
>> +
>>  static void __intel_dmc_wl_release(struct intel_display *display)
>>  {
>>          struct drm_i915_private *i915 =3D to_i915(display->drm);
>> @@ -106,9 +188,31 @@ static bool intel_dmc_wl_addr_in_range(u32 address,
>>          return false;
>>  }
>> =20
>> -static bool intel_dmc_wl_check_range(u32 address)
>> +static bool intel_dmc_wl_check_range(struct intel_display *display, u32=
 address)
>>  {
>> -        return intel_dmc_wl_addr_in_range(address, lnl_wl_range);
>> +        const struct intel_dmc_wl_range *ranges;
>> +
>> +        ranges =3D lnl_wl_range;
>> +
>> +        if (intel_dmc_wl_addr_in_range(address, ranges))
>> +                return true;
>> +
>> +        switch (display->power.domains.dc_state) {
>> +        case DC_STATE_EN_DC3CO:
>> +                ranges =3D xe3lpd_dc3co_wl_ranges;
>> +                break;
>> +        case DC_STATE_EN_UPTO_DC5:
>> +        case DC_STATE_EN_UPTO_DC6:
>> +                ranges =3D xe3lpd_dc5_dc6_wl_ranges;
>> +                break;
>> +        default:
>> +                ranges =3D NULL;
>> +        }
>> +
>> +        if (ranges && intel_dmc_wl_addr_in_range(address, ranges))
>> +                return true;
>> +
>> +        return false;
>>  }
>> =20
>>  static bool __intel_dmc_wl_supported(struct intel_display *display)
>> @@ -195,7 +299,7 @@ void intel_dmc_wl_get(struct intel_display *display,=
 i915_reg_t reg)
>>          if (!__intel_dmc_wl_supported(display))
>>                  return;
>> =20
>> -        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.r=
eg))
>> +        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(displ=
ay, reg.reg))
>>                  return;
>> =20
>>          spin_lock_irqsave(&wl->lock, flags);
>> @@ -247,7 +351,7 @@ void intel_dmc_wl_put(struct intel_display *display,=
 i915_reg_t reg)
>>          if (!__intel_dmc_wl_supported(display))
>>                  return;
>> =20
>> -        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg.r=
eg))
>> +        if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(displ=
ay, reg.reg))
>>                  return;
>> =20
>>          spin_lock_irqsave(&wl->lock, flags);
>
>--=20
>Jani Nikula, Intel
