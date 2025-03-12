Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A0FA5DF26
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 15:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16BCA10E789;
	Wed, 12 Mar 2025 14:39:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CmvSR/lO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB3110E787;
 Wed, 12 Mar 2025 14:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741790361; x=1773326361;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=3OnmsqVKU2LkXNAJ1AV+xgcT0mZqeMmBWHl242m5kqk=;
 b=CmvSR/lOS6fLylvXxzAnvbmWwwppFwbdG02plP8tMwmRc/DHDxqLmvXz
 Yx53ZIIcvh2YaN+cbkaEE9127q+DiYSVN1BP72fTSzBs7DyqhZjWABhnH
 Rjg+YuOQtJb1cOeAxfWpkS4buGBuhFrc8hthy6BogXKJ3tSq7xgZqBurE
 q6qxw+3dwjfF+L4v6e21RtQZBRarUqFe415LNqMRZzo6/NfRYn+2nDLIB
 uLNMknc2bFzHzSAs2+Wmbt0zy/veEP8dDuPr+Jq5me3PwYKaNOws4mWn6
 7jjSLRTVlx2W5kSCuLOmPHJw14lz02j3cUe8uJjqjgY7yT0GzX21SXyEs w==;
X-CSE-ConnectionGUID: uut4ADwATjaJ2UhBTcycVA==
X-CSE-MsgGUID: LpFc1aWWS1K8ImmRYBP5KA==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="43053258"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="43053258"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 07:39:20 -0700
X-CSE-ConnectionGUID: 03v6BIBySA+RMp9lJh+Uag==
X-CSE-MsgGUID: RlUIzvueTbOxtCulD4zJ6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="157828562"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 07:39:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 07:39:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 07:39:19 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 07:39:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TS6bAh1Kdk7EmjpyNIHuMOQkzPHHvSVDKJI2yiDm3T7Kdz1KqboREYb8xKaBF10TJjG7ZEozoTrQWmbDVfYPEGSwzswPFgP02nV0GmEvOxMXHg7XZ02G3fKMmAbMrG5ZjZAY7+vNBZmrbOFw3La81WC5BJY/oTUiEJcMSPhWt2WlLM6MqYozGKr/D56I6t+OT34Urhe67QTuZu+DOIIWFIpvA+PFQhXYNs272AnWufMiMX/0S9oNNQI/W8s8One8eIhPsF5uu2vhbH013tL4QwZwoPyGrppaOjXlahbEeNgkA/stfX4qlnsmvUb41K/g7lYxeeaO1WKXZkhro+O9Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WM15JD0eroAaGhLHgRA69JI9BV3kz+A1W9Gs70ons0E=;
 b=kCZVxmmmcMEn9Yc4FLIp6Heww81+8vmZW0QlHo7FUDWZ3yQwtH2D6pQNquowDwbd9PUuO7RIkbTb79BkV5kzJ+gweSQQgf7rPxLzhKl+JKGUCAkhNXJMHfMYis83CpgmkWNkKQufa5n7vNjaqiBEZpfg0Ii7kjL0k8ZqVACfMfKRpcNkFH0h+AqosC7X0PU36Fhw9537zsiL+ButaJctUnHGh/z4dvpTV96M1SkHWokljVn4C5H5tMqTYju1a0fbJYrJUaYrlntCtgRzYoYJjGHvXyJUturqb6/tEAkuMj4t81scF+t46KC717nGTK1gfzBu9AclQLLcmfhd5IltMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB4797.namprd11.prod.outlook.com (2603:10b6:a03:2d4::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 14:39:16 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 14:39:16 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <174171875506.21135.9191847260585353600@18a75f3d1eae>
References: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
 <174171875506.21135.9191847260585353600@18a75f3d1eae>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for drm/i915/xe3lpd: Update
 bandwidth parameters (rev5)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 12 Mar 2025 11:39:10 -0300
Message-ID: <174179035039.12216.8847758045405082047@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0268.namprd04.prod.outlook.com
 (2603:10b6:303:88::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB4797:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ae9df44-a9d4-4c17-613a-08dd6173aa21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckcvS1Y0cVJPWjNaQ1FpSTZqVW9uSXFPWm9RL3E3T3ZVRG5WMHNhbFZCd3hz?=
 =?utf-8?B?WnVBbnZKMk9VSklvRmJnVXN5WmFOVjJBbnFTQW1WRVJqT1Y3S1kwUHZFR2tt?=
 =?utf-8?B?TkJJbWZpY2NZQ1RXaE1aZCtuTWN6MUtTL3p2UHg4dzl0K2QxYUlrRXk3Vk1K?=
 =?utf-8?B?S1VoYjlDZkJ5ZHlyQUhOWGpwNXRmUTVybG9YZkhOclFBQjN3Unh1bUt5alA0?=
 =?utf-8?B?cFhjVXZpbllnMHRBSHc5U1ZlRng2SndFNXRZREhoSlF3Y2srTlQ0dGJZVGNj?=
 =?utf-8?B?anczZ3hnajU4enBkcjFORXdNTHdSVE1XZ1ZEMzIwODhjbzJJdHFWUitndTJW?=
 =?utf-8?B?YjdqNXNNUUQ4NzRFVEV1MnNJNnd3Nk8vNWtsbktUNkFXUXVUdm9iSDJuTUhO?=
 =?utf-8?B?L1lDV2NKVzdiYndVR05XeFpscy81aWpXVUxtQ0tneXlMRGhFYjBtZG9mOUdO?=
 =?utf-8?B?Z2s1eEI0MlNGR2U1ZndyRXJvTUV5N2lFaU1mN3dBNHZuSWJYUjNLUVY4d3B3?=
 =?utf-8?B?czNENVJIQzJiYTEydk9KQ05sZFN3RDNnOGQzZ2xSNWk0dWg2YlRRZG5MSjU0?=
 =?utf-8?B?Ung2WUtEejBaeU94U3NZRkV4dlNtVXlCMW1ZazlkVWY5bzZHZGNnb0pVVTQw?=
 =?utf-8?B?bXE5aHJVQUx3Tlh1VTlYaW95eFN3UUpaSjFoak9saU5nOUFMMWJ5eFFmY0Ur?=
 =?utf-8?B?WlQrWjdHalZpM1RXZXVjSUh2eUdJQ1greW9Zbm9TclZqLzdGcEhBQ1lZYkRG?=
 =?utf-8?B?dHZPbGVNUWwya2puZjF1a3dEcTBmaW1tYVJZUDVZYmY4bzhlS1AwMGYvTU9B?=
 =?utf-8?B?bFVURW5pZzdDbEhOUk9JM3kzdkxLdTdGK1QzWVl2NE4rNERPQjlKamhGUzEr?=
 =?utf-8?B?eUpHTkNOVDJQTkFTK0ZPNFRWS1Y0RnlWdHdYK28vTEJwWVd6amUvWXI3YnhJ?=
 =?utf-8?B?QWJLeEhQZUpkZStrY2UxODJmRkJmM1Y4U0xvdUJ4UWpOMmpNSVFLRitwdFZ1?=
 =?utf-8?B?bFJUNGE4bUE3MTBocUNJa3MrWmtXbWZtMmxlbW1UVklGL1Z6TnpnK0FpVWRm?=
 =?utf-8?B?SXRCQkVPbldQVnBmK1BSZG5nWUJNZi9aU1VPMDVZbU9jVGpGTzFIUDNxZjRZ?=
 =?utf-8?B?T1FPUktqWGpENFVRc2hBY0Jxb1hnN1B5YW1ZdkVWVUsrZS9pS0RJWW1IVU84?=
 =?utf-8?B?QWpHaC9wOHdHWnMrNWs3cVNZSFAvQVBXa204VkVuUkYzdGRQUVB2VHZxK1pW?=
 =?utf-8?B?UjZ5U216b0ptYkVPaGpKbDNwY25kOC9CYlFlaHYrcEphdHJSRmY3cXg3MW9m?=
 =?utf-8?B?Z1lyVjJVYXIxRmZTMk0ycDYraTkyVTRsMlBpTnc2a252N09tbnRoZnA5L0g4?=
 =?utf-8?B?V1FqT1Y5YkVMWDZlck9HUVRjdWpvcmliYjZ3K09nVzRZdENXVTUvVVZRQzdr?=
 =?utf-8?B?WWZNeDV0Sk5pY09EN3F0eEUzcTFNNFRNcHNJM2tmQ3I0R0dEczNQcU9BQnlL?=
 =?utf-8?B?OTNTQkluTndqUVh3aHNJdXFBNStUSXlLSnN2OENabG0wenVubkI4RFFrOVl2?=
 =?utf-8?B?K05nTDVlUlM0aGw2TE5FWktJMFU0dFdqbFpFSFhCOUlIdUVLbThPVHdEY1RI?=
 =?utf-8?B?TDdTWTlCVkthZlREaGZ1Ti9nUTdUNHVUdUlhaFVDQkF3RU8vMUNnSUlsWDFu?=
 =?utf-8?B?RmVCamR3ZWozRkNEOSt4Q1FXUkFQWHFpajBDWm9GSnhITkwrM2o0elNxdm4z?=
 =?utf-8?B?QW45TXVWai9BeVRkcHZzd1hGeFU3TE5HT1dEZFZwaGJZMjJCbEdQOEtUM0Nk?=
 =?utf-8?B?YnZITk1leEtTV3NlSXRSY1lldzFyMlZaUnNXbWI2bTVFSy9BNERiM1VSbVg5?=
 =?utf-8?B?VlRueUpaK1RMVU50NlIxcWRJM2ZzZldIOWRPT0RXUFl0VUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEgrb3hOb0l3SC96YTdRaFRPV2J3aGJmT1ZoUHFJUWRhblVZS093TnV3OUJH?=
 =?utf-8?B?c3E0RTZPaHRjMGt2U1VmWjE5RkNsNHk0TW1wMmU2b1J0R3IwekVmL3crOEpF?=
 =?utf-8?B?NklCNXRUV0JUUjZCemRTL1NLbFlpekZpSGgvdEorRWkzTDFPcW9NbFNoVHlI?=
 =?utf-8?B?OXc1U3laRmYzKzA1YjdQeFdtUEM2RHV3NWJLbU5mTUs3SHo4NmFzeXhyajNB?=
 =?utf-8?B?VUkrM2M1ZndhZWN1eXo3UVlGdTRFTHEyUVNhbDJtUktzR0VqQUI3SWdmRExy?=
 =?utf-8?B?ZWY5eUJUUG44L2ZBcGFjOVNGdTZIMnl1Mzd1Yy9oY3Z3TWo4emx5emZrZDI5?=
 =?utf-8?B?ZGdSLzhMMXBOckNoTDNjcG1ZVXVBY01FZmRoQ3NrUVhCSGpnbzQrQ2NQZjVr?=
 =?utf-8?B?NTVkVys2UlFRMkRtRk1jNE8yMjVhbjlHbDBMOXlqVS9HR2tLTGNJYzJHd2xY?=
 =?utf-8?B?empwZ1dnNGxRRGwzWVNUb1VaZ29VRUo0ZGdIZFI4RUJkVDQrenNEdkVjV0dv?=
 =?utf-8?B?Y2l6elhoMEJ5L1dHVkJzNm0vOEppU0JzVXhsMi8wTkI2ZGRBU1Uvb1YzNWw3?=
 =?utf-8?B?VmRDVndNbEljajYybEpycnplTzg2NklrdWo3cmVFSmp0VjhQNTY0dXRBM1Q1?=
 =?utf-8?B?SWJOY0RPanprMGJzOU9VdHl3cHJLaVBPYjY4UU5iMEd5b2gwOFlybkEzR0JN?=
 =?utf-8?B?bE1HcTdHN3RBbjVOMDFWbXlmSnVrUElGMFp3bTR1QXJvRGtsZWh6N0dpMFdM?=
 =?utf-8?B?eFloeUhZQm1mbC9od0NCVzBsUWt1VTRPWld1YWR5MWFsUnQ2b1QwSUZ0SUdh?=
 =?utf-8?B?Y2NyVVh6bXl1K1hGclJ5YUpwQ0lTeTNZaFZLalVnU0xLN3gzbUJHZWQ5Sys2?=
 =?utf-8?B?LzlhcnpoMXplNjBQSXlqV3R1Q2JIYStnaGVzTVdHMERUaG5tUGNUTjRwak5u?=
 =?utf-8?B?ZFNYS3E2d0M4QjVvMlFPTUVZaTg1dzF4dkhXcTN0eWg1cFFZbFZZT3VCSkFU?=
 =?utf-8?B?RzBzSzZrQ3RQTDMzd0hPcjVwazRrOG93ZzQ4SnljMnZlTFV3cGdOL1gxdDRS?=
 =?utf-8?B?aXhPeFVtcEdrL1pZYW5ORDRDdkZXbUJySjJCdnUya2ZJTnRjQVR0a1ByVW8z?=
 =?utf-8?B?ZlpsZlNQRXBEc0xjb09jVzVhSml5ZWRML0NsY2MxOHlEdTF6R0JDUC9zN09t?=
 =?utf-8?B?MGd4Z3M3cmlPOFdSMnhrak5MZExKeStXQmQ3ZE0rZXRQRjJsZkFZTFVlV3dV?=
 =?utf-8?B?ZWhpblVTbmt0dlVJS2dDaCs2dVl5dHpPOWtPV1phZnZJNlJHMUl0eU1vZEQ3?=
 =?utf-8?B?aHFrSTFGbmhsTzRTZ0xKTkdtYlhKeDd6Q0IwWnMxZGtLQ1BBM2V2cDBjdTZm?=
 =?utf-8?B?TGJ5QmVYQm9XajJKdVd3RUZvREw0Q0ZMSmc5OGxGaS9PVUZJZzN6T0hvaUtW?=
 =?utf-8?B?WGVadXk4VW42QjYwU1V6dCtrWitYdGtxb2Q5a1k1d3Ridk9BVWdWc3RtTktz?=
 =?utf-8?B?bnBVQjhmWFpCOERIbzJvaVBRSjhIWlZHakVXdkljUXgrYTJHMjdkT2Vxdmdw?=
 =?utf-8?B?Mk5uNjZCcFErMWNEMlZJT1dBVVhBSmZnWjI0Zk9CTno2enlnRm9oaHVxNkRm?=
 =?utf-8?B?UEIzZ1Boam1DcUlxQjNMZ2Qwdm5lSjdvTmpJYkxnc1ZHeENUdThhdTN3Mk03?=
 =?utf-8?B?L2ZSeXZPdHlGaFRHN0l4Wm9iQlR2bHRBVUtNa0piS1lUWEo5QmFjdlZnNGxE?=
 =?utf-8?B?UlJkb2dVSjB1S2d4Y2JBVnpOUWVjbE14N0E5ZWtyZGFyK2duazQrdjBhYnc1?=
 =?utf-8?B?Y1QzK1BuQmFUYkRxUlVKdUkvZElUOGYrS2drR21hcDBqUzAyeVAwQUJmZTVI?=
 =?utf-8?B?KzR6M1YxMk9uaE1mbVdxUXg4KzBkVTAzQkVpeXY5cVVrNmRuK0t6OVljSmgw?=
 =?utf-8?B?Y3RWWXFJVHZBV0ZycmgvS1BPbjN5eU9CdDhEbGRrMmNuMWpVaDdHNkZXN0l2?=
 =?utf-8?B?aUdzTDFTSlYzTnBQelNWV2ROMXZyVkkwRVFBeGRRNmpNRDV3eDNXeG9BUTJt?=
 =?utf-8?B?NDg3a1d0THk3REs2OWs5RGxKWENpcFUrdm10OEJiTWc3NnRhVTkxK1dqYXda?=
 =?utf-8?B?eFFZYXRsdFpRWEhlYzdmWEgxYUJrUDExMmhEN1Rmclo3ODlvcnpteEduSnF1?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ae9df44-a9d4-4c17-613a-08dd6173aa21
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 14:39:16.2524 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NHPdZMNWZ11uoHMyX029f004Pad1Fc19PY8QdTmFg2uFGcNg+v0HSi7NSTZl5PdqWv624ab9uJT3YB4Wv+Nr2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4797
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

Quoting Patchwork (2025-03-11 15:45:55-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/xe3lpd: Update bandwidth parameters (rev5)
>URL   : https://patchwork.freedesktop.org/series/144441/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_16263 -> Patchwork_144441v5
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_144441v5 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_144441v5, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144441v=
5/index.html
>
>Participating hosts (43 -> 43)
>------------------------------
>
>  Additional (1): bat-arlh-2=20
>  Missing    (1): fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
144441v5:
>
>### IGT changes ###
>
>#### Possible regressions ####

Hi, CI Team.

The errors below are not related to my series. Could you please
re-report?

Also, please see my comments below.

>
>  * igt@i915_pm_rpm@module-reload:
>    - bat-adls-6:         [PASS][1] -> [FAIL][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16263/bat-adls-6/i=
gt@i915_pm_rpm@module-reload.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144441v5/bat-ad=
ls-6/igt@i915_pm_rpm@module-reload.html
>    - bat-rpls-4:         [PASS][3] -> [FAIL][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16263/bat-rpls-4/i=
gt@i915_pm_rpm@module-reload.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144441v5/bat-rp=
ls-4/igt@i915_pm_rpm@module-reload.html

This maps to
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13901.

>
>  * igt@kms_addfb_basic@too-high:
>    - fi-kbl-8809g:       NOTRUN -> [FAIL][5] +3 other tests fail
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144441v5/fi-kbl=
-8809g/igt@kms_addfb_basic@too-high.html

I see amdgpu in the dmesg out. How come?

>
>  * igt@kms_flip@basic-flip-vs-wf_vblank:
>    - bat-apl-1:          [PASS][6] -> [DMESG-WARN][7] +1 other test dmesg=
-warn
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16263/bat-apl-1/ig=
t@kms_flip@basic-flip-vs-wf_vblank.html
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144441v5/bat-ap=
l-1/igt@kms_flip@basic-flip-vs-wf_vblank.html

I'm not familiar with LSPCON, but, at a quick glance on where lspcon
functions are called, the error seems unrelated to intel_bw.c, thus
unrelated to this series.

>
>  * igt@kms_force_connector_basic@force-connector-state:
>    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][8]
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144441v5/fi-kbl=
-8809g/igt@kms_force_connector_basic@force-connector-state.html

Again, amdgpu in the logs here.

>
>  * igt@kms_force_connector_basic@force-edid:
>    - fi-kbl-8809g:       NOTRUN -> [DMESG-FAIL][9]
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144441v5/fi-kbl=
-8809g/igt@kms_force_connector_basic@force-edid.html
>

And amdgpu in the logs here as well.

--
Gustavo Sousa
