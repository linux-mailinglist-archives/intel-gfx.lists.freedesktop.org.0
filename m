Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKGzCMDwDmqmDQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 13:47:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A022D5A4370
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 13:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F0C10E196;
	Thu, 21 May 2026 11:47:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AXmaROJp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C39BB10E196;
 Thu, 21 May 2026 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779364029; x=1810900029;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kqr0z+Xpou9XH7zu8VaVQLxnSexAh27KM//Ajkv9UXQ=;
 b=AXmaROJpD6XkcOsCEJ5c/qOZJ6mjbBggIYlS9090Mf6ZBXz9b2C2j90G
 k7pH5Fx/VCBSKfTXlSsU9/3zXS/gH0eFlTYjGcapMtnA3A317GeWximxc
 o6aZ35mxzA6HOxTx8vYDPfwCHpg2Be63r8P5QUWLI/VB2zzMJ7EAkbKsQ
 D3aLlxvIt4e5stwYjm9uNDoZnSZ74yzUdzj9ufxpUpZxfdp4RrQJaw+1+
 y0cYNULBXyFE2dkcjQclQxI6Mk2KY8RXcn8//U1R8RVlnHzDSl4/owME8
 m0WqiOZlrs+ymFYYA2OhD4E2N6CGuKZnlVnedEtFtlNFKQxcFgX6XLj07 g==;
X-CSE-ConnectionGUID: QiBCk+1HTvCqxFTj3qxn6g==
X-CSE-MsgGUID: rN60s4qTSsCPi/daHgJPXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="90854328"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="90854328"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 04:47:09 -0700
X-CSE-ConnectionGUID: p5JyJyxxS76YQmwoTfLGhg==
X-CSE-MsgGUID: RBoVvdIQS5CIwhBhe/M+0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="237480399"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 04:47:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 04:47:07 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 04:47:07 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 04:47:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lDiUcSHeFMzaGmGfF3hSXnk3S7OOYN+eioGjqxeTTFm5nFkYK8j6iV/dhU8vr7otiqbLz7Rpj+PN4jNT7eGgTaIyOoPmhNBPt17AoU/ztURd9FfesNSgbqnIojysuBRVa5G69jicFVhITyHbVjKRNlZ1bf5CJrXrnD6qOmgUG5QoyM5UEwGnAjE5IywLBE+h9kX+IUjroKzCk+MPgUhytR3bcbj/yYhUs1fMsSni0t2h1ijTD0O9N1KMwAVeoOFem/R4hPugA1qxMKTlZakjhvOhGj5zRQoBdpliU3jwXRQ/hczc9H+Wx3iSSAvqKhSTRPaDz7SfdyAPgqMeB1xtXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vNawfrGAsF6IYnXID1Am08LSdR1D4fm7mNxqg0ITuMQ=;
 b=nLIWH3kXKxLDYDg0HlUeCNKt5O8Q/zPk2Ae7POafkHQAeJlz6dgQq0Zbg5ZwIqzbvmnmWxaqMVAtZRCfNtajir5BXoSLnL4uLQAE6EjH8XpNCmHL5ha31BwzKWAyh9tN2gCn6VN94mHttns5wF9StiJXDBzqOn8TgYcVAkLo9z99ukqJX57WZT2fUkGdUD0staYtUySDX9aWafib8/DtK71zj1iCN/qPAPGu7m4KyknlCLkHN6B7TwpDku7deTtkfsPFJx7ipLyoWFb18H27kETn1E6h8vHIMujlJYwzx73RgCooWE16wD4HrNajXZNb4BhC+uT5IXyw1s+GZN/xSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by CY8PR11MB7244.namprd11.prod.outlook.com (2603:10b6:930:97::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Thu, 21 May
 2026 11:47:05 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 11:47:05 +0000
Message-ID: <30d795ef-ffb1-4369-a814-7b60195386e0@intel.com>
Date: Thu, 21 May 2026 17:16:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 15/16] drm/i915/cmtg: Restore CMTG after DC6 entry
To: Animesh Manna <animesh.manna@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-16-animesh.manna@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260513163857.1541888-16-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::11) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|CY8PR11MB7244:EE_
X-MS-Office365-Filtering-Correlation-Id: c3307e4b-a8e2-4b0a-6fe6-08deb72eae3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|4143699003|18002099003|56012099003|11063799006|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: JwutH6UER5GwIeAMfpHnjyg0VRVHng/Id90ggJrQpmOH8KMyXedFJZQEjyLY/f3QeSJHdr5JOq2LNrTynuGisWWY8vOqBwmHZ0J900CgDecozwk4xJbf11iChGI0pYMKpsbQ/sHCICtQ2OPDH9kfAcNu0fYpm5k6G5+DfacdtDHHxKCjQhdcocrWkeo5e9EEtQgpfAl3PbHUKehXdDEhjr9XeRTfH3q/sVvsyZ1XPiqGno8nJkiwMfvBe8kSqkFkBNjz/kHxG4jLAugIkt5CWjuT7Fg//F8N2NEhkjCvPVwsYheWE3HtRqNAKxNSFrI207OcKidRAN1PSKRaeh92/OuDufH25nBjC0pFSSz8nhEPzNTIWjXmVBJgUYqacci3oTcbggJm8XEn5hTUlnippmVYqBcenFAWd/z6cy50KJ0t2VMrOYqJn5Zg7a81wq5i9bPQyLpte4tSmZsaY4QJS3DldEOq1NEsN59tYlZTb9p7kAD6uEL863p1ZW8GODqdU3A1Mi1RCtMQozPvbjptv+8QU25pe9TcAtJz97Ejz+Yjzshe3d+5zVKpDLxQqzgSQh+b40lAuaFBfQyuq9kcjWhTOojVYBszt3lvDTv14nx5Wqu9LEsaBm0bVJguKeq1y9CJswzUrLpzymbXlkN53EOI19AovqTL8+q9BSx96/OEVnP1l+JX+3Aa7U3+8rcR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(18002099003)(56012099003)(11063799006)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnQ3aXZNcWd4RFVUbVdycVJ5Ti9VbVI4Z09ENTFrS1NDLzJWTFV3MjFaUzhE?=
 =?utf-8?B?YlB0RE1GNSs1YkIwMTVkUDJqRk5HV01aRTA3V2E5S3ZJOXJ0SENib3FlQjN5?=
 =?utf-8?B?VWw3blZXL2ZoVkNMWXhLN3Q3dmV6WXdndU5wZlVkd2NSY05FL2dOUHR3bjZm?=
 =?utf-8?B?V2dpdTB3NndtdXVXMXVwaGtJV0lvT3cyWDk3eWYwUEFtSjBYK3p2ZkVreU5i?=
 =?utf-8?B?Q1ZNTVZDYkNUYm5BMEVKV3VGdjdnbUNDKzIxc2dVT0dDR3VHTlA3SmN6Tnhs?=
 =?utf-8?B?aGo3YXFMY3FUdnBacCtmeXZDSXlKd3ZyMU45Z3VuSjZOSDhsY1FKYmZGQmww?=
 =?utf-8?B?Y0NKWTVoLzN1OVBqNjFZeXp0SmhJb2dRWERkdUhvR2RGNTRVYUV5QkdqL09O?=
 =?utf-8?B?cmVYS2ZHVHM3UmgxdzVhQkZBaTd4YmxNNVU5ZEt1Vis0OFg2RFBFbWIzeWVO?=
 =?utf-8?B?dnNCTm1sQ0gydXhqQm8wODVOK0NkZWpURmxMV3RpdlIzTnRCam9ka1R3QlNL?=
 =?utf-8?B?cElSN0RRVmI2ZFZtMzhjS3pWc2VSOGM5cEh6WitiQ2wvUmRwbFUvQnlHSEdm?=
 =?utf-8?B?NjRxSDBNOEE0dXFTRzZSQmkyRWNXUjVuQ0xMeVZDcU5ueklOVjlFVlhndGJ2?=
 =?utf-8?B?a2JvVkluQndTZTZBNkZGTVdVOC9iK2dhWWZJZ3hXU1ZCK0puZ0RoUHg0U1ZM?=
 =?utf-8?B?cEd3VlhTTlBVbW9ERGhNQVQrZnpvQjBKenhMeW9wdHcyTUgwRXBrdTJ0YWZk?=
 =?utf-8?B?cmx1VEFsVzVUNFkzdFVLVU42WTgvcHFKQ0s4MVBIaTRIcjFHQTJ0U3MyZEQz?=
 =?utf-8?B?WjhQbStjdk1pOFAvQ3VGYTRjNmpwNU5sdG1rNWZqbUQza3UyQnFIUjV1SzRy?=
 =?utf-8?B?V2EzRENSemFQc3BMZHQ1VU1QVFk1ZldsWjJlNVVnaTZieHdpQVE0NmROTGtJ?=
 =?utf-8?B?U3VKSXdWWTVvWVVySmhEWldpaHFmZTVBcWJoRnNMaHFtWUlvVUphZmVsM3Mv?=
 =?utf-8?B?SkxxMEtodS9hS041UG44TUtSZGVxUGRoR2trOHo4MVlGam5rR0dCeWV5V2pk?=
 =?utf-8?B?OVkrUWlnYnl5VXNNSUo1UUFIYUxJT2lOT2M0TVpzKzJOYlB5WGg0NW1GOGQz?=
 =?utf-8?B?MXE0TGhaUzI5WDFYQUw3R3FQdytMdGZMbk0zR3lUVUpPM2pWNEJ5RUI0MDg0?=
 =?utf-8?B?ZXN1Y2JCa1lidDFmL3VwK1gzeVZOVDJndTBJellIeXJmWlV4U285ZVJmejh3?=
 =?utf-8?B?QkZaUUdpekVkejUwMXJIeHVmeHNxdVpDTE5HL2dRRGNwazJaelQ2YnAvYmJt?=
 =?utf-8?B?N21TOU9PU3VHU1dyd2h6ZTJqS0xZRVByem5DYzlEMHI5WmhVclZ4aUxBYWJm?=
 =?utf-8?B?UC9qWldzUytvN1BDdTVoeTZEbVZuWlcyZGdxNjZORzZwdW41SEIxc2EyVk5j?=
 =?utf-8?B?WU0zT25oYnh2UDdTUVRMT0dxQUt5eDNiemRrVGJMTXR1NThpekxscTgzbmNT?=
 =?utf-8?B?RDA2STJuRUNSdHhremttK3VtWUZvUVRWWVNVWHNvMEh6blBVWG9taHlONTg4?=
 =?utf-8?B?dTl2K210M3FGSXZ2Y2xLbHdiTFAwcVRUK3hibno4d3dOZWZYbUtmMGY3K0ly?=
 =?utf-8?B?L045MHJYTlRjS3FQZnJIVjBOdzQxYXF3Q3E3NU82WVo3RDhKNVJzbU1XZ3My?=
 =?utf-8?B?dFc1UUlHM3NLb1ZoaStCVi9IYUJPWFJMakhRaXFlRTZUZGRyVitmaTNMU2ZX?=
 =?utf-8?B?cnZPN3hpcm9ibVdGaGY0Z3hUYlNXelhZOEpsRXF6blNxcDVFTjQ1QVg2UmZk?=
 =?utf-8?B?ZmNsSEc4R3o3VWkvZ2NJN1RkWnNwUTZLUTZDMTI3N3l4N09GZ2hUeWd4bjNk?=
 =?utf-8?B?UnI0d0VJaWN0a0xGNUZ5QzdyTnIzRUNtcmdRR1JuYVZ2dm9WTkgvM29ZdzYr?=
 =?utf-8?B?RndoUUtwcFNDNDQrSlF3UHc1OUVBRVYvUzNvZE12QjVUdURsOFdZQ2pqUjdX?=
 =?utf-8?B?MUFBWlVabk84ZWlWbE5BaEtVVHlTOTdENENxNFJ4eTFoWVZlVjBVdVIxRkNl?=
 =?utf-8?B?VUVsN3Z5UlE0eXpaRnlGdkora0JkOTJ5dWhmSVJVK1IwSUdBdGNubmxjbHEr?=
 =?utf-8?B?M3FMZG9ZY2Nncyt6NkkvY0RuOVRWck9ZdHJ6NVJKNGJvUVltZnlUQ3p4ZmEr?=
 =?utf-8?B?WmZ6cFJZMEpaWkkxUE45bDhITzcraGxLQUphMWJMTnY0MzJwSTNJUm1yVlZQ?=
 =?utf-8?B?L285UW14VzN6bEJVMVJORHNyTlY0cEhFaktDMnFKbGtaVGw2K1JiRXVlTGJ4?=
 =?utf-8?B?MEEwT3l1WTdDMFpXb3JtTlYvUXF4YjNkd3hmdng5cUdxRWhTMWtjVGIwb2lo?=
 =?utf-8?Q?aIqMXU5uPthYZ5jfoI45RP+S93yWmxsi4lsACD0kjqvxk?=
X-MS-Exchange-AntiSpam-MessageData-1: EVMMJ/ES4pRmdw==
X-Exchange-RoutingPolicyChecked: cP42U3944AWdbqSNRna01wLXZvmzCUNVaXhIJigNcFPpOGQXoimSN/dRYF/aGl0Hnqb4YdOtaIHYR/foaSsTN6rTYTUof/0MiDtYSt5TRdmyJ9ZTT73XEAQ1t+BLKK5UM6S7Czx7ZcJc1DmRBVUfSB6CnF8FFh8l+jSrZ53yL/1b6o+n8BhtR16WM8BlI94Y+2rdJKySeqUS/b7eXDUJl03bmade4B5pRJdmcpeBSXT3N7ZjiJDccRcAQ+CxyA4sM4YGUQ5yTOwpUNB3zLrLypcnAVnZinA9nT/Hh8Ov+idu9rMdOO1Szg5gNtWvufhGrTOPTnkl+YHMJWbgRkQRBQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: c3307e4b-a8e2-4b0a-6fe6-08deb72eae3f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 11:47:05.4511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dUI7CzmPCUXDkxKxb1gzunLeA4xXmKn+Cg1+0zowgEmlavy4ZMm+YgMbwiqEfD5VTCSb8qJcCNuqVxgC46EUGOUdi0zBboKh3cSEcEemkmt6qzyzaQCF5QymcWxySMTH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7244
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A022D5A4370
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 13-05-2026 22:08, Animesh Manna wrote:
> Restore CMTG registers after DC6 exit, as they lose their values
> in the low-power state.
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++-
>   .../drm/i915/display/intel_display_power.c    | 25 +++++++++++++++++++
>   .../drm/i915/display/intel_display_power.h    |  3 +++
>   3 files changed, 39 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6dc561713c35..324a2c722422 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7544,9 +7544,19 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>   
>   	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>   		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
> +		bool dc3co_to_dc6 = intel_display_power_get_dc3co_to_dc6(display);
>   
>   		/* CMTG needs to be restored on DC6 exit and on modset*/
> -		if (modeset && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
> +		if ((modeset || dc3co_to_dc6) && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
> +			if (dc3co_to_dc6) {
> +				intel_cmtg_set_clk_select(new_crtc_state);
> +				intel_cmtg_set_timings(new_crtc_state, false);

In the restore path, will the `lrr` argument always be false?
In patch 4, the same function is called with `lrr = true`.

> +				intel_cmtg_set_vrr_timings(new_crtc_state);
> +				intel_cmtg_set_vrr_ctl(new_crtc_state);
> +				intel_cmtg_set_m_n(new_crtc_state);
> +				intel_display_power_reset_dc3co_to_dc6(display);
> +			}
> +
>   			intel_cmtg_enable_sync(new_crtc_state);

As this path also executes after DC6 exit, please also follow the BSpec
CMTG enable sequence for the PSR2 deep sleep case.

CMTG will not start running until PSR2 deep sleep exit completes, so this
sequence can fail here for the non-modeset case.

>   			intel_cmtg_set_hwgb(new_crtc_state);
>   			intel_cmtg_enable_ddi(new_crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 80ecf373fb19..a0ea46895e2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -285,6 +285,27 @@ sanitize_target_dc_state(struct intel_display *display,
>   	return target_dc_state;
>   }
>   
> +bool intel_display_power_get_dc3co_to_dc6(struct intel_display *display)
> +{
> +	struct i915_power_domains *power_domains = &display->power.domains;
> +	bool ret;
> +
> +	mutex_lock(&power_domains->lock);
> +	ret = power_domains->dc3co_to_dc6;
> +	mutex_unlock(&power_domains->lock);
> +
> +	return ret;
> +}
> +
> +void intel_display_power_reset_dc3co_to_dc6(struct intel_display *display)
> +{
> +	struct i915_power_domains *power_domains = &display->power.domains;
> +
> +	mutex_lock(&power_domains->lock);
> +	power_domains->dc3co_to_dc6 = false;
> +	mutex_unlock(&power_domains->lock);
> +}
> +
>   /**
>    * intel_display_power_set_target_dc_state - Set target dc state.
>    * @display: display device
> @@ -320,6 +341,10 @@ void intel_display_power_set_target_dc_state(struct intel_display *display,
>   	if (!dc_off_enabled)
>   		intel_power_well_enable(display, power_well);
>   
> +	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO &&
> +	    state == DC_STATE_EN_UPTO_DC6)
> +		power_domains->dc3co_to_dc6 = true;
> +

This only updates the software target DC state and does not guarantee an
actual DC6 entry or exit.
If the intent is to detect a real DC6 exit transition, then
gen9_disable_dc_states() looks like the more appropriate place for this.
I can also see existing PHY restore related comments there.

>   	power_domains->target_dc_state = state;
>   
>   	if (!dc_off_enabled)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index d616d5d09cbe..ce1225bbc789 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -138,6 +138,7 @@ struct i915_power_domains {
>   	 */
>   	bool initializing;
>   	bool display_core_suspended;
> +	bool dc3co_to_dc6;
>   	int power_well_count;
>   
>   	u32 dc_state;
> @@ -183,6 +184,8 @@ void intel_display_power_suspend_late(struct intel_display *display, bool s2idle
>   void intel_display_power_resume_early(struct intel_display *display);
>   void intel_display_power_suspend(struct intel_display *display);
>   void intel_display_power_resume(struct intel_display *display);
> +bool intel_display_power_get_dc3co_to_dc6(struct intel_display *display);
> +void intel_display_power_reset_dc3co_to_dc6(struct intel_display *display);
>   void intel_display_power_set_target_dc_state(struct intel_display *display,
>   					     u32 state);
>   u32 intel_display_power_get_current_dc_state(struct intel_display *display);
