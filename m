Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF539BD776
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 22:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E003810E114;
	Tue,  5 Nov 2024 21:12:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHYulJHJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB80B10E114;
 Tue,  5 Nov 2024 21:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730841167; x=1762377167;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=OHCgIME3CbDb/KEi6iI3xcUBzngIESyHJ+rRSszZ6Ng=;
 b=aHYulJHJoW75QAwnlyIczwRwyh1DfCLW5Txm98ynbF+CFkJ9fAYKwv1u
 yf+NqHNakIp7XG0zKFfrJZvuunt6JCXvWMkY20BvVhbvzidpgcLArhyxm
 zWzfY/TDwcALgN/EO1qcZP4PYx/1Uwr7UMjxk7PBjxx+57NKwcmcFqCB+
 3zd/bW5FejtdEFbk9TZuN7hHu3IWIOFepTmYsImQYjQHcolN/hCUOaW87
 LurFZKdjV7r2QA1PqGyAd25Besh2WZvWSwcrWHz3Ie4YlJn123k8HrR+b
 vt40uYYTV47+9xCoIkJSRNLw/sygZY5llC1tZXej+JkTh08tJt2cueSI/ A==;
X-CSE-ConnectionGUID: qaybVuYeTSKEdzbxNp2CKA==
X-CSE-MsgGUID: W9pLcVtZQO+oDNYwY2HZFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="34399111"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="34399111"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 13:12:46 -0800
X-CSE-ConnectionGUID: KY3dIU07QzePS5HkWBixvA==
X-CSE-MsgGUID: 7Lmb0mZPQ7qN3HwJD9XX0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="88668126"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 13:12:46 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 13:12:45 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 13:12:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 13:12:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ifm3PLGuEW+j8l3K94TJRICiWU+tQ3oYorbwSIutUo6p7i8dTVFhGwz3s4z4eVyREEsbp9V7w+SlDZihPTcj2ajkRL8fIXqGNxBPQW6r6alXdMsum44RnQV9appnuGN8W06+LrHSSzBcvVOiHvIzMOGCiqMZOtO1Zoss0RaNl7TWUYnlvPTzqc0zBEl5Lo7jv0i6ur0C7T4dhTSwEoO0UYAchJH4pgF3HFVzSOZgohHBhLC79rCEWnvivNg/71GxHxj3DhTRhsKT3cT0GxkSKUp4VkXQKvO4cYJE1faWs7Zgo3oTqsbZ1B2qNvJtQIIuTEBh0igO2/fwP1bE56xTyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XYYizS1779nBbLtw+ovyA25lkusEsM0E7zaeZpBQBwE=;
 b=dwazXZmaUqDZ/pHVvtr2dtqu3rqRKbgUyjXs4M96MSrmxugYgbjbQ0RLdyA+aJQG6nd61KCeX28szpXHLH+JkFSD+p1CwC0z6gGAnTfFOLcArryG/LIPDa+PK3hEF796g4qDc++UpLMS6eF95RAaijajo/cg1zZ1kRTcxfYNsAjAeIrG86OJBVdj9e5A43SkeF12xbvUA7JiO9/Vp3Jpmn34XIOzBRDlIheZBoQUknR2RO17PDTG0ovkIXv4jArWEzJxSJroCVMnavxNYitJObwJGgRpVWf1Q0E95873+ur9+FBcSNhxnDyicgPoLSH9z9VpvBlkXdkfQOGCOasdAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB5027.namprd11.prod.outlook.com (2603:10b6:303:9d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Tue, 5 Nov
 2024 21:12:43 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 21:12:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173081441222.2525.7518849812502214612@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-14-gustavo.sousa@intel.com>
 <1b9bcc81c5eada5cf7d3cc4610cee6ef9b69aac9.camel@coelho.fi>
 <173081441222.2525.7518849812502214612@intel.com>
Subject: Re: [PATCH 13/13] drm/i915/xe3lpd: Use DMC wakelock by default
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 5 Nov 2024 18:12:37 -0300
Message-ID: <173084115737.12577.10442741716639148688@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0315.namprd03.prod.outlook.com
 (2603:10b6:303:dd::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB5027:EE_
X-MS-Office365-Filtering-Correlation-Id: 14d58bcd-49ed-4341-854b-08dcfdde9672
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?blRMeEZDWDVYZ3pLWFZCalBRWWtQckg5cWZyb3NsR09sLytONGVtMHEyQVA0?=
 =?utf-8?B?d2xSaXZOUWNTL0pKQjBRdWlOaTYyNmlVczBHb3FZVm1leWJ0UXNHNU5xMEZK?=
 =?utf-8?B?YWZBVk10WkVKZGhkei9VazZZVkx4NFhxR21ieG9jbXFPblk0Zi93b1dWR09q?=
 =?utf-8?B?TFc1UWhmU1VJMDN1RnZvd0FQY2VTQjNlMEQyWm9EaTRTZkd4TU5oS3laWTZM?=
 =?utf-8?B?VjEzTjJoV3gwMkpRQlo3cVdoRHFyaVRhTTZQNGtaZ2NOQjk4WEgzSkRnR3NI?=
 =?utf-8?B?MjF3NUNhZHVFUFVwVVhTMnB5QXRDMVBmbXFveW9WaG03M3hmenlVTzVOU3Z6?=
 =?utf-8?B?YnBmN1lsUERTTFNnY1MxdXhVVlJWMmgzdmM1WWxMa2JnT3pUZGVmdm5Wb0F3?=
 =?utf-8?B?QzlxVXlmOVFGbkllR21SRWd5ZFFPYlRncEE0bkdRVGhFelNPYXRHOGlXdU9U?=
 =?utf-8?B?dUptd2U0RkU4eFpQYnNFaTdTWVkvb2g3V1hzU0cxdXpqTzZJYlhkOU1yOHpW?=
 =?utf-8?B?MkdDVzBFNVdpL1pzL0FwWjhZR1FxNmlzMmd3ejBhbCtYQU5mNFBsUjBkUGhT?=
 =?utf-8?B?WWhqZGdRdGVWdEZyZXVVL2hzTUwxMWcrRXlxOFArdHp6akR5RUtqbkxTTUcw?=
 =?utf-8?B?VHhaNXE1Mm9PZk5pakFySDF5Q0d3bmJvSUVmWkhrTUZEeGlTcnBJenhIcFli?=
 =?utf-8?B?WDJYUUZaRGFDeTd1dkluUTFXT1dKTUJ2cEx4TDhRK21HMkQrVkRraEwwd2pk?=
 =?utf-8?B?NVN0ZFpRc2ZwSkUycEVSc2NRTmMzVW56RXNMcU5nZlBLYWZXZGNTM1dHUy96?=
 =?utf-8?B?NTFWQis5WXVUTGhwTlRpcy9nUDgvUE9wZ09QcU5oaUdVWXZLaHZsQ0t3d3Q4?=
 =?utf-8?B?MU41TGU2UDBSMDN6ME9SWWdpdFYxV1ZCRW5KZ2IybjRWdU80bTgxMG9VREZw?=
 =?utf-8?B?cmtyc0dOVmlxQk1OMmNZYXNqUWNIaWo0T1BoU3lQa0ErUVpIZFErUTlFOG80?=
 =?utf-8?B?cEN0MEFWbitGQWRSdHJ1bHBrS1BGYm4vN0lHcnVTeXFSZEtHcUdUK3dQVGN0?=
 =?utf-8?B?NmRCdGNhRUcrY05GUDJNQUdwQmttM3dEYk80ZGFHMUxOMWQ5NFdWajJxSThR?=
 =?utf-8?B?WUtRbHN3YjVBTENuN091OHhnakV3ZlRveVBOSDNQWXgvRG9lbGNsakZaR1hn?=
 =?utf-8?B?MHBTVWlrQlhhYm0xOGsxUzBlSXZ0M01jL1lXbXlsaXduQkluZHNkKzM2QmZj?=
 =?utf-8?B?TG9obFArc2Nyb1dXMmJuNkJTVXVtL2k2RzhLbngwRklGcms3QWY3ZEFNR1Fs?=
 =?utf-8?B?RUxDd2ZuQTJoVXRoSUV5aWlyMlJGaS9lOXllWTltbjhHTG95M3h4NlFVcnZK?=
 =?utf-8?B?eGNXQW5BRmpmMzJMTmZLbkNHWjBaSUVtSnFPbHdFSDBLVHRBaUhiNEJlRHMz?=
 =?utf-8?B?WlBnOElnMjNsZVc5U0Q3djNKd3IvL2lxZGszZTh1ajQzSTZLZFpaOHg5VEx5?=
 =?utf-8?B?cmo0MEhVMXFWK2N1amVPMUgraWloMjFpbXdXV3lRY2NNcFMxdzZmWVRhblVM?=
 =?utf-8?B?LzVmM21lOEpUSjh3K0EvME9oYmZCUjlWL21CMk9Zd1hmUkdneGFKc2thYy9O?=
 =?utf-8?B?N20ybUVqWFh4eE9hWnJBU2xoSlNIOWp4ZmlKb3E1OVUrdkxHancxT3RJY2dM?=
 =?utf-8?B?VjB1b0wwWi94aVJLWXFWWnlSZUhFUHhhbGowUXJuZVNwUFozS09QdE13K1dx?=
 =?utf-8?Q?dtFVhi4zCJeXu795/EDIl708fmPixq+qb2JLFwO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UncvdGR4WjROTHAvSGxGN2NDWXVBb1BaZDh2eGtYNWpjUmgwK2JZOFQyVENQ?=
 =?utf-8?B?RDhEZzZGTTB6S2FUSU11YS94OWVpYlJWNE8raGtBaUVPVXlFc0tDeW9kM3pG?=
 =?utf-8?B?YzFnb2p2YkxmTTBwR3BYR20vUHZpeDkxK21OclNlYzZROTZUOWRlREo4ZDN2?=
 =?utf-8?B?aURqSlBUUnlNU3FpRlFlWVJpODZ3cGF5YlBlOFJnb2dBK2F3cDl2aXZCakF3?=
 =?utf-8?B?L2pobHZMc0ZIQUF6Zk9laTFpQnJTY1ZLQ0ZVbU1zUXd4ZFJjdFBLUXR5R1ZE?=
 =?utf-8?B?SGpPb29KdTF6d1czdzBjMk9udStUVU9pcGNKMmJ4T1JoTkQzUGlxbU1MUlQ2?=
 =?utf-8?B?TWhwcjZiRDd0WGh5MFZXQmVYK2djbWpnTGpGU1NXdVdXSXNvcTIzRlJqbS9z?=
 =?utf-8?B?dHVrckFhbWN6REd3YjhiNHBoQ253aGg1d3dIZ1U5SS9CbHNWN2Z4RHBTYVo0?=
 =?utf-8?B?dlU5L21SY0RQUFRsSlBYbm8vQTh3NHZMSHVWbFJMY2NEWUtidmhhVHhpekxh?=
 =?utf-8?B?ZjRaVjM2c0xHam1vK1VKZVU4dW1NQWpoa3lkbTUyVzJvZzQrangva2tSV3lJ?=
 =?utf-8?B?cUJQV1FJankxN3UyUG95a2xUZEVPV0Z5RWliaGtjODN6U0YyUlBic1VtWXJS?=
 =?utf-8?B?L0hGbEVXZnNnbTZQR3lzdVh2QXFMQi93UmZCQUhqTlBYajdTamRDdTVFdGNW?=
 =?utf-8?B?Z0hqeWtIdVRLYk1wOEoyVnlJUGN2SmRqdEI5WU5Rak1nNzhpR3kyeDd5QldU?=
 =?utf-8?B?Nk9TK1VldE41WWVxUHVHR1g3VVpWamRkNzFHRVFsQ2Rwa2hUbmNEc0JHcld1?=
 =?utf-8?B?UHVPYmdvZlJrOS9BOWRodTZXYWRHWHlOWEcwcTVlRUI0a0h0VngzN1VNVXM1?=
 =?utf-8?B?cmZ5UTVvYlZRb2Y3Ky9zNHlMVXlGZzdTYklTN0ZqY3VIYnVnTzFwanJNWFFq?=
 =?utf-8?B?S3NuOG5JNGpIUldlWVhaOERvaDNtU0pvNlNuOTMxRFRzdGVKYm04TVJDRWdv?=
 =?utf-8?B?dHhxMWw5K2VhbmVJZllSSC9QQko1RWV4ZjlOd2VKMWxNdUpvZDBJSUI2YktH?=
 =?utf-8?B?WGlXSWZtWjJiT3V2Y0xFT0Y2UDZwM25qUFd2QjgzMGxlaDFtNUxGdm9QVTFI?=
 =?utf-8?B?ZEJvQWhPSlMyajh1NDVLSFNVY2d6cUxrYkJQVjFTaWtqRzY0V1NpUHRrVk1k?=
 =?utf-8?B?NWJEYlJpRUVjdUFCdVZFckt0TXdHZFhJWDJDdGpTbEZCaFdyN3FMbXhvUDBC?=
 =?utf-8?B?dUtPTzBTSEVsbXkwZkVUZ1d2QWZPZ0F5Q0tEZmt1K3BKRzZrQ3hPTEVCM0tj?=
 =?utf-8?B?M1IrTFREWlRNZWp1YW5KampMV2hyNXFlT0x4U09EeGF2ak9KTmF3RVBrZW1q?=
 =?utf-8?B?QkJmMTdNc0hDS29YSzBERE9XWXRIamZ3ellNNHpPRkFjWWZIekZqUUJCUHNv?=
 =?utf-8?B?RGVuMDNycFp3cEZtTmtDWW5CVkNhK25MR2t4dFhZb2Iyek9tSGtCckliWUNu?=
 =?utf-8?B?MEs1MHhNdmhYUE5qUGFvU0FvaEJiYWZlUmVnYVh0a29UWGczb1B5VWZyTmxT?=
 =?utf-8?B?NXpIWkpwQ1ZNWFl3dFBjUGx4QkRnRlNyYzcyV1Jxa0I4UG1HNnlDT0FHeXEz?=
 =?utf-8?B?MFYzQzV0aU1UWGQwVERwVnV2SUNqQjlERUdobmF0SUZRbVhkbFV2NzZDNEZX?=
 =?utf-8?B?UG1waUhyZ05QWDg2U2Q2NzZscTdDMGw0ZklteWVMczlIQ3k1aTJZdGFNa1pT?=
 =?utf-8?B?ajRteGVhV3JqRkZhTWQ3cEFYaHVYZ2lYQzNhVXdGV1o2SXJINEVwRWlTWkMr?=
 =?utf-8?B?eVFBaEFZTVVxWDNjTDNIOWU1QWhYdGE3eUZ1b3Z5VVFaNW83dkQ3QXNDbjBS?=
 =?utf-8?B?VktnZmI2Nm9yL3lOV0tYMCtwVVdTdXZHT25DNXZDVFE0Y2ptV1B3NENiVTBj?=
 =?utf-8?B?RGUwZWtFVDFuZnNrWDdIaW5Gc2VpUU5tOWEzdml3NnlXUGFYNVRtK0NMRG1Q?=
 =?utf-8?B?Ry9nd092dytqL3p3T05RcEtQWFcrRHB3czJ5eVk3d0htcFlTdCt5TzVxVVJ1?=
 =?utf-8?B?ak9QVS9lbmtxa3RmdU5MZzg0aGYxVWdWanlSY0R4Ym9adDlPQ1hPczVxZ2tv?=
 =?utf-8?B?UVNwcUlJbjFSRDhKSXJUZ1N2enR5ZnZVYTRVNFd5VkRwVFlkQ0l5QTBEL1dt?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14d58bcd-49ed-4341-854b-08dcfdde9672
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 21:12:43.0951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8MPFPYMyK2MUaHz1wewodj0pxHn2Ppw0p2aqGrnDh+NIDvn6T8hGN6MkT4YXX6qJuIrJkUiq4VCii7EAKY50MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5027
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

Quoting Gustavo Sousa (2024-11-05 10:46:52-03:00)
>Quoting Luca Coelho (2024-11-01 11:27:10-03:00)
>>On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
>>> Although Bspec doesn't explicitly mentions that, as of Xe3_LPD, using
>>> DMC wakelock is the officially recommended way of accessing registers
>>> that would be off during DC5/DC6 and the legacy method (where the DMC
>>> intercepts MMIO to wake up the hardware) is to be avoided.
>>>=20
>>> As such, update the driver to use the DMC wakelock by default starting
>>> with Xe3_LPD. Since the feature is somewhat new to the driver, also
>>> allow disabling it via a module parameter for debugging purposes.
>>>=20
>>> For that, make the existing parameter allow values -1 (per-chip
>>> default), 0 (disabled) and 1 (enabled), similarly to what is done for
>>> other parameters.
>>>=20
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++--
>>>  drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
>>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 6 +++++-
>>>  3 files changed, 8 insertions(+), 4 deletions(-)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driv=
ers/gpu/drm/i915/display/intel_display_params.c
>>> index 024de8abcb1a..bf00e5f1f145 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>>> @@ -123,10 +123,10 @@ intel_display_param_named_unsafe(enable_psr2_sel_=
fetch, bool, 0400,
>>>          "(0=3Ddisabled, 1=3Denabled) "
>>>          "Default: 1");
>>> =20
>>> -intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
>>> +intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
>>>          "Enable DMC wakelock "
>>>          "(0=3Ddisabled, 1=3Denabled) "
>>> -        "Default: 0");
>>> +        "Default: -1 (use per-chip default)");
>>
>>We're already explaining the possible values in the previous
>>parentheses, so maybe the -1 should also be explained there?
>
>Yep that makes sense. I was following the trend of what was done for
>enable_fbc and enable_psr, but I guess following other examples in this
>same file where we tag the default one with "[default]" is better.

Ended up simply doing this:

    diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driv=
ers/gpu/drm/i915/display/intel_display_params.c
    index bf00e5f1f145..dc666aefa362 100644
    --- a/drivers/gpu/drm/i915/display/intel_display_params.c
    +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
    @@ -125,8 +125,8 @@ intel_display_param_named_unsafe(enable_psr2_sel_fe=
tch, bool, 0400,
    =20
     intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
     	"Enable DMC wakelock "
    -	"(0=3Ddisabled, 1=3Denabled) "
    -	"Default: -1 (use per-chip default)");
    +	"(-1=3Duse per-chip default, 0=3Ddisabled, 1=3Denabled) "
    +	"Default: -1");
    =20
     __maybe_unused
     static void _param_print_bool(struct drm_printer *p, const char *drive=
r_name,

, because repeating the word "default" in "(-1=3Duse per-chip default
[default], 0=3Ddisabled, 1=3Denabled)" looked weird.

--
Gustavo Sousa

>
>Thanks! I'll update this on the next version.
>
>--
>Gustavo Sousa
