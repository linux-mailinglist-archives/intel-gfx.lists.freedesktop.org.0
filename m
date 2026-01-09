Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF70D08444
	for <lists+intel-gfx@lfdr.de>; Fri, 09 Jan 2026 10:40:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D3C10E85A;
	Fri,  9 Jan 2026 09:40:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jvkhpq5R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D09FC10E857;
 Fri,  9 Jan 2026 09:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767951602; x=1799487602;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xCH1FSvX3YkbxNHYuF1Buumqb9uihTfrcjVZH8DlJxY=;
 b=jvkhpq5RS1qROUYT3/UJ2MAE7FzU36czDqGmUMNDraEhe5IcgZo1IFN3
 hW6t1GJgdP/1iPLKv1Eif0vt59YW/6bSfkBXhTv7xI06i4OkCW5kFezP6
 a8oZQs2h7j32gn8fJmpx/QJEaGNuaKkyYUSs6vQYrxFSHgUs6SsIzDTfs
 Xfl0TvwD/92rQOd7MscrQ/BHcRyhtAJBCfEecPjhQuUY8Gj7kJpZvXqCw
 xPFWPBlK9UBd+I+LrZAIG0uh+EIi96aWqA35rjoKBR4XZkmDhcmZZ7ouh
 tAmhHzAJgmdHf+IFjgF/BlHUESccRBAaepsWjBx5gEm5KO4n4d6pFmY1T Q==;
X-CSE-ConnectionGUID: LgVbcprDQ0K+ChbjlaqLiw==
X-CSE-MsgGUID: ET0sF6J0SDSmaNbMA7N8hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="68529302"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="68529302"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 01:40:02 -0800
X-CSE-ConnectionGUID: 2mge9EfiRwKyqW5edRa5Pw==
X-CSE-MsgGUID: pKb218+ITgOlAqYK2ZgldQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="203857971"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 01:40:00 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 01:40:00 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 9 Jan 2026 01:40:00 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 01:39:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gbyYy640Q9dfmww4i5IgCzNmeZGb/qgeAUnCgy0YbkBKezs4pWzBdsBO6dcOUnOoNv/jvFE3cpaAVGhk0KZquM7un+4lJv+SEx8L2uaffgdeU3rA7yYfDGLvxDV9NQ1f126YT+fndxgITPwpbXUKCOhhIyORlFDap1Uc5BWi8NJktKVxNTUiq9Rh9/DT2mYcGrpvhE4wPxo2Y1VlfJDe7lzHT3GZs8Oj5ve2xnN8wQZOHlYefBGuYV8t2f2y2ChFLuqxzSbPsEuxH0gZ2z9PGdC0yLXGq4ajD6/FVU0BvX0KIjZr+eC824Og9mquJQB9KvlOI1dHOr+heax2z+bPnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xCH1FSvX3YkbxNHYuF1Buumqb9uihTfrcjVZH8DlJxY=;
 b=vkKFYJU9MjfjBXCOx5pc+htsT0NJ73a/X5VwPVssiL5doQpTPbxUaXfY1lGG3QWNPSXVEn0znFAhllETr6CB3THx6YxmbTs/RbY+CBE5CW7g7ng8KGpaVtbCTf/NjdQdVyPjuwdFwxjpP9e5OhVhuZvHDS9FqDUlKe7tWBiS+DZ7a8nJ2zXDLEQMR8hT5pLYohnlEM394/BVD5Sb0I6XGdFqTASkdGVkMmhekrjBzc5XQJMSuqb/mz8oPpLUAYz1310FwSmN9Y09bkPqPoLDt7EUDtviTDTAYIXTUaxlf28GLbZt6mUM7Lfr9t7sGfGmVVreDWnn6v+/06p5S7xzfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY8PR11MB7196.namprd11.prod.outlook.com
 (2603:10b6:930:94::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.5; Fri, 9 Jan
 2026 09:39:57 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9499.003; Fri, 9 Jan 2026
 09:39:57 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy pll
 dividers
Thread-Topic: [PATCH v2 12/15] drm/i915/lt_phy: Add verification for lt phy
 pll dividers
Thread-Index: AQHcb2nipaN7NernME+1End/o4Sc2rVEtd2AgAPDaQCAAOQ4gIAAWPxA
Date: Fri, 9 Jan 2026 09:39:56 +0000
Message-ID: <DS4PPF69154114F0DE463C768DBDCD086FFEF82A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-13-mika.kahola@intel.com>
 <IA3PR11MB893722B40977A210F1E94BD4E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aV_AuH7hzqOfr8ev@ideak-desk>
 <DM3PPF208195D8D430C5159B9CBAFBC1E50E382A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D430C5159B9CBAFBC1E50E382A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY8PR11MB7196:EE_
x-ms-office365-filtering-correlation-id: c23a67e3-2672-4154-27e8-08de4f630ce9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Mjl3bmxhbXMyZ2p5SldMMURNVG1ESy9nMnZGRTdYOWRFZTQwRmZnMjZJNncv?=
 =?utf-8?B?bWdDOVZZWUUzbHN1OWFvYXhDYkxkOWxKWEV2VzgzTHJBa3pUQXl5ZWZEZSt4?=
 =?utf-8?B?ZjNrTEM3Y0tDNTFRRCs3NzN0bW9xall4L2pxMXZnV2llQmZDdE1QL2tJU24y?=
 =?utf-8?B?dXY0RHRvRkVPUEZuRTNnQk5JOGxNc1hXUWlEODNPcWQvRnJnZEZ0eEVkV2Fh?=
 =?utf-8?B?REFmRldmNU8vc01XZC9UWkFRdHVhVW1sT1dRd0JJTCsvR0Y5YjVlY241VVlC?=
 =?utf-8?B?STI0dEdCS1BQVVN0R1FXTlhIeER4VXZGOFBCZHMxZGEwaE5zRzhrVGdJcEdx?=
 =?utf-8?B?WlhQYlBaUHNhZ1pMeWp1VmYrTmNvK3lTNmFSRFE1S091YnpaRzAvOXNNaXVv?=
 =?utf-8?B?QjY1cmtybE1iMlZDSG4zWUE3N2lYWTE2eEtNU1VwSzAvOXVKQVE0TElOb3FW?=
 =?utf-8?B?UzFGSG14WXpYU1JDNzZsQ04yMGxjbXhYVzdjNXRhKzlnajVGSVdxRCsxRXVJ?=
 =?utf-8?B?UDVmc1kvMDNERG9JdDZ3TkdFSHZtS05DdjVDemZJZE1pSm1lUTVVK09yc3Vm?=
 =?utf-8?B?a2IyNGo3bC9aTjIwaWxRWGx0SjBnUExodkpDOTNucWIzQUYzSnl3ZGN3MzB5?=
 =?utf-8?B?MVJiQzl0S01yVkhIV1c2cFp3bEdxQnk1ZzFMZ0s1a0I0U3U3R09JTTR0Zmkx?=
 =?utf-8?B?OFZsTmIvYTdkRkNnYk1XNVNxcXdVaml0MGw1Qld6QVhOVnpibFhUeHpDWjU3?=
 =?utf-8?B?RHkyL0Z4d2NxMGhzUW80ai9sc1dqUlJocXBKZ3duSHZ4TGdqcy9NdTF6VTJY?=
 =?utf-8?B?TDRDMkN0RzJVMWJQM3dNK2szTkNvTFpKd24ybkZzZ0RIWThKRUd0T2dWVjM1?=
 =?utf-8?B?VDlFWnI5TTRLeE5ERlFhTEduR3hCWTllWkwyUFFYUXJIclFlS0tLelBZWnZh?=
 =?utf-8?B?d0F5TjI2RGhwZzRMWEV2NmVZUUU0WXk1a1d6Rms0M0NLS1BuaEorZjF5Mzg1?=
 =?utf-8?B?YmVpVFNDMEo0aU5LM203R1dGUVdHL05VV1htNVFPSXNYVVpzZ1F0eU9KaUdF?=
 =?utf-8?B?RnFPdmxsSWRlNGg1emhMWDJtL2wxc3d6ZXBDbDRiRU1OYUJvWGZRR2d2RUxW?=
 =?utf-8?B?V1ZDWUFGUmhkQnRMdkJ5c24vZWlkcEk4WmVqajRlaUdOZkwzMTdlQXRBSnl3?=
 =?utf-8?B?OEdwd0FuVkJ2bEJtOFBzMksySG1GZW1UaDM5U3ZKUXo4TFEydVVzR3BHbDd6?=
 =?utf-8?B?YTE3blBLc3FxSTFSNEdQRTNvVldjQlMxSzJ5RzFCODQwTEc4SW1EUnROd0E1?=
 =?utf-8?B?bmpudStKdUYxVjhOUmZ2cEIweUF0TkRnWUZQOHNjanlQcGpQS3dMQVZ2Q2Q5?=
 =?utf-8?B?Z1EzNTZxdUNzaDFyKzZkdXFobnpqSEN3b2hCdlA0bCs3RXROUEpqL3NGdkov?=
 =?utf-8?B?ckFDMzRwWTFJcVVBU2dzZk92YlNoNnVpcDZnYW5BWFZsZ1VaVjIrSnFzZkhU?=
 =?utf-8?B?aFFyUXZJYTRXTzZmQjAzU1doT09lOHNTR0VGcXhHUDZjeC84b2RsOXJrWEdr?=
 =?utf-8?B?NXFRZ04zQnRLbStkWnBSRlJhcVErYnBXMTBaVHJ2VHFabVQrTUFuLzhnM1ZT?=
 =?utf-8?B?dVNVaVBzendsbzBvMGdhS0l3UEdDVUVDbFlBZUNKaUlvUHBneTV2V2xDWWY4?=
 =?utf-8?B?clZlTkJvYnNVSVBNVGdPcU5GT1hEZ3FLL002REltVTJJQkd2aDRjaHcvTkZN?=
 =?utf-8?B?UkRrTTlmUlE1TkFDOEVEMTlwYThJdGIyazYwSVlDWXh0anVxYWlwbEc5MDhh?=
 =?utf-8?B?WXJlYUVVeHRyM2tOL1RTTnU4QnlJRzR3UXh0NmE4MFlFejFWbVZYS0svZ1kv?=
 =?utf-8?B?R0V3d3FPdS9UdGQ2ektUcmc5ZXhsakhJTjNtY1hOdVFzZ0RxQzJnU01LcVdQ?=
 =?utf-8?B?MmJYaTAySHYrektGNjY5S082dkZDbjdrUEZKSkp0a1hnQmhUWmQ2V2J5UjVP?=
 =?utf-8?B?enkvenpMcFdMcCtGa0lWUzIybms2REErMklRUWU5MFVuNmJWampqRkpmL1k1?=
 =?utf-8?Q?Q6qseS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGdiZnc4SXFtdFhxeGdsVlZmam9mVElMTEh4UDNEdGc5TEFBRDlhUkFPYStt?=
 =?utf-8?B?OVRhdXY3cVRsaGd2ZDZQM2VHWGZRK2NCVExYUDVTaFIvbERUcnFncUZGekt2?=
 =?utf-8?B?T1hGcDYyUFJrdzBEQVZCOS9pM2ExNVh1SE1VSWJiUm1XbnJGeW9haEY2Tng1?=
 =?utf-8?B?QkZIaWd1S1J6OFFibHMyeGMrWWxESzd5ZTVYTDIwWXdZNlFDMmZibHc2cVk1?=
 =?utf-8?B?SUczbzR6WUV2UVN1WkZHZ2Z3Wk1oQUNIeFYzYmdjOE1QRWIrWlFBS3cyNkVs?=
 =?utf-8?B?R2lLRzBvaHVvR3lmWnU1NGRMbkxmTEpIcXN0ajdiSjVkQUlOUm81UDZqWEFK?=
 =?utf-8?B?NHE2dG9UNXhjTzYxNmJ3Vk1zRERydTZ2WGE5VkpLZ3VzN1BESG1ycFpjTnFH?=
 =?utf-8?B?UHFkUEwyamxPbWphV05OOGVDZGxBUUxIQmJ0MHdDbVdwbUUzTFMvZmc4QXcx?=
 =?utf-8?B?Ym81NkJ2MHluSTBjSmFoYzNzcjR1K28rcEJ4RGRuN3ZjTzBMMGZnaHNmK1V5?=
 =?utf-8?B?UllMUnQ5WWxyYlBpQmRLYkpXY1RFV25zZ0p1UGNmUVRSY29mU1o4b2E2R2tU?=
 =?utf-8?B?OXlkR09nZ0xleHFIaktCcFhVeEZyK3h5SmN6bEtrTkYvNWlNU0ViR3l6dk54?=
 =?utf-8?B?VVJDUUlwczZhSGpjYW5kNE1lRERBUmRKOVdGU3V3QWsrejU2TDlZNXVZS1ZO?=
 =?utf-8?B?WVJYcjVBdUpNSkdSdnFQcG5MWGFxM0pGamV1Zk5SM0VYRGsyTkZ4UW93dzl6?=
 =?utf-8?B?K1ptbDh3OW8xY1BiY1NPT2FkMHlpdEF0aFFSdGk3M1F1VzdZKzhUNjFCcCtZ?=
 =?utf-8?B?MVhtWVFUZHpXcllVWUJnZXF3RjR2N211V1BrUEtKckxha3A4UzI3eG5ydU9D?=
 =?utf-8?B?SlNkVk1NdzMycnlyVnZvbHl3dzZJQnhIU0RMbGw1Z1FxclZlY1RuWkYrQzVY?=
 =?utf-8?B?Z0syNjVZWDZpWFhGclEvcUtXaTZVc0ZYQnhhQ1AxYWVDKzR3WlFkWi80eFRs?=
 =?utf-8?B?RUxUK1hCSXlSZ1IrWGZRTXhPT0xBOE9yQ2s5YzVOdTRBWFJjNW9kdEFvdDRh?=
 =?utf-8?B?clhUKzhIZjEzOHdrNFRnVG9DRTRCUHp6Z0N6WHZSVXVNNktydE9xb3B4Wjll?=
 =?utf-8?B?cFJHMyt2Zkd2SnpqWXRXRnh4aFBDTnBsNi9RLzFRUVhIQUhFZUpyb1FNei9q?=
 =?utf-8?B?Y3dSUHRWWC9iSlN0YzVnQkVGRUUzbHdWNUdPMElqT3hscG5yTndGZHRVZXZv?=
 =?utf-8?B?N3ZwS2FRV2MwSWhVQzlRclZCWHNUZjNhcW9pK0F6WlhDcUJZdmtWUkgvM3lu?=
 =?utf-8?B?aHJDZU50dHY5aXlObmV6dUViT1B6QU1PVW53NS8zOGpYMXJMUUhtOU1ZZ0Z4?=
 =?utf-8?B?VXhyMDZ1N2pwOS84M0lQVW5aN0p6WGFmQW1CMkVXY2RkWng4R21uMld0enMx?=
 =?utf-8?B?NWxEMHlOUGxzejNOY0FJcHhkZVplK0czNUdBMUpxbm9SZ1FWenJ5V25rUzE2?=
 =?utf-8?B?Rzg3eUZSR0hoWUFWa3VKKzFMME1XQ0ZYUnB4QUdGaUNJdGs1WjFiQ201cStL?=
 =?utf-8?B?a29tQndwUVE4djdMVWd3QjJWZitKOURLUk9UbjVSV3JpaFQ5YjY1WEczUFJ3?=
 =?utf-8?B?cWUxMU1WU1dlZ2NobDVORGpvRTczeXFyMDBuK0ZxWm52eE96ZmdyMWtHS21a?=
 =?utf-8?B?OHdnc1JXcVNIMnhGNjEwbFptN2N3ajVVVXpjekJHV1VYc0F5aXB2cmNEQlJE?=
 =?utf-8?B?NEhLMVNkaEkxS3ozankwbWFKYks5RjNNbDFsSWJ2d0s4bTZPUmo2aFBuL3Fw?=
 =?utf-8?B?NHgrTVlxcElIeEtUU04wQTFkSm5FYzh0c0M3NGhPMVI3VmtsSUtGZTRLQ3Z3?=
 =?utf-8?B?K1FCaGtubUxIcW9HZUdEcnIrblBROVF5elp0ZUxhK3dJdDMrWDFKNEpkeXZ1?=
 =?utf-8?B?bEJnYXptUlhMZVJ6bEhESzZDaUx1Z1lkL253NkM0WTl6NThhbThaL3pLaGZP?=
 =?utf-8?B?b3loZ2tUcGFMdEpkOGZTbWVyblZwRmNtS256TURxcU12WHVnK2EzT1B5V3kw?=
 =?utf-8?B?RVVsRXo1aVAyOWxDZlpFeXFwd1lOV2VSRVJQQWlKY0NvSTNVNHFzM0dFYUt4?=
 =?utf-8?B?N0xCbEFHZ3EvZUpYaE9KZXU4TzVWOVlnM1Q2d2FxT0pjNE9CNnZHaGVsdWF3?=
 =?utf-8?B?czBEaldQQzZKT0JOd0I3ZmlkcFdMMDJFcEptay9pQUVpWkxHcmZSREpaUzV4?=
 =?utf-8?B?NitCZjVSa0R1UDYxTlZBdFI0SXFRR1Y3cCtlU0JPbEh0d2w0WTRFeDV0ZC9O?=
 =?utf-8?B?K3JCdzlxZU5DdlRmNUtndkNnMzVJSUNObkUzckRmelBOS0RrSWRFQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c23a67e3-2672-4154-27e8-08de4f630ce9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 09:39:56.9787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sWvffqN/UqHQigqna53y7Mx2+rc3WVReouNDB4wdwbXqlDDtrIjSSFxqy8Q22fSrrJTJfkI3JOrdh42LUj9MYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7196
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgOSBKYW51YXJ5IDIwMjYgNi4x
Mg0KPiBUbzogRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gQ2M6IEthaG9sYSwg
TWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbUEFU
Q0ggdjIgMTIvMTVdIGRybS9pOTE1L2x0X3BoeTogQWRkIHZlcmlmaWNhdGlvbiBmb3IgbHQgcGh5
IHBsbCBkaXZpZGVycw0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4gRnJvbTogRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPiBTZW50OiBU
aHVyc2RheSwgSmFudWFyeSA4LCAyMDI2IDg6MDYgUE0NCj4gPiBUbzogS2FuZHBhbCwgU3VyYWog
PHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiA+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT47DQo+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50
ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAx
Mi8xNV0gZHJtL2k5MTUvbHRfcGh5OiBBZGQgdmVyaWZpY2F0aW9uIGZvciBsdA0KPiA+IHBoeSBw
bGwgZGl2aWRlcnMNCj4gPg0KPiA+IE9uIFR1ZSwgSmFuIDA2LCAyMDI2IGF0IDA1OjA3OjI1QU0g
KzAwMDAsIEthbmRwYWwsIFN1cmFqIHdyb3RlOg0KPiA+ID4gLi4uDQo+ID4gPg0KPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0K
PiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMNCj4g
PiA+ID4gaW5kZXggZTMzZjZmNDhhNmNlLi4xM2FjZmM3YzA0NjkgMTAwNjQ0DQo+ID4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMNCj4gPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiA+ID4g
Pg0KPiA+ID4gPiAuLi4NCj4gPiA+ID4NCj4gPiA+ID4gK3ZvaWQgaW50ZWxfbHRfcGh5X3Zlcmlm
eV9wbGxzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSB7DQo+ID4gPiA+ICsJaW50ZWxf
bHRfcGh5X3BsbF92ZXJpZnlfdGFibGVzKGRpc3BsYXksIHhlM3BscGRfbHRfZHBfdGFibGVzKTsN
Cj4gPiA+ID4gKwlpbnRlbF9sdF9waHlfcGxsX3ZlcmlmeV90YWJsZXMoZGlzcGxheSwgeGUzcGxw
ZF9sdF9lZHBfdGFibGVzKTsNCj4gPiA+ID4gKwlpbnRlbF9sdF9waHlfcGxsX3ZlcmlmeV90YWJs
ZXMoZGlzcGxheSwgeGUzcGxwZF9sdF9oZG1pX3RhYmxlcyk7DQo+ID4gPiA+ICt9DQo+ID4gPg0K
PiA+ID4gU2FtZSB0aGluZyBhcyB0aGUgcHJldmlvdXMgcGF0Y2ggdGhpcyBpcyBub3QgbmVlZGVk
LiAgTW9yZW92ZXIgd2UgZG8NCj4gPiA+IG5vdCBnbyB0aHJvdWdoIGFueSBhbGdvcml0aG0gZm9y
IGVkcCBhbmQgZHAgdGFibGVzIGZvciBMVCBQSFkgaGVuY2UNCj4gPiA+IHRoZSBSYXRlIGFsd2F5
cyBtYXRjaGVzLiBUaGlzIHBhdGNoIHNob3VsZCBiZSBkcm9wcGVkLg0KPiA+DQo+ID4gU2ltaWxh
cmx5IHRvIG15IGNvbW1lbnQgb24gdGhlIHByZXZpb3VzIHBhdGNoLCB0aGUgdGFibGVzIGVudHJp
ZXMNCj4gPiBzaG91bGQgYmUga2VwdCBjb3JyZWN0IGV2ZW4gYWZ0ZXIgdGhleSB3ZXJlIGluaXRp
YWxseSBhZGRlZC4gU28gcGxlYXNlDQo+ID4gZG9uJ3QgZHJvcCB0aGlzIHBhdGNoLg0KPiANCj4g
QnV0IHRlc3RpbmcgRFAgZURQIHRhYmxlcyBzdGlsbCBkb2VzIG5vdCBtYWtlIHNlbnNlIGhlcmUg
c2luY2UgdGhleSBkb27igJl0IGdvIHRocm91Z2ggdGhlIHRyYWRpdGlvbmFsIEhETUkgYWxnbyB0
aGF0IENYMCBnbyB0aHJvdWdoDQo+IHRoZSBjbG9jayByYXRlIGluIGEgd2F5IGlzIHNpZ25hbGxl
ZCBqdXN0IGJ5IGEgc2luZ2xlIGVudHJ5IG9mIFZEUjBfQ09ORklHIFNvIG90aGVyIHRoYW4gdmVy
aWZ5aW5nIHRhYmxlIGZvciBIRE1JIHRoZSByZXN0IG5lZWQgbm90DQo+IGJlIGRvbmUuDQoNClRo
ZSBpZGVhIG9mIGNoZWNraW5nIGFsbCB0YWJsZXMgd2FzIHRoYXQgaWYgdGFibGUgZW50cmllcyB3
aWxsIGJlIHVwZGF0ZWQgZm9yIGFueSByZWFzb24sIHdlIHdvdWxkIGRvIHRoaXMgaGVhbHRoIGNo
ZWNrIGZvciBwbGwgZGl2aWRlcnMuIEFzIEltcmUgbWVudGlvbmVkIGFscmVhZHksIHRoaXMgaGVh
bHRoIGNoZWNrIGNvdWxkIGJlIHBhcnQgb2YgS1VuaXQgdGVzdGluZy4gRm9yIGZ1dHVyZSB3b3Jr
LCBhZGRpbmcgYSB0ZXN0IHRvIEtVbml0IHdvdWxkIGJlIHByZWZlcmFibGUgd2F5IHRvIGdvLg0K
DQo+IA0KPiBSZWdhcmRzLA0KPiBTdXJhaiBLYW5kcGFsDQo+IA0KPiA+DQo+ID4gPiBSZWdhcmRz
LA0KPiA+ID4gU3VyYWogS2FuZHBhbA0K
