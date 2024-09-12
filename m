Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31094976721
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:02:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 058FC10E99E;
	Thu, 12 Sep 2024 11:02:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hadltl6l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA3C610E99E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 11:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726138940; x=1757674940;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ziZVox+35E3D+DKnzS7/CAjQn/gtaEUDexxwoWy/wrA=;
 b=Hadltl6lnfiMNOXKVx9Q5hEakyu0z7PAnovGLGDYhXPhQ6Rppk54bub7
 1v826thgngY3/SA+UsOX8LX85Egz2KpPT0NJFVqonUIJ4X1JTH02joOqB
 0s1cLZRrF9k4eO4oDr56U4bcU3JL6I9oe88/iocjpURlCB+cyhmjIXqYB
 CGPEGPUu0IY/stfaCSOiuAT6Df/GouDLjGFDS3HOAGAJNIQI5RBkq3Pq3
 jHhzmmVKUSfF/ke3UkYsTNO0oHb1ymbf6zthFQURXhOFqMpzrNq2470OE
 dn+PF18XajloA8UuEESoKuPx2O6XLc6iTn/VtUklnCpSGShEPJOJh/xFY g==;
X-CSE-ConnectionGUID: jLkM1hjER9mYJ+p2j9jaZg==
X-CSE-MsgGUID: x3mATcQwTgqLUh60l7niAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="50399773"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="50399773"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:02:18 -0700
X-CSE-ConnectionGUID: RPsakg8QTyyj4eJEC0fb+A==
X-CSE-MsgGUID: SWS1kdNoSRCQOBwgN3y5EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67495741"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 04:02:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 04:02:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 04:02:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 04:02:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F8iqfORt9jYsVbgnld0GJHNp8J2wqtHs/AdvGw6hriqHX/fp+N4OiVti/JMkO8mC5iuB+nvdk3IE/GJQoohSNE4Kb5CnUxfZ8cZaTbuL0XHEFcQTzlg1oYAJojVZbxnMn9m8Om2y2ubI/tijbIeeDUsUySAoUjiwmhwFuO7uqiGYtI/ouwqBM5TMnlhSb6gNSLFL/RbA9jDsMgTkoT/SH+8o8L0ald7KsfKXzQsuiUy2hlvUIFoyRY4j5KS7ZjWGwSqkQQvnveqSL1xl7gVNW9ImhM12ZF3Qc8NARicn2IUGio7ycP14XbCcdenOaZQXBezXjxezvrUQ2DNUJKdzsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q2V6uuFVbZI3SBZw0mlkmzzVJHn1DvgXM9FztN7RneA=;
 b=rQ0cvDywe6x7EEd1woaAgHI6GIYPfFIhszmWgKhv4Sy012kkb72ykkWXQonMGFO69b6qVbIDccKL0k8lp5IMhbK1EpxZxxSPKlrCzjgVXnhOG/w0d8u1YDlfr7cc/4IBWKgjB/7AyebDxUOjUXBd3A7/rNrd2z6e8hdhaTc1uzXSvHtu2AoY0yh0g2+LVywKNAibVmxegdAsAdlOTPlBJmQ71PnQur/SsPDuhc+CycxmIUC/Lszw3hWix9q3gZrvcXuDott6PlZ79ZuLx/U7o0pS/ZJmMmeZUCEbG0uEoDYVjffHyTG8fk7uKAsZTn0KDgt3oJ3iQKTrSsysE/7+Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4757.namprd11.prod.outlook.com (2603:10b6:208:26b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.25; Thu, 12 Sep
 2024 11:02:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7939.022; Thu, 12 Sep 2024
 11:02:14 +0000
Message-ID: <9636d3b9-4b1e-4573-9d56-622782efc61d@intel.com>
Date: Thu, 12 Sep 2024 16:32:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/19] Ultrajoiner basic functionality series
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <jani.saarinen@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <ZuIiUF2BLhd5ot6P@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZuIiUF2BLhd5ot6P@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0015.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4757:EE_
X-MS-Office365-Filtering-Correlation-Id: e1108947-f755-44ef-b26c-08dcd31a5bdf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q01sR1NRVXdOajFPa0VLWVl0Rmg1V2hrK2gxQ1JxcjdNMDAzT3QyM3FvRWt2?=
 =?utf-8?B?ektpNlY3TGlKY2hEd2F3ZFJCc3Y0SHp2M2JFbVgvSTRxNHZXemxvT1dhd3BL?=
 =?utf-8?B?ZEVkeEFHWFlBWjhFWEJiL3kxMDRZMlJ6QWttVExyTVdSYVF5RG02ZUtPZ2Rh?=
 =?utf-8?B?L0Z0NlVIWG00d1EwUkU0bmNCM0lxTUZEVlJtb0wxVmd0dm5xcHZlVlRnR3V1?=
 =?utf-8?B?d0ZFWXlwUHFYSmVReWs3aUE0bWlFRyt4Tmh3RnBuRFJxY01rc1dVZm9Nd3RX?=
 =?utf-8?B?em83czVyMjNhZzFLS1FxUnBIZmh6SkZ2dWJrcHVwWXgveGM5NFA3NUtJc1FQ?=
 =?utf-8?B?bDFmVWZYcG5XaHlnY1RJVkRMNXA1WDMrTnc5RjA3dVY1ckxZbWJwM0gza2Z2?=
 =?utf-8?B?SWljRU1KNnBLcGh6K0xUQXY1TURZajI1TWhtMFgvazdvN28zbmtkam13bVhK?=
 =?utf-8?B?MGxPd1U4aFNhZkZoQmV3WUQ4Z1U5NGhSdFRBLzg3QVhYZ3VUUm0xaGo4cWlO?=
 =?utf-8?B?RUVDZm1od1l6VzJWVHVRU3ppcEJzdVIycTcwUjhmdU9iTnVRQTN3ekZNSy9x?=
 =?utf-8?B?NkllMDNQUjhZNU5oMFlRZTZ0cXZHOEdaUWtldjBqcXRpMGtiamFGc3BnMXhI?=
 =?utf-8?B?eVhRdkZNQTN0eEdFd2NJRGRTM1I3MTVUeFJvb3RlZGVhcVpGTExwVjNURDlZ?=
 =?utf-8?B?UVRTZUxXc1VNRkZqZUxDSU84NVdjdXVyQlkxeFdRMGF6L1FoeVMvUHc4ZzVa?=
 =?utf-8?B?cjIrdHJXa2prYnNyL3NWV2x0N2lCbEM2WFA0dU5PSGE0SzJZLzAxb2NnaDFN?=
 =?utf-8?B?NThNaHBXeFg3ZXZrZlBROWpSbnVRWVpKYjZMZWFiWTlaNE5qV3lvajlIbjdC?=
 =?utf-8?B?QTRNNDZlNGR4cDFSekVwckFIaXBCQk9IanNWeTdmY0l0ZGg4eHpScERvWjZE?=
 =?utf-8?B?UnFNTlE4WjBDb3F5dEhIUUxUWW4xM0pUSjhrMnFFbTl4Q21VNXVGakZqVjdk?=
 =?utf-8?B?eURDek9nVTEvVkFvcjllZytmZmo5V28zV2hhMmlxZDE4NnZuY1puMm5aZytO?=
 =?utf-8?B?b1NrRHZRSmxZMVljSHZHTi9tNzlwVk4rZ1AzQm8vUW1HaDF2N2lTWUU4U01N?=
 =?utf-8?B?QjVGdXFzWExmZ0E1bkFDUHgzTEE4Myt5Zkd5eU5OaHZVQ0dSeW1NeUF5QzYy?=
 =?utf-8?B?TzQ0VEZOTEVySHBZZkIwUStJc2dwaElBZGFoUEZYbjdOcmtZeVc5SFo5UXNQ?=
 =?utf-8?B?YnM0TkYwOFl0ZS9xeHAxTkJTMVRvVDI4L3VLUTM3UkRCbFJEdXhTWkRsQUVr?=
 =?utf-8?B?alUxWG5oYjQ0RndubUV2a0p3eUF4SFNMRy9RK1JUbE5wVGJiNTVVanY3MDNO?=
 =?utf-8?B?MEkvcXVmdWcxeTZ2UjNCalBDNFVoRlF2UVluSkFDb3hYTm15WmNBNnNXKzZP?=
 =?utf-8?B?c2k1RW55bFN6SjNUV3dtZzUyZmwzME9LNWJ0NmcxakthbUV5a0gwclNZUmEr?=
 =?utf-8?B?TngzRjBJejVuRHl0U0Z1bkpPb3pJRE5HYURzcm9HNzNUWnlsYUZXQmFaYUZr?=
 =?utf-8?B?WlBSNVordVJvNGxQL2ZHMzRUUU9uejNjaVcrbC9kMDI1VWh0RVhaeEttZnYy?=
 =?utf-8?B?bnEybFBPdnE0enlSNElzejZNbmRraXNUeHdiTGtaeU0zTXdRRXE0a2dsNGNz?=
 =?utf-8?B?dVRZWTZvbW92MXlDM3FaU2Qwb1dnRTJWby90Y3E1M3VoVW41N3gxWXJVY3dQ?=
 =?utf-8?B?VzBwamI3ZXhoVW1OOHhGYkRveU5sZ01udE5TOTZlNjNhYkhFYkw1czhPTEtH?=
 =?utf-8?B?TDlhcVlzMWE0NldONlo3Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUVMR3dSRnE3RGUvV1JtUjNuVUxOWXZwdmUyWDdFT3V6WWtYdWJnRGVJNitv?=
 =?utf-8?B?LzFpK0gvNklCMnVJN21NMXhBVmh1ZEJJQTN5SlZkYVRCTk5aMHhVSWRuTkN3?=
 =?utf-8?B?ZlRpVVVNdjZsb01XOURSMkFVU0ZXdHFqNVNrWDFCRC9pbFFoL3Byd2FaU3Vh?=
 =?utf-8?B?OEJxejFNUkRMOGJGR0JIUXU5ZHdZQVRpZXNnL2NlZGFrdEtsWm43bzNkWHNr?=
 =?utf-8?B?V0xZMEtweWlWTElpRU83Y1lYNkJQWUhZM3VGdWZsdjVwRjRBQWRTcGl2d0I5?=
 =?utf-8?B?SkxnR3Q0WnA5ZXRrREJ1MXM0dVdGa1VDdklMd2RzOHRWMjVKbWc3a0hEa3Bl?=
 =?utf-8?B?dkl4SUV3cnRqaDN3TWsxVGYvNDVHNGpSMEk3aWRWOHpjeUw1MUhOcWkwdDFm?=
 =?utf-8?B?WWh5S3pWTk5LeW9OZERSZ3JFMkgwUnp4eE1za1ZuVXMvUjJQell6S3hKbVR0?=
 =?utf-8?B?eDdiK1hzT29VR1JGdklvZ0ZqQ2NGMmhRZzQ0L25uaFFhb1dsWEUxeDV2RFZE?=
 =?utf-8?B?cXUzZzdtZnFRWGRJblpwaWxMREY5UzYwSldTZDdROUhHaXdnMXpqMHY3OFFz?=
 =?utf-8?B?bjdtQjIvekg1TnphSytWcDlmYmVZWld1cmFTa1FydUtjRUpEamJ1ckQyT1FW?=
 =?utf-8?B?Um96cmwxckhDTlorWVMvRUFiVlJRM0w2dDl1U3ozbmE5SEFxdE9TR2ZMejYz?=
 =?utf-8?B?elpZeDJWb0NuL0lra3pKbmtud2pWVTdqMHRpTXdMbjh4Q3hWa0JrMzB5QjRX?=
 =?utf-8?B?bmpKeDBNRFpadGxHVW8xcTJUSHR1d01GTzJrNk4zOUZXejVaTzBST2o0OWlH?=
 =?utf-8?B?UjdBU2UwQ2RTWGd2eFp4Q0tBT3paZGl1Wk1VRkwrTWhTeGVBbFFrZGRqSm1I?=
 =?utf-8?B?QzBoYno3OGlEYWlnSUM1eVVmSndwVXBvK0RyVWlDdTZRYkhYWVJYTnRneHFn?=
 =?utf-8?B?OS9pM2syMS85SzVqa0VNcjF4bytzNjFMWno1ZmRrUG1KeWRBaXV4d2VTWisw?=
 =?utf-8?B?dUFzRTZjaVlDZCtQbWZMUzYvTzgxcWRoYWNDSndaUmRGT1ExOG1MY2kvR0F4?=
 =?utf-8?B?eXVyczVzWkRPa3YvSmxVREFxUEFRM3BsNDBpSFRtY3N2VUVRUTlpdURUZXVn?=
 =?utf-8?B?Mnl2TncrdzF5MUIvN3RmeXVvNEJRZDZmSjZYVVhRakZ4T2NhWWI4U3o5Wm82?=
 =?utf-8?B?MWlwQ3lQaFZZWU5YdFl2Qm1kTWExRktxRWlVRXRDNFZQaDhoczhQSE03ZnUv?=
 =?utf-8?B?R3IrOUZwdEI4dm8xbmxKL3lwNDZmSHN4dXYxRmZKRWtWQm1wREJmbTZIWkVn?=
 =?utf-8?B?OEowMjVJQzU5bkN2VDNHaytWREtRVmVac3lZYnpmWjc4SDFSQjJsSjRZSmtJ?=
 =?utf-8?B?a016Rm1JQkw4d2pHTW4rMk5vOGVybmtBaGYxdWJyb2FJNXZHZkc4VEJwa0x2?=
 =?utf-8?B?NHJUZUtzb2tDdGtPZnVOWmRSa0pEcXlxdytJN0NnZmxPMnVnTlB0aVZOL0ZB?=
 =?utf-8?B?eHkwS2JLSzBRL29GVm1jbUFRaGZ2NTEwMEJOL0ZVR0FqQnJyZjVyOThUUnlS?=
 =?utf-8?B?VmFUWXFHMUFPWG9CQkQ0TGFOWWlUM090NXZiYldDMjAvVWVoejdiWFI0SEZZ?=
 =?utf-8?B?OWh3dXNjczNpbE9TMnc3NVBjcHRpaHRVdkpuUUFka3hNZzRpUnhlNGcrWUp5?=
 =?utf-8?B?VlNGQjdna0ZiS1dPN2pjSmE3bEZneUhWNTl6MzhVL0tCWExJS2Z5dzZHb21a?=
 =?utf-8?B?TGNPN0ZySFN6MXNoRU9BTWhhclpiL1lMMHNqdFdKWDkyT09SeEFESXhMbW9n?=
 =?utf-8?B?bXRMUHFYT1pWSy91VmREQURBUTJYNG9oUERzUmtEdEtJaXR4aXFjRXZnaFBV?=
 =?utf-8?B?RCtjT3MwaUlheDUvMGVCM29DamU1MmtBb0xaQmhtV3hyZ3JOTzV0NFo5eWQw?=
 =?utf-8?B?Q0VJMExLK3A2ejM5OGh5TGFyZDhVc2ZVd2Y2UGlmVlQ1ZElJU2wxdGxLK1RI?=
 =?utf-8?B?K2VOT2FwdW5vTWVwbGxjY3l5ck45NEJOcFFNREtOak41OXRVSGg2OGYwci9Y?=
 =?utf-8?B?T0JEMXBtblUrV0dSSTE0MEhMYWpZNjdrbkFrR3J4WUZmTnFJSmtROW1TT2JQ?=
 =?utf-8?B?REw0WWdpRUFObjlyTlB0NGdTQXUzY2d4TkdZU0R4RzJnV21zMkxFUVdhL0ly?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1108947-f755-44ef-b26c-08dcd31a5bdf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 11:02:14.7231 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 69XA/378AxjCEFgpis98YS7cLqDw7HOAoeJDf9qpgpfo0Hb3bbTqVMW3CeA4h3epL57Tqx71vIpf+IftIYEAjuNW1P4cG3z1iLAsEOIStII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4757
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


On 9/12/2024 4:35 AM, Ville Syrjälä wrote:
> On Wed, Sep 11, 2024 at 06:43:30PM +0530, Ankit Nautiyal wrote:
>> This patch series attempts to implement basic support
>> for Ultrajoiner functionality.
>>
>> Rev6:
>> -Upgrade the debugfs functionality to enable the joining of a
>> specified number of pipes.
>> -Modify the display helpers reliant on the pipe joiner mechanism
>> to use number of pipes joined, instead of joiner flag.
>> -Checkpatch fixes.
>>
>> Rev7:
>> -Use struct intel_display, minor refactoring, and rebase.
>>
>> Rev8:
>> -Address comments from Ville.
>> -Simplified debugfs for forcing joiner, and added option to disable
>> joiner.
>> -Modified the ultra/bigjoiner helpers as suggested by Ville.
>> -Split few of the bigger patches as suggested.
>>
>> Test-with: 20240911072204.22825-1-karthik.b.s@intel.com
>>
>> Ankit Nautiyal (11):
>>    drm/i915/display: Simplify intel_joiner_num_pipes and its usage
>>    drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
>>    drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
>>    drm/i915/display: Use joined pipes in dsc helpers for slices, bpp
> I have a feeling those four at least could be merged ahead of
> time, and thus shrink what's left quite decently already.
> Granted, you probably won't have the num_pipes value passed
> in all the way from the top yet, so might have to do some
> 'joiner ? 2 : 1' here and there as a temporary measure.
>
> I think getting this stuff out of the way would help
> avoid confusion with the debugfs/compute_config changes
> to some degree at least, and might help with bisectability,
> Presumably it builds, but I'm not really convinced all the
> intermediate steps would actually work 100% correctly.

Thanks for the comments and suggestions.

Agreed, will send this as a separate patch series shortly.

>
>>    drm/i915/display: Check whether platform supports joiner
> For this stuff I'd like to see a HAS_BIGJOINER() and
> HAS_UNCOMPRESSED_JOINER() like we have for most platform
> features. This also seems like good material for stuff to
> merge on its own, ahead of the rest of the more complicated
> stuff below.

Alright will make the changes accordingly, and send separately.


Thanks & Regards,

Ankit

>
>>    drm/i915/display: Modify debugfs for joiner to force n pipes
>>    drm/i915/display_debugfs: Allow force joiner only if supported
>>    drm/i915/dp: Add helper to compute num pipes joined
>>    drm/i915/display: Add debugfs support to avoid joiner
>>    drm/i915/display: Consider ultrajoiner for computing maxdotclock
>>    drm/i915/intel_dp: Add support for forcing ultrajoiner
>>
>> Stanislav Lisovskiy (8):
>>    drm/i915: Add some essential functionality for joiners
>>    drm/i915: Split current joiner hw state readout
>>    drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity
>>      checks
>>    drm/i915: Implement hw state readout and checks for ultrajoiner
>>    drm/i915/display: Percolate ultrajoiner info to get_joiner_config
>>    drm/i915/display/vdsc: Add ultrajoiner support with DSC
>>    drm/i915: Add new abstraction layer to handle pipe order for different
>>      joiners
>>    drm/i915: Compute config and mode valid changes for ultrajoiner
>>
>>   drivers/gpu/drm/i915/display/intel_ddi.c      |  19 +-
>>   drivers/gpu/drm/i915/display/intel_display.c  | 423 +++++++++++++++---
>>   drivers/gpu/drm/i915/display/intel_display.h  |  17 +-
>>   .../drm/i915/display/intel_display_debugfs.c  |  84 +++-
>>   .../drm/i915/display/intel_display_types.h    |   2 +-
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 138 ++++--
>>   drivers/gpu/drm/i915/display/intel_dp.h       |  14 +-
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |  54 ++-
>>   drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
>>   drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
>>   drivers/gpu/drm/i915/display/intel_vdsc.c     |  30 +-
>>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
>>   12 files changed, 646 insertions(+), 142 deletions(-)
>>
>> -- 
>> 2.45.2
