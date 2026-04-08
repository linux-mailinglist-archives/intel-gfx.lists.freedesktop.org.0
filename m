Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHdWHWAH1mnbAQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:44:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D69743B87D6
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 09:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF44B10E0CD;
	Wed,  8 Apr 2026 07:44:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fGyscKnF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 284FD10E0CD;
 Wed,  8 Apr 2026 07:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775634269; x=1807170269;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GE9cLdtgjTcm3zCsHllUCBN0COEYoeVbY1wZmAY2OD0=;
 b=fGyscKnFTpC6WUlUHvPZoMjRzH4tmZGuz+vFnvCXg8Xhcp2YB6S9k/Lk
 5xa+66bFqElBWk9RmG4iV7QIi+Jn7zTCzBs1teLuQbmt19Vl+k/+vNs8s
 e3IMsfNtE2ZMmF4v5MvlFYnGMyn23Z3n03prfCqn6fPkUtvnpj4V2p0MY
 /QYStG/UCtchJFEBQjCIvP8ed17/imDEdnOZAa6SLvdUZqR/EakaqFb3s
 NSzr2cXw/rUcTIqPJIdvS/OT8O0oU6QvkkvQpYSHcA3CunMLDnHnkZbui
 2nI52Gn0FA4Zdd670B/HOxJlG5BsnY5aoieZmvCR/yYHTGQkNUIa+AHjH A==;
X-CSE-ConnectionGUID: oJlXQ7DeTKq9a4ej3KZZ9A==
X-CSE-MsgGUID: sBL3yRCfRLyGdZNjSDv4xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87237382"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="87237382"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 00:44:29 -0700
X-CSE-ConnectionGUID: s5Xzh1K+QNmxEZNnq9rBxw==
X-CSE-MsgGUID: 0Qfc0NCUQS6NE5bVMcKIsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="266387507"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 00:44:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 00:44:28 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 00:44:28 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.68)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 00:44:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U8e6MjUoOGNVGKmI8NvhgEdgZ1Bmp8lZC7m+sQgLv63nlOdvYVmVgllOmXVCg+HPGYk8XzZJ6cbPU1l9xyXhyAKAXRdIo4kjnwy3mKhI292CAiJRTNY3gFSEakKprfMclQa10mURKvy+HGWCI7tXDtdsZ3pzLR5eGxNRkMCxDLuV7xKR6r+jFUzVCkDauerCXS3+6my6WFy4NZho8MusgjSjFGuZ89fN2hRokkK+R/6TLuRbEnRYuT9LzB4f7I1T4of3A3IJuF19vwQ3JFmNSeO8TCVkn+EtqXayiq4d5yhMVzATK84aNqFdjC+vXNCDfSkGE4015Nc7D7kdE22Y7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+7m/RCjhSxPZZTagQFwPT/WS/+wR0yMbNvU1nsZrUbo=;
 b=MCsI5meOM7VnJdFGAMRZRhW6B95I+hGitoWI3AYL+vlXxQ62jrLoaqLS5L1qUn9ot2y3HAO1dxljT93A77UXG1hSV5FMPGSfEBCgC3PxfjR+dD2mWLg7tE7micKLvy7F2A+xdT0g08iloBDCXVrOsebAGtfTi4BrhLCjbOJu5130NJgADRhDTa97P+RNXfT3HrHJExw9oF69fEUInO0uR35nxXO4E6k+IcmhC0RQCx7QncZhGzY3yaWoinB2o4jaOk5awXx6NdjUVWEeBwBQ7ANujyvR8PIWdAhyKzJt2AG5aZt21JkFHfUWUAFdtpbYC/uNFSVMGKXQlOPBTZ75kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6740.namprd11.prod.outlook.com (2603:10b6:303:209::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.21; Wed, 8 Apr
 2026 07:44:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Wed, 8 Apr 2026
 07:44:24 +0000
Message-ID: <731ac201-34a4-45fe-aac2-82b6d2bcc33a@intel.com>
Date: Wed, 8 Apr 2026 13:14:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Don't use DP link min bpp for the FRL link
 bandwidth check
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260407183015.16256-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260407183015.16256-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0156.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ac::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6740:EE_
X-MS-Office365-Filtering-Correlation-Id: e73583a3-fff4-4acb-6a49-08de9542a758
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: TlMRSC9x5bcGkDPaqiQne0vRiq7jk97JVH8RBjTgN1Za/xZzXo1CjefFmIBfZCSSTT6lB62UqyOJYvwwEVKDQMuZ2hNVmpS5S/oqSZaZd3zDVWZsfcYN5LmnhkVbmgmVuffFxWWlyA6bPu4mC1i6RlWMhKXOG1TEj6AsMt4G1qHermajyob2DxltAMIuPpIQBwl12NkNhs6RZ4pkuS/OpxcjbAuBJE3jnJxcsAZLCw8vhhUdDCXMeb6ygFmqeU/fzDIPPuEL0tB2+Oh4JgiJ2+UKj/KJDtzEEtRs9FRenmn5ce3MXbNhasW6I/Q0YEDeiAhJUtVs7NHafcRqw14ZEc7isAtyok3TlbHEJzUcc5/5/YoVWRiwbYRzDwczm/jC+EgecnmzwEd1rkfaGy3b0zxIkmz2L8iFLtnIAhFodyLK1UfKKvCv8uyMsFpc2qj6dKLl+vbd7gr9QKHFQPb4UzE0L9bYbMPYRCkEyKp9VLMooIZdJyQ+JijTr8rHmmKkfGnxIuTnp+rHt4MM2GFRgDJSuVfxD29/R6CWHTZAaePtz66nfONWSBNHgox2PUw2Gez6hiVZktdFi1qx3bAatHHGHrvNFrAP3KCj9DZFZJK1lpR7CdAm5TjA7OrhwFFdyxZWAMMvFSEfdhiQy7oS9ZbD2P0q118vGJHn8X2ZcVbbphsqg2FPz/Oai8brKJ/Y5c/SyWnrWfwzcga3gT5EbvCVc1vhxEK3jkdw7UNv0yo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGFEa0FCbzM1a25JaGpYL0pic2J0VGNCQzV5M1pXdEY5MysyaTlCdGhlQWs1?=
 =?utf-8?B?eDdhV1RhbXU4bHB0bmJpRkR4VVBDOER1U0FsNkYrWkhBZU1qRjJmbnR0aHdq?=
 =?utf-8?B?emxvQndTOWxEUC92VDhUOThPUlhWNW5VMTVaNzRDb24yemRvdi82QkliYjVK?=
 =?utf-8?B?cVozVks2RW51UC9ETGo3TWlTQ0FtNy9tMUdrSjJTeEhsNWxYSjd0anpMMUtR?=
 =?utf-8?B?N1AxekxacFJXd3pvM05iS2szd2lEYXlOd1c1M3RydVZNU0JYNWQ3VTduSG1W?=
 =?utf-8?B?Y1F3S0JSaEFvUWhKSm9xTTRaTktpY1hGWEcrNER3V3Q2b291elB2KzdkUWZQ?=
 =?utf-8?B?RWpNdDMxZWx5YzJOcElmWTFmWjBCb0p5Q09RVm8wYVhuYVNxT0VnTjBFbURy?=
 =?utf-8?B?Uk1CYXAxbkp6d2N4Q2lvQVk0ekJucGovb3VXbHVSMllrcHpuV0tCZjlGUjgy?=
 =?utf-8?B?ZUU2aEtIWjBWYnFySkwvcFZqRy9PVytyRG9DRkYrZkNnWGZ3Qno1NE9GeVk3?=
 =?utf-8?B?blNlUmtUWmRTOGtwNmVoYndPVlNlMnpBY212bldhYUhSVDNvMURydFV0d09y?=
 =?utf-8?B?Vlk3bFZDS09tbjl0YXhhcnFjK2hhY1FkdzJnckVBMXpPTEpKKzJaSlFBRUJm?=
 =?utf-8?B?S0dqd2NBQ0ZkUTlMRnlSeDRTVmtuN0IwU1lwTzJOMERKSnkwWHNETUhLSUdE?=
 =?utf-8?B?VkQyV1JOUFNSemxJaU8zcURUa2ZnNGtKdllFamVCNjVtR2R1NGdqMXM4cGJM?=
 =?utf-8?B?dFRpLzhXU2RDVUtCbGJ2dEgzeGs0cHdETVA1b21wNWtUNWlLK0ROV05Mcjds?=
 =?utf-8?B?YTc0cmN2Ylh3aDZlZUgwOXozeitoZGw0bkdRZzNSS1MyazkzZDBvYWJzbitD?=
 =?utf-8?B?MnMwNVJpNnA2Zm5UVjRxWGF1TStjVEpPSUdRNFVCVlNyN0dpM3JmTjhoMUlR?=
 =?utf-8?B?VU5CcEdtL2piU0pEUnJRYk1UdWZkbWJSc1dXaDJoc1FPTUVlcGVuOUs5bEVn?=
 =?utf-8?B?Q1RoOXNPaWVUTmNRb2JkeHBNekxsdS83dkhtNUhRRDhFOGY1TGgwak9YNVph?=
 =?utf-8?B?Q1FVZ3hlUmE2TE04VnN6NURFUUVHd1JHQXhlTWdsTXczSlV4VlBEUm04d25P?=
 =?utf-8?B?QThleTNDZFhKMDQyeWJ2UURDTjBsWW0wTzl2TW9iSzlWcDF3VHQxT1hBMHIx?=
 =?utf-8?B?ZnI3RHhMKzV1N3U2bmt2OGNtek5ncGErbEs0Z28rbGUzZDUySVo0MWRZRTh1?=
 =?utf-8?B?YUxIRXlOdTlrVW12ODdvcFhVb3FLUEVDUkhyNnZCeDlDb0w0OUQ0amVXRWln?=
 =?utf-8?B?QUdMbHk4cXA5SzRqNmtObHlRK3AzcjM1NmtsTkRVYUtxaDhDc0UycHUrWGNk?=
 =?utf-8?B?MkRHSVhDU09QT1Q2b1RFMnNzcEx2K3JuK2NpaDZVek9IUSttMHZPaDRLdjJN?=
 =?utf-8?B?cHVUZExEZTdUWHI4UVhuVDhLY2xMbkRTV3BkazNJdFVQY1k0QVQyc04zcXNo?=
 =?utf-8?B?MU9OajFvL0VZNjdOaWdvREg1ek51QytMc1p4RFhzaXFGTnFZM28xYmQ1OEk5?=
 =?utf-8?B?cDdiam1ITWpNeFRFOHVkK3J6WVIxRlpSSHdoVEU2bkgwKzk4QjB0dWxzZkh1?=
 =?utf-8?B?WUJ4anRGZmVueVFTSG5yaklzbUVIWFAyVCtvVW5leUJXTnBYYi9ZemdtbThI?=
 =?utf-8?B?M21OZzNTajFNWHBWWWZpZGNMMFBwajZiV1ZLamhCRFBuYWFvYnlraTRqeWUy?=
 =?utf-8?B?L2lNYjh5c2JTTkQrSnVBRWpOaTBPV25Xdi90aGliMkM4MW1idEF6ejVtdzFx?=
 =?utf-8?B?QktOQk4ydFhOZFkvNEJXd0RjNkZEVDBqV2crRnZaWHRreE5mMkorY1ptRk9j?=
 =?utf-8?B?RjZTYnRvL0pqdE05VDVlQ1NtMEorekY4d1ptMkhodlNjNUlxRTM1NndTa1Jn?=
 =?utf-8?B?SmJLMmZGNTlxWXVFZFpuWlRqSXBiak1OaXhhUG9VOGdraUFFU2NqY3Z0cU82?=
 =?utf-8?B?UGxLMUdTcGVYNGVZMHdkRXZuSjZZM0hISjMreEpvRytpMkU2eUo3WlJkallp?=
 =?utf-8?B?S09xcjR3STJ5UFJKQXBGdWRBVlU0cFVCM1BtdU1paVZ3bmtZWGVMQzNZb1Iw?=
 =?utf-8?B?UzV2OUUwZkllMDdoSHd2V29JQXpPNWY2TTExWHllRjJ3MDJrZU9MS05XcHJz?=
 =?utf-8?B?dzllUnRoRlBaWUlLT0FqU05ibXBpRnlobWNKcjlxaDF5cDBJblpvNW9HK3N3?=
 =?utf-8?B?TVRxM0xWNEViYnd2Zkh4Y25sdFFmWjRWWGJKY2FBeTJrLzJ4S2hsZFVUMEhy?=
 =?utf-8?B?dDhObnVjQTY2ZVNubkhXWUM0K0FYL1lTUExFQlpTZWVKak5kYnZ3SUZiR01L?=
 =?utf-8?Q?teU12ZrewxBaYW2g=3D?=
X-Exchange-RoutingPolicyChecked: iXyM6ZtELQYLUnI3nkZQTmF8jqNBPqQPpHNPEmbHJUgNYP91HafHkRy8QdFttg13b9Kz4uxzZvEV1qOLHYjWmsFeoPwbafYKQRgXcbVkfLyGVGCD886jenGgw+ww8GKsf9UJ+f9DKEL+1ciYAa42yfZkpSaVDkCnFvMGsiITx2OdlRoCWRvXVn1DgRJEiFOfqpifdZKXTBZeb3IJLbw8tve7q0vp1DExlh6grGqPjY1y8ju8/ZwuYOP5K9T9vGEFHDIcLxoNS7QCXhREGzoYg1qBHKXj2MrkogTxh7Gz9h3hVdrbj+gUa3QJ0tTgMvO5+mLVUw/dlZDTGpyCDN7eZg==
X-MS-Exchange-CrossTenant-Network-Message-Id: e73583a3-fff4-4acb-6a49-08de9542a758
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 07:44:24.6251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vK0y8nYV+vB0E7UwnoWN1tk1ZfBG5pKVirnA3JfsOB5WENwo2Rt/tKgj0Is8sI83q2VwInE05+YcyOmPU6xzmQJ3hArqItI37dDP+T376uY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6740
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D69743B87D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/8/2026 12:00 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> intel_dp_mode_min_link_bpp_x16() gives us the min bpp for the
> DP link before the PCON, however intel_dp_mode_valid_downstream()
> is trying to check for sufficient bandwidth on the HDMI FRL link
> after the PCON. So the use of intel_dp_mode_min_link_bpp_x16() here
> is incorrect.
>
> Presumably even with FRL HDMI still can't go below 8bpc, so we should

Thats right, even with HDMI2.1 FRL the minimum uncompressed bpc is 8.

Thanks for catching this issue.

Patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>



> just use that to give us the minimum required FRL bandwidth. And this
> needs to account for the sink format (for 4:2:0 sub-sampling) since
> that is what will be flowing over the HDMI link.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++------
>   1 file changed, 14 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4955bd8b11d7..31e9b2758499 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1317,6 +1317,15 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
>   	return MODE_OK;
>   }
>   
> +static int frl_required_bw(int clock, int bpc,
> +			   enum intel_output_format sink_format)
> +{
> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> +		clock /= 2;
> +
> +	return clock * bpc * 3;
> +}
> +
>   static enum drm_mode_status
>   intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   			       const struct drm_display_mode *mode,
> @@ -1327,13 +1336,14 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   	enum drm_mode_status status;
>   	enum intel_output_format sink_format;
>   
> +	sink_format = intel_dp_sink_format(connector, mode);
> +
>   	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
>   	if (intel_dp->dfp.pcon_max_frl_bw) {
> -		int link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
> -		int target_bw;
> -		int max_frl_bw;
> +		int target_bw, max_frl_bw;
>   
> -		target_bw = fxp_q4_to_int_roundup(link_bpp_x16) * target_clock;
> +		/* Assume 8bpc for the FRL bandwidth check */
> +		target_bw = frl_required_bw(target_clock, 8, sink_format);
>   
>   		max_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
>   
> @@ -1350,8 +1360,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   	    target_clock > intel_dp->dfp.max_dotclock)
>   		return MODE_CLOCK_HIGH;
>   
> -	sink_format = intel_dp_sink_format(connector, mode);
> -
>   	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
>   	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
>   					   8, sink_format, true);
