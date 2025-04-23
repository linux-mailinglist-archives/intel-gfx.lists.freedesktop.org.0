Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6F1A97FF3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 08:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5AD10E405;
	Wed, 23 Apr 2025 06:58:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kDADeaLA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A3010E405;
 Wed, 23 Apr 2025 06:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745391527; x=1776927527;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UdzIYxlmfohHVXIINaiiiX3UtwmUH7EhkzkThnm7ZIo=;
 b=kDADeaLAtNEyaI6xXyA5IS7zZ0u7XT1XPzsnMaQqR0M0xG6wWFHVNfzH
 YUR7fULaSi/lv9DFqJDIeZvAt8t8bP5Cm6wgXlPZKrSpAvBoaclasZaQ8
 eyY3l00pbLUpjlCovQN+tr6lI95uV3T/ZkHbyCkFOf7HGLtkbrs5oI/Zk
 sT/AHRVWw+EgVpK0r7MqxSpFnRPnzJI65Tzy3g1uXV3rGTfiFWasXIC2j
 QP7IjKfUYca/+xFqd2EVb6cRjdKfqhbhj0BNDRT5BgZM51J34tjQJWmRQ
 WA+xxo6ktwtgmWb98F9nlJLwxovRWi/7Wvva2WKQbr5EVOV6HSbLg7YVr g==;
X-CSE-ConnectionGUID: zBXHzUlUTueA/zFalXtXsQ==
X-CSE-MsgGUID: nwxqV/caSumGF1dMYvhs6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="57628176"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="57628176"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 23:58:47 -0700
X-CSE-ConnectionGUID: clq1M6WcRUqbqlFEYDT8TA==
X-CSE-MsgGUID: m1O4Ni2JR7CwIzsJT11r3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137395228"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 23:58:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 23:58:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 23:58:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 23:58:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nfBBQret0ChAxOcEjZ7ZCkGk9VePdxuUhXNn8Ud6kGuDqFpYlbmgdbDWQz5hM66OuWzNi85DrM14/ViN6RPH1OWra/2juzKBZep1QqFcNEYzBuxot0C2N/ezjV3g/NPEv6nW8X2lo2SjcsDACPxViiuCiBwkLw/3R67mhqEW7T93OeNvaTQL4/A+i1L32Tg/D3SfAoqmABxjwLxuCQXMK194x4U2ZDgDya7dHPYuRPQAT0TvY9EKA2pGCkOpJUNYhTA8G6DWRR2bSemExlsvAer1vtoByEtWi4YqwobEUF2Lxcr8RXq3jDimy/+uQNGrEPELYe7LHTDg+KBIaNBx3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W3mOsY9thGjDqpi4bU+pgJsPcS+RhvN0HMS4u8xETeg=;
 b=pkYiKJuT5ua3uAoiOEzsg+UyL6MvnTGuYKlgr9zGXUH353Oon7QBYBFSF8m17kmtHDUwxlVzzsrWu+hy+2oWqJCbW2N0UTwuCEdGpU6MMyMqA5siKmx0otKW3FVa9THyZuIYas5gokFQkEyHg7ziLrpMG1uLyr7xcD4owqZ83QYXPM+tQldhXlwyeuErI0wloUgW7OFZZrxxy46RhS/eDRxuzplSeU6gUGgnXebzX7GiAN4yf+woBwB5XJpaUrkBk72JDf4rttlYcQK8lSpaxIuqex0NyEqb76XE7c4BIdtU/Hp3D4EZzDDbet/9QDRxMoy3l5iYyBM74EsdKC4BXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 06:58:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 06:58:30 +0000
Message-ID: <5826b869-ee47-42bc-b053-ceaa9ab03c21@intel.com>
Date: Wed, 23 Apr 2025 12:28:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/13] drm/i915/display: Add source param for dc balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0041.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6817:EE_
X-MS-Office365-Filtering-Correlation-Id: 7bb20b8d-a551-42c2-6945-08dd82344179
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VGNBUWNHdFhIRXhjODBSU0h6blFTYm5xYUZyVUY5Y1pHNDEvM3lOdVhhZUhN?=
 =?utf-8?B?ZUltRG83Tm1GZWt0OUt3UDVPZ1JDeVphSnFBVFVob0pEYnFVK0IvZm5LR2dT?=
 =?utf-8?B?RC9PZFpoUVNTdlc3SVdKY3VCQzduTDhCZ0JPdS9hYTRmRVZ4K0IrV0VnVjBE?=
 =?utf-8?B?N3ljZjdMN2wzQkNTVjc2VmQvTGd4TVdBZjhqRTVTN0NCM09EWGRuZnpnNWww?=
 =?utf-8?B?ejhtQmZjRHVVUmEraG1kejFpZ2lPdEIzemlCSHQ5Q2E5VTJEMTdSMzJVVnZ1?=
 =?utf-8?B?NHlqS0xPRWV0dG9oTUlJSEk1anhRR29saWlFMG9ENm1pYzcvMDBlRWdjQ1Nn?=
 =?utf-8?B?S3VleFJrcUI1R0IzV0pPV0kwWWJrNGM4dDNWZm5yR3lwVW1MRjdvS0FhZ2Rq?=
 =?utf-8?B?dkRTMGhRZDVKU2pwdzhYK0JXU2JIRGNLSjRrTmJMdU5USjc0Ni9qS1VWTloz?=
 =?utf-8?B?SVhUMkxGaWxqdXpQc0lSQklNYnlVcStVS3BnZDl6cC9rVzdQK3NIaHUyOGhT?=
 =?utf-8?B?NUphRzhnOXV6OVAySHozU0RySGU0UUxjU3dQdm1WLzdNb0JaeUl5Z1Y5bnlM?=
 =?utf-8?B?ZkhleVlsZkZOMVAzUGtpUFQ3Y0lNV1dPbVpLOHM1dE5GZElyVXdoVU1jRTd3?=
 =?utf-8?B?WWdBQndYTzROV1IrQXBtQ0Ywa0c2V0pBdE9tZ1paMklzdld6aU5FcENmQUVT?=
 =?utf-8?B?S1JkUVpOVFZFZU0rN24rL2QydjhOTEx3bU44RXl4V3d0Rk5ZbDRBelVHY2pz?=
 =?utf-8?B?OHFTaVQ1OGQ0aGF3M056NlNvbm8vQTlJSGZwcmdkYU5abXNhTWhDWUtoVk1r?=
 =?utf-8?B?QmV4ekVFZ3padW9tVnIxbmNqd3h2cjhoenVITE5tNnhPM0VqdGFubmo1cnBD?=
 =?utf-8?B?Tk1jcHlnN3R2RjFMd0k1U3VTMlVia3N2cDFvbmxmN0lKQUhCOEd2SWlRQTd2?=
 =?utf-8?B?L0VrSGF0aHZ3dkVFclU3WEJYbWp1VnFSaXp3YTJybDMrSHIydEJCcFpFZ3BS?=
 =?utf-8?B?NGxtMnM5K2Y3MEtETko0OGRPZitzdFRCN0l4RkRNQTNxNCsxREQ0UzNOM0NM?=
 =?utf-8?B?YjVPam9Ednh1RzkxVDY4UUwybHZ5MEpuS2U5V0xTdVppcTVveWRyUFJxZjZ2?=
 =?utf-8?B?RTM0Q1FNTXRBTVYvcloxa0VQU21KMHlxSFhpbk9zSEpRc1ZlUjhzZGJ6czc5?=
 =?utf-8?B?ZHFJM1hsTTBVenlIL3pZZE02N1JqMWZOZ0FuY1R6ck1UeDFldFVjQjZRbjBS?=
 =?utf-8?B?U1VrdW9qRkVoaVR1azVRdnBia0N4ai93TG55Y1ZUWWtrLzRGVFZzQms4ZDhj?=
 =?utf-8?B?RmhxYWhNYWIwZW51aEFZaTRzbk5zT1FRRW5uVUZPUm5ja1NaZkJMMGkweHRi?=
 =?utf-8?B?VDNpMkVWdHBieGkvWEw0QmIwaTdEYWRvSElBNXVOOXhDK1YvK0Q5WWVGS3g0?=
 =?utf-8?B?bVVOazNwTzV4SGoyNWpvelQxSkR1ZitDeG4xYlBWaFBOek00SU93WXkveis4?=
 =?utf-8?B?NjFXQlc4dWs3aUpBSUNXN2lkRzIzS2xldGxTWUt1L01sdm1CRjVoSWxRZDBl?=
 =?utf-8?B?NEtQWmgwejg3bDNMSktlV1lCNlBFTDl3ZmRsYzVpUmxHUlBNNDJJcVUzb2Zl?=
 =?utf-8?B?NmJxKzhTV1BMZU8rWGxTM1JlVGl2R0pJaGc1MVY0eDZmcWJxVWJtbTNPQ3My?=
 =?utf-8?B?MTMwbXhHblk0ZG94amwxTVRaSXBRS3JPNCt6KzJ1NmVyeFpTdVFrdUxZVldp?=
 =?utf-8?B?MGUrR28xNlgvM3doOVV3ZEE5KzJhRktaT1NxU2JVSjh3a2xMNkJtOGVWdHc2?=
 =?utf-8?B?V0orQnVPV0gwbVR6aGh5SDJld2VUenJYUjJoQnNLVWora0R3d3BuTlh3OXVr?=
 =?utf-8?B?S1VrOG5hQlhuSEhOMitCSlBsR1V3cGlEVzAvNzRoOGZLdzJWNEt2dVo1TmQ4?=
 =?utf-8?Q?GDRNfXRR4IA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3crL2wveWpiN3JXR3JNMEVYRTZ2VnJWc3gyZ2swaHlRb09salVPZUF5S21q?=
 =?utf-8?B?L2ZtKzFOM2RBOEh5bkNtTmhtNXJGTEFONmhUYytXVEE5azZTbDk0Rkh3aEk0?=
 =?utf-8?B?aEpjaHhncitUbmJSMHVjWE84bUFmOTdPL3N4RjV5MnVVa2tuSFNYamFOOFN1?=
 =?utf-8?B?aGVTYzBna1pWOHVTV05SeklpMC94Tk5UR2FCRGZDbXh5b2l2Z0ZJMHpKa0dv?=
 =?utf-8?B?M0xvWGpxa3luTU12Zkk1RHAwRWtyWkp3TFhBcTVOZHFmUmNJTnpINHlDMEx1?=
 =?utf-8?B?aEhDaERhZEZRNDhzSWlFWC9MUzkvUkxRSUVFU3NTYm82VWllOVdJc3hEc2h1?=
 =?utf-8?B?bkx0akZ5TXY0UHJLZzA2WGpSY0ZiSUw0MVIwTGVEamt2ZjVmUjRvU3N0T0JW?=
 =?utf-8?B?ZllyT2Vwc2RWbXYxWjZEc09mQUNYU0RBL25BRFlmYXcwNFJ6UCtKd29vZlpO?=
 =?utf-8?B?bFFObjBJbUVtL3hGZGcxREQyaThxTjF2THNiYkl5QVhSaTg3b2VlcTg4TUNh?=
 =?utf-8?B?SzZPRzVXVjZzeGoxYXo5MGdSZmtJc0tXZVNscm9BaGk0SFd4bWJFTmN2R0M5?=
 =?utf-8?B?UkVMRjJGRHZPVmU3cTZwNy93STZmT1VXS1RuMytXZ0JaY0ZXaU51NnRTTjRk?=
 =?utf-8?B?dkVyM2ozWlZtMTlNM011emdkMitGZFdJYW5ZOVpZd0hGaCs5WkVCNTFyQWYv?=
 =?utf-8?B?RXBDZ3ZPbVRueGRYUGUvcy9nRTFOYTdVYVRPdlVqWFNkN2M5TmtuUlpGZ1hv?=
 =?utf-8?B?a0VBblV2NE1FWGJIc3hyaFpDL29UZ2l1ZDdPeVEvTFFjM0U2RlZRMFZ2MW1D?=
 =?utf-8?B?ZU9Nb2RKbUxOVTJsRzFRaFl0WEtMSWV3Umg2VUFFSnhOcG16Q0R4QW9rbFFn?=
 =?utf-8?B?ZkVxeVI5QnprS3VWQlc4NTk5Y2Q0dDZMRGNPbHArU3M4TlE1TVcxMURGMWtR?=
 =?utf-8?B?cDhHQXZRRDNEbkk1U3VxbEE1VEd2YTIrUkNuWllTM2drelArNUVQc1FjdG1v?=
 =?utf-8?B?UWpjZDN6eFVBamtVRGlETTdPRCtST01hc3E4dDRRV3NQRjJvRVh2QS9meUF6?=
 =?utf-8?B?LzkrQi9kdnp1T2pTTEw4NUlNbmhvT0xhZlJ2SHUxNWkzU2FHOWNmZXJCZEhm?=
 =?utf-8?B?TVhNcGNiNnhWR2U3a00ycGpSajdXRHU3elRTKy9vMVZOeUxpM003Nm42cUVq?=
 =?utf-8?B?cnArQ3VHVlJIaWxWenAyWmdvQmlRNW94OThhNVB1YUtrVHo5bGIzUXVsQ2gw?=
 =?utf-8?B?NlVNTDI2aDBsOWpYNUJETWREMUgxL3A5SlFOeTdKS3lSc3UrOHJQeDBCQTY3?=
 =?utf-8?B?RTN1eWxCWGI3ZWFnYkczSWRPUVk2bVcxdE1oUm1HZmVCSzlLK0lhUDNjZFJz?=
 =?utf-8?B?ZUppd1J1YnIwZXVObUJ4cExhVnF6Zkt3RzJncVFab3BLTGt1Q1U1amJQOVBX?=
 =?utf-8?B?VStRV1BBcjEyYkpuNEVLS0g0ZTYyMnRjRFFjeVN4d08yOXJkeVBOeVFDUDZu?=
 =?utf-8?B?MkF1ZG1NS3dMQkFvSEl5T3psOXlsb1hNaklPTXF5Y0ZFNlRqbHhKMm41cDdh?=
 =?utf-8?B?RzFLNkdteFBuQ3EyUmp5c2tleG93UndPczZXeWxxN3M1TEl2MzFYcTFWUWcx?=
 =?utf-8?B?WWt1enRqVjU2aUFadkRzalI5dzhydjhQRkJuc0tRSlN0eUxQWDF5NTF4enRy?=
 =?utf-8?B?ZkFlRzVGQzNEeDh5YUR5ZlNvbFJxMG5yQS9XYU1lQ2VzSFQ3WkM2VUI2T0xH?=
 =?utf-8?B?WjV6VzNjaVc5bk1pYUttQ25XaTlEQWZiSW9lVmxFbVNlU0RiV0VHUzNTTXNs?=
 =?utf-8?B?M0p3Qm54bXFSTURKZzN4Rk11eVpMNG9TaEY1N0JOczMrTXl2SjRQOGQwUHpM?=
 =?utf-8?B?ZnVLNUlhTjcxUXYwSjRaT3A4cisvRVU2WGQ0VXM2VUVrWWo2SFF1S2xGMjUr?=
 =?utf-8?B?MVNublNWclB0anVudUNRNTFRQTNOWjRNWXNVL1VEamxBV1RWSHZFUG9hMnJ1?=
 =?utf-8?B?U2J3VWJzbFhZYlIwTU9mSlJhQ3JNUm1LMmtpSjBkTW1hQXM2dVJteTdGcjdr?=
 =?utf-8?B?MW5kNDR3YzRrV0ovTjhiYUxpUE9zYVBieGxKTFpTa01yV1gvcURaNnF1MDR1?=
 =?utf-8?B?UG4ycVhkSXJZanVQWXlLUTJXU3dZR2VXa0p0NmdybExYYjNIRVIzTUJ1dDlX?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bb20b8d-a551-42c2-6945-08dd82344179
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 06:58:30.8907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hr35t+tuiivYlGkrz0q5Zl+5EJUaGsNeBLq9ifmNwPkpEL5lQnJ9uws3wQxoQWK8qCiS0Y3q40yiIU2RpRYIzyyiID9bdTXHSC+gH4+dkjw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> Add source param for dc balance enablement further.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 87c666792c0d..653483fa99ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -144,6 +144,7 @@ struct intel_display_platforms {
>   #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>   #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
>   #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
> +#define HAS_DC_BALANCE(__display)		(DISPLAY_VER(__display) >= 30)

Add in asciibetical order.

Also HAS VRR_DC_BALANCE or HAS_AS_DC_BALANCE would be better?


Regards,

Ankit

>   #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>   #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>   #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
