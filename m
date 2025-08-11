Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73FCB202E7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 11:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E9810E3B4;
	Mon, 11 Aug 2025 09:12:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HdDVwTsE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 912BD10E3B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754903574; x=1786439574;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g9weCcAe9B1etYTDSfJ5nPPWGw19/CHKkdWtRtBl5EY=;
 b=HdDVwTsEQsYJZvfcNb7GcefH7zZlnFGXwPej/J5xZ+X9QxmFhdPewSH5
 zYDueTQRniIgq5C98lC/5a27pZ+5mzt0cAwnjg/EtxHyk/hsYd5y+ROMh
 tNkpRbH45JurEEe0+qJQ9IkSxu+rWrW9DKzrchoebQ+y+QtrlzifI8vDc
 bD6DG6PAWJC0fQvs2PBne8lanDTs9GDqF9h5zWIXrK/0OceQ81aCaJgvc
 MB6MgrCdqGoGL6BQM1e9A91e4RxXC+qOSp2lhHYWE2TCiVpYDjbYcr2Yu
 6vI1+Wyo2hEH8yKL5hL+ea9r6MHQct3UBxyfg7sew+hBhS2912LklC5sD A==;
X-CSE-ConnectionGUID: g3Hhr2WLR5iv36oLfQpKbA==
X-CSE-MsgGUID: CaJm64NnTtOf37SNezpEjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="67748849"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="67748849"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:12:53 -0700
X-CSE-ConnectionGUID: MQ72vAXwTIqMGUewijCVxA==
X-CSE-MsgGUID: IlVZTQZ6Tt6zaqXqQrx/dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="196860517"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:12:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 02:12:52 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 02:12:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.87)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 11 Aug 2025 02:12:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vWIK0KbS3ZkajDR180qG2Oxty2HxRLnJcaFo/XhaCLeYx5eDed8cwSWoBIRHK9XzHTzFx67N7Hx2Tj7v+x7zzioe1TGItmEHfCcQtGhWMK4+YBHtcn7N2wuddrNLJnv+ecMN7UtMfzQ1+eOXz/mc8D+9Jq2TEdfHxAZARbuV4Vs0VddnIrBTSh/mCcsK8RIU0PQGFigpyQJjy+hKARWi2jb3NdbaO75hOTHjFcLeyLMwUbrtrJ/1LDQicqdnyEYS+MyUJRyL0Y4biK+5/4dVTRuqSBJrjWpNqzzdaJW2p+F6Cc/7pFDss5CiP+2VyXumfo5ak935su4SuSuWDTjT3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x1lZPRTVcyq+8AAMtp8HphYwazP0xAtnEIfz/x6+Tvg=;
 b=BcKgsEarV7ty1GxbeZ864763xQqo6P8QWBuH/NlyS83c/v7KbIsy/R1EKccpnJa1KT524ofNAXKYDc64TU9UnWJ0kVmJT0eZ14IJwbNlosjFUsYtKaQs3lBP2Ci36UEosyMH24ZrehqocbrwwyXp5EdxVoZqvCAJWGHT1JQF/y9Cgdn0bYDn2a0b0B3gN79Ed9TXh0ASokhzgwU7TNHg3IXLjtL3KjhFZjD7KKMs8WIuM0atSVlTS9WLV7Fvr+TmkJEkntgKER/dFes5BaX1UERMv5m7TCs0nY3jYsluOwiGw0eutEvrHAheMRNgAGNx9X3YILbXLLtF2cchTE2LIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 09:12:51 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9009.017; Mon, 11 Aug 2025
 09:12:51 +0000
Date: Mon, 11 Aug 2025 09:12:45 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v2 3/3] drm/i915/gt: Relocate Gen6 context-specific workaround
Message-ID: <f493bab389e51b2faf7c9a439724e9ea9ca04053.1754902406.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <cover.1754902406.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1754902406.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DUZPR01CA0250.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::6) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: 3064bd4c-288f-463b-1634-08ddd8b73efb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VkFIUGpsb0RxcWVybnZ3SDZTVG1UQUZZVjRsYXRlaXkzbVRCVElNSVA3VnIx?=
 =?utf-8?B?YTRrTGZ1YmN5UlRnY08vZVFXSURTQWdWR2h1cksrZnZNUmVSdW4walVzWnFz?=
 =?utf-8?B?QnVUOHhwMWhpaFhQREVMZFVyUXZqam0zYWMxeXpmbFg4Vjl2TmJpL29nRE9B?=
 =?utf-8?B?ZllXYXlCV3QvUGwzYnRHVk5peXMvSFdqQkt0SEhrUU1FWlpnTjBvZjFuVXFy?=
 =?utf-8?B?Lzh4QUxNell1aVBqZ0Z5Z2tlM05veFVkUWh2bDBrU293eWh3Mm5sam1ialhH?=
 =?utf-8?B?SmVGbU1GZGdjNUpBTFNqTFlhQlBFVk1RVkR6OVFZQVZjUVF5aVU4UDJTdlpE?=
 =?utf-8?B?bzMxWGdjaXIxYUJqWjl1VmpQQzBnd1NseFRBZW0wQkdPK2VWL3R3a1YrRXYx?=
 =?utf-8?B?ZXJmVDJxZlJqYjUxcFU1UDhYa0VlV0JaaUhOWGMveEJGNVBjTDdQMTlOQmRU?=
 =?utf-8?B?MWIwa3BPVUxRU0N4emtLUXp3aWsycVVSenpWaUI3c2RIMEJreEpLM1BVNEVx?=
 =?utf-8?B?cVN2bmtwRzFMeUI5Q1U5MmxBTUtMcFFNN3h4RFNrcGllWVJQeFNpZzJPRmY5?=
 =?utf-8?B?L1V3Q3dVMUEzWVF1bkZPM3RKWmt2V3I1anNGNkhzNEx5VFRnODJtR2F1c2Vx?=
 =?utf-8?B?dnlLcDRaT3I2MU9LdnhtNU50ZHlKM05GNTZHcGhKRlNGNXZaeG5GdHE0dXph?=
 =?utf-8?B?czMrMUg4VDZ2YnRoYWk1SWZzd3AzRTdJVDJmMlZCZ2ZnMVFEV0hjaG1UZG5n?=
 =?utf-8?B?bCt1cmR5TDFnSHlBT3IreU5RSEQzYnpmQ1VPYUVOaVBUYXN6cWFNNzRGLzdN?=
 =?utf-8?B?THNoTDJrL2hDallRR0ZVNTdDOUJRVzBQdmZmeHNEWHJ5Q0hiL2l4ZFBrbjhF?=
 =?utf-8?B?bjZDK3kvMjhvM2VIcGVoRW93Si8vOWd6U0hJMnR4YWRRZmVQOUdZR0J5M2Uw?=
 =?utf-8?B?WnlGbnErUTFlbUJsYmZoM3FkTEZqQkZjN0twbXdqZ01HWjM0aWFUckg0ZHhj?=
 =?utf-8?B?VlJUWmRUTHk1NGhlZW1kUDExc1YwcnU3UkZYemEyK0lwTmZKcW9JUFhSTjFS?=
 =?utf-8?B?LzdYNXQ4dzNNYU1kQ0tKem5GeUdveHE1ZW1aUWJ2RXZ5TFcxZXpaU29NbkVS?=
 =?utf-8?B?L0tMQm83TUErOEtUajJOTCtaSG9rY3FxYzhTdVhsQXFHdHpJNTllK0UrNUNm?=
 =?utf-8?B?RGVVdzV4NHBsbWQ5RitiSy9EamFBOXIyZlpBYXRjNml2VThPdVlSdjVoOXpC?=
 =?utf-8?B?WEhETi9hMWY4TVR4Z2RIWHlYMHp1aGdWaVhRSjBUZi9xUXdlQXpucW5UL3Ni?=
 =?utf-8?B?TUxlQ3EybWllcjhwN3RhRXBrTGpsSENzQ2c5Tk9kVnk5bkpKT1FMSDFjNi9L?=
 =?utf-8?B?VGxoYVNIcWZMTXZGdTQ1VWZoWWFoc1pHMjVFS1Ayb0dUKzRqQURxT3J2bmNo?=
 =?utf-8?B?WmZoaXVKaG92NEx3NTJPTTYxRTZkSndqWVVGb0ZsZW5lTHhCUWpCWEpoSW02?=
 =?utf-8?B?VzB5ZWpJRmo0M2ZmQlppWXpPUzYwWjY5U1RmTi83NDhUdHFKM2JCcWpXdHNq?=
 =?utf-8?B?Qk82TFQwNDdIcmFReWIxVjUyUnlvQWhxem0zVjZFQWdOdjREZno3RjdqMWlx?=
 =?utf-8?B?a2dhRGEyNmRSU0VhMGdybnNpY3V1bUMrTkc2dkptUmtEQTY3TVZ2UFZIY3ZW?=
 =?utf-8?B?TWJHc0p6YXo4QTJpRDYvR1p4bVlVQUlQVUxYalY1bWZjOS9UZ3R4SURpaVRB?=
 =?utf-8?B?K0VlODhEb1ExNk9HKzZZZDJtVTBPSHI2WENhMkhadjUzWEFXRjFSSWdwVzly?=
 =?utf-8?B?Y0dyQzBOMXYrNmpkcUdVQ1MwWEdyQzVsNzhVNDd0RTFqS1Y3WENPT3RaUmw1?=
 =?utf-8?B?ZmRUNVN2dmt4RW1WVHA5M1VPMkNxa2ZTQldnNjZaU3h1Wmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmlTcnUrUzZ2dUlYTkVHTUNxbFBXRnNKdVp3QU5zZWJid2xmdm82ZDZXd2NX?=
 =?utf-8?B?YS9KQjYrY09vZW55c3NkV2NydW9FVENXR25kYjlsRFErbm9EeW4rU0pjSVlk?=
 =?utf-8?B?RkwvcEJzWHdMYkpDaGhod1pFR2tZZ1NyL1BLQzZEdStUdm05N05TMmxQNXhn?=
 =?utf-8?B?KzBpbDhOdHBIVU1wWTllTHdqbnZKRk1JOVgvZXl6OTBqU1doVnlqVnVNc1dH?=
 =?utf-8?B?WU51VGNJSXdkb0xzSTF2REh0VFFoSTVkeDI1WXg5TFpyYnUydWZpMVQ5Wngz?=
 =?utf-8?B?VTRUa2RHNzlIV3RhNnZYTjZjWWdqdWdMOHFSV29GUmt6L0RTanBEc25lOCtq?=
 =?utf-8?B?UHlIR2IxWXRNN2U5MXNzL244SHVNYTAxc01KaWgraDJnSjc2N3dlMUlWSk5E?=
 =?utf-8?B?UUhvcVpVOFBrL2FKVnd2dHNzTGFiajZoZDBnRWE2ZmxFbEZpS0ordTR5V0NK?=
 =?utf-8?B?YklLM2NvNUxWNzFXNDE0bmdTS3RDUUcwNVpJTytxUmNQTld1MGxxd25DZ1pW?=
 =?utf-8?B?d2xFKzFMZkhMbVdKQW8xYkxnL0ZkSVRmVTFWaklFUDlMek93c1Y0V0xxekFr?=
 =?utf-8?B?UXVUWnl4bGxob0V2WVk4ZGtIc3F5RThlbUpsTUNOWWZuT1JBbW5XR1o4eHVO?=
 =?utf-8?B?dzZma1Z0RTVvOGtYTHVvWUMwZkdmeVYwbmpVNXhBQUlhTHdNUzhZZE1zZDJ2?=
 =?utf-8?B?dkRRdndTamdoaEF1bTRsQ3lueXh2Wk5VNHFnMnBKWjB4b0xvd3JleXovMEZm?=
 =?utf-8?B?T3ZTSFY3YVVoaG5EbmdqcE1NRDY3cXlITWwvdVM2REkzdUZqKzcwK3RseXh5?=
 =?utf-8?B?SkJVWXBiMDYzakxxT3N4d1VIOGRIT0VSS3l6TlZJczJia0pNZ2xZSnBrL0Za?=
 =?utf-8?B?dUZVUmE5SGx6U3F0QWJtLy9xZmlheEpYUlNpcE9ISkZYN25EYlFkV1NYa0RV?=
 =?utf-8?B?WHZXWGZ0dy9RTWZhaWRqdmE3T3UvTjdkME1scG14dEx1VENma2haNEpqSlJQ?=
 =?utf-8?B?b012M3dYTWRHaDZoVXVQVXVRR29CeDRiMUNNOHpPUVIzdE5RWmNDVHRhQ2cy?=
 =?utf-8?B?SEJDYUx5aENLOXU4ZHBGb1JURFhUTFpGYytld21qS1NCbnpMZ2FTaDllbXJz?=
 =?utf-8?B?aWRXNnFQdXlkdHMrQjFIMlduTncyY2xNdzF1L0dlbzNySmJBejVYN0p3cTd3?=
 =?utf-8?B?Yk9PTzFJL3pwUktVUm5GTUEydldEN2NTUjRkWVo5VTdSZVdxSERJOWwxRjMr?=
 =?utf-8?B?c3o0aVlXVGp2YW5rR0pRcXBlWlAwckh4TkNreVNhU0xKTWdGcTFIWjFBQUVY?=
 =?utf-8?B?M3U1T2hqdHF0ZUh0Y3BTUXk1TWVKS1I4L2lOOVFVbnRqL1VGcTlETllJTUNQ?=
 =?utf-8?B?b2FqQSt1bzcyUFdVZnFSVndvVDNzZnd6ZUhvMkZXMFNyb3J1Vm1JbkJFa2VN?=
 =?utf-8?B?c0tUWUZPM2NOOGJRWTZMSkpBaC9tRHVWTWRtSFVEUjc3VTVybTIzaEZlUHVv?=
 =?utf-8?B?dU1TenFxTlNpOUY5VURRelZ3WTN1c003bkxGY1pxTThDYXBBQURUZkdDSjIy?=
 =?utf-8?B?VWpick5vY01Gb204SzI0NmRnK2c3WllYclRsaGtNQVU0U2tXSVFmM3BmSlJv?=
 =?utf-8?B?alJQYm1SV003ZUJrYTYxL085cU1rbWRSUU9nN0pmM3F2bFNJb2RxRk9lclRr?=
 =?utf-8?B?WFJxdWpGc082NkhrMklzNjJiSmNJakx5QjI1aFFuTEp2SkdDQk5mYnJZK1li?=
 =?utf-8?B?QXlicGdscFN0MHF0cmpsVnI2MnAzcWJ5WklFWTFFRTE4ZnJCMHdRSFcvZUtl?=
 =?utf-8?B?VmV4bUo0OWFCMmU5L2g1VElQb3pHL3JxTVo3Y0hJZ29lQWc1TDlxKzhic2lO?=
 =?utf-8?B?WTd4UDdZaHUyOFduTnpjOGdrUEduVWlkcVA5OHova05SdUYwWDNuVFduc3gz?=
 =?utf-8?B?eFdmdmwwNlhPN0hPUWhQODd5YU1TQVVHanRzTTcwNlZKS2xlZjVML1FvNXBv?=
 =?utf-8?B?T2srMndQd2c1N0ljengweWJzWEwvUTY0UHh0U0Z4V0I4TDFSM3AxSzdUMDJi?=
 =?utf-8?B?TXMxR3Q3YjFZTWdkUmRsZXd3QVg0NnBJRDJtNlh0dXBObWhueGE4ZGpmSVFB?=
 =?utf-8?B?SXhCbWZaalYveG1ONG5HODRCMHRVVXduNU9vVityYVYrR0tJVmxJSnJ0enVX?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3064bd4c-288f-463b-1634-08ddd8b73efb
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 09:12:50.5230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hlH7ycFpSglUfX0dtJoWLYcOdDcmhoaStxKZaKwHKjVzdTwv+VgWTc9gwoa5TihsZL5ojKK+QoK4mHJLLHyZsFpTcsDZDNn91866FGzXBBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
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

CACHE_MODE_0 register should be saved and restored as part
of the context, not during engine reset. Move the related
workaround (RC_OP_FLUSH_ENABLE) from rcs_engine_wa_init() to
gen6_ctx_workarounds_init() for Gen6 platforms. This ensures the WA
is applied during context initialisation.

CM0_STC_EVICT_DISABLE_LRA_SNB is also Gen6-specific, but it does
not stick when applied in context, so it remains in engine init.

BSPEC: 11322

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
 ---
 v1 -> v2:
	- clarify commit message
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 18f1ee529de9..7d486dfa2fc1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -337,6 +337,9 @@ static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
 	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
+
+	/* WaDisable_RenderCache_OperationalFlush:snb */
+	wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
 }
 
 static void gen7_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -2644,9 +2647,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				    GEN6_WIZ_HASHING_MASK,
 				    GEN6_WIZ_HASHING_16x4);
 
-		/* WaDisable_RenderCache_OperationalFlush:snb */
-		wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
-
 		/*
 		 * From the Sandybridge PRM, volume 1 part 3, page 24:
 		 * "If this bit is set, STCunit will have LRA as replacement
-- 
2.34.1

