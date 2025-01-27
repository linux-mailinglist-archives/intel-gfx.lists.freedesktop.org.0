Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4D0A1D757
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 14:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10FD610E54A;
	Mon, 27 Jan 2025 13:52:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gUh1RCSi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51DFF10E529;
 Mon, 27 Jan 2025 13:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737985920; x=1769521920;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=khyS9oeVrRLV6hbzUnJn9dELGby7M/n5PPF2U9L9DmQ=;
 b=gUh1RCSiXpNsFQkIHBSDE6krt5JnYr0JQvz2xWDbyq5RtGG3HOfAUnMz
 ce5xcacNtpb2prQMkcOoHpQ33xYLZOauK2NIR0DcGTm7jP2kTkKGmkMqr
 pFAFM6m4c4GKY2sNo51HwnRNyJIBi3nlPhwLN9vM4U7NDtmnp7FgoTl9D
 rLDrsmrIGIobNhag3HbI9Rxi+bSZ+makKDHCKnYwxqSSxv0OXsj5etmqY
 zNCwonPwgQsW3ExJDm9xAJ7Dr1+utMQWeEt6dX1bKg7iWuz6ONXtPXIZ9
 J7ar/3ha07Fsjv1FGEsHl0d3VATFKSwyNfVDa2Vs1U0XHnsqAXJY82DeI Q==;
X-CSE-ConnectionGUID: tor7Q7ODS3aEiwAnQwrFMQ==
X-CSE-MsgGUID: qyvCy+QmQf+8SSA0zDuiCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38476382"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="38476382"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 05:51:54 -0800
X-CSE-ConnectionGUID: PA298c74QSyS/Sw/0dc30A==
X-CSE-MsgGUID: 9SQz3MIGRyGbg13Sng9CxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="139294737"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 05:51:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 05:51:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 05:51:48 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 05:50:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rQphXkn4Zf8/1FwnW0GaEpsREGgUkbAoZvVjGcOuRkwZ7MKU964jRgcEsAxdLkSW8nmX3d4KRSzj6k4Ik8I9jzrdOu6qr2VwLa4X0LfhDtcvqAtP8FTSY05CnPpfohZZ6xqOOTcce1YtRuPlZnA9N3fZIlfOLLZfL14U5+HhU2Ray38XRqP7bAhqrOAqzB7M0+lBSe8LtaXL2QcwBak9Bh8u14SRcmfUZ061AasC/oqfBNOfFaD8GklOci3MDBz7NVfhUY7LxGxX9ZtvTIFdBW3LnqNB2oUYk0R/18hn7WONuO8NE453irFoip/QmF/mp/buuEu0FcsHJj2GxDNguQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7blqi+Ls2mj9ZJ4UcSZmzLuL+uCFqbXDFMApWppA00g=;
 b=U16ywti3brkjJITrU3a5HRErFD1j7bPYVkWq7F6Wk5zKnHcNiSujxlEWjgGtOI8k45l0rgah+S5XUN7T+ulduCFYQbocRw2yTLvka3G4PVUzsJ+7FeP4SALqVDDq4Civ1S+Q87z4nXekkPmAN1WoW5rX1KjaLpAmoOI27aTgipcgzamG0cYwYQzpJTYNDzo5qjugrVBN+2i9DqdUQZJNJmXzKtcKdfBRxAoJLfCcGPvDnFDXpr7+u+GmtY1DGLgaKguaz6Num4k2aUGmUXoE555EKJXFa0hliVBwKHbnejor8GtD9ZHjYRXota+4sNmw6TiYo5U3IaxxYX3xue/uVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB8704.namprd11.prod.outlook.com (2603:10b6:610:1c7::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 13:50:50 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 13:50:50 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87r04o9y6a.fsf@intel.com>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-5-gustavo.sousa@intel.com> <87zfjca2jg.fsf@intel.com>
 <173798426246.2736.2009100469112133541@intel.com> <87r04o9y6a.fsf@intel.com>
Subject: Re: [PATCH 4/4] drm/i915/dmc_wl: Enable the debugfs only with
 enable_dmc_wl_debugfs=1
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 27 Jan 2025 10:50:44 -0300
Message-ID: <173798584484.2736.7123406376932064160@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0225.namprd04.prod.outlook.com
 (2603:10b6:303:87::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB8704:EE_
X-MS-Office365-Filtering-Correlation-Id: 37722c21-f215-4595-af50-08dd3ed99be3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MEN4MDdscGdDejVSU01FanlRTEpjeDlKT1U1eXFyR3lDNEc0Y2JrM2FCZHBq?=
 =?utf-8?B?VFVUTnl2YzhJc1hlSlBtQjZoTTEzZzc0ZXprYWNPdWJQaHpJOXZ4c1o0Q1Vo?=
 =?utf-8?B?N09nMmh3RXAwOHdORlI2enZvWjZtMWRLR2NjNm1CckJmZVNJVzR3cnlaWkRE?=
 =?utf-8?B?MTRNTS9DeFlyOEZQTW5WYU9Xby9JSlI4eGRxWG4raFZkVXY0NXBxdFhxRThW?=
 =?utf-8?B?OGtKTldBUXE4Vkxna095a3haajNSYXc1L1g1WVR0U2QxbTM4VGdqVkZsMWxW?=
 =?utf-8?B?Rjl2L2gwRzVUUGVqSzcwcmtQc1FpM2VnVDZmTWF2Mm9hbkFwMTVwNHBiYlo3?=
 =?utf-8?B?dmFFTVg2dC91VnNxVEJ3azFKejgwanBMYXFTaWxuQ0lYcFNBNGt6dTJCakE3?=
 =?utf-8?B?SldvdTliMEp6cGd0NkJoVE9rMkhETjRRb2xsakNHMDNHd0FONkYrMmdIa2ZU?=
 =?utf-8?B?eVZPWldFNy9wTVNrUDN4emx6YXJVSS9FY2RDWS9IdDU3bXJWT1k5VEdhNUsz?=
 =?utf-8?B?K0JOckU4TXJSOXovc3lXOXhYQ29QaFdHODN5eFF0MmFkaUQvcWJDQkovMWIr?=
 =?utf-8?B?NklxMC94bnBsQjdUMHFaSWd3czJZQ2x4U08vZjJyaXZ6aEJCdVNydEFEL1g1?=
 =?utf-8?B?bUdLcVVTWW0yUll0amtyYlNyZW5ROHJQV0s0Yk1ScDFqcVhqOS91eGpEWnAy?=
 =?utf-8?B?eS9EeEhSTlczNk9nQ1c0OStpMnFMZ0xPcU1zSFFDdGNUMXBaUWViOHBWeXow?=
 =?utf-8?B?TWhRTUs2VDBkelZCM0ZIMFo5eS9lenZJSXVncFhGOHpuUWkvU3pMMEdmZW5r?=
 =?utf-8?B?dCtCS1lReGdqYVR3N1NRdTJJKzJKV3lKN3JZTnBHNVRYUzZCU2IwSzBxMFZW?=
 =?utf-8?B?MnJCZVgyVVdxdFV1QkpIUHdVbEo2YUlmb3dULzVxa0VjWjlyRjFMTTlMVE92?=
 =?utf-8?B?SUFpemV6WEl2QTlseG81YU9mTGE5Sm1qenhKWXBsbW5jL1psbXBFTDROVzRk?=
 =?utf-8?B?VXlWNjRxZ3BqTWQ2MjlpaTNGb3ljN0x5dlArMmhrdHViVE40ZW9VV1JzTTJM?=
 =?utf-8?B?ekk0MG5sR3VHbTJHUGpMNUd3K3h0bGxRc3dkN0tUbkVic05nbmNIdWt0YlZI?=
 =?utf-8?B?Q0hXSmNybCsyVGswWC8zTjZkMFlmbHJ4bTZzVEF4d0VoQzBiek1MRmRoNmZE?=
 =?utf-8?B?U1lMb1hKZUZXOGp3bmNmRXdmT3ZtQVE3WjBaQ1M4N2Z2QWFZcFRkRkxkVjFD?=
 =?utf-8?B?VC9vNnRNNlNEZUNQUWI4UER3cE9QMmVrWEJITjBWU3ZUd2dQczF4OHZMVDlD?=
 =?utf-8?B?M0JpWVY2R3A2THFPd1NHajhqd0hGQkhPa2xOelhnZUdrS3ZBR0xRQzJua1Fp?=
 =?utf-8?B?dXkxUENqSVo0T3NzUHdSRy9mTndEand0bFlqLzltT1hnRE1rM3A5am5qeFp6?=
 =?utf-8?B?OEoxV040MEtqTENYclNFVk4raDZVUlVzQ3VuUG82SnMxU0d3bzlOTUJORlV2?=
 =?utf-8?B?dXAvNnNYZTJVb01kNngwNndaTG50MXlDK2laUG1yVFprQkF3SGR1VUlnbnpF?=
 =?utf-8?B?aU5XaCtJZWVBMVcwbDllYmdRRU5rNWhBT3BXMWxOYVpzUU1JSjZHbWpjY2RT?=
 =?utf-8?B?bTBraTZodGZUMmdVT1hkRmU2S2tVVzRtcHJWY2twZUNKUWN2bk15bDNna01r?=
 =?utf-8?B?K0xaUksvWjVwK3liMm83eEFMZnhDcmxmdHBTQmdNWWFlc2UyTCthZktmZEU4?=
 =?utf-8?B?eHh5MTBqSUpseVBsTFpDYUZubDNyNHFXM1I1bGJsNFRDak05bjVBMXVtT0dR?=
 =?utf-8?B?YVVlUzVrTnRzOHUwbWRvVWthUk83WHZoZ1lnY3R2S0VxNmZQbG4wV2xBdlpE?=
 =?utf-8?Q?ftojesG6j0nQm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SU5rRG9vNnVNQWRzVEVUMzRXTjdiSUMrTWdVMDhDRGwzVklzdFJIUHMvNHQ1?=
 =?utf-8?B?MGhVTDI2aVlyS2lvRjAyeWc2TCtzTXpUdkE0RHJwM2dDOU1Cc0RvRndGamFT?=
 =?utf-8?B?R3FHYjdDcnJacUVsUm5FZ2Q1YmdBVG1HY3FZL3UvVHdyWXR1NmpLTVZtcU1j?=
 =?utf-8?B?TVo2RURWVzJqL21RVjQrd1ovVUdib1g2QnBYSmU3QUxkWG5NaG1iZlJsU2Za?=
 =?utf-8?B?dzVldnVpUXErbm9lZTRyTTR4U2RBbnE0cE9WdWF0Sy9wYWtOSkZWVll6ZVZG?=
 =?utf-8?B?d2VDNDFLMFpsSlF5YkFjdFRQSnh5ZTJ5dzEvWDFxNGVMMzdJRjkvaDJudWhm?=
 =?utf-8?B?MFBVTFNsRlM5V1hFRldjR1Frc2NWVlVORDg1THk1NThYZ0JhS0ZKLzhBaXdR?=
 =?utf-8?B?MWcyd3dEeVVIY1lKNFBTYXl0UFl3eTBLK0Z5ZWVOQS83NEhYQlMwMld4MmRq?=
 =?utf-8?B?ekt3YWNJekVQemZUOFBwbU9qdTlQbzZ0OFZtSDNkTFlpNEVabGhDVlVzNUNX?=
 =?utf-8?B?R1FVYW95STR5WXhCdFg2N3p0VzBkSGUwRUJtb3AzOVZLbTlFRVExbThhOWha?=
 =?utf-8?B?SGFIRzZreEVFNW15SnpPVmpuemptV1dmZlpPZklGUlNtWE5JeEo2QXpqemFM?=
 =?utf-8?B?K2VOeWp6endPMmJuejZXS3FoR2F6V1YxcktIVW9GUXg3VjVZQWYwSXdSU1l4?=
 =?utf-8?B?QVA1YXpIakJ1Q25JakZlUlhYTVZ4YzB2Y3FVRUFoUGpDcThKaENmdGxyaTMz?=
 =?utf-8?B?RFk2TENRb0M4YXN1cUx4cW5jUW9UWndDMko2TW1SVnFYVklHNzhjeEg5NzJ5?=
 =?utf-8?B?QmhSVko5Z3pJcGJGUW8rZU9xRWc2YVF5YkxkN3J4TWJ1b3ZuSmQycFRrcEJ0?=
 =?utf-8?B?VUxoMm9sVGNwRWRKK1pQZ3FJVDdRczlTU3FpeHdwZjVvUGVId2NWZnJOYTRx?=
 =?utf-8?B?b0NwTWRzRnYwWWJadERHT3pKWisrZkhHQmlrRXNwWWw3VGg1ZTJXdnVKcDcz?=
 =?utf-8?B?OXBMbnFBRFBBTGxCbU1OZzc2Tmc1ZDVyN2ZkWXNzbEFPaUdJVUI0MUVMY21R?=
 =?utf-8?B?aDZOZjdCbjBaRHd6ekdVVjJqVndqaVI3RENNVEh5VUtldWVYTy80bHpMN0g5?=
 =?utf-8?B?TWhJdDZrR0dLL1djdmx3enMzQjJsRFZnRTVmWjkweWFvVHZSMWd2T3c5N2lQ?=
 =?utf-8?B?bTFSaDdteVFJRDJNZE45YnNOeURnb0h5RWNWZkZ3RzF1eW94OFROSjF6UFp4?=
 =?utf-8?B?TjhrMVFvbTY2VVFSQkFCTkQxMy9lZW5jTUZFWnlyUWV0WHNTbDRXbGV6QWJJ?=
 =?utf-8?B?WHR5Mml6OUpsUUxUSnhEaWFhMFFJODE3RDlrM1NZdjA2Y1VsdDdoYlBLVUl6?=
 =?utf-8?B?SjFvNU5jWEpqT0NvVi94TnBCK3FZNWEyUW1WdFlBc3NCaG1sd0VGeHZyYkpY?=
 =?utf-8?B?MVJ0THI4c2wvendqMWFDbi9FSE1zamR2WDd4ejN4K1hqdmtYODNpbFY2ZDdI?=
 =?utf-8?B?aUZxUW1FR1BtdE5kS3dCbzZWQ0RiSTlVMjNOQ29oU1ppV0liOEFDbUNnR3Zx?=
 =?utf-8?B?SVpIUkRwTzFhSkNwTWRGdU1Fc1ovbThHcng3OXhKd0IzSHdUTFFtWG1pMHBJ?=
 =?utf-8?B?d3hoT1VpMHZCNCtrUFhIYVByN2RBSzNFTkkwZFpJRkdrbmVuTUU2M1p3SFlk?=
 =?utf-8?B?VjBxWXpjR3JMOC9nMisyODBtWmFkN3RBOVcvbzNIeHgvblErN3lVdVZaTnJZ?=
 =?utf-8?B?ZHhXQmIwcnlUMnlZNFdTcm45TC9rSEYzSWdVcjZwOFcyRUtIYm1weHhLUDZv?=
 =?utf-8?B?UGY2eGRRWnVIaE1VSURhcE9sZEUxVEpiWnowRUhwaXJiUkNZRXJNQ0p4Umtr?=
 =?utf-8?B?MytuZTlMOUZrZndPNUZUeXVXOE5YckVhQUNpY2dIdTNBVlJhN09EY1BpWVVT?=
 =?utf-8?B?OUxZejUzRU9pdmRnZGxCNEF6ejJwdzRUU0xEajlKOGFkd0dpbCthSTFhSDRH?=
 =?utf-8?B?dVRGbEk5YmtzMmw2K3FIbVJ4M2VleTRrTktSdUVGMTVtVjFUdG5CZjBYZVI1?=
 =?utf-8?B?SGNDWFYwQVdPQ1dkQkVzZkpYWVFNRjFocUN3YWxEMENSRXMxbDFmRVBZcW80?=
 =?utf-8?B?akp4dHFtVkd2ZnJIdHFPczVlZEtpd0pnOSswYlVVWkd1djRIck41UnNybFRB?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37722c21-f215-4595-af50-08dd3ed99be3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 13:50:50.2085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SD0l2PkckLcYeiQSe7JaK7A4BJJzv1vEb04ziBiN9U+a8e828623n/k4pgIPY1uRCB/IT0RvWGlgpONS7XQkJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8704
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

Quoting Jani Nikula (2025-01-27 10:35:57-03:00)
>On Mon, 27 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2025-01-27 09:01:39-03:00)
>>>On Fri, 17 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>>> We use a spinlock to protect DMC wakelock debugfs data, since it is al=
so
>>>> accessed by the core DMC wakelock logic. Taking the spinlock when the
>>>> debugfs is not in use introduces a small but unnecessary penalty.
>>>>
>>>> Since the debugfs functionality is only expected to be used for, uh,
>>>> debugging sessions, let's protect it behind a module parameter
>>>> enable_dmc_wl_debugfs. That way, we only take the lock if the feature
>>>> was enabled in the first place.
>>>
>>>If the debug struct were an opaque pointer, you could check for that
>>>being !=3D NULL. Register the debugfs always, and have that initialize
>>>everything as needed?
>>
>> Hm... I'm failing to see how this would keep us from having to take the
>> spinlock once we have the pointer being non-NULL.
>>
>> The idea of the parameter is to protect us from taking the spinlock when
>> we are not debugging DMC wakelock offsets.
>
>If you only allocate and assign the pointer when you enable the feature
>via debugfs, wouldn't that achieve the goal?

But then how are we going to protect ourselves from races when checking
the pointer for NULL-ness?

Maybe I'm missing some technical background here...

Is there a way to atomically do that without a lock?

Could RCU (which I still need to learn) help somehow here?

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>
>> --
>> Gustavo Sousa
>>
>>>
>>>BR,
>>>Jani.
>>>
>>>>
>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>> ---
>>>>  .../gpu/drm/i915/display/intel_display_params.c  |  5 +++++
>>>>  .../gpu/drm/i915/display/intel_display_params.h  |  1 +
>>>>  .../gpu/drm/i915/display/intel_dmc_wl_debugfs.c  | 16 +++++++++++++++=
-
>>>>  3 files changed, 21 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/dri=
vers/gpu/drm/i915/display/intel_display_params.c
>>>> index c4f1ab43fc0c..bc36d1b0ef87 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>>>> @@ -133,6 +133,11 @@ intel_display_param_named_unsafe(enable_dmc_wl, i=
nt, 0400,
>>>>          "(-1=3Duse per-chip default, 0=3Ddisabled, 1=3Denabled, 2=3Dm=
atch any register, 3=3Dalways locked) "
>>>>          "Default: -1");
>>>> =20
>>>> +intel_display_param_named_unsafe(enable_dmc_wl_debugfs, bool, 0400,
>>>> +        "Enable DMC wakelock debugfs"
>>>> +        "(0=3Ddisabled, 1=3Denabled) "
>>>> +        "Default: 0");
>>>> +
>>>>  __maybe_unused
>>>>  static void _param_print_bool(struct drm_printer *p, const char *driv=
er_name,
>>>>                                const char *name, bool val)
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/dri=
vers/gpu/drm/i915/display/intel_display_params.h
>>>> index 5317138e6044..cb7dc1bc6846 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
>>>> @@ -48,6 +48,7 @@ struct drm_printer;
>>>>          param(bool, psr_safest_params, false, 0400) \
>>>>          param(bool, enable_psr2_sel_fetch, true, 0400) \
>>>>          param(int, enable_dmc_wl, -1, 0400) \
>>>> +        param(bool, enable_dmc_wl_debugfs, false, 0400) \
>>>> =20
>>>>  #define MEMBER(T, member, ...) T member;
>>>>  struct intel_display_params {
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/dri=
vers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>>>> index 1493d296ac98..f4e4c7a5a730 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>>>> @@ -37,6 +37,9 @@
>>>>   * which exports a buffer of untracked register offsets and also allo=
ws extra
>>>>   * register offsets to be tracked by the driver.
>>>>   *
>>>> + * The debugfs directory is only exported if the module parameter
>>>> + * enable_dmc_wl_debugfs=3D1 is passed.
>>>> + *
>>>>   * Untracked offsets
>>>>   * -----------------
>>>>   *
>>>> @@ -411,6 +414,9 @@ void intel_dmc_wl_debugfs_register(struct intel_di=
splay *display)
>>>>  {
>>>>          struct dentry *dir;
>>>> =20
>>>> +        if (!display->params.enable_dmc_wl_debugfs)
>>>> +                return;
>>>> +
>>>>          if (!HAS_DMC_WAKELOCK(display))
>>>>                  return;
>>>> =20
>>>> @@ -453,6 +459,9 @@ void intel_dmc_wl_debugfs_log_untracked(struct int=
el_display *display, u32 offse
>>>>          struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>>>>          unsigned long flags;
>>>> =20
>>>> +        if (!display->params.enable_dmc_wl_debugfs)
>>>> +                return;
>>>> +
>>>>          spin_lock_irqsave(&dbg->lock, flags);
>>>> =20
>>>>          if (!dbg->untracked.size)
>>>> @@ -479,9 +488,14 @@ void intel_dmc_wl_debugfs_log_untracked(struct in=
tel_display *display, u32 offse
>>>>  bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display=
 *display, u32 offset)
>>>>  {
>>>>          struct intel_dmc_wl_dbg *dbg =3D &display->wl.dbg;
>>>> -        bool ret =3D false;
>>>> +        bool ret;
>>>>          unsigned long flags;
>>>> =20
>>>> +        if (!display->params.enable_dmc_wl_debugfs)
>>>> +                return false;
>>>> +
>>>> +        ret =3D false;
>>>> +
>>>>          spin_lock_irqsave(&dbg->lock, flags);
>>>> =20
>>>>          if (!dbg->extra_ranges)
>>>
>>>--=20
>>>Jani Nikula, Intel
>
>--=20
>Jani Nikula, Intel
