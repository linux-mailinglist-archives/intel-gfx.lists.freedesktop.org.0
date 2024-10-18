Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7949A4421
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 18:48:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D9910E963;
	Fri, 18 Oct 2024 16:48:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j/LDym8C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17A010E963;
 Fri, 18 Oct 2024 16:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729270137; x=1760806137;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YEf7woYtV+izR2McOmwq7dLUGQxlGJibs06mVfJ8MOo=;
 b=j/LDym8C91xnzpbfK+AhiAnIX5X1Sbzi4Q+wSlsdFnfR2uM4Qra9wRAt
 b9316DCxy6yxCXVG8zJpvHqGz+A47htyvWpJT3EJPLq7JAn/FjCHmWTZR
 XTorTm3zDSeEpjfSyWR1VWP3T2OdFVexJfabjB7XgEHH9Lj3M4Qv0UzWL
 +8PYbockAb0TtA0S3nnXEx/I6rIZGD7Ka3zlKDdu7a55pa9DHMlWFv/Y8
 nR28H0aQKfJLxWBCMZNw8xjvae9TXr2ki3p77H6fYW2vdzVVBog9OlT6v
 ArPmulWeHAIPWahQBoTyUM2vJFkgi7+eVxsD46T0Rks1LpN9AnYJzK8kQ A==;
X-CSE-ConnectionGUID: hKPyUwt/Sz+e5QwsDxpu0w==
X-CSE-MsgGUID: zFJjzhCbQeGwpS/sNxdJ/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28900808"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="28900808"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 09:48:57 -0700
X-CSE-ConnectionGUID: Pe0zgRVDSmS+kAxUI0e9yA==
X-CSE-MsgGUID: sNcL8YwjQjCzgWqiT//RKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="78576584"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 09:48:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 09:48:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 09:48:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 09:48:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 09:48:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QkTRp29Pzq62pilN8MeZKD6xAc0F7Lr6aE2ed1KnfN5aRL/Jr2mL/UtNf637iMTgN8KRUctVuFbaC4wkg+V1qh0GvsKZb9Axwji72fXYBrEvJjINxyZKqeYty0Tua24DuiAvi1kVaqkep/AEON/qnRspmL5EYBQ+aT5AAVbyYcHBvNQg2djHINXIZN6XDgb441qhzuZsPXthwmBSFHE+2iRKmcrML1jqlf54INbtcgYwAw7A2PXo3JUb+6cyy0rjtszy1JuMLNYXiR1tFvqm7VYXk3iU0xXB1wakZBZXNxR7EGKvhqaQQkLWf7xcsNO7s4zgoXvo47Kl6Gu98hohgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=guoE6OTgsbo3kkEC/Z42avMspJ/0m+4nx+VG7M9xgtQ=;
 b=WSe1IZoUnR8+p3qwFmRUKB68A9H4eygrZ0bRjmvWv4OlRUd5bcLZNst5mK1PpcoaTm/f2AsXIZdXGIvzlwK7TKe/KTbjxxDFjwF2BtmTjYxqH/DtGJRp5wbEnaORysL5tJo1/6w+KJP5iUW7l444Q86CzLqN74KEvXp0qWtbqG3Na1Q299Z8DbbBCIccDkJ9ax/imFTAGDH3pB1ljCTjFsBFyBCbZfEx9bvqWieLz5/pFjU5DdX/fYo8tb9PQGmkECkD+Orji4VrzaMZ2nG9Ybs8oXmxSDxyfhONNQtQC7nxdWJkT1dOThob3WicI0fkgnOdhabQY9s5WVX4XsFGJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by CH3PR11MB8708.namprd11.prod.outlook.com (2603:10b6:610:1be::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.24; Fri, 18 Oct
 2024 16:48:50 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8048.020; Fri, 18 Oct 2024
 16:48:49 +0000
Message-ID: <41ec59f3-5fe4-4917-8673-e7e6632420b7@intel.com>
Date: Fri, 18 Oct 2024 22:18:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
 <864c8944-6cca-4cb8-b02a-19cd4d172081@intel.com>
 <172926716448.2355.14213276307122273402@gjsousa-mobl2>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <172926716448.2355.14213276307122273402@gjsousa-mobl2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0015.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::30) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|CH3PR11MB8708:EE_
X-MS-Office365-Filtering-Correlation-Id: c1ac1afb-d53c-49c4-3172-08dcef94bd8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTd0eDRxcFcxVDZaT1VGc3BONWJJVTFaRGVDeDBkYUV1K2hzTFpsUXN2dUVC?=
 =?utf-8?B?UWpwMHZqZ1kwcCtBbUhJeHI5R3BVWjIzdkVIT0ZtRTVVUGU1M08rcHpKMWpp?=
 =?utf-8?B?Y0pwT2VUTUJDRnhXTVV6MjNRaU5WZHBteDJGUHZQcHovdllPcVhmdFNCRHR5?=
 =?utf-8?B?Q1NQMVY5bjZwZjF0SVBNY0k3NW1kbVkzT0hGVnlERzZxRU01VFovSWduYnA5?=
 =?utf-8?B?anBYUENsSjlSUzFuRDVXdUxsNGc4UmJlaEY5Zm5FMEdqSmxWQzFEK0tkYzVq?=
 =?utf-8?B?YkVEM3JGU0dsRlRoZTIwU01iK1lENEIvcWtsQUtoays3SVhwNi9mTC9XdDM2?=
 =?utf-8?B?YkFIb0lySUZHdlJuNENEekZCbW9lMGt6bGxLS1loQ1lOWktoVmF6M2V2aUZp?=
 =?utf-8?B?akl4bU1ZNjFDaWFVZHlTUWxBWHZqQUpyS3JqTmNsSklwL25oS2hPZklya3VL?=
 =?utf-8?B?R1psaTZXYVp3NWRsNUJNR0J1YldpVjBiSzBXa3BrVG9LVXI2NnE1d05xcjhG?=
 =?utf-8?B?cktybnhUOXdHZFRxUUw2d3dvUW5GR1VST09qQ3BDSzN5eE5DbTFwU2tDUkFM?=
 =?utf-8?B?ajczNmVvMkx2UkpnM01ySXJyYnJsQ1ZHaUFvNEZmK2QweHlteUROZFZRZUNi?=
 =?utf-8?B?eUdyeXdJa0FxeHlFeHRNZklOM1YxVTRaeTQzWkdpZmk3dGNuYWhMUW9BODRI?=
 =?utf-8?B?Sm5zN0ZNekNoM0Flczd6dGtTYW8wUEtzSVpLZlBkd1pPMW16dFhhVnlTZ3dn?=
 =?utf-8?B?MkNtVkdKRURMRGdTNFpBQTBXNUpJWlZFYnhacjdBK3Z6bmJiZFRLS3hpMHJj?=
 =?utf-8?B?WGhCc1p2eTJIWS9SZW4zUy9mTVFzLzE1MUYya21TSzRrV1VoUHorNWpkc2Zy?=
 =?utf-8?B?SGtXT2toK1BwNkpzN1dKN2ZxL1Z0T1AxNFhyeFlmQXdwTVpuVjRaZDlva2FF?=
 =?utf-8?B?R3RFQ3dwMnljWVNKbWdxUnJMU081dFAwUk13cTVlV0prRGNlcGJpQ3RiL04x?=
 =?utf-8?B?V1diaUV0SzA2cTBqRU4wamtHa3ZuZWp1K3Fqa3dleG5XamxmTkJYYmdnT1U3?=
 =?utf-8?B?d3hxbk1mcERaTnczUjlhRmFCWGxMRzYxbUp0QTVwZzR0MktsT3UzUEowbFl3?=
 =?utf-8?B?WEVxU2pyOUg2RjUweEk5Ri9EOWFQMGVqNFlYZjZtU3RuTzZmU3poOEQxYXFN?=
 =?utf-8?B?WnhUaXhBWGhFSTBsN3dXdk0zREc2K0w3TFJBN2FFVTkrbzFraEtscU0veUFI?=
 =?utf-8?B?cHd0S3ptckNyK0Q3YlVBV0Q5TytFK2tld09QWGRXcDM0SVl6SFFjc0ZFU1pu?=
 =?utf-8?B?YkRZcXZ4Y2FuMXRzd2Y1cHAyWlBGd0pqcHNkNlFzb1AySUwrRDRMK1JnRExN?=
 =?utf-8?B?UWZwbzBVQ2VLMjJEZkplYVUrT1lVQUQzaGxtd29uS2NReS9HL1dzRlMvaDNw?=
 =?utf-8?B?OTBvY1RFMWtPbXB1YWcyalg0MUxpZkdMSWZEOHVTZmZPUmFHdlVwK3Nmb0JV?=
 =?utf-8?B?dTVnVHZMUWl3MlZzT3M0VmppZGJ0UXZSYmQ5YlNxWW50a0xzU29teHlYY2tu?=
 =?utf-8?B?TnBiYkFyenhCTkNMdEpmcFg1V09MSE92ZnJ1aU1SMnNZcGhsZEQwaENyK20v?=
 =?utf-8?B?MzVzYmVzL0k1d1Fwb3ZEZFNVNHphTnJobERaYzBDODRaeXZrYk1WbGZDTVBK?=
 =?utf-8?B?TXRNNldLaVY3NWU3RWhnWVJNRWtZWlBRMDdHQzhHaURDMFVjbkVSaElscnlO?=
 =?utf-8?Q?fctDx4mpzUFu84gSjOo4phbIqkRav10CroA+6N8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEFiN2JreVJqQ3Bob2VRcUExVjMyTEdaS3M1Q3IzUmtoellTUE1ocEwvc2tI?=
 =?utf-8?B?Vk4wcmpiOW9IMGtOajF4azFsd1VQdHNoazEvbm9hRHJlZS9CbWQ1L0kzd1ZU?=
 =?utf-8?B?aGJRb3dmMyt4VGJDaldPZXRHREhSeEUwQ1NPbnNBMFhMcjUxWUZ2QWF3eXpV?=
 =?utf-8?B?WG5DTDhqMG1sbnJaWDRnSkVJc21YYU9iRnp2YmZCR1BaT09QcEg1RDhsUkl0?=
 =?utf-8?B?aWs1d01NNXZDSFdDbjhKVEFaWEVJWmw5RkFqNVpDbFV5SzZXc1QvT25NZU42?=
 =?utf-8?B?b3I5aFRlWDhYMGE1c250RmlkYk5LSkJFNURzWXJHdEZscmxwSXl1TVdUaDl5?=
 =?utf-8?B?MkpkWk5SdE45eDVpVVpDVVJPOEVPVUloYW1CTWVYNDhqamwrMmw0bHJjYU5P?=
 =?utf-8?B?dnNuYmNxRFBuZjZyTnBnSFVabmtkME4yLzlXQVkzcTRxZFpFOWJXUkdENmF1?=
 =?utf-8?B?QkNpOVBiMlZrckdiR0VkOUd4R2dLQy9kRklpLzBsTWx4MEFFUk9GbDdnU0V5?=
 =?utf-8?B?QjZnTVFEaVp4ZU9Dam54S1pwNnNUZzV6NDh5b3JHcTFveEVSUlJ4R20zWXV4?=
 =?utf-8?B?cWRpUEY5MXVCN3pxSXVtUVVTcXlnN3lYb05icVB3Qkk4aUxwYXFQZzk2dHhx?=
 =?utf-8?B?SGh2a1U0VjlhZURtWFA4MjBFbEhBYldwTHhXWUhMSk9lcHRYV002UzhJR3g0?=
 =?utf-8?B?cGREVDE5VEdjYldjOTBpOHk5TWhKcXJ5T2h1SVBycklHQTFsZTd5VW80RGVt?=
 =?utf-8?B?cEdKMUh0eVZaNjFibVBteUZ5U2JVWFYvNktiNU45cVRDTC9heVhCZVEzbndP?=
 =?utf-8?B?WE5KZkVPUHd1MllCRmFSQ0U2UlFMakxrRzFmZTNjTkc2MGZOWVhvay9XUG5u?=
 =?utf-8?B?Q05qdFBscTFDbTVESy9DRmFnbmpEQlN2RCs0dXpYVDlYNnZPK2xOOVJja3Mw?=
 =?utf-8?B?S3hjVGVwSEtmYXNGbWo3a1JSckhSUHptTS90bis4c1VxUTJFME45TGs5M21P?=
 =?utf-8?B?ZHVqOEMzclVUTmlCcG1KQWJwVForbGtxSC9iVUQ2dDhRZ3QvMWJ3NGhmcGJt?=
 =?utf-8?B?NzZVZmNnTml1TmZqS1BVWDAxMjVtcElzNFNkYWpVZ2NkbVBIVm54TmlwZmk4?=
 =?utf-8?B?Nnl5L0tyYlBCdjFsNHNONHhUREk3NGpCZTFyWHlwRW53bFJSc2U1VmVqZW4x?=
 =?utf-8?B?ZVFwZXV6ampvNXNnbldQZm5rVmEyWFVKMHRzVUxLY05laUorOVpBT1hwTmI1?=
 =?utf-8?B?eDFhakkrUElydW1DS0Y4U2w0c0NoU2dZbmNLeGdUMWlYQXhjT2dPUGdFWFho?=
 =?utf-8?B?OXByMUJLQ0JEcWJ6ZnhkTEFueWZBak9CVzBLeFdXdlFlNWRPSmlYcGVMeW1l?=
 =?utf-8?B?ZUdWcUYwUVBCWFNqOWNjWmliNmNXZnZNWUwrMDQ1Q0R3RXY4SGtQR3cwY3lu?=
 =?utf-8?B?cC9vc0t2NGwxTkIvekpNSUxLWTA0ZTFvWG5mam5LYjMyTEZ0dVZIMEdwaTVI?=
 =?utf-8?B?VDZINUxnMDN4WUc5K0RYaVlCdzRjR2dEMHoyeWFvTndHNGpIdDNKQVlJc1Nu?=
 =?utf-8?B?SUorTDl6bExmV3AwZGNGdm1MMlN6cmtieGtjbzNod1RkZ1hLd2VXUENqM1dp?=
 =?utf-8?B?OUZkNFFKUS9UTFUrOVdhcDlJbHBSRWE0ZytlZ1JKOXY1V1ZPTGxvZ1VsaGFo?=
 =?utf-8?B?OG5NUVgxQUk1YTJhVVJvSlFzNHF2bXVOY3FhVWorN3cvaHF3aVQzV1VobEpY?=
 =?utf-8?B?Y2dYbWhMU3poVlh4Y3E2bGRYQ09SckcwOUZXWitJTCtBeUJXbVBVenBYcFlv?=
 =?utf-8?B?ZGl1UTgxQjdETDRIWVVWU1B1ZzN5cDRIeVpwYmNNQXh2L2FuUjdDMHRSVEZ2?=
 =?utf-8?B?M0hVWUU4TUw5ekVMMy8zRGFsdmUwTUpRLy81azNlNzBCNThLbHVPSS9zVGpO?=
 =?utf-8?B?ZVloNmtmb0VVVHVTbnZnVms5dTlQWWJZNnpoK0JuUmIramJRaXFWMTN2dytO?=
 =?utf-8?B?aXU3WWwwMmo1VGR0bDQzaGxSWWRManZyTU5keDFrUndEL1pNenV5OVRrSFdX?=
 =?utf-8?B?WG5tZzVMODBiSWxuSjVjRzhzMlNkd3RRT3hISURqc0FmbmNmcFptMkJFYW1K?=
 =?utf-8?B?cTBTM1hHTXpqWUxCcy9SWTZSajhRenovbkVyRVJReXpzeERkRWs3UnVYV2Ey?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ac1afb-d53c-49c4-3172-08dcef94bd8c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 16:48:49.7458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LT3sW3IajoHYdMlGQgyGOV4di4VAXGJL+jTu+R0Att1ALSdNMeXbWBOixUYuQ6qMMKCm2CWNuaYTynG5dKtTNepRHmhaprihEMtZvRqKJXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8708
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


On 18-10-2024 21:29, Gustavo Sousa wrote:
> Quoting Pottumuttu, Sai Teja (2024-10-18 11:16:43-03:00)
>> On 18-10-2024 02:23, Gustavo Sousa wrote:
>>> There has been an update to the Bspec in which we need to set
>>> tx_misc=0x5 field for C20 TX Context programming for HDMI TMDS for
>>> Xe2_LPD and newer. That field is mapped to the bits 7:0 of
>>> SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
>>> our state struct. Update the algorithm to reflect this change.
>>>
>>> Bspec: 74489
>> Nit: Would 74491 be a better Bspec here?
> Oops. You're right. I remember having that one open as well while
> implementing this, so I ended up copying the wrong reference. Thanks!
>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_cx0_phy.c    | 17 ++++++++++++++---
>>>    .../gpu/drm/i915/display/intel_cx0_phy_regs.h   |  2 ++
>>>    2 files changed, 16 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> index f73d576fd99e..22184b2d5a11 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> @@ -2142,8 +2142,12 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>>>                                i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>>>    }
>>>    
>>> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_state *pll_state)
>>> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_encoder *encoder,
>>> +                                           u64 pixel_clock,
>>> +                                           struct intel_c20pll_state *pll_state)
>>>    {
>>> +        struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>> +
>>>            u64 datarate;
>>>            u64 mpll_tx_clk_div;
>>>            u64 vco_freq_shift;
>>> @@ -2154,6 +2158,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>>>            u64 mpll_fracn_rem;
>>>            u8  mpllb_ana_freq_vco;
>>>            u8  mpll_div_multiplier;
>>> +        u16  tx_misc;
>>>    
>>>            if (pixel_clock < 25175 || pixel_clock > 600000)
>>>                    return -EINVAL;
>>> @@ -2171,6 +2176,11 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>>>            mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)),
>>>                                                      datarate), 255);
>>>    
>>> +        if (DISPLAY_VER(i915) >= 20)
>>> +                tx_misc = 0x5;
>>> +        else
>>> +                tx_misc = 0x0;
>> Looks like tx_misc changed from 0x1 to 0x5 and not from 0x0.
> Yeah and it looks like we missed doing that update. However, I'm not
> sure what you mean here. Do you mean to use 0x1 for the "else" case? If
> so, then I think we should not do it. The change was from 0x1 to 0x5 for
> Xe2_LPD and newer displays.

Yeah you are right, I was just trying to get a clarification on the 
previous values. The tx values looks good now with this patch.

So, with the BSpec change addressed,

Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Thanks
Sai Teja

>
> --
> Gustavo Sousa
>
>> Thanks
>> Sai Teja
>>> +
>>>            if (vco_freq <= DATARATE_3000000000)
>>>                    mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_3;
>>>            else if (vco_freq <= DATARATE_3500000000)
>>> @@ -2182,7 +2192,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>>>    
>>>            pll_state->clock        = pixel_clock;
>>>            pll_state->tx[0]        = 0xbe88;
>>> -        pll_state->tx[1]        = 0x9800;
>>> +        pll_state->tx[1]        = 0x9800 | C20_PHY_TX_MISC(tx_misc);
>>>            pll_state->tx[2]        = 0x0000;
>>>            pll_state->cmn[0]        = 0x0500;
>>>            pll_state->cmn[1]        = 0x0005;
>>> @@ -2266,7 +2276,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>>>    
>>>            /* try computed C20 HDMI tables before using consolidated tables */
>>>            if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>>> -                if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
>>> +                if (intel_c20_compute_hdmi_tmds_pll(encoder,
>>> +                                                    crtc_state->port_clock,
>>>                                                        &crtc_state->dpll_hw_state.cx0pll.c20) == 0)
>>>                            return 0;
>>>            }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> index ab3ae110b68f..c1949aa1b909 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> @@ -280,6 +280,8 @@
>>>    #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>>>                    ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))
>>>    #define   C20_PHY_TX_RATE                REG_GENMASK(2, 0)
>>> +#define   C20_PHY_TX_MISC_MASK                REG_GENMASK(7, 0)
>>> +#define   C20_PHY_TX_MISC(val)                REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
>>>    
>>>    #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>>>                    ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
