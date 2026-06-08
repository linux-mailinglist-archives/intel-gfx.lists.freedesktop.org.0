Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 43ilDZu+JmrNcAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:07:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D69656706
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:07:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=adVYHmRp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F323E10F382;
	Mon,  8 Jun 2026 13:07:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH7PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11010063.outbound.protection.outlook.com [52.101.201.63])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3406610F382;
 Mon,  8 Jun 2026 13:07:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cf6RhPUtedmsJytdOoM9e3dxulGS9i/DmhLO7POjY2jEadT9RPkVgAgo/0NM0/vXE/rHwaexF31MPkp5N+mJdDqUp8/KVrswrqmlvpXT+bOIAsw1f3r8lAdthrwZAtuFEwtKs1ytHYG0LKmS1FPNtreYFkEYMhyuOt0b3k87F6B5JObszYgEaJxDcC7m6Db7DIU/lLvQRVGcI6YPGdmhXuuueXLcmhZlGPRKVNArmOlVl6/3SMRLTJrTZL/Ozd5d3Pr67naJWlW20rYxCvj1PpjnqVbtUeKvudz1YXj8Xa7855+Moqi9OLNU+ABuk1yGliLy5Ez6gZhp138uNT7MdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jNsroXYNuArXh7IbKwecUSApu5hnUUoCeyo/kCodmGQ=;
 b=MiVE45FSAyXLUQloC+BhC1BQ9vT6C1eeRVDAhMEq1RPaLmD/kiolBwBZOQ+a7T+f5UXtK/HzH9cqDtRiM9E68qn3lSdArAv+tjTDXJSonQ3dB/yvaDj6IeY4hpMvv/gWHqhHIFsw1UxgmZix7jHKQHVONr3E+i+5H6gUDspwrwCFY8YsvzVryVAIvbDMEMDhVY1ccDWMnU6jIQ+IE8Ft8awC114wP1kFRNQrM//U8ZXUfYSKTr9Clrotcu4EpRBnUR5B8sGXRf7CWj9O+1F+rU7vVFYn6W6LP7IJ+opzVciaWVCbJwOwtSBU7GTMRdOUgoq9E7erYD6PYljTOO7Qqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jNsroXYNuArXh7IbKwecUSApu5hnUUoCeyo/kCodmGQ=;
 b=adVYHmRpzlp/two9F5G1Hpizhvt7vR2ad3f+djqyxk32hvY1WQlPLJN3T8mS+Q6+TRnF+4i/gDUpQgDT5epVeb1LDvAU6nTNQu4tPO2A0F897AsdVt2TQ1VlOKfZvRQPml+EXUo5EJaLxjz3o39AHEx6gqd4Z996gLDoCnCDiik=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA5PPF916D632A9.namprd12.prod.outlook.com
 (2603:10b6:80f:fc04::8d6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Mon, 8 Jun 2026
 13:07:32 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0092.006; Mon, 8 Jun 2026
 13:07:32 +0000
Message-ID: <bb2adbe0-5962-4b33-a245-02a11c8cf64b@amd.com>
Date: Mon, 8 Jun 2026 15:07:23 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] drm/amdgpu: check individual moved list instead of
 invalidated
To: =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Vitaly Prosyak <vitaly.prosyak@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>
References: <20260512162711.51118-4-christian.koenig@amd.com>
 <20260608122316.3131299-1-michal.grzelak@intel.com>
 <20260608122316.3131299-2-michal.grzelak@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260608122316.3131299-2-michal.grzelak@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BN9PR03CA0593.namprd03.prod.outlook.com
 (2603:10b6:408:10d::28) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA5PPF916D632A9:EE_
X-MS-Office365-Filtering-Correlation-Id: 4edb061e-4dc8-41ac-944a-08dec55ee6c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099006|11063799006|4143699003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: e+vrtIgoeeV17qTpZA5iSgsXTyKiPxU4UVSrntpdpAPlb+5Nbmp/I57/X5HL0AJkkQi2hVpLBwpMkzJ44lqFzgZY86qxDeSicu0g+tzrrHXfpn9K9rvXjbD2AEN56T77l4fAPWwfY5N5n+EgINGsEcazR8AmRAngyQaN3ujXtk8mnIBDMK/JsZvrs5i0HPF3SlYuCtC4OE248QeUFQ0mLTgvCfK4OT/q4EP/bSYz/DU4CsVmzJpBldCW/EJVX5vEQG7Y6EtazE0Pb6mP5SrXoj61lqDfqGUkNszUbABEa4nPeqUzqcbVHr809MQRU/bacbMw/Muk8rOoNfp90OEZPmPWzZ7SznwzVGSDKipQrLbJqoUSYbbdPKxPhXqfN4kP25iQoiQLDObGzRTvYAlS837262R5puzKpvmFOE3s8xLI2a/M7ZyCSxm1qhF63jy9nwjmmshoM4OyZBRmrW3VTgMz75MB8vVCK04rzdUi4ZHOK3h4+GEXeAsPf669D51YAipTGLdMQAlAdzn2ma0V4e/uPBPH0jIcHoU27HXV4dQWUc+7gA2XCxUIgju/WW/WjoiLCGOUdER8++F8n8gwaaxzHlRqVwZpDQ8HnN95DXmn2Fjo+zIOkTcuoL8KoRQJ0pLY6NQUlSXK8FyT/FVglHNwzR0RjRjqqWYwLSp5Jsqo6ilz+b8lT+BF5EWSFNrw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RWh3VDdkV3h1Zm1OWFIyMmdwdjBIS2Q2QmVkZXd6Z1NGSHB2bkhndXA1OEE5?=
 =?utf-8?B?eGhyTW56RVplbU9vYzBLTmtoV3dvckxPLzJkQSthSEpCQlQ3cnhJZlJkSjdG?=
 =?utf-8?B?clpwaWdoT1BzR3hhUGxIdkFSbHZiR1BkYXdOZkxNQWs4UU5kV3VvQ2puU1NZ?=
 =?utf-8?B?bmI1MHR4THlXRGdHMEFhMmxYS0wrY0NLUFg3T0V5Zi9WODZCeE9QTzdkc2Rp?=
 =?utf-8?B?WmVCSXFZYXZFc0M0U0xkWFM4YUlyaW5PclZjcHIyTEhKWHRnR2toN3QvbThX?=
 =?utf-8?B?VzJXYW1MYlRxcEpCeWZHcFhmbGQ3SWRydDlYUXZjR1dDNFd0c2FPWFk3ak1q?=
 =?utf-8?B?YUNOODdvQnJpenhmR3cvMUFZVzYyV3hiZVhMVmYvN1kxWWwxOEcyMy9WKzhC?=
 =?utf-8?B?VDZwSXl1U3NMYTZROXQ4cGlSelNKSEdQdWNtWmJicEhNZTg5Nkd5dWFtV1Jn?=
 =?utf-8?B?ZWFPb1JZUU9aRmZuQzcrTlFvK285Y1FKR3FQdlRJUkROTG00UU16VFpkcjR4?=
 =?utf-8?B?aUs4ai9Fb2tvUFdiOHo0cXNFdFlDd0dwOU5ZekN3MU1zUWhyMUE0cVduQ1lF?=
 =?utf-8?B?eVAxcG9JRlBuWlQrbEk4S0NGN2czcmhrTU5hT2tlWUJCdHhkUzZWZldCTzkz?=
 =?utf-8?B?UXMzUmJ4Qy9XRXJFU3ZDSHVtT3czTDlyR3VUSWpIb3BGN2R4VFh1N25Qanl1?=
 =?utf-8?B?ZlpCcSswOGdYS204cVNpNHc4UkQ0RGVGNEZyTHdnQzRZTXRBeThoYmlGWjBh?=
 =?utf-8?B?ajhrSlRLdzdjV1Z5ckppelJkdjhyaXZTMjJxQ29JMWNJanRQcmNBTWIyQVE5?=
 =?utf-8?B?eWRGYWZKZjZnVUxsQU43WlV6Wk1tSkVwRGg1UFNVSVpubUh6Q1VuRGtZN1BW?=
 =?utf-8?B?Z0J0TlV2Ri9PbmdacjBDVU1TWm1sRUljSHdRc3BYV2gvM3NmVjgzL0ttRGph?=
 =?utf-8?B?UXFocHlJenl4UmEyQk1EdDBsWUdlUStJSGsrVFprZjVFbVpHb3FSNDhrNU5s?=
 =?utf-8?B?WkNzRVZDanZyTDhLYlNkM0poKzNLekNCc0JrWVBNdEJSSDFNaGRSRDlIWWNP?=
 =?utf-8?B?WTFFakw1cmxQZWF6L0FyZDJ2dWlXOEt3bVhmdHJUM1ZsMmFicnlLOFU5UkJq?=
 =?utf-8?B?d2NEVXVpOVVLOW9pdDRDOFA0eXJCemxKUWtlUmVhWnhzRVAzVFZBOEp0R1c0?=
 =?utf-8?B?cFY1eG1XUXdvdGdWOGhLVlJoaXNKcnpDYjFPTXlDN1hpZ3VNZU9UNjFUVStG?=
 =?utf-8?B?RmFDSjM1akY2cHFXbEovbUlWSTB0QTdlSUNTMjJCa0R4OE9XLzhzMHgwVVJh?=
 =?utf-8?B?UjBjUlJIVVNZOVZHenpPVXlMaVQ5TTBGaitNTTBhZGxvaWtueUJzUXhLRS8y?=
 =?utf-8?B?NnVGUmZwMDREVHBTbWRkOHl0ZWNtUUE1Z1RiV2xlZGhOanZjVTg3R3RrSWg5?=
 =?utf-8?B?U2pmWjl4TDFyZ2E5WnRuRFZvSE1OZms0a1dCVGg2MldxZTRTSkpnU2ZzTzJx?=
 =?utf-8?B?WU1TdkNUc3VqRklUYndNMHpmR0xNUDlPR2tEK01xQjkyanJuYWVQRlc0ZVJV?=
 =?utf-8?B?Q09nb253RnhkNUFDWWdINE1RUWVNVlNsakxmMnhETzJ2ZUpUaWRQVnBLM1Np?=
 =?utf-8?B?NHdjaHh1djZwaGVDZTc2SU5kUVQxRVRlbVlmTHRDeVRhbWk0K3QrLy8zV3pM?=
 =?utf-8?B?a2FXeWVzbG1XN2VYczhXZnVzc1dmbGcxekE1VTJCcy8zVWovRHo2VVN1NHFs?=
 =?utf-8?B?Q3I5Qkp3Ykh0Zk0rOHBWdmRLcGd6eERWTWFhQTlMOFN4MHF6YjEvdWZKTWtI?=
 =?utf-8?B?M1hLQWZ6RTAyZnR5d2ZEWVFNWkVQaGg4M1Q3NmxocTNUZ1pIVHF6SExJLzE5?=
 =?utf-8?B?VUI1RlVUU1BqYzJuVnlzS04xMlo0L2swVUczNHA0YkQ0dm5nbytyYzdQU1cz?=
 =?utf-8?B?N3luWkFqUzJrWnpNTkxOTTRER1dXSDUyenlBRGkzd3ZSSG4rd0pqc3o0RDZp?=
 =?utf-8?B?c1FoT2p1SHpFQnlmdGdBbEE4dXlLL0ZMejdqMklvSHhJd2ppRS9QaDdRQVlv?=
 =?utf-8?B?Tm9oUVN6bHpDbWJLZEJXU1c2YlFPVXNWaHpoczBUKytZNDJITWxyQTdabnIw?=
 =?utf-8?B?bmlHOHBoL3Y4M0ZHdlBJeGk3Nlhrc2hEVHJlT0J6UUdUUzVUT0QvdmRLRGFL?=
 =?utf-8?B?dHg2MnVndkxaTTU1OWNKTmMwRGY4SUU0Z3hiRnY5SzNQRFJqV0NScEt4QkF5?=
 =?utf-8?B?clBSSnlOdXQxVHJ4SUF5VE9NWWVoTmpRVlNkdFN3T2RzRm5nSXJRTUxJWEZN?=
 =?utf-8?Q?KnA6UcFtqMV/cC4HP5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4edb061e-4dc8-41ac-944a-08dec55ee6c3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 13:07:32.4405 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xHsRwJVRNK4FoQWU5faJSHeJ414u9zkUub5jqe6icqks/SWSRov9eKrKlHWtysji
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PPF916D632A9
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
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[amd.com:+];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:email];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 76D69656706

On 6/8/26 14:23, Michał Grzelak wrote:
> Checking `invalidated` field causes build to fail since it is absent in
> struct amdgpu_vm. Replace it with &vm->individual.moved identically
> as did commit 59720bfd8c6d ("drm/amdgpu: restart the CS if some parts of
> the VM are still invalidated").
> 
> Cc: Vitaly Prosyak <vitaly.prosyak@amd.com>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Fixes: 40396ffdf612 ("drm/amdgpu: restart the CS if some parts of the VM are still invalidated")
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>

The field is renamed by a different patch so looks like a rebase/merge issue to me, could be that the Fixes tag needs double checking.

But either way Reviewed-by: Christian König <christian.koenig@amd.com>

Thanks,
Christian.

> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> index 548a4f14a9f8..5d8f5848bc0e 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> @@ -1323,7 +1323,7 @@ static int amdgpu_cs_submit(struct amdgpu_cs_parser *p,
>  		e->range = NULL;
>  	}
>  
> -	if (r || !list_empty(&vm->invalidated)) {
> +	if (r || !list_empty(&vm->individual.moved)) {
>  		r = -EAGAIN;
>  		mutex_unlock(&p->adev->notifier_lock);
>  		return r;

