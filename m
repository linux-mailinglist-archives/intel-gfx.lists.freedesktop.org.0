Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JuRxLh/VVGoMfgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 14:07:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FFC74AB99
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 14:07:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=yPvXr7XC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A710110E93E;
	Mon, 13 Jul 2026 12:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011026.outbound.protection.outlook.com [52.101.57.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81CE10E93E;
 Mon, 13 Jul 2026 12:07:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=neWSdib4jXUqW09MetSBotp53eKeMg96N0fADWk+AD3Y4vNdmhEyVhIL+i17OHZc9end0EBQr9sLL97S7UmNGUyqJhXz4USz16tNJgppe7zD16pof4RGTFurkHyfYMxGGR2w5qJjVXySQUUtsf0J20gjEz1k7eVo+BeplapOBifLG2q6HtLyYbL4IjSwqjCz1dGL0pHbQz1baVfX9wvZhtee7ajyeqCgYfdT5jSlNglmnmLMAC+vCgou5DQbAxgYFF6aVR1zHwF0FlbQpS8zzTeRWhNePWau+FJpLwz+kqGmpmDtBiqg6EOze+e4DDPMxacUStieeYIRP0Zjwl0VsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XTaAAxO5hBpZIFEqVe+LZVXPw5tha+HsJvlBRYleHJU=;
 b=YCbmLu5+bBLSb6Ms/6iu0HTDcgPoX29RVeCTssK/TxJGd0aal1xJNzrvnVRM9AermBDS8U2hwXBpQXszht3S7K4eTsONL6iJLkJ1eNwpQSmhnwioZhGHlWS8pu4HqBEWV9twKrsr1TNaaJCt/B72BMmZ1p5YKmwco7akhGde+Oc6IFiAuOD2I45J0eTRiRj27sa98uxsPQNCprUMWtkjZzgpOuYCvWrCiJuTEUKcDu8MxRsbIIKm7wXtvYTGMYWmk+pokjj8D/me85LStdR7WcX55VgWEq1jn2MwJABnFhu4olJqtf73jRblm1DBsBbPrjY/jHGRuUJw+IFwKQnT0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XTaAAxO5hBpZIFEqVe+LZVXPw5tha+HsJvlBRYleHJU=;
 b=yPvXr7XC/bNa4o+WKGdd5R4iraS7bqL7n7jz1QFQtMBdbnaEwA3zyr2PKFoy+I5UgnI97b2MWGSpe32MgEx5b/DNQ1diUaDAo1KpLqO2L6cgF7hx03wQ3iTyzalmwdV76NibbDEAsDToWT3f1sUI/oXPPbDp0ge04Td8k5bEsSA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ5PPFCD5E2E1DE.namprd12.prod.outlook.com
 (2603:10b6:a0f:fc02::9a2) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.12; Mon, 13 Jul
 2026 12:07:50 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 12:07:50 +0000
Message-ID: <bda9ac0e-cca5-4262-94e1-d048c470c3af@amd.com>
Date: Mon, 13 Jul 2026 14:07:44 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/12] drm/exec: add drm_exec_lock_resv function
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dakr@kernel.org, ecourtney@nvidia.com, simona@ffwll.ch,
 matthew.brost@intel.com, nat@pixelcluster.dev, airlied@gmail.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-11-christian.koenig@amd.com>
 <0cfc1913440ce8f19f715f5df7faa23dc1164755.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <0cfc1913440ce8f19f715f5df7faa23dc1164755.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BL1PR13CA0339.namprd13.prod.outlook.com
 (2603:10b6:208:2c6::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ5PPFCD5E2E1DE:EE_
X-MS-Office365-Filtering-Correlation-Id: b7cb5539-8809-4abf-bb6c-08dee0d75c27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|7416014|376014|1800799024|366016|11063799006|4143699003|56012099006|18002099003|22082099003|6133799003|921020;
X-Microsoft-Antispam-Message-Info: +LscVOL25I4Lll6z3HJPlaYdyCsQFKS5giITvkwhMYUKsbnoeTHOXlowd/tJJs54Dv0H+qI7jWOLTnaccbnd94hFNdmqADWNUBdovqpEy+U7dRwmK82erjseW8uoj7MDCn9wQP0XFkwYSnnpSPjhGsBoUvtrR4qCJcgGoYi7Dk3pXYD829VXOVbX6Otv36OYLoaVHVg/xNSVnpdhjRbQouqTAyeB3NImNidT45rK7venCMs8T1ksZkAoheBlFUqK7oou5XAn2jTqhZLsizVOsRdxdXt6KQXRyAdj057lsKaZz0SNKCauWeiAk4IotbedilC/MniCUHZ/XT0doIPaLmCNoEf9UYjaGXIcp9s7Y9+CkdyYozQ166FO2e9TLUZJtNA57R/4kh0zpKrzJe42SeZGb/ML7l+H+2eKUvc6GC0zWFX9FyzY2dJAx6bhscMzWe84DLf4LkshWHVH74W0i35sAEywr28sra/BWvv9FKglRFiphzS+u4a0ppZc+I7uqfbqHjYE+KSH+9zI/G6L3Q82wdeYBNab1WhbPVqL9IenRkl8UxoS2nBI/ooKLR1x73eiIshUIVkI/6GINzqTXr//4eVNaG+6zoqq3yPBmgcMKl1/Fai+lWTFAtdAE3bEwQ/rXeAgt0BLtpcBscJYkUsdLa2tKLWclXRowEPkZiOIszeoQzPNTsnCgWhYFMHP8OCAYDG22Wef1NTWWuws1Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(7416014)(376014)(1800799024)(366016)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003)(6133799003)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXhzc2tFSHlhbmsxeVFnV1hvaDdBbTdlQUZzaFdQTnJZT2JacVRlbFk2cE5J?=
 =?utf-8?B?eUVCdXNReG1hRVVBOGI1RFR0dy9NTFpqQ2xMNkYwUVR4MTEzOGQxcmZsODRE?=
 =?utf-8?B?Qnh0SEU3SDZFNjU4aVBQMWR0VWNBUkM1dldBZHJ3c1JpQzhqcnhlZUg4TUhM?=
 =?utf-8?B?SkRmeW0wZThRcnNzanBmMDlSOThVRTNSSENJUHo5elk2U0VMTFNYN3lLRVRC?=
 =?utf-8?B?VURpa2x2RWFCTmozWEMvMFU1MGJMV0NveUNTeVI5QWxRVTZENU1MQkJDRFdT?=
 =?utf-8?B?WkhSS3YxczBwNm5IOWppU2VsQTg0VUw1M0dLODZhQlNiRDBHRVlEMXNZWm80?=
 =?utf-8?B?dmtteHVmVHVCSGduMlMydld2ZGhGT1pQcTg1N2Zuek14VTZram5lTGhhZWJW?=
 =?utf-8?B?SVUrOGFISjZ6NVNlMjltd2ttVHQvYTZqRFdkcjdoRFY3b1NoMGVHbGdHRDBw?=
 =?utf-8?B?K2p2c3lHNDVCQTZPU3h5K3EyZlZOYUdsUklBWEYzYzdxd2h5WGVpSHp5VWoy?=
 =?utf-8?B?MGdEV01ydDY4UnVTOTYreUl4N3lvQVo4VzB4VGJVeS82K2k0Njk1b2JsNU03?=
 =?utf-8?B?SVZvRUVPZjJvUVlPYXZCR1B4UFIwc25kaXhpL2N3SUdxaGlFVVQ2azlodXhJ?=
 =?utf-8?B?YkFTaWdHWnNFSE8vYlZvSGNzMTlkRnF1NWJ6Qy82ai9XQzdDSzJ0VUplMmt3?=
 =?utf-8?B?NjdWaXhmbEhHeXZQM0huOWpJTVc5RGh0Nk03d3F5US90R3V2WFlJRXdMRW05?=
 =?utf-8?B?OFRDemJ2QUZtOG1kbDVHNGZwd3owczgzTXQxWUhYLzhFZk9xY1JWeXAwOEFU?=
 =?utf-8?B?RVp1cEdpMXhIYVUxLzFSaTd0Q0xvTkpzV2hKWDhYdHBvSTJFNFRBZnd3cytB?=
 =?utf-8?B?TjNDZkpQOFc1a3FxZzE0YllvQVBDRHNyWGJHQWlES3ZtTVFIaURlQzJIUFh5?=
 =?utf-8?B?eGg0a2hLQmJ2RE9mMjFlNGdablYwK3diRTc1aDVMYWMvU2ZyekQzNlVCUklk?=
 =?utf-8?B?d2c1YzQ5UHR4YW5vQ3VralMrTzI3VjNFUnV2dVNoblNZMWw5K0JoL2ZqNHow?=
 =?utf-8?B?Z09OTHJTbjdkbDBmOFRoQXJlcitjSzRNR1U4NFF6b1FBZlJCS2hYSW9zZTVF?=
 =?utf-8?B?blp5dUVZRFZITE5pelh5SktTRU5mbzdOWHhjZTNnNGdiU0pZdmZvWktwOTVo?=
 =?utf-8?B?Uml2dWtkTzNNS256ZnprbHdreFdYdlNCUnF0V3IwMkFJT21TUUkwdDd0dzdV?=
 =?utf-8?B?Z3hKbTRZYVRwSzg2N2xHM3hjdUVTRHhOSGdpaWlhRE05bGZLOEdqdkE2dWov?=
 =?utf-8?B?Umx0MjdDMmZWc0VKZVhCeHh4OGpmSWFKYW1nbDBQcklpblMzWTMrVGpSN1FF?=
 =?utf-8?B?aFl6ZUxiSjRsVm5vdG90MDlhQTg0bk80QjZtOHJHV3BFK296OTJCNTFEbHJz?=
 =?utf-8?B?MkZnMTFtTDRpWkZhV2c0ODltOTQyL2Fud0tpVWIzeXNJTTdPRWRVUWRROUUz?=
 =?utf-8?B?c0xPYzVnL2hHWFlGeFNIdExhbkZpUWx2OUZ5TGJZTDZ1ejFCdG1qYmhrSi9Z?=
 =?utf-8?B?OEYzSnRmZjU4ZG4wRlg0YmNiOUZWQW1MNWRidE0ydVk4VkhRM2R4enlrYWZw?=
 =?utf-8?B?MHFRSVV2UXNtVzBuSmVNRC9BV0VYeVNwVnEzYnFwYUFtL0l2UU5YUHRSYm8x?=
 =?utf-8?B?RVduekVDSHA1SCt4ZFBHSEhvK1J6U2ZmdHhzUjJSd1JtVkhqTm9GMk9JRzlu?=
 =?utf-8?B?MW1DZExPMWxLSHlWYlFhUjU0eFNtRHFUWS9BbXB5MEF0V1IyL0FsTVdhYjdG?=
 =?utf-8?B?dmhxK2M1QnBWTHBsdXZ1OTB2SHlweXZOZVZwZHphL1IrcmxPaEpqZi9QNFpY?=
 =?utf-8?B?elZYbk9mVzlrVVk0TDF0U3NSNkQ4R0FldjY3QUl2SWh2Q1crTzhzRjN4WG9W?=
 =?utf-8?B?dy9FL2VtcURPcGVvdFNKMkJEUkRmTEdnSUxkTVljZWpHalVEcXNXWDF2MzAv?=
 =?utf-8?B?Sjk1ck5VUHhNT2hPUC9PN2NPN0kxUkI0TE5rcGxweVNLN29QSGx3LzgxdVNF?=
 =?utf-8?B?TGFjT2l3c3NqVk4vSFF0NGVMWUdvZFVDSGxaQ2VPbzdkY0tGQy9uUko0Q0lH?=
 =?utf-8?B?NmdHSHVvVWlEb2RkZng3VHM4V1VaMDJtWWlOWmE2c0czNnNNS1hYdEZMaDdR?=
 =?utf-8?B?VDdxaFF5eTdjRjFzSEFVTVRobDdFTFJLaTNzaVE0dWFYT2Z6Q1ZEV0FMVG5y?=
 =?utf-8?B?SEkrNkI0L2Fyb3FhV3BBUFpOSUp3M2owdmJ2d3BqbHF0dEdMay9ZK212YUVM?=
 =?utf-8?Q?FA5FZRpOSujLenpW48?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7cb5539-8809-4abf-bb6c-08dee0d75c27
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 12:07:50.3634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LtIYUtoMH0YLJfdk0IY7+WHJ15OjvCEuTREO7C8lsGnzpJpf3xg8LE+5z874yiiS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFCD5E2E1DE
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,nvidia.com,ffwll.ch,intel.com,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:from_mime,amd.com:mid,amd.com:email,amd.com:dkim,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05FFC74AB99

On 7/13/26 13:57, Thomas Hellström wrote:
> On Fri, 2026-07-10 at 20:52 +0200, Christian König wrote:
>> Restructure the drm_exec object to work with dma_resv references
>> instead
>> of GEM object references.
>>
>> Add the new function dma_exec_lock_resv() to lock individual dma_resv
>> objects and so allow higher level implementations to handle
>> contention
>> purely on dma_resv objects.
>>
>> WIP! Don't commit like that!
>>
>> Signed-off-by: Christian König <christian.koenig@amd.com>
> 
> Here, IMO we should move a dma-resv based implementation to dma-buf to
> facilitate passing it also through dma_buf_map(),

I still don't see why that would be necessary?

dma_buf_map() just maps the current location of the buffer, it has no requirement to force the buffer into VRAM.

At least on amdgpu we always validate buffer during dma_buf_map() with VRAM|GTT, so we never cause any eviction at all.
 
> And if wanting to avoid rewriting all users of drm_exec, Make drm_exec
> a thin wrapper on top.

DMA-buf looks like the wrong place for this since it only works on exported buffers and that should be the absolute minority.

We could have a dma-resv contention tracking helper, but I still don't see for what that would be good for?

Regards,
Christian.

> 
> Thanks,
> Thomas
> 
> 
> 
>> ---
>>  drivers/gpu/drm/drm_exec.c | 75 ++++++++++++++++++++++--------------
>> --
>>  drivers/gpu/drm/drm_gem.c  |  2 +
>>  include/drm/drm_exec.h     |  9 +++--
>>  3 files changed, 50 insertions(+), 36 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_exec.c b/drivers/gpu/drm/drm_exec.c
>> index fa923852fae45..382bf7bcd5ff3 100644
>> --- a/drivers/gpu/drm/drm_exec.c
>> +++ b/drivers/gpu/drm/drm_exec.c
>> @@ -58,8 +58,11 @@ static void drm_exec_unlock_all(struct drm_exec
>> *exec)
>>  		drm_gem_object_put(obj);
>>  	}
>>  
>> -	drm_gem_object_put(exec->prelocked);
>> -	exec->prelocked = NULL;
>> +	if (exec->prelocked) {
>> +		dma_resv_unlock(exec->prelocked);
>> +		dma_resv_put(exec->prelocked);
>> +		exec->prelocked = NULL;
>> +	}
>>  }
>>  
>>  /**
>> @@ -101,7 +104,7 @@ void drm_exec_fini(struct drm_exec *exec)
>>  	drm_exec_unlock_all(exec);
>>  	kvfree(exec->objects);
>>  	if (exec->contended != DRM_EXEC_DUMMY) {
>> -		drm_gem_object_put(exec->contended);
>> +		dma_resv_put(exec->contended);
>>  		ww_acquire_fini(&exec->ticket);
>>  	}
>>  }
>> @@ -158,50 +161,41 @@ static int drm_exec_obj_locked(struct drm_exec
>> *exec,
>>  /* Make sure the contended object is locked first */
>>  static int drm_exec_lock_contended(struct drm_exec *exec)
>>  {
>> -	struct drm_gem_object *obj = exec->contended;
>> +	struct dma_resv *resv = exec->contended;
>>  	int ret;
>>  
>> -	if (likely(!obj))
>> +	if (likely(!resv))
>>  		return 0;
>>  
>>  	/* Always cleanup the contention so that error handling can
>> kick in */
>>  	exec->contended = NULL;
>>  	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT) {
>> -		ret = dma_resv_lock_slow_interruptible(obj->resv,
>> -						       &exec-
>>> ticket);
>> +		ret = dma_resv_lock_slow_interruptible(resv, &exec-
>>> ticket);
>>  		if (unlikely(ret))
>>  			goto error_dropref;
>>  	} else {
>> -		dma_resv_lock_slow(obj->resv, &exec->ticket);
>> +		dma_resv_lock_slow(resv, &exec->ticket);
>>  	}
>>  
>> -	ret = drm_exec_obj_locked(exec, obj);
>> -	if (unlikely(ret))
>> -		goto error_unlock;
>> -
>> -	exec->prelocked = obj;
>> +	exec->prelocked = resv;
>>  	return 0;
>>  
>> -error_unlock:
>> -	dma_resv_unlock(obj->resv);
>> -
>>  error_dropref:
>> -	drm_gem_object_put(obj);
>> +	dma_resv_put(resv);
>>  	return ret;
>>  }
>>  
>>  /**
>> - * drm_exec_lock_obj - lock a GEM object for use
>> + * drm_exec_lock_resv - lock a dma_resv object
>>   * @exec: the drm_exec object with the state
>> - * @obj: the GEM object to lock
>> + * @resv: the dma_resv object to lock
>>   *
>> - * Lock a GEM object for use and grab a reference to it.
>> + * Lock a dma_resv object for use or grab a reference to it on
>> contention.
>>   *
>>   * Returns: -EDEADLK if a contention is detected, -EALREADY when
>> object is
>> - * already locked (can be suppressed by setting the
>> DRM_EXEC_IGNORE_DUPLICATES
>> - * flag), -ENOMEM when memory allocation failed and zero for
>> success.
>> + * already locked, -ENOMEM when memory allocation failed and zero
>> for success.
>>   */
>> -int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
>> *obj)
>> +int drm_exec_lock_resv(struct drm_exec *exec, struct dma_resv *resv)
>>  {
>>  	int ret;
>>  
>> @@ -209,22 +203,39 @@ int drm_exec_lock_obj(struct drm_exec *exec,
>> struct drm_gem_object *obj)
>>  	if (unlikely(ret))
>>  		return ret;
>>  
>> -	if (exec->prelocked == obj) {
>> -		drm_gem_object_put(exec->prelocked);
>> +	if (exec->prelocked == resv) {
>> +		dma_resv_put(exec->prelocked);
>>  		exec->prelocked = NULL;
>>  		return 0;
>>  	}
>>  
>>  	if (exec->flags & DRM_EXEC_INTERRUPTIBLE_WAIT)
>> -		ret = dma_resv_lock_interruptible(obj->resv, &exec-
>>> ticket);
>> +		ret = dma_resv_lock_interruptible(resv, &exec-
>>> ticket);
>>  	else
>> -		ret = dma_resv_lock(obj->resv, &exec->ticket);
>> +		ret = dma_resv_lock(resv, &exec->ticket);
>>  
>> -	if (unlikely(ret == -EDEADLK)) {
>> -		drm_gem_object_get(obj);
>> -		exec->contended = obj;
>> -		return -EDEADLK;
>> -	}
>> +	if (unlikely(ret == -EDEADLK))
>> +		exec->contended = dma_resv_get(resv);
>> +	return ret;
>> +}
>> +EXPORT_SYMBOL(drm_exec_lock_resv);
>> +
>> +/**
>> + * drm_exec_lock_obj - lock a GEM object for use
>> + * @exec: the drm_exec object with the state
>> + * @obj: the GEM object to lock
>> + *
>> + * Lock a GEM object for use and grab a reference to it.
>> + *
>> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
>> object is
>> + * already locked (can be suppressed by setting the
>> DRM_EXEC_IGNORE_DUPLICATES
>> + * flag), -ENOMEM when memory allocation failed and zero for
>> success.
>> + */
>> +int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
>> *obj)
>> +{
>> +	int ret;
>> +
>> +	ret = drm_exec_lock_resv(exec, obj->resv);
>>  
>>  	if (unlikely(ret == -EALREADY) &&
>>  	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
>> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
>> index bbcbd25f014f0..f5cf9ad596a67 100644
>> --- a/drivers/gpu/drm/drm_gem.c
>> +++ b/drivers/gpu/drm/drm_gem.c
>> @@ -229,6 +229,8 @@ void drm_gem_private_object_init(struct
>> drm_device *dev,
>>  	obj->size = size;
>>  	mutex_init(&obj->gpuva.lock);
>>  	dma_resv_init(&obj->_resv);
>> +
>> +	/* TODO: This needs to go away for drm_exec to work
>> correctly!!! */
>>  	if (!obj->resv)
>>  		obj->resv = dma_resv_get(&obj->_resv);
>>  
>> diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
>> index 8725ba92ff916..9daedb676d7b1 100644
>> --- a/include/drm/drm_exec.h
>> +++ b/include/drm/drm_exec.h
>> @@ -47,14 +47,14 @@ struct drm_exec {
>>  	struct drm_gem_object	**objects;
>>  
>>  	/**
>> -	 * @contended: contended GEM object we backed off for
>> +	 * @contended: contended dma_resv object we backed off for
>>  	 */
>> -	struct drm_gem_object	*contended;
>> +	struct dma_resv		*contended;
>>  
>>  	/**
>> -	 * @prelocked: already locked GEM object due to contention
>> +	 * @prelocked: already locked dma_resv object due to
>> contention
>>  	 */
>> -	struct drm_gem_object *prelocked;
>> +	struct dma_resv		*prelocked;
>>  };
>>  
>>  /**
>> @@ -175,6 +175,7 @@ static inline struct ww_acquire_ctx
>> *drm_exec_ticket(struct drm_exec *exec)
>>  void drm_exec_init(struct drm_exec *exec, u32 flags, unsigned nr);
>>  void drm_exec_fini(struct drm_exec *exec);
>>  bool drm_exec_cleanup(struct drm_exec *exec);
>> +int drm_exec_lock_resv(struct drm_exec *exec, struct dma_resv
>> *resv);
>>  int drm_exec_lock_obj(struct drm_exec *exec, struct drm_gem_object
>> *obj);
>>  void drm_exec_unlock_obj(struct drm_exec *exec, struct
>> drm_gem_object *obj);
>>  int drm_exec_prepare_obj(struct drm_exec *exec, struct
>> drm_gem_object *obj,

