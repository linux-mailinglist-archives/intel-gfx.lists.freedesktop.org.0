Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 649C89451CE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 19:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A86010E05B;
	Thu,  1 Aug 2024 17:46:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EDzgqkfG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBBA910E05B;
 Thu,  1 Aug 2024 17:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722534388; x=1754070388;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=dvAYNlouikeRs8cE8d1OpKhTICrBeSzdm1rKbipZ6v4=;
 b=EDzgqkfGCVXHbXtOWgzYwMVSu4IH9Sb84x+ftROuSkOEj0ENnKz4JEr7
 daz6qY+/mS1zoZWqABw7WW8JiWRpylpemZn5brpWGDOnecRdG5j0mcrHm
 GC46stMDisQO+hm9QlYDrNKiyD1eNNrxhAFcD6FUoUr3usymhBtAV3vbo
 t5D76kQ+EGmXG8ykGB2Lb14GXjF82it9LLeReJmhMr+SP96ERmWKwwWXm
 ph+lTfUlzYx2tC1Irm6JqUfZ4Odvdchza+6Tvqgjn2Wml2BFhczhJ+UcB
 Cd5WdDRfrBmSYXR/RqE1ktX7qfNXb2Nzk/VHDK/zRMQgtPP1inKQal3O+ Q==;
X-CSE-ConnectionGUID: tI9kkOStTfSm9ges7AUaDw==
X-CSE-MsgGUID: LlXX3F3nSIiIULs8mzTWFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="24388811"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="24388811"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 10:46:28 -0700
X-CSE-ConnectionGUID: A+lp90dARtyFHp0Ea1HERQ==
X-CSE-MsgGUID: qth+i2l0TAqf6hczecUw9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="78393610"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 10:46:27 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 10:46:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 10:46:26 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 10:46:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GnXKbb06i8qrbkhzHts05WC05IEUb+AMjaN/IG+774/eYxRHgJUb+onwqWtNbTRxe0t70pEzP6s4dRtPbVcyO9taqdJIP02V0VxPGun1pbCUOzN5NE0kPsDYccrt3VQjNBv70j49C57qpKVh+T7Oxk4aYO6eXPiZcwl1OxaazKaGWXcNw3gV8+XOa01P+iskou3qhEYssxCsFLO5DqowehjCwtiqCo6MDMIGbPRiRFDWuvYznViLz+oczBVYQOoxLH3qdxpZihAaHXIKQWt9mqeeIFyjbhFSaK0gA8ZU3fTCCoOpH44VzK9573goPh0CMH6KO5OeSL+mTFAbDcFbTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DoJhem0H2hG7ZZ9AkrUJj+25olVImIPHHqO/0BGv5zQ=;
 b=C2oi3lMtorEpiN1rjeVNK1gJa99IXsUc6Uqwsc2FU9iRDR/H2QgL89c3VOabbJ3znCfqQtyK5zAtxIlCtcRap/QHnXnVac8liP/XtxgSIsZWvLrIBCcK4XzsSePAzXPVZnupzCmp2ADSYaADvZt0c20PXCjBQmrf6+nhVB8FaXXd4Wlp/u3IAYo8bWIAdEl+OlVDKiFNI8piiLaE3BVVu/xknjoExo4PfsOqg0xMRa9cdpaVcvq11DHrZuydXLZs+bnDa9LeKS4hyEV4UVUqMyit0KS7jxKu/fT+S4o2eOZBR0VDLYnN9m2WAE1HdbTLEY2UbHBp194a7ypkiqRmHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB5965.namprd11.prod.outlook.com (2603:10b6:8:70::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 17:46:16 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 17:46:16 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2ed3f1045be7e3869a3742880c6518f46af39fda.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <2ed3f1045be7e3869a3742880c6518f46af39fda.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 06/10] drm/i915: support struct device and pci_dev in
 to_intel_display()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 14:46:10 -0300
Message-ID: <172253437035.5121.17897999927775723279@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0347.namprd04.prod.outlook.com
 (2603:10b6:303:8a::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB5965:EE_
X-MS-Office365-Filtering-Correlation-Id: ed00e8a0-960e-4e2e-93b6-08dcb251d7b5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RnllVEFRQTRGc2xid3ZWTjZ6TGFUNEhYZGFPbVI3MytTNElJRmdVaGJjTUZn?=
 =?utf-8?B?VThkK0hROUZHdEIwR28rMmNLNjFzd3NXQ3VlTXpwczFHcFJFMDJwYjNFSHY5?=
 =?utf-8?B?K3UyblRxU253SWRIYXduYnBHSVYya2xxbjAzNGhmNXlYcjlLajFtMmpOOWFY?=
 =?utf-8?B?aHMvQ3pUZ0NQQStvOWQvRTJUVXVhZHpCUUozVlV6bWF6N3hmTUY4TXdtWkxY?=
 =?utf-8?B?MGxmTlVsT1Z0NDExUjdhU0JGSFQ3OXl5TzhCOFdVN3dHMTlTZ2MvUDNsNDc4?=
 =?utf-8?B?dWJzSWxNWUZNaDFscDE0TDJjUjZKK2hwdlJrdHNrODVuN25aVGVkYzVHQmlN?=
 =?utf-8?B?dVZ6TjVYT1FXelV5Mk1Sb0ZLZERLWEYrM1d5Nmp1YVhPU3hTWENDamRNcVY1?=
 =?utf-8?B?NGN6RlFHUXFkU2NxK09kQ2JLdEVjNlRhSXJBQ0dLb3d4OTNZd0gxdFV6SDVQ?=
 =?utf-8?B?TlhTN0RHcTdvWWY1cEJTNE5lZk1HTVJFTWcwVFJaKzZwR2U3Q3Z4TEhlWDJv?=
 =?utf-8?B?aE45VVpYNDdGcEhpK3VZYjZMWTQvUGVJYnFjZGJVTURNQ3ArZjVNNVVLSmZN?=
 =?utf-8?B?eFlhSFdHcnhueTM3aUxQeVZ1TmN2VWRaSVZSbTRwNCs0bmwyMW0zVUxEZThN?=
 =?utf-8?B?b2Zlb1QrdUl5L0JxRzN4T1ducDhtakRySysyZlBJMXh3TzJaKytiREdvSjRI?=
 =?utf-8?B?cWtvRnBLVVU3Z1BjT2JiRXRxbmZEcGRLcXQ1WXhKZDA2MEljV0xVcWJHbkwz?=
 =?utf-8?B?c3grWEJzUTZFZUl0SGdNS3dQWWtYTUM4dEFtUXFQMU5COHRXRFNWTmVkdTdh?=
 =?utf-8?B?cUxQQVptY0RIWnR0aVhocS9FQ01iSmlWMGpuYzMzM3k3WXpBNFlsQ0hBYTNi?=
 =?utf-8?B?MVpHOVVBUllsdkNkams3WVNTU0VsbmFWOUtLYTJhbXljeVdMZmtFSVExdUxR?=
 =?utf-8?B?d0l4VHRxQzQ0OGVFQ2J4a2xFWm1IWXlROHVBbUVKSzFIaXZHc1BMUzZGMVVK?=
 =?utf-8?B?bytoaFh4UDcySWRrM05JTzU0THliV3E2Q09nSkdZTk1HWnE3TkZ2alV3UUpy?=
 =?utf-8?B?TW02ejlQNUdjT0pubmZ6c0Y4RjEzYmFqYnZQd0ZVOEt3eW5pNkdTZHorUFhU?=
 =?utf-8?B?MituYW9aU25tT09YSDZncDB2cjUwdzJaTVVVWFFIOEFRSU9ROEgvQ2JqY1Zn?=
 =?utf-8?B?RFl1MGZWZTQ5aGpUck1Xb00vU0hEMVBlVG83ZjMyZTFpMlFIaUFvdG41UDVq?=
 =?utf-8?B?ZTFSMXhRb0JNMm9ZekhTaHhKQVhqV3gxYlVHVzk0RlUyS3JqN010U2U4cVUx?=
 =?utf-8?B?SlJaRlFTOHZ5b0xBRkRYR0R6VVJCRCs0ME0zMUViY0FXN0NteHJkZS9ZWU9n?=
 =?utf-8?B?aTJsaGl3b04yNS9Hc003MnVMREFBa1pNU0VEdTRXZllkTTZxc1VWSUF5UDFl?=
 =?utf-8?B?TFRjTlBlZXVEVGF5MG1peTExQ3JXNDhyS3pjdDZONzN4UTNNdjIwaitVZkwv?=
 =?utf-8?B?dUxRV002ZmdkeCtHa2Via21Cb2tuVklKSi85ckgyYWpTQ2lEWElIcXNFSmFo?=
 =?utf-8?B?Z20yUFFxZ0hsVGIrWjVxSlhoMkNMTldsc3QwalErNnlrbWhlT2wxRFFSRjNl?=
 =?utf-8?B?RWQvdVplNEhwMzJwbHFBQWo0ODNrb0luZkE2Z0lIWWJWQkVOekhMTlBQYTVH?=
 =?utf-8?B?aWRkVVNQTU5FQWFzS1BVMVlCQllwVU9SWG9DcDRtV3RML3Qza2R1YU1zaXFt?=
 =?utf-8?B?b0JvZzZYcDI0b3hBS0RLWitOOWI3WFZGbk5aN2N4NDdkaGcrNnRYQmJvRm5n?=
 =?utf-8?B?dHFWNE8zZDMvZm9HL0liUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVREY1RVUUFRYzJROXNSb3dyRUo2Vjk3RDBlUWlodDNYa0d0Wk5UU0V0VzVC?=
 =?utf-8?B?MXVSMHZ4QVRQTDhhR1JGR0RyVko2aVJOK3NBMkttbVNUbm1CQVdZeEFxRVVG?=
 =?utf-8?B?U3RnYmdsbkgxU0JXV1VtWjRmVEZpL25ZVndKejlYZkFlZ3A1c2QxaitHMS9Q?=
 =?utf-8?B?V1hMS1d0Nk5iWjZYamYrMEh3ZHg2N1hORlBzUzFjZ2IwOE8ybDJSQWRYV05m?=
 =?utf-8?B?dW1CZTNRbXFyaXBJSE4yTTd1UVpNd3lHd2hwdkROTUJDK0VnRzczNFBTVnA0?=
 =?utf-8?B?S1JJblZtdFhnV2xFNjFCSlJlMEpFRlNnRnpjWTBuMTRZNXVTZjRxZGg4alVo?=
 =?utf-8?B?UnozdDVTaEpwQkh5TmNadXh6eVVDa2RVcFV5QjIxcDYzQzErRE5tV0lqYi9H?=
 =?utf-8?B?RTIyTHpBZXZwb2crRk1qR3duMHliNXhEcm8yMWlmZStwQmlUb2p6bWlPVWFu?=
 =?utf-8?B?cVJ3dEhEZllXN1VQelNrTXQ5NjVXVTVvb0ZUZXpUTWRXSzVKVDRSSkNSbU1l?=
 =?utf-8?B?ekxGMWFLTE9yT01NU2ZZbDM0bWFWcTdDaVE0Y2s1KzYvUmlTNytCMVZwR0FM?=
 =?utf-8?B?ckUvcEFUVnRPYTUydEx4SlhIQmk0enJrN083OFJ0SnpEclZLQzdJTTBKTzN5?=
 =?utf-8?B?QWo2S3o2VC9SOXRaTGg2MWExN3hqbFFwVFZqTGljTHdHUUVGRFJBbU9HZE04?=
 =?utf-8?B?b0t2ZkUxaG85bUQ0ZFM3bUdpZ2YycE52Z3p2QWd3SkZ1bmdVSlFYVlA1S2M3?=
 =?utf-8?B?aFZ3T0s1U0N5cGQzRzd1dk96YjQ2S2w4QXBZNmZteUltS25GRE5yOWUvemVx?=
 =?utf-8?B?VGtJTjhYeUhQdUlKQ2ZMWEZZUHhwY2ZVVXgzYkUzQXRJT1lBSGZ0WEQyN0Zr?=
 =?utf-8?B?eWE3cGMxek0vbDJsaFRyZHR3emk2cWxGZkE0cm9PZ1RYbXI2Rld2VENub0E5?=
 =?utf-8?B?empkbWNwSW5WWFY1ZHRXUW9ESjl5dTYveDFobXF0YkdhcVlWd1BHVWE0M09h?=
 =?utf-8?B?eENyQlh5UExEMi9MbzFEZ2p5N3BJV21sUTcvUWxHcis0OEV2Y3B0SzlWeDhP?=
 =?utf-8?B?UTdYRzR6d2NKa1p3ZkY4RHFjcHM5VGtiYkRoNmZsRGRONWVDeUNqL3VKRk1U?=
 =?utf-8?B?UlFWMHdjVXRkRTM0V1BybmhRY1l6b2h6K2JDaTRMVmtPODJGQWxaZWs3eTg3?=
 =?utf-8?B?c2Jualh0dk9peVBYQzh5dy95djlMa0I1NTdDY1MwTVg0ZGYxZjBWL1J6VUtB?=
 =?utf-8?B?eUZZQ2dFMENobFg5cW9uYTBKMW51Nks3ZVllWGpXTVdjd0FiK2dJMm9IRVpE?=
 =?utf-8?B?Zmwva0xTejFsQlR4M0VKMmE1SHBqeUN5Y0pucHdBUENlV2ZsTXdBVVpLRzNT?=
 =?utf-8?B?MTg1WnZqczhGcDhnaDBsc3h5NEMyZFpqdW9WTnMvNXFzY1U5ZTJxWFB0bXdZ?=
 =?utf-8?B?Y0dpNUduMFBDYkpNQktRcTAzL2U1Z0NYUzNaSURpd1FVdFVMZkRZRjdkelAx?=
 =?utf-8?B?QVlmeE82NHFPSUZRaWpRYXl3b21sbkRWZENFTHZoMXBHUG4xTzI1akdpR2Y0?=
 =?utf-8?B?NW1obWEyUHd6Syt4NGdzRWtFZ1B5UE1ZazJDcWJkc0pEOEhRbU4yZ2hXRWhH?=
 =?utf-8?B?SDh4MHY2Z0JTQjdFalJNd3BzZURwa0tWa2VSS25UdUM3T1IzQzV6a0xQbEFl?=
 =?utf-8?B?amd0S3pOdnVQaFlDc2VOa05lL09IU0hWOFgrRHRDSi9GL3NvaUJBYTlJSkEw?=
 =?utf-8?B?dFpudkVhTlkwZkZOM2grUmtxZ282RTZkYXBqN3h5c0Ewb3lXMXVEN3lPT0tH?=
 =?utf-8?B?ek55Y2dDV3A1YzB5TEZBVUt5KzFNSG90cy8wSmRSZW9WUVp5Tm8zQXcxR2lC?=
 =?utf-8?B?Vk5ZSldWdHMxTHBIa25tZzFKTkZtcnhQeVZHaWxaL1ZiazJiUW5xbHNUUUNO?=
 =?utf-8?B?WWR5TFRuVDNoelB1MU5LVEtJUnZUdUN1Ti93enJ5QUtUUnQvYjRVVjlpeGd2?=
 =?utf-8?B?UlQ0TnVGc2hxODF4UlUrUTNSRTZJYnRiTlNEaUN1R1BrU1BEWE91SGY5b21G?=
 =?utf-8?B?WGpLOWRMSktkNFExUkFqS1hMZndOck93aHlWaE9WdTFOMlYvc2xicmMrTUhh?=
 =?utf-8?B?SmV1cmpCU24ydTRpUjFVYlBBbWxBeDlUN1p2YkxjdXVJcnhGS2VscStYUHhR?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed00e8a0-960e-4e2e-93b6-08dcb251d7b5
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 17:46:16.2282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BPBZZ2RP1VN0UKTBz3v2BGlhCruHjmFazN83VBQ+O/dQFY8hveoIhfnduTQNoGUEFK6dAyeo9tNyD4ESG23SkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5965
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

Quoting Jani Nikula (2024-07-29 11:30:07-03:00)
>Now that both xe and i915 store struct drm_device in drvdata, we can
>trivially support struct device and struct pci_dev in
>to_intel_display().
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_types.h | 6 ++++++
> 1 file changed, 6 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/=
gpu/drm/i915/display/intel_display_types.h
>index a9d2acdc51a4..ce9c2f9ff5b0 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_types.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>@@ -2208,6 +2208,10 @@ static inline int to_bpp_x16(int bpp)
>  */
> #define __drm_device_to_intel_display(p) \
>         (&to_i915(p)->display)
>+#define __device_to_intel_display(p)                                \
>+        __drm_device_to_intel_display(dev_get_drvdata(p))
>+#define __pci_dev_to_intel_display(p)                                \
>+        __drm_device_to_intel_display(pci_get_drvdata(p))
> #define __intel_connector_to_intel_display(p)                \
>         __drm_device_to_intel_display((p)->base.dev)
> #define __intel_crtc_to_intel_display(p)                \
>@@ -2231,6 +2235,8 @@ static inline int to_bpp_x16(int bpp)
> #define to_intel_display(p)                                \
>         _Generic(*p,                                        \
>                  __assoc(drm_device, p),                \
>+                 __assoc(device, p),                        \
>+                 __assoc(pci_dev, p),                        \
>                  __assoc(intel_connector, p),                \
>                  __assoc(intel_crtc, p),                \
>                  __assoc(intel_crtc_state, p),                \
>--=20
>2.39.2
>
