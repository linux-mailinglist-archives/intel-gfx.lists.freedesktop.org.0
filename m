Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B64CBF86D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F6DD10E4F6;
	Mon, 15 Dec 2025 19:24:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X/rtvdJV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B37110E4F6;
 Mon, 15 Dec 2025 19:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826656; x=1797362656;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=dRS9vfDPzexajmLyeyC8wKZGcQ+YbnT/siyixq80L8M=;
 b=X/rtvdJVPpfJWG40FjofrlDaexkGxOLQMi7wuL4I6qJ7K90/WzhyMwIX
 o47qNGyVuLNXfgSxrK6T+j7yJIi7/CNopR6P1S47l6fe4DZZ5wLHltabA
 /oMuzr/ScUvZ3FldVyDBW88Yc+GyEyzeDL7xFLzLawaJP0iS/hBfbkVpT
 dY8XOX0+o4eW2BLWpwh5avoKA+tW9+Xn6ovLWPC3L46mlA5h/0QHUwAnd
 YKhpS57RzSxc9o4bLYw/cBSCdpyosHfStpC+EPNCl7kbzRsXXdjhAQWmw
 Fi4J/5gqyNXfiH0KyNiMPAVScWRxw2tD60FCToL2Z19yJ4mKWXB/J6FQh g==;
X-CSE-ConnectionGUID: sModRYOkQ3KLqGEiY5folw==
X-CSE-MsgGUID: Sx51ggLzRO+TNsbPLx2JAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="79106235"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="79106235"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:15 -0800
X-CSE-ConnectionGUID: jhJFB5dWQJm43NOi2M4ekw==
X-CSE-MsgGUID: E3lpJmPSQRS+VNxAb4wD0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201987014"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:15 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:15 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:15 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.63) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i7UuU5xVGwy34bfPCaXbVSPHRWk+GlZ8j3ZUF+GaOjpxI7IyNX8TVu0tTUp5m3HNRI6J0uOWXxbYx8aTl4+Dmtae6BNE+jerXbPTXpMUxi4fgHkqF+RBLgyuTiWGY/t9ETGBLUq0yqE0eGQnlqspPEGgJWXqPdw35/j+BcKCP96R5G4icQ4io4nQSqmYonlXo27DWi4AbBmwB5UEIIhn2KtPUasReMWlM0bPQskU0lfY3m6X3nhin99SOXipRIAGAM60tvI5RkWJVkf1aADLviPoF6d7DkB+VjOS5hZ6BDIhNtgJaWnODv/UWgv6xPiWlndD7TkfeZ8XpKs5SCoJ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=duIsAgevI2ZeLAO3UuZF9DUo2IESFfaSFmKk0/+Cjlg=;
 b=Nn6pS2KeXdB8czz5BIZHbDbtH9IOPf3lEMOcIo04GFaWtwhL99BQsrfQgkgI8AJF+1MShCH6bTR3iTiFIiBpavGCQeeUL1C6ghkF+D3e+7wId0N3L+8s0ZgBtR4U7cUCiRmLkBTiytzP0zgQh4dsJtB0rRwO95qJSWCfArs0spFDjoH3/KhYo8uje2HgK4Piz2tXQioR+eGqiZVelNOLxp3rh8yjN+DZaEyE1X7mIie+/3Dw/1OWwkfsuxF9e/s12OYbinphxy2tl8NZb+Gu3gtsdK4adOZPDkWxQj0vImSnH1ygU+mZgkFMaM5tW87ULGKIhN85MUW3bgmDn2zSAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, =?UTF-8?q?Jouni=20H=C3=B6gander?=
 <jouni.hogander@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: [PATCH 00/16] drm/i915/dp: Clean up link BW/DSC slice config
 computation (fixes)
Date: Mon, 15 Dec 2025 21:23:40 +0200
Message-ID: <20251215192357.172201-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: bbbb21b4-0288-4723-fc99-08de3c0f8176
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bjNkVjlNRld1YnNiME1NZktVaHh5K0hnUUVvdkFTbzUvNm5OQlF3aDducjRh?=
 =?utf-8?B?ODFoSWszUnhFQmNRakxXZHBIWWtLMk1iNjFHc01OTk4yUDdNTmFnUWhlY1Va?=
 =?utf-8?B?V3BBZG94SmdCeDE2WUpad1J5a2M1VEtPRXloTnBGZDNiR3Jwb2h1Q0FsTkQ2?=
 =?utf-8?B?UW43eDhUVVdtbG1aaEVwU2NzV0RZaEE3aDVMMENiRnoySXB6Y2svWWZyUE9m?=
 =?utf-8?B?NE4waDVPeEVjTjBmU3I4MHVmRWlBcE9IUkNOcTlGYWpUK3lCdTlYTWlUdWNh?=
 =?utf-8?B?Z3VxUE1Nb3E0WXhacURUdXNXTTcyMTljNjYvZ2pUK2ZEejVWc2pSUURTeUor?=
 =?utf-8?B?cXdOOC9NK1I2dmUxTlNFOFh0QWJtKzdGblNoT0M4MHNJRnRoZ0pjb0Y0aTlU?=
 =?utf-8?B?T3NVYXhWS25mUks1TDZBQWFFQjQwZDNrZGJqT1BQckdoczU2ZEszcHB2S1JL?=
 =?utf-8?B?SmFOeFpYZnlwbG9sY294aWhESVFEWENhK0xsRk9ZdTNnRFRzeG5CeENubTFL?=
 =?utf-8?B?YzdUMll2NVp0anlVYXpZTTZ3cjhLbENXUnFVQVFMaFZlLzAzSkZWMndMOUpX?=
 =?utf-8?B?cXhhNDFXUTRVSDQ1ZDllMFo4VUlMVFExMVpzNEJDNEJmUzFnNThqYmdwalNq?=
 =?utf-8?B?L2R1c1daUkUyYnRDWmgzNlAwMHB5dDYvTnZlMGl6VVJHakdhbU41d2pHcjFN?=
 =?utf-8?B?OGFkRk1XQitMbGcxYzZ5UngxYVI1eEZ0bzJyaGJ1aWNTRURndEF5QjNmSEhL?=
 =?utf-8?B?NThnL1hObDhKdHBYbmw1RUlkQjFpT3psWG04ZVNOWG5WOU9YQjFOajdCK2wy?=
 =?utf-8?B?aXowL2M0V2tPQUhiQ3lZS25OUFA1TEJPc1Y0ekVSeE9TY3F2NmEzSmRoN05S?=
 =?utf-8?B?RDVIMStUVEw0S2p2SXNET3NMYUJwK1htdjU3RHRiUDVFNms0dVJsNjNqcUdn?=
 =?utf-8?B?aGlkaTRjSzk1Q0hDQWJLUTM0dHdldER6UzBWdnQ3Nk5iMGRySC9peHljeEp3?=
 =?utf-8?B?NTJSTE93anZXL1ZJYy9ob1hTMTFYTFhqallMdlZoY01OWC9XTDQ2bU9hUERY?=
 =?utf-8?B?ZWVQbWpLeDE2MWtJV2lXWE05K2pzNXZ3SzY4OHZRYThzaWVFYXVFcVo0OWdL?=
 =?utf-8?B?eXZKUDVNNjFuWG5SNm5zVnZ5L3VSSFQ3dkwvVzZRRHJNaGVETmhvbGwvdEZa?=
 =?utf-8?B?Wkk2WUpwS2IxWlQzREk4Zis4R3RuK2tJNllNYXhiUjhBY0pkSkZHaFFxZWEw?=
 =?utf-8?B?alIxZEdSTmZ1WkhZdTRDZ041ajhTV056S2xIVFROT0RQU3hDTXNuQjhWWmdR?=
 =?utf-8?B?L0VSaVBNaVlielZzWktBQjJ5V3VNZFFKamkvZHRqbm1UOWU2Mkw0WmZocGJX?=
 =?utf-8?B?VXVFYTl4UjR5OWJPdnhTMXpYWGErbmVWOEkrNkQwK0lsZFk0RElxSU54eVpJ?=
 =?utf-8?B?Y2xNbHFLSjZnelRYNWVTVFdTMkZsY3BRdnpicTlTTjA4cytGSnJHb09FK2NR?=
 =?utf-8?B?THBLMUJBUkw5S1dwakFnanNTZE9YUHNjNGdvTldSeXVZNVYxYm9UcWNnaUVi?=
 =?utf-8?B?RXREUXVpRGN3bE82NHJLTi8wR2VHSGFhY3MzeWl2bFRNMGNCLzJPTUpBb1Jo?=
 =?utf-8?B?SHM3QjJWcEpzY1JPR0c3dlU4Z0gxdWVXcHF6RWpGQzNiVVduWEFUdGRFNTFO?=
 =?utf-8?B?VE9XemlHUitua2F5VGREMUo4dUZqaHo4VTRYWlRUZHdQazFqTWUyRTZJTVhN?=
 =?utf-8?B?cU5GQ1JnU0gxMTVVR3ZlaDNMem9KOGg0RStvcyt0SENXamxWSm95S3NieXBs?=
 =?utf-8?B?S3pNaFN6UFZ0Y0hqb1RhcGpBdURsYzltMUN3em1JamVpRlpNd1Y5Ni9IQUt3?=
 =?utf-8?B?MmYreWFZWFU3SDk4VnMvakRIRVZzbnRJOVJBMzRzY0tqNWs4dHEvZTN1QlJm?=
 =?utf-8?B?aFJKNXpTdlhDTXpaeUxQblBWYVdyc1FITWJaeEFuUlBFM0hWNVVtUlFWbko2?=
 =?utf-8?B?SUtkVE8rZmlnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFN3cGRWc2VqYmx1VzF3Ulk2U0JGMXRTczliMGVTRDQ4MElpM0NmMkhDNk9V?=
 =?utf-8?B?eWZNTktIQTJlVDFmMHhqYkJ2VFBjd3JuY2xkU1hrNlVGNGJ2T0FwVTFFd29S?=
 =?utf-8?B?aDNRNVJ4akZrUnF2TGY2NjlUNWNDZk0vQ3AxR21RNjRUZzR6Vk1XL1MzSkdu?=
 =?utf-8?B?V09oa3RnVzNGRTNUZTU4SjB3SURzakpkT29lQkZuNmkrZjlwTGg3QzlVa2E5?=
 =?utf-8?B?T1AyejhoWk4zbXk0QkRDOWtUeTJ1eUowTjl5SXpxcjh5ZEdCUjh3ejh5d1NX?=
 =?utf-8?B?RjhZK3d6K0JLUWtYMGJIYndab3BkYUZjWFhWYmdXQ3RzTG5ibHVDcEtCSGZY?=
 =?utf-8?B?cW1NZFBqZ25XQUFFUjlQMEJweTFwVDRyY3BDRG1MNjBPOXBYcWlzQkVpY25Q?=
 =?utf-8?B?bXZJblExcG5zZXNOOXFEb3J4NkdmYWFhby9EWlE0UXV1K0VYNVoxNm55a3A0?=
 =?utf-8?B?RXFiVlFveHZ5RXpzS3Nlc2JWcWlqUkhqODJOcEFzQkQ3cDREc3NJazVld2ZQ?=
 =?utf-8?B?Z3VRWDZrNGNSZGNIS3RHME96cmtQcDZpVUh2d3J5VVJsSG5icVVnNG8vWmxM?=
 =?utf-8?B?M1ZsY1JpbEdUaEN1NDY2R2hWZE0vM3psdlJjQmd2MkozVHdpbzJ5U0ZQelFQ?=
 =?utf-8?B?SGxHdjVqT1g0SkplVzdYN3I3Um4zTTdQNkdNN3B2VksrR2p3MHFPYUhVZUZw?=
 =?utf-8?B?SnlQcjY1V04rVFZsNGZSUFdXQnY5TTBHTGJRSFBMMmZpcm5tNDYrUmlTdkJE?=
 =?utf-8?B?bWdQa3VsZ3ljeGNGTG4rbjJFRStYdU5Ja2xEa2FtdkU0eFhjTXcwZktqZnBN?=
 =?utf-8?B?ZVRBWEd0dHlEODcyRzhVTndPV2tLYTBDbnFNa256c0ZFc0RDaGhqK0lQdUQv?=
 =?utf-8?B?N2NZclVGck5yR3VLYmJmZllWRytoUEdZc0d5OHRROWdDSzVReERyTWppR3NC?=
 =?utf-8?B?TU10YlN0ZHV5RFVIM3EwMlN1TCsrWjR3UE02MnlXZ0JqaGtLaEZHUmxMWDBK?=
 =?utf-8?B?YmdtWlZqcVVxM253YkhVaUlSRFBjSWtMWVk1MWtBbkdFTG9EcEhCWEhQNVVs?=
 =?utf-8?B?MUhyZG95Ylo0M08vN3RTQnpjRFBWYUtubDNwRzE3bGtuQmFXaUJSMC9rU2Ri?=
 =?utf-8?B?UnFLRFAwVFROcmlYMko5eW1FdnZwM2wzdVUyOHBIRCtEMmNhNE5ZWXkrcit0?=
 =?utf-8?B?dWdEaDZMU2VUMUhXQWhzSXorTmdOK1VkYVRzTTVHUUR5STEzS1o0bGtsT3dP?=
 =?utf-8?B?VXJkb0liVEQyUnFhb1E3QW84ZXVmV0pSalNPbHVNUTFYanpRU0NYcytmTm5I?=
 =?utf-8?B?VVhhT3lVVFJOOVBFekFhMEFNV0lkN1BNTVJtQUkzMURpWUpNQXVJTmFCU0d3?=
 =?utf-8?B?UHpPK3pRcTVZNW9tRXNGakJSUUNDSVdiSUJ4ODdVSVIyWkpLWFhLY3hveW11?=
 =?utf-8?B?YVkwRDNwVzJFWHU2TjNLRmxWQnRod1VMVGFvbGJhWjZnRG5lcjVLVkliNHIx?=
 =?utf-8?B?M2tQMnhQUlVwcTV0QzZRd0hlNVhpenArNGNob0tVZFZUaXM3NWoyTzVOU3BR?=
 =?utf-8?B?VHNNNksrZWVQeW9ZVXA4cEszTUQvSG8ySU1uT0dsNlYzSkdISlNENzU3VFZT?=
 =?utf-8?B?Tld0bnJYbkxkdTlkdDBIR1NjclZMYTNvaVI5N01pYzNWZFhNbDhGMjBzSzRt?=
 =?utf-8?B?S3VrQWExcWNWb3pVbUlleDB6RHhqVHQ2MTFqbjlUUTV1RThjY3VsbWRQaFQ0?=
 =?utf-8?B?blZBMitGZ1dZdWV3RWw5ei80dUdyWnkwNnBaNHROcW51RmtRZlFxbmZxYWxo?=
 =?utf-8?B?eW83d3czRmJRVVNITndvOUdVbHZEb2Z1aGd2cE9WWjBlc1pZU1J4N1NYanFY?=
 =?utf-8?B?aWZ1emtWZDlneHRVUUZoK2crZTJpbTJiNGlyU3Q4Yk0zUm9JcHR6QXpIdVhU?=
 =?utf-8?B?VnhnZzR6SG51bldYeVpoZ05ydEV0SUpBa0N0ZXNpaHQ2aHQ5WmFsZ2JZb3py?=
 =?utf-8?B?ZXV6YXJMc0RXRXM1MzNhRExRR0w3aTg1ZStQSDYvVFVzVmh3ZzJPSnd1b3RV?=
 =?utf-8?B?Zk00QmZycFBUWmpHbXlHTTd6a3JkVy9KQ01LcGJmckE4MVVYOEtWR2tSM1Fm?=
 =?utf-8?B?TkZINkpVY0ppRDNoaTNNdFZvWkFFY3J4Rjl3ZzQySWwwbGRKUkZhNTAwOGsw?=
 =?utf-8?Q?Jkidg447wLgi47W1ZktB73yDFdzPUKAwYyc6VjOgAK7/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbb21b4-0288-4723-fc99-08de3c0f8176
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:02.8698 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QswVQLvzW5gYA0VUdHm47y66sCiVDPeZptONkchVPZhT3PWjzZwYlOb8GjN8laNXKedixlNGXFEUXlBF+t+QxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
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

This is the first part of patchset [1] containing only the fixes for the
link BW and DSC slice computation. The remaining patches in [1] refactor
the link BW and DSC slice computation simplifying these, to be sent as a
follow-up to this patchset.

I moved patches 13-15 in [1] later in the patchset to be sent as part of
the follow-up, as these patches are not a dependency for the fixes in
this patchset.

[1] https://lore.kernel.org/all/20251127175023.1522538-1-imre.deak@intel.com

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>

Imre Deak (16):
  drm/dp: Parse all DSC slice count caps for eDP 1.5
  drm/dp: Add drm_dp_dsc_sink_slice_count_mask()
  drm/i915/dp: Fix DSC sink's slice count capability check
  drm/i915/dp: Return a fixed point BPP value from intel_dp_output_bpp()
  drm/i915/dp: Use a mode's crtc_clock vs. clock during state
    computation
  drm/i915/dp: Factor out intel_dp_link_bw_overhead()
  drm/i915/dp: Fix BW check in is_bw_sufficient_for_dsc_config()
  drm/i915/dp: Use the effective data rate for DP BW calculation
  drm/i915/dp: Use the effective data rate for DP compressed BW
    calculation
  drm/i915/dp: Account with MST, SSC BW overhead for uncompressed DP-MST
    stream BW
  drm/i915/dp: Account with DSC BW overhead for compressed DP-SST stream
    BW
  drm/i915/dp: Account with pipe joiner max compressed BPP limit for
    DP-MST and eDP
  drm/i915/dp: Fail state computation for invalid min/max link BPP
    values
  drm/i915/dp: Fail state computation for invalid max throughput BPP
    value
  drm/i915/dp: Fail state computation for invalid max sink compressed
    BPP value
  drm/i915/dp: Fail state computation for invalid DSC source input BPP
    values

 drivers/gpu/drm/display/drm_dp_helper.c       | 103 ++++++---
 drivers/gpu/drm/i915/display/intel_dp.c       | 211 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h       |   9 +-
 .../drm/i915/display/intel_dp_link_training.c |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  33 ++-
 include/drm/display/drm_dp_helper.h           |   3 +
 6 files changed, 234 insertions(+), 129 deletions(-)

-- 
2.49.1

