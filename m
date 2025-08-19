Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AB0B2B94A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 08:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E883910E531;
	Tue, 19 Aug 2025 06:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hiSGPi++";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38A210E531;
 Tue, 19 Aug 2025 06:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755584292; x=1787120292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vIps/9qlf4L6bqD4AvSEDrvPe6NDcrLzfkSias85+gg=;
 b=hiSGPi++tPRHKEEILjZgyuMSJdDyRVTsxboBnQUA82zG3cGyRCWQfZiK
 wEPg+4wYfMI2XxVLa9vIpndCbYg10PFbTtpMTGLljuaZy+sUYZnGGIE59
 NR3oIPJ7dkpxKicUChqs3ypbjOByDrKie5dzql0jPdngXu9Yfg8r1yPk7
 wYL2HN3CaYdA3MHWcGUF5e9Pls7B6AbiIeck8SkoO1XrRcEMsLt+DhdqC
 0A051fHR3e/ox9iGjc66OuZ9a9seXO22ixp4zCsj0fQCDgJHJ1VwQYSdX
 hAlLE+D4n6/lxVPliIV5b+8/fp2m5pj0/CS95IPKdqo/QqONjiNBUtvDV A==;
X-CSE-ConnectionGUID: ZUMBejXIQXKhVniL5vnheg==
X-CSE-MsgGUID: bq0B7KRdS+6ofFv68HIxZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="75269342"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75269342"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 23:18:10 -0700
X-CSE-ConnectionGUID: 8sTDxCEnTbitam0kpHo6fA==
X-CSE-MsgGUID: jOQlRQuFT3a8x3uUjQ9t7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168125010"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 23:18:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 23:18:09 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 23:18:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.84)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 23:18:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iWj9hpql0OG3511F6WymrG6+yWXbI0gbzNgdXxzR0Yf9Qnq4oqhE17tkK2412mSnT4gpeJeZMvr5rZSj9ALP7qkBinha9FkprDDohQ5cQVJLB7oES/mDdNfHSpMH+Oumow9iCZWlZop9h6ilgndJGDRU6/PBxnAio6iA+V6HKwOOQkJu40ZqphAFgX5910GeAHOXa/VQfbLz2oy9MtBWF7XKChcc8C9TMN7tr9KiTKTO9vg/XS7ijDXGR2mRunaq2Umzrtwo57vUvTgnh/FSqytToA+Ey2dmdL8qJ0++gJnWmT+a6eZC2uzkD7u418souuyBTawGHaNSYVZy1+0Irg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vIps/9qlf4L6bqD4AvSEDrvPe6NDcrLzfkSias85+gg=;
 b=g3C6dh+S0dgBOaPmLgPz6wssdANjszLAnjaWbzfY0uPZJrt+sIiMRCSSEa7klvtaqiNfOXDcpjdIilHQuZj3ywj0w4Kba0QlCgzaU85rLE/RHyNS+25YfV9HKE+FzzAAfzPmBS9CCqr1al+P2bQ/mtNIL0jCYlLpv8c0/vSyqMfjFNT2VI0ylZEAgIwQ9H85FakjAnX8doeND2iIF1bwOdACyOziP8N59e4q/J48Gy5dFpLbGRUHE96ZO6oAoU+Gf95BJ6nlDKcKBseqXvze4ECFwQuM1sVHfEwPgd7yiV0+NMEnFQJ8BPGnVipcos+Vp2p4NHg1eSVFltG48d+5gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6396.namprd11.prod.outlook.com
 (2603:10b6:208:3ab::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 06:18:04 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%6]) with mapi id 15.20.9031.024; Tue, 19 Aug 2025
 06:18:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
Thread-Topic: [PATCH v3 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
Thread-Index: AQHcAdpcV9ibkwDIgEe8+Xx6pLm6D7RpgueAgAAbSwA=
Date: Tue, 19 Aug 2025 06:18:03 +0000
Message-ID: <DM3PPF208195D8DF78999A31C6765883ADEE330A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250731051646.3009255-1-suraj.kandpal@intel.com>
 <20250731051646.3009255-3-suraj.kandpal@intel.com>
 <5e20ad73-6649-4317-b66f-d83fe5541693@intel.com>
In-Reply-To: <5e20ad73-6649-4317-b66f-d83fe5541693@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6396:EE_
x-ms-office365-filtering-correlation-id: fd9fc486-d624-4bb1-f3d7-08dddee827f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RjBCdWFsbU9XYnF5S0dwS0FCSGRFOUVNWGlUeHJpM0wzd25mc2FVVFRIM1lw?=
 =?utf-8?B?TGM1T2dxUTMxc0pSUkRaYTU5RndXZUNSM2NUZzVBQjRYOS8zSVRjVWdQYmZX?=
 =?utf-8?B?cEx5MFNFYlk2YmppOUJ4TjZBWG02VW5tWGx5NS9jQkU1eDlVcndyeVEwTkJD?=
 =?utf-8?B?RGdQM0REOXdadTh3RXlrN3oxa2JudHJKcEVrUHNkNStEOXFtcDRmUlF3NXFH?=
 =?utf-8?B?OUxsZ25UaWRqVmRkZDkzUHBXU0t6TFg4SVVhSE5FR1RLbmN3eTlRbEFVc20w?=
 =?utf-8?B?V25kU211VHhWVkxzYVBYK1cySWdKSEpsMzRxbnVpOUVSR1o2RUI2Rjg5RWpB?=
 =?utf-8?B?aEFCcDJKVnd4dWlpRmUyZkdzMVUxelJVdzhDRG9YRDVHdldHY2YwWkVrbEE0?=
 =?utf-8?B?YjRPZkNyOUFmb2Z4bVBybGZyWjVJV3docFZTS1JnYXBZYXI2Wk1mNTN6ZnFi?=
 =?utf-8?B?ak1EeERLL3B3SXFDczkvSHFyZHVhYjN5NWpOOFhURHZxZDJBWDBHbkMvckNT?=
 =?utf-8?B?Zjc1RndnUG9sYjdhS096cVo3QVB1Y0RWUllQT0dDTW5kMHVDNXlyaDZGMkZP?=
 =?utf-8?B?U3RUWVdpTkE4MGdPbjVuaDJ6b3BaWm5oSXpCRUkxVk55akRTUkNVL3A3SWpy?=
 =?utf-8?B?ODNaeS9wNmVpSnFjM1pIekpzcTBsZGtjK1RhdWxSa01VWWgrbkhsd3oyaUFx?=
 =?utf-8?B?YUxMNGpFZ29rV3pnMWE5cXlxRVB0K2w2K3Z4UjJMcVhhRTIzWkpHTUpYR2dt?=
 =?utf-8?B?VFk1QjVkSFhpZ2szWkR5VFJLMEJYMlQ1ZGRUM2VqSVlQeU03YjA2L0dUWDNi?=
 =?utf-8?B?cWRUY29BalhvM0dzd0ZoMUVTdUIyb1NZdVhDQ2FLMjVQR1BpeUFwNlFkYnRK?=
 =?utf-8?B?Nks4TkpIV1pVYmdpRzdiYXhleERNcW5Oa2tWQTV1WEpBZitJdkZDQlFmRnF4?=
 =?utf-8?B?b21pcjVCRGc0OUNDRjh2MWQ2VEdYbVlWbzI4cjViZ3hhZElpNXEwTmJoS3Rw?=
 =?utf-8?B?VXoycmE3K2I2TVJjSUlTN1RkL1JkekRENlJQQnJ2YkhHaStHbjJ6VXVkbkMw?=
 =?utf-8?B?bTE1d1VueXNiM1dUZ2IxUjV6QkwwUnFONGdvaFdTTU5yVFJMalF0VGwySjBi?=
 =?utf-8?B?aGRJNjBRdmtFVUdOdGtMZ2xudXc0Z21UOTZOLzdhb3E4VUh5QkxMZWQzY0pz?=
 =?utf-8?B?TmtjNlhJQzRTamlZaEgySklucFNtdjFwd2l2SS9BOXgwcXZXb1IxSUxkay9J?=
 =?utf-8?B?NVkrdi9rdDVZOU45YmJKT1ZEaXVwRGNteE4vTCtqdUdKdU1VY0pQNGxJWFA3?=
 =?utf-8?B?M3JiQlV1SElPcnpmdmZDNklBRFd1UGpGQlVOZlowYVo2K1RUbDdDTitHTmpL?=
 =?utf-8?B?eEdqd2xDY0hvWGZVaWdxRnJjNnp3L0NvUmhiVjBxcU9jVWx3MGNWeTNkMklO?=
 =?utf-8?B?QkFEbkdldm9ZYk1wZExoWEhnd0V1azFta1Q4V24zUVlIcGpwRThRVG1tTkNi?=
 =?utf-8?B?WmhKTEovSmw0cHIwOUpkT1NscXloRTRnclY3bkgvQUtJMmNCNHNVRlpoVFZj?=
 =?utf-8?B?alRYQ00zRVRaUGdwb0MwQ1pvaTN2bUtRQ2FFNEt3VU5lVkd6U3o2ZXJhLzBo?=
 =?utf-8?B?ejNybXUyazdGWnNIcXRjZW4zU2gxMUxSQUFOR05BNEdxcmk5UEhrcGNXQVdO?=
 =?utf-8?B?L05yRnI2YkN5R2UxSng5Wksyb3BLdzVySHlFTHVRUkV2MTYreHJlMXExSTho?=
 =?utf-8?B?MWdrL2VnV2lZK3NHN1Bud1RrWWd2bHVyOWJzTERzOUZEbVdwbk5ZWGo1enlZ?=
 =?utf-8?B?ODd3WElEenU3VlVBbG5tbWNpZUxBbndXMkdDck8wT1k0NkdPd3VsMTdFdWZK?=
 =?utf-8?B?R0lOYTJWbWJRdEJ0VjRWclZFRnZCZmIrcDJROHJSZU5tenR2RlZuSHlhOXdN?=
 =?utf-8?B?ZlZhamZHMGhxRndsYVR4aHJsU3lrRnVBUFhVSTRISmxZWGJqQ0JvcDFYQWV1?=
 =?utf-8?Q?JYvwMJf9F0KBFYFlO+uK+sQm0/cGTo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ak13S2RrTkdkOXlIRGRYdjNUSUVXQm5UTzQySC96TEZXUkg5Nk1kTE5KTFRa?=
 =?utf-8?B?N05XMFNvOTFheWl6Vm5UQ25QSFdZVnBkWUNERVlRL25mQis1T2FqQnFsS0VP?=
 =?utf-8?B?a1VFU1FXOEg0aVBJVFlrdW9Ha3o5eXdoWmR2bFlCK0UyY1VlZmdub0diNE5D?=
 =?utf-8?B?b1RIVHIwWEovdlRxbnRSSTErcThrMUZnZlhrZk1mblV6UWoxcXMvWjlJUjBG?=
 =?utf-8?B?TWdBY3l2czFiNVc0emoxckMrVDV5QmdLN0hpMVFPVzExUEFJZitXdExqaTlz?=
 =?utf-8?B?NXozRDlic3VTRFNIMnRSVnE4by9wYTBhaURwR0NPOUdobi9oV2VKTWhaZmwr?=
 =?utf-8?B?S1BZYS9tOW9qMFNRWkNnb0xDTnRyTjh0LzJ4OU9PUS9kQkUreEZLTFBKSUFB?=
 =?utf-8?B?VjhLVTE1cE42VE9NeHpaQXVLT1hsOEJsWlVKSlRGSHd5N3ExVzRwKzdkZTJF?=
 =?utf-8?B?bUh0UE1jWjVtZzZCeU4vOVU4YXBhVW5Cam1qU2lDY05KWTFnU1dxMks5MnNN?=
 =?utf-8?B?YU8rTTd5anFjNmdrdkd3M2YwK0ZXSkRUYnFMRE40Qm9yeElEbmJPSy9TMm9s?=
 =?utf-8?B?anQyYnFxeUdJTUNKUkNFR1ptaWg0UEpCNHJacm54Q2x1Y0tlYjBIN1Uya3pw?=
 =?utf-8?B?SmViNmg0dy90OXJBTUY3aGZtWFEwYTJMK2JVVERGZ1FhNVBMU0NEcVgzMTNH?=
 =?utf-8?B?blR0ZmFXOVdvUUYwM2hLK2l1OWd0ZTBQcUxXdzZicXBOWHgrWUZ5MmdiTXd2?=
 =?utf-8?B?VEJ2VzlJUlVxbVBNeUUvc01ZbUpaZWkvOU44eVFNSjl3WjhyNnlvUFhjejBH?=
 =?utf-8?B?d1AwTVFmcWE0Z3JYc3M5ay9lNmNNaThoQ0orWFord3J4MUM2d29WcW13cy9U?=
 =?utf-8?B?L3U1YW9UNXhQYlhndFJaSjF1TTJQYmZKSkN6YjdNQ0hLRjJ5VnM1aEZoa0tS?=
 =?utf-8?B?QSs5Zk0vTC9hZFlKeitpcG83ZldOS2VNWkpYY1FLbVJiYUFndUpmWmgzOFJH?=
 =?utf-8?B?VHBuSnNDYUQxeXBCYmVtRVpRQXpaK2VGdmxhM2lxSG1iQVBWbmpHek9aSDdm?=
 =?utf-8?B?UmFDSnJUeHc3SnllMmJRelVwSHdrQTJrNFFXZEJiT2tpS21zWEdXRThTSzR2?=
 =?utf-8?B?QjF5b1hiT3FBcEkzcCt0R044TVNHZnNvTXp4anlGYXZ2eFJKRTZuMmlabGlL?=
 =?utf-8?B?TkNPbGdUUGhVRkJXcEtDOUNSUGtCMG9IQzFxKzJXWFFPMEp3ZFdaVHdVWW9I?=
 =?utf-8?B?Q084cUZLRjI4VTRBYWVraU9ZVkdtK1FpMVNyaFJqVjZHOFgxb3A2ZnZ6ZkY3?=
 =?utf-8?B?RmJOM2ZoRS9RZUZLaFp4TFlNNEcyU3VFY0lOZWJac2hBV2tkTVNMNjdIOGRv?=
 =?utf-8?B?YkZ4dkFRSWdFWVcreFRCVUVkdGdLSUgxdVlHYXJONnVXcUtSM1JhWTJsaXV3?=
 =?utf-8?B?MjJIa2J1Y3IyUzhkSThjQlJ1MDdrTUREeU5wZ1hQL1k3bithY1pNcmpoWE1a?=
 =?utf-8?B?RXRiWEowbnFZc08wd3c5Q21TUXozUEtTZDB0R05YMzRhNkNiSmpjQ1BadHhi?=
 =?utf-8?B?ZXA5UmtqNGxQS0xKS3hJc3YxYkplb0xza3RDakgyb0VZUUVuR1NKcTBQNFdT?=
 =?utf-8?B?WGRMTngxaGVpdGFOUytjUXIxbXM3WmF1emtFZGxJb1plUy93OVR2L01yaGpM?=
 =?utf-8?B?M2ZXb1RpVkwyc09jSXVaY2xpRFpMVm8zcThlUDA1N014Z1kwTlhqLzVtakpI?=
 =?utf-8?B?cUVnODBNTzA0S0NlVVVHNEI5bTJWQjFZMmJ1UC9aTTZMSUJ1YjdabTRIZlBC?=
 =?utf-8?B?OVBLV084QU9oVVFPUDlHMkpTNjFtUlRUR1BTWG5VaUUyejdhWElrTlBOWkxo?=
 =?utf-8?B?RG1iQlJTT1VpNDQ1RFpoSVhlbGZrcFlualIzWTBnaityWnBkZlZhbU0yMEtx?=
 =?utf-8?B?SDVsTmU5OUFsYkpmaCswa1cvQVFYNWpxRmpPcDRNcEZWTFM3bUdYZCtRQlly?=
 =?utf-8?B?Tmd4OXJXOFJuWDhTTkthbjltL1RhNHpYQlFKc2JUcnQrNzg4Q3NxUHVkUVBZ?=
 =?utf-8?B?emJHM0kwKzRpb0ZYYTNvVVI1NlVxdlY4UmYzWXhmTkt6MkVXZUxFajk3RXZw?=
 =?utf-8?Q?ZUGmTYKD0j6UiE9jh/tMr/h2b?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd9fc486-d624-4bb1-f3d7-08dddee827f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 06:18:04.0358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gss8v9TA7VoIDKdOxbHuiMoPwlwZ6QFHPCpQAtzKGIga2iuwo5ZPQ4QRkJS+PRTT90zujhvLNv0wSXScWa9rhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6396
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

PiBTdWJqZWN0OiBSZTogW1BBVENIIHYzIDIvM10gZHJtL2k5MTUvYmlvczogQWRkIGZ1bmN0aW9u
IHRvIGNoZWNrIGlmIGVkcCBkYXRhDQo+IG92ZXJyaWRlIGlzIG5lZWRlZA0KPiANCj4gDQo+IE9u
IDcvMzEvMjAyNSAxMDo0NiBBTSwgU3VyYWogS2FuZHBhbCB3cm90ZToNCj4gPiBBZGQgYSBmdW5j
dGlvbiB0aGF0IGhlbHBzIGlkZW50aWZ5IGlmIHRoZSByYXRlIHByb3ZpZGVkIG5lZWRzIHRvIGJl
DQo+ID4gb3ZlcnJpZGRlbi4gRm9yIHRoaXMgd2UgbmVlZCBhIGZ1bmN0aW9uIHRoYXQgY29tcGFy
ZXMgdGhlIHJhdGUNCj4gPiBwcm92aWRlZCBhbmQgYml0bWFzayBvZiByYXRlcyBwcm92aWRlZCBp
biBWQlQuDQo+ID4NCj4gPiAtLXYyDQo+ID4gLVJlbmFtZSBmdW5jdGlvbnMgW0phbmldDQo+ID4g
LVJldHVybiB0aGUgbWFzayBpbnN0ZWFkIG9mIHBhcnNpbmcgaXQgaW4gZnVuY3Rpb24gW0phbmld
IC1Nb3ZlIHRoZQ0KPiA+IGRlY2xhcmF0aW9uIGluIGhlYWRlciBbSmFuaV0NCj4gPg0KPiA+IFNp
Z25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiA+
IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAy
OSArKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmggfCAgMiArKw0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNl
cnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jDQo+ID4gaW5kZXggODMzN2ViZTBmMmM4Li43YWRiN2M0YjA0MzIgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+IEBAIC0y
NDgwLDYgKzI0ODAsMjUgQEAgc3RhdGljIGludCBwYXJzZV9iZGJfMjE2X2RwX21heF9saW5rX3Jh
dGUoY29uc3QNCj4gaW50IHZidF9tYXhfbGlua19yYXRlKQ0KPiA+ICAgCX0NCj4gPiAgIH0NCj4g
Pg0KPiA+ICtzdGF0aWMgdTMyIGVkcF9yYXRlX292ZXJyaWRlX21hc2soaW50IHJhdGUpIHsNCj4g
PiArCXN3aXRjaCAocmF0ZSkgew0KPiA+ICsJY2FzZSAyMDAwMDAwOiByZXR1cm4gQkRCXzI2M19W
QlRfRURQX0xJTktfUkFURV8yMDsNCj4gPiArCWNhc2UgMTM1MDAwMDogcmV0dXJuIEJEQl8yNjNf
VkJUX0VEUF9MSU5LX1JBVEVfMTNfNTsNCj4gPiArCWNhc2UgMTAwMDAwMDogcmV0dXJuIEJEQl8y
NjNfVkJUX0VEUF9MSU5LX1JBVEVfMTA7DQo+ID4gKwljYXNlIDgxMDAwMDogcmV0dXJuIEJEQl8y
NjNfVkJUX0VEUF9MSU5LX1JBVEVfOF8xOw0KPiA+ICsJY2FzZSA2NzUwMDA6IHJldHVybiBCREJf
MjYzX1ZCVF9FRFBfTElOS19SQVRFXzZfNzU7DQo+ID4gKwljYXNlIDU0MDAwMDogcmV0dXJuIEJE
Ql8yNjNfVkJUX0VEUF9MSU5LX1JBVEVfNV80Ow0KPiA+ICsJY2FzZSA0MzIwMDA6IHJldHVybiBC
REJfMjYzX1ZCVF9FRFBfTElOS19SQVRFXzRfMzI7DQo+ID4gKwljYXNlIDMyNDAwMDogcmV0dXJu
IEJEQl8yNjNfVkJUX0VEUF9MSU5LX1JBVEVfM18yNDsNCj4gPiArCWNhc2UgMjcwMDAwOiByZXR1
cm4gQkRCXzI2M19WQlRfRURQX0xJTktfUkFURV8yXzc7DQo+ID4gKwljYXNlIDI0MzAwMDogcmV0
dXJuIEJEQl8yNjNfVkJUX0VEUF9MSU5LX1JBVEVfMl80MzsNCj4gPiArCWNhc2UgMjE2MDAwOiBy
ZXR1cm4gQkRCXzI2M19WQlRfRURQX0xJTktfUkFURV8yXzE2Ow0KPiA+ICsJY2FzZSAxNjIwMDA6
IHJldHVybiBCREJfMjYzX1ZCVF9FRFBfTElOS19SQVRFXzFfNjI7DQo+ID4gKwlkZWZhdWx0OiBy
ZXR1cm4gMDsNCj4gPiArCX0NCj4gPiArfQ0KPiA+ICsNCj4gPiAgIGludCBpbnRlbF9iaW9zX2Rw
X21heF9saW5rX3JhdGUoY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpk
ZXZkYXRhKQ0KPiA+ICAgew0KPiA+ICAgCWlmICghZGV2ZGF0YSB8fCBkZXZkYXRhLT5kaXNwbGF5
LT52YnQudmVyc2lvbiA8IDIxNikgQEAgLTI0OTksNg0KPiA+ICsyNTE4LDE2IEBAIGludCBpbnRl
bF9iaW9zX2RwX21heF9sYW5lX2NvdW50KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9iaW9zX2VuY29k
ZXJfZGF0YSAqZGV2ZGF0YSkNCj4gPiAgIAlyZXR1cm4gZGV2ZGF0YS0+Y2hpbGQuZHBfbWF4X2xh
bmVfY291bnQgKyAxOw0KPiA+ICAgfQ0KPiA+DQo+ID4gK2Jvb2wNCj4gPiAraW50ZWxfYmlvc19l
bmNvZGVyX3N1cHBvcnRzX2VkcF9yYXRlKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9iaW9zX2VuY29k
ZXJfZGF0YSAqZGV2ZGF0YSwNCj4gPiArCQkJCSAgICAgaW50IHJhdGUpDQo+ID4gK3sNCj4gPiAr
CWlmICghZGV2ZGF0YSB8fCBkZXZkYXRhLT5kaXNwbGF5LT52YnQudmVyc2lvbiA8IDI2MykNCj4g
PiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGRldmRhdGEtPmNoaWxkLmVk
cF9kYXRhX3JhdGVfb3ZlcnJpZGUgJg0KPiA+ICtlZHBfcmF0ZV9vdmVycmlkZV9tYXNrKHJhdGUp
Ow0KPiANCj4gDQo+IFRoZSBmdW5jdGlvbiBuYW1lIGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0
c19lZHBfcmF0ZSgpIHN1Z2dlc3RzIHRoYXQgaXQNCj4gcmV0dXJucyB0cnVlIGlmIGEgZ2l2ZW4g
ZURQIHJhdGUgaXMgc3VwcG9ydGVkLg0KPiBIb3dldmVyLCB0aGUgY3VycmVudCBpbXBsZW1lbnRh
dGlvbiByZXR1cm5zIHRydWUgd2hlbiB0aGUgY29ycmVzcG9uZGluZyBiaXQNCj4gaXMgc2V0IGlu
IGVkcF9kYXRhX3JhdGVfb3ZlcnJpZGUsIHdoaWNoIGFjdHVhbGx5IGluZGljYXRlcyB0aGF0IHRo
ZSByYXRlIGlzDQo+IHJlamVjdGVkLg0KPiANCj4gVG8gYXZvaWQgY29uZnVzaW9uLCBlaXRoZXIg
dGhlIGZ1bmN0aW9uIHNob3VsZCBiZSByZW5hbWVkIHRvDQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9y
ZWplY3RzX2VkcF9yYXRlKCkNCj4gdG8gcmVmbGVjdCBpdHMgYWN0dWFsIGJlaGF2aW9yLCBvciB0
aGUgbG9naWMgc2hvdWxkIGJlIGludmVydGVkIHNvIHRoYXQgdGhlDQo+IGZ1bmN0aW9uIHJldHVy
bnMgdHJ1ZSBvbmx5IHdoZW4gdGhlIHJhdGUgaXMgYWNjZXB0YWJsZS4NCj4gDQoNClN1cmUgd2ls
bCBjaGFuZ2UgZnVuY3Rpb24gbmFtZQ0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+IFJl
Z2FyZHMsDQo+IA0KPiBBbmtpdA0KPiANCj4gPiArfQ0KPiA+ICsNCj4gPiAgIHN0YXRpYyB2b2lk
IHNhbml0aXplX2RldmljZV90eXBlKHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2
ZGF0YSwNCj4gPiAgIAkJCQkgZW51bSBwb3J0IHBvcnQpDQo+ID4gICB7DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiA+IGluZGV4IDZjZDdhMDEx
YjhjNC4uYTRhYmFhODlhNjgyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmgNCj4gPiBAQCAtMjUxLDYgKzI1MSw4IEBAIGJvb2wgaW50ZWxfYmlv
c19lbmNvZGVyX3N1cHBvcnRzX2R2aShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVy
X2RhdGEgKmRldmRhDQo+ID4gICBib29sIGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19oZG1p
KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSk7DQo+ID4g
ICBib29sIGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19kcChjb25zdCBzdHJ1Y3QgaW50ZWxf
Ymlvc19lbmNvZGVyX2RhdGENCj4gKmRldmRhdGEpOw0KPiA+ICAgYm9vbCBpbnRlbF9iaW9zX2Vu
Y29kZXJfc3VwcG9ydHNfZWRwKGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX2Jpb3NfZW5jb2Rlcl9k
YXRhICpkZXZkYXRhKTsNCj4gPiArYm9vbCBpbnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfZWRw
X3JhdGUoY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLA0K
PiA+ICsJCQkJCSAgaW50IHJhdGUpOw0KPiA+ICAgYm9vbCBpbnRlbF9iaW9zX2VuY29kZXJfc3Vw
cG9ydHNfdHlwZWNfdXNiKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAq
ZGV2ZGF0YSk7DQo+ID4gICBib29sIGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c190YnQoY29u
c3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhKTsNCj4gPiAgIGJv
b2wgaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX2RzaShjb25zdCBzdHJ1Y3QNCj4gPiBpbnRl
bF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSk7DQo=
