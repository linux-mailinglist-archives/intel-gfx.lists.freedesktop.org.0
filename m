Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 504EBA7924E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 17:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A5CB10E80C;
	Wed,  2 Apr 2025 15:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I3qolweB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F85710E80B;
 Wed,  2 Apr 2025 15:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743608436; x=1775144436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HLorLrVc5d7IX6FqJDjC3lnNRT2issT01K+M/Mgtqc4=;
 b=I3qolweBABXSGpOYeh3XgFhh9bHA1R8I9vKWDwIqXNuKosa0TNGZU2vx
 htgxydiTENASWRb5dOjmEUAk0q3OfiqiW/lt3rIp3Fo4UfmDC7iZ5Iowz
 2Z+UHen3lzGug8phuOYVtmQpZ+0gWZl8Q1X5s+OYFRacosB53U6oCLElB
 VHSRGpDJJyTxb6sF/q8jxD/j/vcaYBn7bSjVLfs9A+2i4vLLv7aET+V3F
 IqB+ITAEcPgR8qW+dM9/phfe/fUVRzsWP+u4ihVVjsydlgb1y5ea6wp8k
 J8aUAlXFRTDZedK6RhqNtPB4GfgkPJQtKsH/CZYltoZpXR9QUuO5roZtw Q==;
X-CSE-ConnectionGUID: MpPuc6oWSPyjr+/BM5v6AQ==
X-CSE-MsgGUID: vWpNheYFQMS6cSEJHiuu8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44865854"
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="44865854"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 08:40:35 -0700
X-CSE-ConnectionGUID: 8WlPdzHUR7arvli4ucmxRw==
X-CSE-MsgGUID: mS6QqS8NTBGm0DbWsqyjxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,182,1739865600"; d="scan'208";a="126696895"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2025 08:40:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 2 Apr 2025 08:40:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 2 Apr 2025 08:40:34 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 2 Apr 2025 08:40:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mVzXLq05wXyzd5q1kJhfceypfTQ7FXPsvIvUut5tOKxP22dVLrjWddioS1g7/1k0YZ9cXyi4wPBw8aY3wOGRjX+oGsXdG3JA/lrR2npDJFE2OaevWJsJOrCoWs6Pk20DJEKy3AxyYCNaPhIgQKviUBlTFARo3Hh1AA65J0LbQCRtLgJjf5EbXUSoOzLGUlTM4x4HFRkUNALGJWR6YOcKJe1jdr2kL1qJjVJoTPVF+DWZ+pZjsKMzQkW3p2RMEi2hz6+LDAbS4z/S7QP4xUBfYRZ04kNPWCkE/43O5MxBLMnHOSITJfZnYh8xzo1SPBrbwTauoiprTC6WL9aWm1nIGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HLorLrVc5d7IX6FqJDjC3lnNRT2issT01K+M/Mgtqc4=;
 b=Zi7/36IGZeMN7ynfdWLPe0nhYGele6GXaH2mwdvq2H8v97+RcXetIyc4qj7NDz2Lrb0fyg+6aRIn0XWujBL4stLhYb7ELM+PxAdo9CRBbR9xhydqzSKYRjwsoj90CYz0zdJzA0jqnPjPHAAIkchBvlj0M6g0UoYZKQFmgJZK4PllwC744P49aw9pxsnjkNfGr0pFaD0is941o7pd8WBvhOSqKJeaTMDLttan1rQV2bLoi2G5sOHptzuBQBazgYXpLgIaUEnxVWHzxJb2QzRT8wqbLUam2Nu9mkn8T+TxXXd28j80kSpWqcXVcxczn5bDh8AvZEdtTal7kFAnUa8AWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB6805.namprd11.prod.outlook.com (2603:10b6:806:24c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Wed, 2 Apr
 2025 15:39:48 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8534.043; Wed, 2 Apr 2025
 15:39:48 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/display: Add MMIO path for double-buffered
 LUT registers
Thread-Topic: [PATCH 1/2] drm/i915/display: Add MMIO path for double-buffered
 LUT registers
Thread-Index: AQHbh7KPGeGOC3KS0UqV3/vacIMwrrNc15OAgAY5OeCAABnZAIAtjSwA
Date: Wed, 2 Apr 2025 15:39:48 +0000
Message-ID: <SJ1PR11MB612956359534D55A8155EE1AB9AF2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
 <20250225180905.1588084-2-chaitanya.kumar.borah@intel.com>
 <Z8HS36_mC1kNCN93@intel.com>
 <SJ1PR11MB61292C5FE06F53D9D1E904E9B9C82@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <Z8chDMmvGGivEI4M@intel.com>
In-Reply-To: <Z8chDMmvGGivEI4M@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB6805:EE_
x-ms-office365-filtering-correlation-id: adb0f674-8600-47c1-3cb2-08dd71fc99c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dmZFdUZQM1FHb3Z5Nk8zNFBvZVlqNXpYNVdKSDVxN1d2dDJkWFRqcXp4anVE?=
 =?utf-8?B?K1lsRFMrZmhBYk9kWTEyN25vd1p2S3kwZ0kyZXp5blJFVEZlVGloYkYwYWQr?=
 =?utf-8?B?QVpTL245cUkwOXZQOW1pS1dEeUpReVU3R1VXQlRMVzV0aXNDdVNJNlVoMHl4?=
 =?utf-8?B?c2tNNVZ0NVFaRlBEM0hEZnhLcjVDSDJLcFV2QU92V1hpVmVsOFZrOEVwUWJD?=
 =?utf-8?B?MUFxSGpEY2RGM1Z2eTVlY3BjTnR2QjZ3dDN1QVdvMm9yR25MbHBEekFtV0cy?=
 =?utf-8?B?eitFaHZsOGw5TDZQNEVndXd4Q2d3NkoyQTlNTmFWZUNBbm1RWW5HRzZpMHpt?=
 =?utf-8?B?VFRzUmlHbXJHVmFiRlh2aWVBb2xZank2T0FQZ1MxY0JSOHpzY09yWnZDb2ZF?=
 =?utf-8?B?YjFkM05Bbk0vVUx2WGd2dDBtRmNMcjR2RkxxQ3hOVzNsd041a3R0NDVDSU0w?=
 =?utf-8?B?dDl3VGN1MGVlM3lpRUxKMFArUW1LYUJZZVBUUUhTcDdySGZhVXBrdmFMUWNT?=
 =?utf-8?B?MnZ0bWUzNkpVWnR4b2RnbjRhdURuME1Udm12cXlsZ0g2VEJzb2R0dGtoR0dQ?=
 =?utf-8?B?aENDd2RuaTMrczI2UW42K04xcmxQbW9tUm5md25rVENyMUhjbkdSMVA5MkNV?=
 =?utf-8?B?aWcrTDk4WFZzeHgxR1hjZjYyUGJZWVR2QmlhMTEwZWtPbmdUcksrbkRKWmhT?=
 =?utf-8?B?eUgrVWloeTMvUUoyL3FKTXdPY3JYRUJzWDRuOUpScVhEcW9tZldSNU1nVUhF?=
 =?utf-8?B?Skh3UGJ5bzZEZ2pSbk1jemtNS0xRL3VKU3RvTVRpeGljWXVoT0VIVXZRQ1Zz?=
 =?utf-8?B?L3hNZFNEVEZTdlJjOGRZb3B3ZHlTUVhQeDFidTBZQys3bnI2akd0L2ZVUFVs?=
 =?utf-8?B?bUM3Qjd6MUVGOUVMUzFkSE9FMjlSWGNCU0pnbEYvVDVUc0V6SVlmTjFTeW5r?=
 =?utf-8?B?NU5zaU4yaXhYR0M2RFpseWFVRnlxdWcxYmViUFVQM0xiOGFVZk9XaFhFRDJn?=
 =?utf-8?B?MnV2ZzliN28wQnRkdG05VC9jWkVwRlZQTGNZRnc2NzU0eS8vYlFtUFQyY1pB?=
 =?utf-8?B?Q3B6OUhxQXB2ZCtYbytLT0N3MWVNNXNWQkk5SERHaWp1dkw2OGFPTm1kVmRM?=
 =?utf-8?B?TDQ5RGFBTjZ0c0xnRjkxVStGTThTdDNJTnFNSDFwUEhuMEJNMWNBMDdobjlD?=
 =?utf-8?B?RHM0VkJwTXQ2Z1BDM2x2TXZ5bEZBOEdLTkpTbFhyRERSSmc1eldLSUN1QWo3?=
 =?utf-8?B?Y1ovMkVBcXJNVjUrNGdGRzZDbjVUbkl6YnhYS2IzTUY4Slc1clFpS0dsU3dn?=
 =?utf-8?B?UnZTK3dKTzE2Z0ZhdHQrZnBncXd4MkVoblRsM0Y2NVdmZ1ljYUxRak5SYTdp?=
 =?utf-8?B?emhIemthUSt2TzJ2MG41K0xwWW95K0NWb05ndzY2WXhBcU9ZZEU4bzFJV1BI?=
 =?utf-8?B?UWtUelBwR1FUOGIrcTJYUHN5TE9hazlPV0EvMFE1MnZ4M0J2akxpUGZRUTJM?=
 =?utf-8?B?TkkraTJpV3FjQ21pVi9CNnowYUg3TjQxUEZHcGlNQ0RlQ2N4dGNUbFJzSHM3?=
 =?utf-8?B?ZFlXT1AycmR0K2twUkpsRmlRSDFSTVJOeGwwOVNTb3ZxbE5lLzFWVXlxTVZo?=
 =?utf-8?B?L1FlVVRWNG45eEptTDdzeUc1NTB4MGo2MmRFVzF2dWhSNlpONjFET0tlaWVk?=
 =?utf-8?B?Nnp4clVGYkMzOW1lRGdDclROMEhFclpPVjQvVVl2dTIwNkhEVkt5b1ZQdENz?=
 =?utf-8?B?K082Q1k2TU5waVVsc1pVRVcwZ3RkMGN4RkYwWXp4L1N4VUZLdVUxY05heWV4?=
 =?utf-8?B?NUhYWW9wUWJEd09hSHZLVWpIaE1EQ0ZqL0Vkalh4SG5sRUxpcSthekV6cnVK?=
 =?utf-8?B?alBWNU9lMytXMjVHQWsrQlR3THRPWXBlRlNLMS9maDRvcTVmMStZOFd1VlRy?=
 =?utf-8?Q?fbAGSQjqIsXK2fcmnfJK47OQX5fvB4qm?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UlJnVGowMDZyaVc3ejNjckF5WmhWUm5uaHVDNnFlN2lpZ1lSL3grbnZ3NVEz?=
 =?utf-8?B?NFIwUDZIcE9hQ2htNkNJYWtxT0xkT1hrQ1VnTGZEUXhLcUppK1dKTWNzdENq?=
 =?utf-8?B?OHcyUk5pdVBuRzNUbWFsMGl4aXA4YTJ4Z0dwYUFiWkk3aHYzcVV5OTNsb1NF?=
 =?utf-8?B?L0JrYnA3RzNQbUhjWVJEbk9LUmVBbThqbHhYVmdNTDNXQmFocy9HTllSMlFj?=
 =?utf-8?B?YkZLQUFrdnF4Sml5c0drTXFWTlFZTjJBMkpmdFJ1bVZUb1dIYURBZTFETFNa?=
 =?utf-8?B?dlYrUm94cEhYaThQQWtxVVhrRzJyNmJUcDJlZENEbXg1QnZtbFg5bmg2LzJs?=
 =?utf-8?B?WDh5M1BJY0N5dUVYcldpSG04eHh6SkRzekNkdGJQdjlWOFQwMWc5REJDTEd3?=
 =?utf-8?B?dlo1dmRpRE51NVZac1ExanUvdC91RzNjUnlpMTV1czNESXhSSjFhSkdLQ2pT?=
 =?utf-8?B?YzJNQ0xTUjJvTnVRWGgvVUdlc0FVRmJod1NFRmZYTTdlYzFuWS9GL0xiMzVx?=
 =?utf-8?B?Uzh5Y1hvTjVodEdVTng5RUtodFRqZXBidmkzWDVaQkRSbkpVblJMWmU2cU84?=
 =?utf-8?B?aWxuMmhuVXBYWU0rTWo4MkNlVDdMemY2czI1TVdwRVlqL0p3WTVPV0hWR1FI?=
 =?utf-8?B?WmxnanE5ZEl2cVR1dGZobjJjRDlraVhXMmtlTmoyVjY0OTUyNXZMVFYyanlv?=
 =?utf-8?B?b2ZQSGtjeTE0TTBOL05XTCtWNU96TGZHdWZ2bmptTFpyUEFzMlhFQkJaL1Z4?=
 =?utf-8?B?K0VXV3VCbUJPWDdkRXVoY05aVEE1Ly9vaU1Zd3ZGOTVjOTJDNy9zT2RrK1VD?=
 =?utf-8?B?VXM1Z0dnRVFwR1hlNGRsT3NhY0R4eTBSdmhqRFRvN3JYamtXaVpQakFJck9G?=
 =?utf-8?B?VkhsOVlLWFNNajBtMVZ4RWJRM1FHY2pkcXc3MWVrelY5ZkFhYzEra0UxVmxr?=
 =?utf-8?B?QWgrWWlnU1ZWUkRNSXBEM3RlbG4xamxhTkJrZUIwVWtSV0ZYMXo1KzZJUzdT?=
 =?utf-8?B?Y0RCRlA1RUE5WS9UVWJvcXVPZDVMTVd2T29oejY5bGFNN3RwaFQ5SFBCUFVl?=
 =?utf-8?B?RG5lWDFtQXRZRkJ4d1UvRFJWcVhmZjU1VUJmdFl2WEo3ajF3ZHJvcUkzZElw?=
 =?utf-8?B?Tms2YnNQVHZjQU9pYWI5UlpEbjlSY20wbG5wcVFjeXVjUUdueGhTSVBrTmI4?=
 =?utf-8?B?dWZBT3A4Q0ZnaVBpZm9tY2hyYzFnYjVaUlNzZzBWR1UzMVQ2NmY0cWhLUGpi?=
 =?utf-8?B?RnlRejM5d2NDVXFKUmpYeUpMS2hIL0ZCZ2s0UVlQRHdINHhja0ZLTDR0V0dT?=
 =?utf-8?B?RzdlRnBuUVRacmFuT1dZd3c5Q3VlNE1Va0NxOVJ5YzJnUDJVaWdKZ2tEUHlY?=
 =?utf-8?B?TnRTS2JPMldCR1N3a1dZd2oxNi9QdXByRThrVEs3UXZVckF5ZTNremVvb2wz?=
 =?utf-8?B?YXlGbU12RW5CZ1c4cWc1SmhQUitPcDVWUXBjOXJKcUtYNUNEV1dTRzNBaDkv?=
 =?utf-8?B?MFNpOW42VDVkRlNYYlBTMGNZK3dWaXE0NUxoS0NvbU1RbGhSVVZ3enE1OVVn?=
 =?utf-8?B?ZW9ScUdsT3ptQ2RnTjRpbHJGbWFOZDVRU1pUZ0JYWjhzYjZ6Qk9DbkFIMU40?=
 =?utf-8?B?Yy9ubms4SzhjUzdaQjluakpQK2x0R1lkZWIvTHBEYzVCN3dkRzEyUDhrMHZi?=
 =?utf-8?B?ZU5LREVHV05lbU9HRG9rVmFMa0xJU3JxNC8vODJNVEowaFJlQmxOcEJNM3Zt?=
 =?utf-8?B?ZlhZSjNZQzd5SlZINGZETWxNbjE1OHQzRTExUFZGNWlkTFI4TnNmTkh0akYy?=
 =?utf-8?B?aVJHbkovaEdCbEp4RHNOL1liN1cxSkNISS9SenFsVjZiWWVJSjNIbGpNVFYz?=
 =?utf-8?B?bmg5aGhGN21uRVBHdUVLTmlUejVkSk9PZEJzVmx3clNYTXB1eWw0MzVxMFc3?=
 =?utf-8?B?NUNTMUxVb1BQUTdBbHBNdFdDVWlEMTR5WFZaWllaV2tuQlorK25ZRW5Ja0hy?=
 =?utf-8?B?NTBQbFM4N013OWE5Z2MySHByYlA0NE1xNDlVM3UwRUNrUlVzTWlqV0p4WnR6?=
 =?utf-8?B?VElyY1IrUlJRbTNzbWEvMW14WEh0OUI2WldMc3lVV1VNN0NYdFVDTEZOQ0k0?=
 =?utf-8?B?bFg5aDJlUnFHenVWajI5a2FWS21kSXVDQm5sNXJMSEVxREdraHRJY2VCeDN3?=
 =?utf-8?B?S2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adb0f674-8600-47c1-3cb2-08dd71fc99c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2025 15:39:48.1112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ouNf4hNleDK/7EamHNYfE8u5qoBsL9HjMJT3DfGqE24uXMrj3gC8F2bbur2Nte9A+0syj/cxORfeqrJyMNZM2IUsBesFPgLxn67np26Z3TA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6805
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

U29ycnkgZm9yIHRoZSBsYXRlIHJlc3BvbnNlLg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDQsIDIwMjUgOToyMCBQTQ0KPiBUbzogQm9yYWgs
IENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gQ2M6
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzsgU2hhbmthciwNCj4gVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFJlOiBbUEFUQ0ggMS8yXSBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgTU1JTyBwYXRoIGZvciBk
b3VibGUtDQo+IGJ1ZmZlcmVkIExVVCByZWdpc3RlcnMNCj4gDQo+IE9uIFR1ZSwgTWFyIDA0LCAy
MDI1IGF0IDAyOjQzOjA2UE0gKzAwMDAsIEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgd3JvdGU6DQo+
ID4gVGhhbmsgeW91IFZpbGxlIGZvciB0aGUgcmV2aWV3Lg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkgMjgsIDIw
MjUgODo0NSBQTQ0KPiA+ID4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5r
dW1hci5ib3JhaEBpbnRlbC5jb20+DQo+ID4gPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiA+ID4gU2hhbmthciwg
VW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIDEv
Ml0gZHJtL2k5MTUvZGlzcGxheTogQWRkIE1NSU8gcGF0aCBmb3IgZG91YmxlLQ0KPiA+ID4gYnVm
ZmVyZWQgTFVUIHJlZ2lzdGVycw0KPiA+ID4NCj4gPiA+IE9uIFR1ZSwgRmViIDI1LCAyMDI1IGF0
IDExOjM5OjA0UE0gKzA1MzAsIENoYWl0YW55YSBLdW1hciBCb3JhaCB3cm90ZToNCj4gPiA+ID4g
PkZyb20gUFRMLCBMVVQgcmVnaXN0ZXJzIGFyZSBtYWRlIGRvdWJsZSBidWZmZXJlZC4gVGhpcyBo
ZWxwcyB1cw0KPiA+ID4gPiB0byBwcm9ncmFtIHRoZW0gaW4gdGhlIGFjdGl2ZSByZWdpb24gd2l0
aG91dCBhbnkgY29uY2VybiBvZiB0ZWFyaW5nLg0KPiA+ID4gPiBUaGlzIHBhcnRpY3VsYXJ5IGhl
bHBzIGluIGNhc2Ugb2YgZGlzcGxheXMgd2l0aCBoaWdoIHJlZnJlc2ggcmF0ZXMNCj4gPiA+ID4g
d2hlcmUgdmJsYW5rIHBlcmlvZHMgYXJlIHNob3J0ZXIuDQo+ID4gPiA+DQo+ID4gPiA+IFRoaXMg
cGF0Y2ggbWFrZXMgdGhlIGZvbGxvd2luZyBjaGFuZ2VzDQo+ID4gPiA+DQo+ID4gPiA+IAktIEFk
ZHMgdGhlIG1hY3JvIEhBU19ET1VCTEVfQlVGRkVSRURfTFVUKCkgdG8gZGlzdGluZ3Vpc2gNCj4g
PiA+ID4gCSAgcGxhdGZvcm1zIHRoYXQgaGF2ZSBkb3VibGUgYnVmZmVyZWQgTFVUIHJlZ2lzdGVy
cy4NCj4gPiA+ID4NCj4gPiA+ID4gCS0gUHJvZ3JhbSBMVVQgdmFsdWVzIGluIGFjdGl2ZSByZWdp
b24gdGhyb3VnaA0KPiA+ID4gPiAJICBpbnRlbF9wcmVfdXBkYXRlX2NydGMoKQ0KPiA+ID4gPg0K
PiA+ID4gPiAJLSBEaXNhYmxlIHVwZGF0aW5nIG9mIExVVCB2YWx1ZXMgZHVyaW5nIHZibGFuay4N
Cj4gPiA+ID4NCj4gPiA+ID4gCS0gRGlzYWJsZSBwcmUtbG9hZGluZyBvZiBMVVQgdmFsdWVzIGFz
IHRoZXkgYXJlIG5vIGxvbmdlcg0KPiA+ID4gPiAJICBzaW5nbGUgYnVmZmVyZWQuDQo+ID4gPiA+
DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENoYWl0YW55YSBLdW1hciBCb3JhaA0KPiA+ID4gPiA8
Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICAgICAgICAgfCA0ICsr
KysNCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jICAg
ICAgICAgICB8IDQgKysrLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgICAgICAgIHwgNiArKysrKy0NCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaCB8IDEgKw0KPiA+ID4gPiAgNCBm
aWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4gPg0K
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jDQo+ID4gPiA+IGluZGV4IGNmZTE0MTYyMjMxZC4uYzNlZTM0Yjk2YzE1IDEwMDY0NA0KPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+
ID4gPiA+IEBAIC0yMDIyLDYgKzIwMjIsMTAgQEAgc3RhdGljIGJvb2wgaW50ZWxfY2FuX3ByZWxv
YWRfbHV0cyhzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgIHsNCj4g
PiA+ID4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0K
PiA+ID4gPiAgCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsN
Cj4gPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3Bs
YXkoY3J0Yyk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwlpZiAoSEFTX0RPVUJMRV9CVUZGRVJFRF9M
VVQoZGlzcGxheSkpDQo+ID4gPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiA+ID4NCj4gPiA+ID4g
IAlyZXR1cm4gIW9sZF9jcnRjX3N0YXRlLT5wb3N0X2NzY19sdXQgJiYNCj4gPiA+ID4gIAkJIW9s
ZF9jcnRjX3N0YXRlLT5wcmVfY3NjX2x1dDsNCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gPiA+ID4gaW5kZXggNWIyNjAzZWYyZmY3
Li45MjdmOWFjZjYxYzQgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gPiA+IEBAIC00MzIsMTAgKzQzMiwxMiBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9jcnRjX3ZibGFua193b3JrKHN0cnVjdA0KPiA+ID4ga3RocmVhZF93b3Jr
ICpiYXNlKQ0KPiA+ID4gPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0N
Cj4gPiA+ID4gIAkJY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqY3J0Y19zdGF0ZSksIHZibGFu
a193b3JrKTsNCj4gPiA+ID4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2Ny
dGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4gPiA+DQo+ID4g
PiA+ICAJdHJhY2VfaW50ZWxfY3J0Y192Ymxhbmtfd29ya19zdGFydChjcnRjKTsNCj4gPiA+ID4N
Cj4gPiA+ID4gLQlpbnRlbF9jb2xvcl9sb2FkX2x1dHMoY3J0Y19zdGF0ZSk7DQo+ID4gPiA+ICsJ
aWYgKCFIQVNfRE9VQkxFX0JVRkZFUkVEX0xVVChkaXNwbGF5KSkNCj4gPiA+DQo+ID4gPiBXcm9u
ZyBwbGFjZS4gWW91IGRvbid0IGV2ZW4gd2FudCB0byBzY2hlZHVsZSB0aGUgdmJsYW5rIHdvcmtl
ciBmb3IgdGhpcy4NCj4gPiA+DQo+ID4NCj4gPiBBY2suDQo+ID4NCj4gPiA+ID4gKwkJaW50ZWxf
Y29sb3JfbG9hZF9sdXRzKGNydGNfc3RhdGUpOw0KPiA+ID4gPg0KPiA+ID4gPiAgCWlmIChjcnRj
X3N0YXRlLT51YXBpLmV2ZW50KSB7DQo+ID4gPiA+ICAJCXNwaW5fbG9ja19pcnEoJmNydGMtPmJh
c2UuZGV2LT5ldmVudF9sb2NrKTsNCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gaW5kZXggMDY1ZmRmNmRiYjg4
Li45MTllMjM2YTk2NTAgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+IEBAIC02ODc5LDkgKzY4NzksMTMg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcHJlX3VwZGF0ZV9jcnRjKHN0cnVjdA0KPiA+ID4gPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gPg0KPiA+ID4gPiAgCWlmICghbW9kZXNldCAm
Jg0KPiA+ID4gPiAgCSAgICBpbnRlbF9jcnRjX25lZWRzX2NvbG9yX3VwZGF0ZShuZXdfY3J0Y19z
dGF0ZSkgJiYNCj4gPiA+ID4gLQkgICAgIW5ld19jcnRjX3N0YXRlLT51c2VfZHNiKQ0KPiA+ID4g
PiArCSAgICAhbmV3X2NydGNfc3RhdGUtPnVzZV9kc2IpIHsNCj4gPiA+ID4gIAkJaW50ZWxfY29s
b3JfY29tbWl0X25vYXJtKE5VTEwsIG5ld19jcnRjX3N0YXRlKTsNCj4gPiA+ID4NCj4gPiA+ID4g
KwkJaWYgKEhBU19ET1VCTEVfQlVGRkVSRURfTFVUKGRpc3BsYXkpKQ0KPiA+ID4gPiArCQkJaW50
ZWxfY29sb3JfbG9hZF9sdXRzKG5ld19jcnRjX3N0YXRlKTsNCj4gPiA+DQo+ID4gPiBFeHBsYW5h
dGlvbiBtaXNzaW5nIG9uIHRoZSBkb3VibGUgYnVmZmVyaW5nIGJlaGF2aW91ciBvZiB0aGUgTFVU
Lg0KPiA+ID4gVGhpcyBub3cgYXNzdW1lcyB0aGF0IGl0J3Mgbm90IHNlbGYtYXJtaW5nLCBhbmQg
dGhlcmVmb3JlIHNvbWUgb3RoZXINCj4gPiA+IHJlZ2lzdGVyIG11c3QgYmUgdGhlIGFybWluZyBy
ZWdpc3Rlci4gV2hpY2ggcmVnaXN0ZXIgaXMgaXQ/DQo+ID4gPg0KPiA+DQo+ID4gWW91IGFyZSBj
b3JyZWN0ICh0b29rIHNvbWUgYnJhaW4gd29ya291dPCfmJApLiBUaGUgYXNzdW1wdGlvbiBoZXJl
IHRoYXQNCj4gdGhlIExVVCByZWdpc3RlcnMgYXJlIG5vdCBzZWxmLWFybWluZyBpcyB3cm9uZy4N
Cj4gPiBUaGV5IGFyZSBzZWxmLWFybWluZyBhbmQgd2lsbCBsYXRjaCBvbiB0byBIVyBhdCBkb3Vi
bGUgYnVmZmVyIHVwZGF0ZSBwb2ludC4NCj4gSSB3aWxsIGFkZCB0aGlzIHRvIHRoZSBjb21taXQg
bWVzc2FnZSBpbiB0aGUgbmV4dCB2ZXJzaW9uLg0KPiA+DQo+ID4gTm93IHRvIGVuc3VyZSBhdG9t
aWNpdHksIHRoYXQgbGVhdmVzIHVzIHdpdGggdHdvIHBvc3NpYmlsaXRpZXMuDQo+ID4NCj4gPiAJ
MS4gV3JpdGUgdGhlIExVVCByZWdpc3RlcnMgZHVyaW5nIHZibGFuayBldmFzaW9uIGNyaXRpY2Fs
IHNlY3Rpb24uIFdoaWxlDQo+IEkgaGF2ZSB0byBwcm9maWxlIGl0LCB0aGlzIG1pZ2h0IG5vdCBi
ZSBwb3NzaWJsZSBiZWNhdXNlDQo+ID4gCSAgICBvZiB0aGUgbnVtYmVyIG9mIHJlZ2lzdGVycyB0
aGF0IG5lZWRzIHRvIGJlIHdyaXR0ZW4uDQo+IA0KPiBMb29raW5nIGF0IHNvbWUgbnVtYmVycyBJ
IGdyYWJiZWQgYXQgc29tZSBwb2ludCAob24gdGdsL2FkbC9kZzIpIHRoZSBjdXJyZW50DQo+IChy
YW5kb21seSBjaG9zZW4pIDIwdXNlYyB2YmxhbmsgZXZhc2lvbiBzaG91bGQgYmUgb2sgZm9yIH4x
NTAwLTIwMDANCj4gcmVnaXN0ZXJzLCBldmVuIHdpdGggbG93IGNkY2xrL21lbW9yeSBjbG9jay4N
Cj4gDQoNClRoZXJlZm9yZSBhbHNvIHdpdGhpbiB0aGUgMTAwdXMgZXZhc2lvbiBmb3IgdGhlIE1N
SU8gcGF0aD8NCg0KPiA+ICAJMi4gVXNlIGRvdWJsZSBidWZmZXIgc3RhbGxpbmcuIFRoaXMgYXBw
cm9hY2ggbWlnaHQgY2FycnkgdGhlIHJpc2sgb2YNCj4gc3RhbGxpbmcgdXBkYXRlcyBvZiBvdGhl
ciByZWdpc3RlcnMuDQo+IA0KPiAuLi4gYnV0IEkgdGhpbmsgdGhpcyBpcyBwcm9iYWJseSB3aGF0
IHdlIHdhbnQgdG8gZG8uIEkgdGhpbmsgdG8gc3RhcnQgd2UgY291bGQNCj4gZW5hYmxlIHRoZSBE
QiBzdGFsbCBvbmx5IGZvciB0aGUgTFVUIHJlZ2lzdGVycy4NCj4gSSBwcmVzdW1lIHdlIHN0aWxs
IGhhdmUgdGhvc2UgImFsbG93IERCIHN0YWxsIiBiaXRzIHN0cmV3biBhYm91dCBpbiB2YXJpb3Vz
DQo+IGNvbnRyb2wgcmVnaXN0ZXJzPyBBbmQgSSBwcmVzdW1lIFBUTCBub3cgaGFzIHVzYWJsZSBE
QiBzdGFsbCBjb250cm9sIChpZS4gc29tZQ0KPiBraW5kIG9mIHBlci1waXBlIGJpdHMgcmF0aGVy
IHRoYW4gYSBzaW5nbGUgZ2xvYmFsIGJpdCk/DQo+IA0KDQpMb29rcyBsaWtlIHRoZXNlIHJlZ2lz
dGVycyBkbyBub3QgaG9ub3IgdGhlIERCIHN0YWxsIG1lY2hhbmlzbS4gU28gREIgc3RhbGwgaXMg
b3V0IG9mIHRoZSBlcXVhdGlvbi4NCg0KPiBCc3BlYyBhbHNvIHNlZW1zIHRvIHNheSB0aGF0IHRo
ZSBkb3VibGUgYnVmZmVyIHN3YXAgaXNuJ3QgaW1tZWRpYXRlIGZvciB0aGUNCj4gTFVULCBzbyB3
ZSBtaWdodCBuZWVkIHlldCBhbm90aGVyIHNjYW5saW5lIGV2YXNpb24gdG8gbWFrZSB0aGlzIDEw
MCUgc2FmZS4gSQ0KPiB0aGluayBJIHNhdyBzb21ldGhpbmcgYWJvdXQgfjUwMCBjZGNsayBjeWNs
ZXMsIGFuZCB3aXRoIGEgbG93IGNkY2xrIG9mIH4xNzANCj4gTUh6IHRoYXQgd291bGQgY29tZSBv
dXQgdG8gYWJvdXQgMyB1c2Vjcywgd2hpY2ggdG8gbWUgc291bmRzIGxvbmcgZW5vdWdoDQo+IHRv
IHBvdGVudGlhbGx5IGJlIGEgcHJvYmxlbS4NCj4gDQoNClNwZWMgc2F5cyBpdCB0YWtlcyBhYm91
dCB+MTAyNCBjeWNsZXMgZm9yIHRoZSBkb3VibGUgYnVmZmVyIHN3YXAgc28gdGhhdCB3b3VsZCBi
ZSA2dXMNCihzbyBzdGlsbCB3aXRoaW4gMSBzY2FubGluZSkuIEFzIGZhciBhcyBJIHVuZGVyc3Rh
bmQsIHRoaXMgc2hvdWxkIGJlIGFkZGVkIHRvIHRoZSBndWFyZGJhbmQNCmdpdmVuIHRoYXQgdGhl
IHN3YXAgc3RhcnRzIGFmdGVyIGRlbGF5ZWQgdmJsYW5rLiBXb3VsZCB0aGF0IGJlIGNvcnJlY3Q/
DQoNClJlZ2FyZHMNCg0KQ2hhaXRhbnlhDQoNCj4gQWxzbyBvbmNlIHdlIGhhdmUgdGhlIGJhc2lj
cyBvZiBEQiBzdGFsbCBlbmFibGVkLCB3ZSBjb3VsZCBzdGFydCBleHRlbmRpbmcgaXQNCj4gdG8g
Y292ZXIgb3RoZXIgaHcgcmVzb3VyY2VzIHRvIG1ha2UgdGhlIGNyaXRpY2FsIHNlY3Rpb24gZXZl
biBsZWFuZXIuDQo+IA0KPiAtLQ0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCg==
