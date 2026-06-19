Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MgKQELzuNGqbkQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 09:24:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DCA6A4527
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 09:24:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=qda6f7hy;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC19210E056;
	Fri, 19 Jun 2026 07:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012037.outbound.protection.outlook.com [40.107.209.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E88F10E04A;
 Fri, 19 Jun 2026 07:24:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m8Eo20etClL19S8Pe6otdDqax9UkuRuW9l/FjGxBhk/JHuBgzJmMPF5KwXomeUXdoeT5BGbbDEVe1raUEuJtuPGf2s1TDr1sQEVNAD44YYi0yFO6ZWPQ5VHshe19+Lp9lLpLccEWRTTsUjokRIh2Ec4ZonC/xBPBJRqycGwvrNHQBflIXGA4znqIy9u/2lCLjYyaoZ8ubGlIlXoBRY99u0WjhdQ/otG6XHho+dGjOmCh40jAIhX+ZWQPAytlekOpi3ktSCnny+CSyrLjZWbyTy8bvKFhhdtfv5NaLwAC6lOxnkvcBAnjWQbZiyDnwARsYqgdtQelUZvHmqIK0mM7CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xHwzP0LO7XocUzk+cZaqlEoKqlwdFI8E9rNzFM4e/hA=;
 b=eafFLhgTEtqploLeoFD6ymNGylEcjEopSFNQn/WFq9v14y/1lGamhz1LNE5sQFK0naaEp9bE5TkcWZkpl4SZVvPuoAPAd+mybTsbSNeyq2NzFs7UcyHLHralip39ghHpil8h+Stgdnq3PbwomEPZNJm+PXUPDzKoza6skGD0J96bquOBNPGq3lGGXJRde9XxvHVGBVkr87Rwp2ykR1UfW25DaJ5XztbTVXDINbUr+SA4g1K0QUpnMv/HoOPsSeWeZ2xbSoX2dXNvLbPQEk7ZT4L6siFepty+BRgTuGf+VWZZ61xTuq68GU816ZktcGQCxMkmj4C47cyYaHIOFnrtjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xHwzP0LO7XocUzk+cZaqlEoKqlwdFI8E9rNzFM4e/hA=;
 b=qda6f7hyzdY4rYcC1T2qjowekNroAaz+0E+f61BQJMEpYIrds8lBxAA85lQut2A783MXVNhj7WxXojyoIpMTp/vRFS5+7LtcC7jQGYkfxdpBOWpVQ6vhW1B0DomqLunRYm1jWM/gM+CHW3zu/wCH6Lz7b8bzrHetyf87QFyLdSM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM6PR12MB4252.namprd12.prod.outlook.com (2603:10b6:5:211::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Fri, 19 Jun
 2026 07:24:36 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0113.015; Fri, 19 Jun 2026
 07:24:35 +0000
Message-ID: <605fa2e8-1232-447c-83cc-9ca2dedec4d9@amd.com>
Date: Fri, 19 Jun 2026 09:24:29 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/ttm: rename ttm_place::fpfn/lpfn to param1/param2
To: Tvrtko Ursulin <tursulin@ursulin.net>,
 Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: alexander.deucher@amd.com,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
References: <20260618133908.2761908-1-Arunpravin.PaneerSelvam@amd.com>
 <1544040a-578f-41b0-9660-5a6f470f031f@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <1544040a-578f-41b0-9660-5a6f470f031f@ursulin.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0132.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM6PR12MB4252:EE_
X-MS-Office365-Filtering-Correlation-Id: 162c1bc3-5271-496a-0e56-08decdd3d0a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|23010399003|1800799024|4143699003|56012099006|11063799006|3023799007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: uzIksCZE8g+V7qiFO3pmKMXgdwmrZmYtOWIUlbkHMBvueDuphlooNEcFVnG2L7NKeQpzIIsgHDuZzsPpZH6xrplB19W5KrrQYyZRTPJMo7Jd/2YNuXWw9NbqOsojBsYFxsTc93k8xWMopNbPatgclz0BFzuXrPymd9FeAA6lP5oQhsOY5MxCka57v1oD7V4SN8ZCI8Ojjep0y8mTIpyxUuiArHoefpc0yzv9IsFQoRFDsfklLtfwQI1+LbFmHw4Bf7h568pzV18XXXF6gRRJa2wPuZt9dMUHA4iIY14Vi4y59K21kXFTpvtg/61n+gkfdyIKzgQ9ZrKjUk3t6+mEfD695elYIiNOUQQxz0OTldhh+buXYz7MKpBGhaSA9rQd6cB0M7W/GfSLS77+n3mwiZzvf4ivak0HQOmAg868NDMJ9Umhb38mTZw0iOEOPErkozwlgqupo0+/VPCGKM4WKifjTxj0t8ZD2gYgLX2z86Hz0xNvk+S5kM9RXYiZ3PSPDhv26XGMd3zT862+ow4h1Srmt/mKgForNHg5bRgUm0bsIiXyo3WSt2xHzeAndX80VUXubIYjzK6tva32HX1+Dn1RG/YH27SxeUAx+WgNJO+UeyUufqpygdmdBBogKEsgj2L3lorlMuG9cfAMOJ+3nFw4z7OmLbkj5iKU9TuqBko=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(23010399003)(1800799024)(4143699003)(56012099006)(11063799006)(3023799007)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0RJdVJhVnlDd1JzUW1mbG1WVW0wLzgxR3FIaDh3akw4elRrdFphM1ZoMVZa?=
 =?utf-8?B?Y3NDc0RaRjU1enNvQ1MwbE1hNnFySFZRTGloSlhuSmVLa0tUTjBPTkRsb1ZK?=
 =?utf-8?B?aCtUa0hLeHFTbkQxdVpOeVhzb1F0YldBalk4bnJha3FkVW5DTkR3T0w4bjUx?=
 =?utf-8?B?YkVyT3J4MnZKWW0zdUNVd1c3N2kzTUtPUm5zMTdOSzBSR2NraWtlT3Q3RXN5?=
 =?utf-8?B?R3hlMm5ramlnc2h4S2FhQTF3aHVlbDg0UkxrR3JwcDVmMk1qL09JRXlpL0hz?=
 =?utf-8?B?cXdwNmZBeEQ5TlZDV3dXZzBoMUxIUjBNYkcvbFJMT1cxaWd5SDdqRUZFN25q?=
 =?utf-8?B?QlZ3Q3VkQVhaR0RzV1huN2ZRNG5vYWE5Z1doQjkvTlhCek0xa1l2c2FnK0x5?=
 =?utf-8?B?cE9OdDE1cklrc2Y3eURIc0ROdHAxRG1LYVdBQnZLZnJ0WnJPVGh5ZTlONTUx?=
 =?utf-8?B?eGxVWlYvODRpQkwzUlk2cWZacVNNdFdaM1RXQ3ZuM1JRcnJ2MGlCM0dWc2lX?=
 =?utf-8?B?VG1kNHNZWGtQWFJMUWNpM0lPT2l4MG0rQVJqZzZLU0lIMEpuWmR6YWZMMnpu?=
 =?utf-8?B?aFh0VWphVUFtUmdCYWZvVjAzdlVRTjBnUzlvWngrazRXL2UyZUhncmtZbkg2?=
 =?utf-8?B?a3Vua0kwRXlzQ0pWemZvdXJHNXc3bjh4cDgwUUVXd2VLN1huTS9xcjg2THBw?=
 =?utf-8?B?WllWTXpzeHJpd2J2Nlk5ZmtmVEEwR0dvUnNGN2JQcUFLNkxMZEdZRzN4Umh6?=
 =?utf-8?B?c1lCbFhVVjV2aEFHdW05Vk15NW9TWk5MMTdjc05GZCtVMEV0MUR3SVNueWk0?=
 =?utf-8?B?R3RIUVBlOHpaMURRRmJvL00rZ0lQc0c2andMUDBma2cxMXlldVc4RGovWGE3?=
 =?utf-8?B?bnVHVXBhME5FSlgvWGpHYnpMMW5jN1Rqemw4K0R3TS80aHFRTmwrUUZKZGdq?=
 =?utf-8?B?OS9VckQ2bVVUQTM0WVpvaFo0Q1pNVWIrTkNKTVZFcEZCWVgyYzhUN2l5TVdE?=
 =?utf-8?B?b3dsMWkwY2pKSk1xUnFyektuVmJFdFlvQkEyS0RYNTBEc21hWWFmUXFPTUMv?=
 =?utf-8?B?azZGT2xCS0lOUHR2K29ZUmdxOTkwRDhhQWZpN1NkU0NlYktGN0NWUk5seGJR?=
 =?utf-8?B?NWljRHozeXZqUEZsWG51RUllS1BqY3BQNy9lbm1OdjNkQXE1WmFlaU92YUc4?=
 =?utf-8?B?cHhPUU12UUtrZUZVTzFwWjU5YVlmVFhHV3VLYk1xSjQ0ek5XWDVhdUduM2py?=
 =?utf-8?B?TlJ5SmV4dStvOWZlczdIdGVHWGhNNjMrY2I4emdwS1RqRm9KTlk5T05Fc3Vu?=
 =?utf-8?B?UkI3OTk5SGdMV3RSYnJxd09udkdSdVdkRVlrRytwK0VCeFVuUHlkV2tpRjNX?=
 =?utf-8?B?QkR6aFdwMGNXZlR1SFFhSlJLZFdtK2RUYTVkbzlPekdXRGNRZldzK1hZendR?=
 =?utf-8?B?R3RzQXBTeG1nTWdRU243QTlCajV5d2JlbERZMnVLWnZqSGVHOVVUUGc4RFNs?=
 =?utf-8?B?Tng4d3k2NXBiWTV3ek9zNlAzZVZaNUlrTll5eWNlcFM1Q0pHYms3RWRoQjh5?=
 =?utf-8?B?SDBRL0I0T1VtdzJNKzJMa2V3eFc4OWI3VnlsbU9sYzVHVnZLeW5Ua3NFRjBj?=
 =?utf-8?B?UkpVNVkvbzZPV2lwVnNNd0E2NzdnWGVGWHN4b3E0UE9pUTJKTGg0TUV6T29k?=
 =?utf-8?B?TUo4bTJIM0NqWEdJSlZoYlZFc3M0R29Sb213d01Gb083U0dsUytTdVlsZ0xR?=
 =?utf-8?B?R29JSHNHUHRWcXpvMWxUVzR3LzRlSmptYVNpekhwMkM2TmZnQ1ZTM3Zvd053?=
 =?utf-8?B?eXZpYStsVTJndEhRR3cvb1ZpM3N3ZlBvWm5YV09yUTlCcmMvUTJQRWpzRWxr?=
 =?utf-8?B?U1JWZ0YramFZbWlwYzhqTXNjckpaZVFFMGZCaFU1S0FvN2NjN1pzajEyL0xr?=
 =?utf-8?B?TUZOM1VMMHhocFpUUnJQWDVKRUFzS0NtcjMxbnZ2T2ExeC9IQnhlUlZjQWlI?=
 =?utf-8?B?RHJPVHNyZlhYK1dZcFhFNERSRisxQnY0SmlVTTdPcmI3UDNpQzZjOG9vWkRI?=
 =?utf-8?B?YWxrTzZ2ZEVGcTk2NWVzdnJSejN0TGNWdlZiYWZqdnFpOTN1YU4rMXg5bmFE?=
 =?utf-8?B?U3FmRGhPRFYvSzZRcDJieUZoMEJpN0FxRG9zbUZZMFZ4dGlKVW43T2RaMVZS?=
 =?utf-8?B?NldTQ205azlBak1GSi9YSHNzVTk1cldLaml3dTByOFlEREg4OVk2bFFqa0Rr?=
 =?utf-8?B?YlB3QWtPdmg0VVIwazRta0hxUHA1TEJxKzV1OWMrdFFoQzFORmRtRytOWXYr?=
 =?utf-8?Q?WQRv4J/A6F7WxY58qd?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 162c1bc3-5271-496a-0e56-08decdd3d0a5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2026 07:24:35.7642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7yUYNRBm+gk1UWOK4wpROX1xZjPAWrsYUv1/ztYY448hVme+M7Gi/2hhx74u9G3s
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4252
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:email,amd.com:dkim,amd.com:email,amd.com:mid,amd.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 76DCA6A4527

On 6/18/26 20:41, Tvrtko Ursulin wrote:
> 
> On 18/06/2026 15:39, Arunpravin Paneer Selvam wrote:
>> The fpfn/lpfn fields in struct ttm_place were named after page frame
>> numbers, but they are really just placement parameters passed to the
>> backend resource manager. Rename them to the generic param1/param2
>> and document that their interpretation is backend-defined. The VRAM
>> range manager continues to treat them as the first and last valid
>> page frame number, so behaviour is unchanged.
>>
>> This decouples the API from PFN/range-specific semantics so that
>> these fields can be used more flexibly in the future (e.g.,
>> mask-based or segment-aware placement constraints). No functional
>> change.
>>
>> Suggested-by: Christian König <christian.koenig@amd.com>
>> Cc: Christian König <christian.koenig@amd.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
>> ---
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c       | 16 +++---
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h       |  4 +-
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c   |  8 +--
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_object.c    | 46 +++++++--------
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c       | 24 ++++----
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c       |  4 +-
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c       | 16 +++---
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        |  6 +-
>>   drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c  | 32 +++++------
>>   drivers/gpu/drm/amd/amdkfd/kfd_svm.c          |  2 +-
>>   .../gpu/drm/amd/ras/ras_mgr/amdgpu_ras_cmd.c  |  2 +-
>>   drivers/gpu/drm/drm_gem_vram_helper.c         |  4 +-
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 18 +++---
>>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 56 +++++++++----------
>>   drivers/gpu/drm/i915/intel_region_ttm.c       | 14 ++---
>>   drivers/gpu/drm/loongson/lsdc_ttm.c           |  4 +-
>>   drivers/gpu/drm/nouveau/nouveau_bo.c          | 22 ++++----
>>   drivers/gpu/drm/nouveau/nouveau_mem.c         |  8 +--
>>   drivers/gpu/drm/qxl/qxl_object.c              |  4 +-
>>   drivers/gpu/drm/qxl/qxl_ttm.c                 |  4 +-
>>   drivers/gpu/drm/radeon/radeon_object.c        | 28 +++++-----
>>   drivers/gpu/drm/radeon/radeon_ttm.c           | 18 +++---
>>   drivers/gpu/drm/radeon/radeon_uvd.c           |  8 +--
>>   drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c | 16 +++---
>>   drivers/gpu/drm/ttm/tests/ttm_mock_manager.c  |  8 +--
>>   drivers/gpu/drm/ttm/ttm_bo_util.c             |  4 +-
>>   drivers/gpu/drm/ttm/ttm_range_manager.c       | 18 +++---
>>   drivers/gpu/drm/vmwgfx/vmwgfx_bo.c            | 30 +++++-----
>>   drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c    |  8 +--
>>   drivers/gpu/drm/xe/xe_bo.c                    | 24 ++++----
>>   drivers/gpu/drm/xe/xe_ttm_vram_mgr.c          | 40 ++++++-------
>>   include/drm/ttm/ttm_placement.h               | 15 +++--
>>   32 files changed, 259 insertions(+), 252 deletions(-)
> 
> <snip>
>>       if (unlikely(ret)) {
>> @@ -124,8 +124,8 @@ static bool ttm_range_man_intersects(struct ttm_resource_manager *man,
>>       u32 num_pages = PFN_UP(size);
>>         /* Don't evict BOs outside of the requested placement range */
>> -    if (place->fpfn >= (node->start + num_pages) ||
>> -        (place->lpfn && place->lpfn <= node->start))
>> +    if (place->param1 >= (node->start + num_pages) ||
>> +        (place->param2 && place->param2 <= node->start))
>>           return false;
>>         return true;
>> @@ -139,8 +139,8 @@ static bool ttm_range_man_compatible(struct ttm_resource_manager *man,
>>       struct drm_mm_node *node = &to_ttm_range_mgr_node(res)->mm_nodes[0];
>>       u32 num_pages = PFN_UP(size);
>>   -    if (node->start < place->fpfn ||
>> -        (place->lpfn && (node->start + num_pages) > place->lpfn))
>> +    if (node->start < place->param1 ||
>> +        (place->param2 && (node->start + num_pages) > place->param2))
>>           return false;
>>   
> 
> Not very readable ie. good for ease of maintenance - how about an union? Would also avoid having to touch all the drivers.
> 
> Something like:
> 
> union {
>     struct {
>         u64 fpfn;
>         u64 lpfn;
>     };
>     u64 drvparam[2];
> };

I like that idea, it also makes the patch way more smaler.

A bit more background might help: The fpfn/lpfn parameters are specific to the ttm_range_manager backend, but we are planning to use them completely different (e.g. as bitmask) for driver specific backends.

@Arun could you add some comments and use that approach as well?

Thanks,
Christian.

> 
> Regards,
> 
> Tvrtko
>> diff --git a/include/drm/ttm/ttm_placement.h b/include/drm/ttm/ttm_placement.h
>> index ab2639e42c54..2c38674be102 100644
>> --- a/include/drm/ttm/ttm_placement.h
>> +++ b/include/drm/ttm/ttm_placement.h
>> @@ -73,16 +73,23 @@
>>   /**
>>    * struct ttm_place
>>    *
>> - * @fpfn:    first valid page frame number to put the object
>> - * @lpfn:    last valid page frame number to put the object
>> + * @param1:    generic placement parameter, interpretation depends on the
>> + *        backend resource manager. For range-based managers (e.g. the
>> + *        VRAM range manager, the buddy managers in amdgpu/i915/xe and
>> + *        the TTM range manager) this is the start of the allowed range,
>> + *        typically expressed as a page frame number.
>> + * @param2:    generic placement parameter, interpretation depends on the
>> + *        backend resource manager. For range-based managers this is the
>> + *        exclusive end of the allowed range (a value of 0 means
>> + *        "no upper bound").
>>    * @mem_type:    One of TTM_PL_* where the resource should be allocated from.
>>    * @flags:    memory domain and caching flags for the object
>>    *
>>    * Structure indicating a possible place to put an object.
>>    */
>>   struct ttm_place {
>> -    uint64_t    fpfn;
>> -    uint64_t    lpfn;
>> +    uint64_t    param1;
>> +    uint64_t    param2;
>>       uint32_t    mem_type;
>>       uint32_t    flags;
>>   };
>>
>>

