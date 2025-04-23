Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4787BA980CB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 09:28:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B805710E649;
	Wed, 23 Apr 2025 07:28:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c8fsZkiu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AB2910E649;
 Wed, 23 Apr 2025 07:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745393303; x=1776929303;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dDhkEmJLRpb2uOVM0/GZuDcOTh4SmBNMOsNn2gXhbXo=;
 b=c8fsZkiuE3Vs2nVnV55stAP0yUDW2gNOPOlh3CXGeNtPV4v7YtQXph1V
 pSDsXKfUT/F2XRj5FnwnWiHAGD81/QZ3X9219lK+IfFPjAxTWywyVmaY/
 fAuU3t1weOxGPk8zw8ruJW+q3OYQYTJH8jRcjnWF9fL2k4xAu8qtEHk4K
 NQRPG83VZ55D/7w8HJBCCQfa5LrBgoOR5KKKuMmZRUkIIMVj+6LUOQRjs
 cjfzF2ehMAjNRF/k5kI8nhaXBJa1nz7RWOaSvbKAnHUlQhNKsTimAAbXo
 lWV5/Z0SBJhKw7wm3YMQ0GDZx59WLrj2IsZaxrHNhz6wzAmE2a5T889aQ w==;
X-CSE-ConnectionGUID: XM6ks5EGQfunTKAoArRFhw==
X-CSE-MsgGUID: PQEdJm+jRdSpVt0sL4LNwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="47072337"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="47072337"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:28:23 -0700
X-CSE-ConnectionGUID: 75mU0mc/QeCrSn/ovzgUFA==
X-CSE-MsgGUID: 0xWEJp7TSaehk03VabAh7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="136307352"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:28:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 00:28:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 00:28:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 00:28:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x89xXliTuiwBd4nXp7fW7g7qQZfoYGCaW4DzNt1u8kvyTowLfD6xrBNS9IfFSGVjim4KhsMCs8xNeLjnDcFrUrQ3EqqbAPakCUmQ3IU0PQ1byLxr2ygXUSNHum/gogTRtwprUOIVkuS4OIoRcv+PWKYmNmJ9bG0ldK5uiBPhHAQdlBs98jidpyiVpT1VVFID20h4II9IP+sfJ1LAVcif0YBWkSHvvoHb/H0ywtc7wiezxwT1bIwiWzqE5YkgPqmiNEy5VSHKxm9JnHn5ARLfUAJX2OxoodqcrKet05jh1ynut8NRgnnmvgTt9HAm5CNiVv3ZdK3fFgEkyFroYTt9rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CNPIgY0c/lIPS8RLW8P374b7zdWVhZsLql3sJpUBARw=;
 b=deo7L9+WuvizHZGniNCfEB28dLR1/WVomvNrMH/TQy1QxBo8RsMSnkUvwmdcXTN5dEb9SaDxdTj1G4Um/KfMgKibyVjdmdrUcvPYlQp97vWydQnj4wSSUW26f4p9KXWwX0wGRvLLdwBmoIgTMdGB1y3Ar+MMyMrRKnpXZvirULnzWQt7jbfPd1iS7LaJVFbbZK68lqOqu40K9EXeq8HJKw4qztlvyCvA2nbVmW8xDjgJmcdwRz1Zk5G+JRLWds1rX5480RYUPt36Rv4/2c7xpd4ATVgtbYoqow5kB3P7k3N78hOnN90IrP6eUssYLcQUgg75t3tdwRoHPs6Zj4ZSbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BY1PR11MB8079.namprd11.prod.outlook.com (2603:10b6:a03:52e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 07:28:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 07:28:15 +0000
Message-ID: <e40c2e85-0007-45a9-9828-d442a114f7b6@intel.com>
Date: Wed, 23 Apr 2025 12:58:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/13] drm/i915/vrr: enable dc balance bit
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0093.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BY1PR11MB8079:EE_
X-MS-Office365-Filtering-Correlation-Id: 518a73b0-d224-4107-c41f-08dd823868e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUFFVGxtRlZ3QldQZWJNYkl4OGd6UTJIMStpZFRoL2tMQiszUktuL0FLM2lR?=
 =?utf-8?B?OC9nUmRpUk5TY09zcmZiVzJ3clNHYnBjZUpRaHVrbUk5SHhHUFB1OUR5M1BB?=
 =?utf-8?B?QzVZYWREKzBnUlc4L0djVUZZcFhGVnl0dExyRmtQci93OElHb3ZrRkgvQ1py?=
 =?utf-8?B?R1lyVi9DcmlUd0JhbE1OT2NEVkhQcDJXMVk3L3BnYm1IT2IvQVIrVHVmamEz?=
 =?utf-8?B?ME9TbitKVHJMRno0cnNJd21KRlpUVHgvaFlFKytmUGc4cGg2WTRnTDhqVHls?=
 =?utf-8?B?YlZ2VitVYk5WcjQ2RFdqS24wMEJMMWprR01ocmNZWXRpZG8yNDlXU2IwVUtN?=
 =?utf-8?B?YmtiRFZrMXNqZzgrTUZTSkp3cVhpTlBhWEFDUjFjM1pCRXRYcFE0ci9oUVNV?=
 =?utf-8?B?Y2V1NEZuaHRwaGRieFkvWU5oMFh3eUNZaUI4MzBQSGRDdlprbUkxQnBYTkZY?=
 =?utf-8?B?d0hrOXd3dkUxTVhOUWQ3ZE5KNWJyYzlPYzFKWkYrUEJjUkxSWWsrMHpMZk1K?=
 =?utf-8?B?OWtIL3BjaU15cUF0Q1EzbDlLNkxwWll4V1hueVVOVExmKzZFQTB3blhQZk1C?=
 =?utf-8?B?ZFhiaWl5WHlRdjgvMUtDcUxiTGFVSmxEb2dQNDZkYkVTa1RiNXR5bFhXRGpv?=
 =?utf-8?B?M1JyZjd0bXk2SzI2ZWtkVXgxMFBOd2VxYWxjVGlieFE3OEZTRVdOUTBrWitB?=
 =?utf-8?B?RExVNUowSC82Y1JBYjZqa3VJeUFZRzYrUElsVmxwK0hVZ0l3ek1WSk9xRU5Y?=
 =?utf-8?B?a3Nsc0k5Z3R3VFhlNURSaVIraTkyQ2o3a0dZamd4NktZaUx4L3dwNWFKLzR2?=
 =?utf-8?B?dlRZWUlLNEl4UnhsNFhGRXdpUjdDUkliZ3ZWWkdMazZRSFRwd2xrQUYvYStP?=
 =?utf-8?B?S1dDVkVYRTR4NFkrN3QxaEc3MVRhUzg0NWhQNFhYOGJNQWRNR1E0dzRsWE1q?=
 =?utf-8?B?R0p1eVMxRW5JZ2wvRlVjcVBKcDZzVVhibWlpQmYwVE5RWnBmWjZ5T0hLaG1n?=
 =?utf-8?B?djBVVm16QXkrZmw5Sm9qVlkyakszdGwrazd1S05zV0QyQXJacmNaSlN1RGZ4?=
 =?utf-8?B?NXUxZXpJVGtqaVRyOFZDT0FZSGRwVW1ZTmtXcmYyZ1hlUjBBZGdrTWFjQjBE?=
 =?utf-8?B?ZWh2eFliZnY0ZDdqT0JhYUt2d2xJQ2xNSkw4QnRIRlhsS0RXK0JmRFJhRXhs?=
 =?utf-8?B?OXltRnJHR0VVMUtpeWtUTTVvQW5HenVPZGNsTlhYa3hpelYvWG1xUENIcmlE?=
 =?utf-8?B?ejhQak5IQXFrZWlSb1I5ZEJuNGtZT3NWS1Btek4weTBERnQ2S0s3V08yOXh5?=
 =?utf-8?B?N2RuU2M1UW9zM1dvb1lPS3RkdVE0VDV4KzMxNDk4cFNuWTNORGFub0d6TXlw?=
 =?utf-8?B?bisxT3dQdU1QaDB6aDFDOEZFZ29sMjFRY1NnekRxR0V5K1ltZUp4cnBLZGt5?=
 =?utf-8?B?MzNCTkVrSkN1amt6elU4MGovS2djRk5CNUVMWGpFQlhJd1Q4eTM1a0dkYkMx?=
 =?utf-8?B?a1VmbW1iV3NOd2drQ1grOTJsN3pqcXVGOUVvMy9kUHR6QytNbVBPTHNDTlZX?=
 =?utf-8?B?YjJIRmp2NzY1RlJ1VTdtdWdPQ2ROTkRMMVhUTzlndUtieWJYTVdUM3I1Ym9C?=
 =?utf-8?B?WlVpNDNSK0Z2RVIzekNZTllNclRVT3Rod3JEOUVVaXFvV003VlNlY29vMGlj?=
 =?utf-8?B?aFVWZEJUK2lHY2lTSjBwTzZ0SWJtQ0UyUjhKaExGOUFvWGVCMlIvQ1FOVWQ0?=
 =?utf-8?B?YjViUTlIbGU2RUlKUER6dGU4eFZQd0MwSHdDMDNzcjluUjZaU1ZFRFNyV0RN?=
 =?utf-8?B?RkRHSFlCVHdqZ0MrUGtmWWxpeXJRaE44YWwvcXN0R01LeW1KOVJ3WEd1Wnp0?=
 =?utf-8?B?d2J2Y1NtOTFaMUlRTDhoZjNKNFdSdVI0OUkvU2ZLTDl2ZkE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cm1xQXYwem8yNG1DcTV1RFV5TCtuZWxaM0l6NVgvZEp5aWNuNkZqK1djaDlS?=
 =?utf-8?B?VVJTc2h6cjB4aE4ycy9kWld1dS8wTTQ1NTluYWVtMHlONTBZMHBPdy9SVUh2?=
 =?utf-8?B?c1M4VTVVS3ZPakdpNmx3aWsrMkY4QVAxQ3d6cEQwaDhqb3ZzTUJOanBIeDdV?=
 =?utf-8?B?WE5RZVVPMHJMMDZQUitic1QxUDVxNFFVNE5BNklnR2pMVmIxanVOUzRicXpX?=
 =?utf-8?B?SzJNWFNUMERBVERla1p1V2dRYTYvNnV2akRYeXdJZUthQnV0MEc4TFJKRHU4?=
 =?utf-8?B?RTJTcGYyczRTVmUwT1NVQUsxWFFxYTEzbjdwSSswM1NjNXNVYm92Z040OXRV?=
 =?utf-8?B?L3pIVDlHeG9GVTFUWjd0Z2IwWm9UVXVOenNTK3h2RFMxZm1zZlNwRStOdjc3?=
 =?utf-8?B?NDFzMndPS29HdWQ1eWZJdlVSMkJZd2pmTjZkNVF1bktCN1pZSnVGRVBON2Jk?=
 =?utf-8?B?dDVvRW5ZWlBGSWdSNHY1Q2RtM3JYYnpiQ1FCRmEvdi9kQnZWNHlNcXo0WG5W?=
 =?utf-8?B?U0lhRDJxTVZwK25rOU1RaVM3Ym4zT1NVamtmdTgxbGpWU3EwNm9pd1RhWkpV?=
 =?utf-8?B?Z1hnUDJnMHlKMnVXSGV1UUszRnFWMEl2MHhoLzE2VkNXTlRQZGR2NnptN2Zy?=
 =?utf-8?B?WVF5Y2xCc2VLZU5tdEdNeVhmSVE4b3k3dXp6ZU5Ra1VrSGt0S1hSNWk4V083?=
 =?utf-8?B?ZnlQemZnaEZBN01aVXcwYzcwZHRFa09Pelk4eEkyQUU1ZXlTdFB5QWNKSHlu?=
 =?utf-8?B?N1I3S1hQdHBXZDhkQ1A5RjdTemJlRmd6REhLL011T2Jha1U2VnB1aEtIVEd5?=
 =?utf-8?B?OG9OcEZUOWFBZW5FeWJERVVBdDYwU2VPYkZsSE9OSjNKbjc0cURUblNIUnNJ?=
 =?utf-8?B?UlBkT2k5czBPRG1DdUhyeDZFZFR6VTZjZGYyZFpESGVVNWkrd282Y3NGdXlY?=
 =?utf-8?B?VVlxbTFVUFZ6WXE3SmcvL2hUQjJ6cUlRa3ZuS01pYUk1VlBWdks5Ump3WE1R?=
 =?utf-8?B?eWI5RHVOS0ZqTmg2NWNrVitvNVk1Vjk4bGRSYlJZUURESmtFRDNMTy92MnJT?=
 =?utf-8?B?b3ZIWHhPcXVJa0t4eGZxTDY3cWgybTlMT2hVNWMweEtsTDFUUnVRZVp3RlZL?=
 =?utf-8?B?L1FlY0VGQkVJYkFqeUZwODVuNnQrMWNkTTJBR29jcFFVbG1Ib3hxZ09hSVVG?=
 =?utf-8?B?b1NHam1rZ3EvRXRQR0Z1T0RWWjMzUzlBSXFBTDNDMTVwbHlYNHBVUEJSU1VH?=
 =?utf-8?B?K1lrZG9FMTdJSUlIOVF6OElSdit5UTk3ZmZUUDNpKzRqSWFtQktDbFU4MWJL?=
 =?utf-8?B?N2RhdUF1M2ZTK0czMjBaR204aHJwV1F3UWMvVmZnOTN2eXF6VzFLNnVYYk5w?=
 =?utf-8?B?TmxFMW5KRS9JYVNCSjB6T2tiZnhtN0FSTEpkUmh0MXVlZXNpVDBCdVNaV1Vs?=
 =?utf-8?B?dGRXS2QrQVpES2lGRi9BWTJ2Z2ttRWdlWFZzL2tGOVYralpvWS9CVHFUK3pZ?=
 =?utf-8?B?Szg1S1lsUFBLV255aDkxTHhUdG90LzBJanNNZlRHSzB0NmljNSt2Vk5NTGI2?=
 =?utf-8?B?T042cU5oMHZkSjNRZUJZdUxzNkFOUjBockUvWWwybDBLR2QvWUZhM0RRa1BI?=
 =?utf-8?B?ajcvMFVCWTBGSVVRT3haeXMyMEZaSXh5cTNoWmFtVTdzYSsvRVZwMENDNm42?=
 =?utf-8?B?amFrMmxaSnNsWWlORlYzcnJQSXYyUm0zbGFvMEp5K0RMS3JoN1Y1SFRmMlJO?=
 =?utf-8?B?YW5UMExuT0hmc0d6cEdtZ0Zsd1Y4QmI5b1E2aEZuV3J2U09XMHZQSEc1UEJu?=
 =?utf-8?B?UExxbFhmei9UR2VqNGk4RkxZMnBxQkJvN3Q2TDRvYlh5RVFlTXNqblF2TGxa?=
 =?utf-8?B?bjBmNzRUMFZjaEdmSTBBa2lZQmlVTTU5RW5IZy8vT3QvTHJ4eDlOY1ZvaXE4?=
 =?utf-8?B?bXEwc3dtWlROSTNKaitRM3gwQnl2MTI5TEJRd0ZGZDFrOVlWZHBlU1EveFRH?=
 =?utf-8?B?c253UU5MNjB5OGJPREMyUTNKaFdWNHpNbGV6dE10OEhEOVdtQTlUd3M3ZFFz?=
 =?utf-8?B?bUxBam9WVjdHZzlTRm1yUEloU0Y1NkJ6RVQ4OWVCT1BqbUtBQ1lJYnM4SThs?=
 =?utf-8?B?TjViOVhBQzJjbE5SQTJXVGVyYmtVRDY5Q2ZSb09tWHZMZ1FVRlhyWWJ1cmdG?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 518a73b0-d224-4107-c41f-08dd823868e5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 07:28:15.0559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uzBhRnEtYqIWhQxzOXVSlSsD5FAu+yyo7e8qDbosJ8n5hGaindqu/gyL7XPle/mwFZF8f+/RQbnVC1x9YfbUQuOvlQbsAAMU0iloIBiKKfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8079
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


On 4/21/2025 9:19 PM, Mitul Golani wrote:
> enable dc balance from vrr compute config when vrr is
s/enable/Enable
> enabled in adaptive vtotal mode

Nitpick: Add fullstop.

With above fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 7c09f384a684..a21dbbce9ac7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -255,7 +255,12 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>   static
>   void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>   {
> +	struct intel_display *display = to_intel_display(crtc_state);
>   	crtc_state->vrr.enable = true;
> +
> +	if (HAS_DC_BALANCE(display))
> +		crtc_state->vrr.dc_balance.enable = true;
> +
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
>   
